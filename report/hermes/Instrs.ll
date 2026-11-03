Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Instrs?download=true
inline.NumInlined: 908
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6hermes14TerminatorInst16getNumSuccessorsEv:bb.a
  %i.c = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.d = add i32 %i.c, -2
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw i32 %i.e, 1
  br label %.fold.split111

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132) %0) #15
  %i.h = add i32 %i.g, -4
  %i.i = lshr i32 %i.h, 1
  %i.j = add nuw i32 %i.i, 1
  br label %.fold.split111

.fold.split:                                      ; preds = %bb.a, %bb.a
  br label %.fold.split111

.fold.split112:                                   ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %.fold.split111

.fold.split111:                                   ; preds = %bb.a, %.fold.split112, %.fold.split, %bb.c, %bb.b
  %.12 = phi i32 [ 1, %bb.a ], [ %i.j, %bb.c ], [ %i.f, %bb.b ], [ 2, %.fold.split112 ], [ 0, %.fold.split ]
  ret i32 %.12
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes14TerminatorInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !19    ; 5 uses
  %i.c = icmp eq i8 %i.b, 77
  br i1 %i.c, label %bb.b, label %.thread102

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 0) #15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.g = select i1 %i.e, ptr null, ptr %i.f
  br label %bb.n

.thread102:                                       ; preds = %bb.a
  %i.h = icmp ne i8 %i.b, 78
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ne i8 %i.b, 79
  tail call void @llvm.assume(i1 %i.i)
  switch i8 %i.b, label %.thread102.unreachabledefault [
    i8 80, label %bb.c
    i8 81, label %bb.f
    i8 82, label %bb.g
    i8 83, label %bb.h
    i8 84, label %bb.i
    i8 85, label %bb.j
    i8 86, label %bb.k
    i8 87, label %bb.l
    i8 88, label %bb.m
  ]

bb.c:                                             ; preds = %.thread102
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %1, 1                            ; 2 uses
  %i.l = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.k) #15 ; 0 uses
  %i.m = or disjoint i32 %i.k, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ %i.m, %bb.d ], [ 1, %bb.c ]
  %i.n = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink.i) #15 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -16
  %i.q = select i1 %i.o, ptr null, ptr %i.p
  br label %bb.n

bb.f:                                             ; preds = %.thread102
  %i.r = icmp eq i32 %1, 0
  %spec.select.i86 = select i1 %i.r, i32 1, i32 2
  %i.s = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i86) #15 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.v = select i1 %i.t, ptr null, ptr %i.u
  br label %bb.n

bb.g:                                             ; preds = %.thread102
  %i.w = icmp eq i32 %1, 0
  %spec.select.i88 = select i1 %i.w, i32 4, i32 5
  %i.x = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i88) #15 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -16
  %i.aa = select i1 %i.y, ptr null, ptr %i.z
  br label %bb.n

bb.h:                                             ; preds = %.thread102
  %i.ab = icmp eq i32 %1, 0
  %spec.select.i90 = select i1 %i.ab, i32 5, i32 6
  %i.ac = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i90) #15 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.af = select i1 %i.ad, ptr null, ptr %i.ae
  br label %bb.n

bb.i:                                             ; preds = %.thread102
  %i.ag = icmp eq i32 %1, 0
  %spec.select.i92 = select i1 %i.ag, i32 3, i32 4
  %i.ah = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %spec.select.i92) #15 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -16
  %i.ak = select i1 %i.ai, ptr null, ptr %i.aj
  br label %bb.n

bb.j:                                             ; preds = %.thread102
  %i.al = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) #15 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -16
  %i.ao = select i1 %i.am, ptr null, ptr %i.an
  br label %bb.n

bb.k:                                             ; preds = %.thread102
  %i.ap = icmp eq i32 %1, 0
  %spec.select.i95 = select i1 %i.ap, i32 2, i32 3
  %i.aq = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %spec.select.i95) #15 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -16
  %i.at = select i1 %i.ar, ptr null, ptr %i.as
  br label %bb.n

bb.l:                                             ; preds = %.thread102
  %i.au = tail call noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1)
  br label %bb.n

.thread102.unreachabledefault:                    ; preds = %.thread102
  unreachable

bb.m:                                             ; preds = %.thread102
  %.not = icmp eq i8 %i.b, 88
  tail call void @llvm.assume(i1 %.not)
  %i.av = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef 1) #15 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -16
  %i.ay = select i1 %i.aw, ptr null, ptr %i.ax
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b, %bb.m
  %.12 = phi ptr [ %i.g, %bb.b ], [ %i.au, %bb.l ], [ %i.at, %bb.k ], [ %i.ao, %bb.j ], [ %i.ak, %bb.i ], [ %i.af, %bb.h ], [ %i.aa, %bb.g ], [ %i.v, %bb.f ], [ %i.q, %bb.e ], [ %i.ay, %bb.m ]
  ret ptr %.12
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes10SwitchInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %1, 1                            ; 2 uses
  %i.c = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.b) #15 ; 0 uses
  %i.d = or disjoint i32 %i.b, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  %i.e = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink) #15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.h = select i1 %i.f, ptr null, ptr %i.g
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6hermes13SwitchImmInst12getSuccessorEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl i32 %1, 1                            ; 2 uses
  %i.c = add i32 %i.b, 2
  %i.d = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %i.c) #15 ; 0 uses
  %i.e = add i32 %i.b, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  %i.f = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %.sink) #15 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = select i1 %i.g, ptr null, ptr %i.h
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes14TerminatorInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !19    ; 4 uses
  %3 = icmp eq i8 %i.b, 77
  %4 = icmp ne i8 %i.b, 78
  %5 = icmp ne i8 %i.b, 79
  br i1 %3, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.assume(i1 %5)
  switch i8 %i.b, label %.loopexit [
    i8 80, label %bb.c
    i8 81, label %bb.d
    i8 82, label %bb.e
    i8 83, label %bb.f
    i8 84, label %bb.g
    i8 85, label %bb.h
    i8 86, label %bb.i
    i8 87, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i82 = select i1 %i.c, ptr null, ptr %i.d
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i82, i32 noundef %1) #15
  br label %.loopexit

bb.c:                                             ; preds = %.split
  %i.e = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i86 = select i1 %i.e, ptr null, ptr %i.f
  %i.g = shl i32 %1, 1
  %i.h = or disjoint i32 %i.g, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i86, i32 noundef %i.h) #15
  br label %.loopexit

bb.d:                                             ; preds = %.split
  %i.i = icmp eq ptr %2, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i88 = select i1 %i.i, ptr null, ptr %i.j
  %i.k = add i32 %1, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i88, i32 noundef %i.k) #15
  br label %.loopexit

bb.e:                                             ; preds = %.split
  %i.l = icmp eq i32 %1, 0
  %spec.select.i90 = select i1 %i.l, i32 4, i32 5
  %i.m = icmp eq ptr %2, null
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i = select i1 %i.m, ptr null, ptr %i.n
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i, i32 noundef %spec.select.i90) #15
  br label %.loopexit

bb.f:                                             ; preds = %.split
  %i.o = icmp eq i32 %1, 0
  %spec.select.i92 = select i1 %i.o, i32 5, i32 6
  %i.p = icmp eq ptr %2, null
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i93 = select i1 %i.p, ptr null, ptr %i.q
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i93, i32 noundef %spec.select.i92) #15
  br label %.loopexit

bb.g:                                             ; preds = %.split
  %i.r = icmp eq i32 %1, 0
  %spec.select.i95 = select i1 %i.r, i32 3, i32 4
  %i.s = icmp eq ptr %2, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select1.i96 = select i1 %i.s, ptr null, ptr %i.t
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select1.i96, i32 noundef %spec.select.i95) #15
  br label %.loopexit

bb.h:                                             ; preds = %.split
  %i.u = icmp eq ptr %2, null
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i98 = select i1 %i.u, ptr null, ptr %i.v
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i98, i32 noundef %1) #15
  br label %.loopexit

bb.i:                                             ; preds = %.split
  %i.w = icmp eq ptr %2, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i100 = select i1 %i.w, ptr null, ptr %i.x
  %i.y = add i32 %1, 2
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %spec.select.i100, i32 noundef %i.y) #15
  br label %.loopexit

bb.j:                                             ; preds = %.split
  %i.z = icmp eq i32 %1, 0
  %i.aa = icmp eq ptr %2, null
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i102 = select i1 %i.aa, ptr null, ptr %i.ab
  %i.ac = shl i32 %1, 1
  %i.ad = add i32 %i.ac, 3
  %.sink.i = select i1 %i.z, i32 1, i32 %i.ad
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select.i102, i32 noundef %.sink.i) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10SwitchInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.a, ptr null, ptr %i.b
  %i.c = shl i32 %1, 1
  %i.d = or disjoint i32 %i.c, 1
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select, i32 noundef %i.d) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13SwitchImmInst12setSuccessorEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(132) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select = select i1 %i.b, ptr null, ptr %i.c
  %i.d = shl i32 %1, 1
  %i.e = add i32 %i.d, 3
  %.sink = select i1 %i.a, i32 1, i32 %i.e
  tail call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %spec.select, i32 noundef %.sink) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN6hermes16isSideEffectFreeENS_4TypeE(i32 %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i16  ; 2 uses
  %.not.i = icmp ne i16 %.sroa.0.0.extract.trunc, 0
  %i.a = and i16 %.sroa.0.0.extract.trunc, -127
  %.not1.i = icmp eq i16 %i.a, 0
  %i.b = and i1 %.not.i, %.not1.i
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6hermes17UnaryOperatorInst13parseOperatorEN4llvh9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.fr14 = freeze i64 %1                          ; 3 uses
  %i.a = icmp eq i64 %.fr14, 0
  br i1 %i.a, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, align 16, !tbaa !21 ; 2 uses
  %.not.i.us = icmp eq ptr %i.b, null
  br i1 %.not.i.us, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us

_ZN4llvh9StringRefC2EPKc.exit.us:                 ; preds = %.split.us
  %char0 = load i8, ptr %i.b, align 1
  %i.c = icmp eq i8 %char0, 0
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us:    ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 8), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.us.1, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.1

_ZN4llvh9StringRefC2EPKc.exit.us.1:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us
  %char0.1 = load i8, ptr %i.d, align 1
  %i.e = icmp eq i8 %char0.1, 0
  br i1 %i.e, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.1

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.1:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.1
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 16), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.us.2, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.2

_ZN4llvh9StringRefC2EPKc.exit.us.2:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.1
  %char0.2 = load i8, ptr %i.f, align 1
  %i.g = icmp eq i8 %char0.2, 0
  br i1 %i.g, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.2

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.2:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.2
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 24), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.us.3, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.3

_ZN4llvh9StringRefC2EPKc.exit.us.3:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.2
  %char0.3 = load i8, ptr %i.h, align 1
  %i.i = icmp eq i8 %char0.3, 0
  br i1 %i.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.3

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.3:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.3
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 32), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.4 = icmp eq ptr %i.j, null
  br i1 %.not.i.us.4, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.4

_ZN4llvh9StringRefC2EPKc.exit.us.4:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.3
  %char0.4 = load i8, ptr %i.j, align 1
  %i.k = icmp eq i8 %char0.4, 0
  br i1 %i.k, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.4

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.4:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.4
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 40), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.5 = icmp eq ptr %i.l, null
  br i1 %.not.i.us.5, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.5

_ZN4llvh9StringRefC2EPKc.exit.us.5:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.4
  %char0.5 = load i8, ptr %i.l, align 1
  %i.m = icmp eq i8 %char0.5, 0
  br i1 %i.m, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.5

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.5:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.5
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 48), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.6 = icmp eq ptr %i.n, null
  br i1 %.not.i.us.6, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.6

_ZN4llvh9StringRefC2EPKc.exit.us.6:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.5
  %char0.6 = load i8, ptr %i.n, align 1
  %i.o = icmp eq i8 %char0.6, 0
  br i1 %i.o, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.6

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.6:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.6
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 56), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.7 = icmp eq ptr %i.p, null
  br i1 %.not.i.us.7, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.7

_ZN4llvh9StringRefC2EPKc.exit.us.7:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.6
  %char0.7 = load i8, ptr %i.p, align 1
  %i.q = icmp eq i8 %char0.7, 0
  br i1 %i.q, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.7

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.7:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.7
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 64), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.8 = icmp eq ptr %i.r, null
  br i1 %.not.i.us.8, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.8

_ZN4llvh9StringRefC2EPKc.exit.us.8:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.7
  %char0.8 = load i8, ptr %i.r, align 1
  %i.s = icmp eq i8 %char0.8, 0
  br i1 %i.s, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.8

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.8:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 72), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.9 = icmp eq ptr %i.t, null
  br i1 %.not.i.us.9, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.9

_ZN4llvh9StringRefC2EPKc.exit.us.9:               ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.8
  %char0.9 = load i8, ptr %i.t, align 1
  %i.u = icmp eq i8 %char0.9, 0
  br i1 %i.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.9

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.9:  ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.9
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 80), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.10 = icmp eq ptr %i.v, null
  br i1 %.not.i.us.10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.10

_ZN4llvh9StringRefC2EPKc.exit.us.10:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.9
  %char0.10 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %char0.10, 0
  br i1 %i.w, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.10

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.10: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.10
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 88), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.11 = icmp eq ptr %i.x, null
  br i1 %.not.i.us.11, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.11

_ZN4llvh9StringRefC2EPKc.exit.us.11:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.10
  %char0.11 = load i8, ptr %i.x, align 1
  %i.y = icmp eq i8 %char0.11, 0
  br i1 %i.y, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.11

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.11: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.11
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 96), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.12 = icmp eq ptr %i.z, null
  br i1 %.not.i.us.12, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.12

_ZN4llvh9StringRefC2EPKc.exit.us.12:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.11
  %char0.12 = load i8, ptr %i.z, align 1
  %i.aa = icmp eq i8 %char0.12, 0
  br i1 %i.aa, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.12

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.12: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.12
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 104), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.13 = icmp eq ptr %i.ab, null
  br i1 %.not.i.us.13, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.13

_ZN4llvh9StringRefC2EPKc.exit.us.13:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.12
  %char0.13 = load i8, ptr %i.ab, align 1
  %i.ac = icmp eq i8 %char0.13, 0
  br i1 %i.ac, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.13

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.13: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.13
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 112), align 16, !tbaa !21 ; 2 uses
  %.not.i.us.14 = icmp eq ptr %i.ad, null
  br i1 %.not.i.us.14, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZN4llvh9StringRefC2EPKc.exit.us.14

_ZN4llvh9StringRefC2EPKc.exit.us.14:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.13
  %char0.14 = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i8 %char0.14, 0
  br i1 %i.ae, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread10, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.14

_ZNK4llvh9StringRef6equalsES0_.exit.thread.us.14: ; preds = %_ZN4llvh9StringRefC2EPKc.exit.us.14
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermes17UnaryOperatorInst12opStringReprE, i64 120), align 8, !tbaa !21 ; 2 uses
  %.not.i.us.15 = icmp eq ptr %i.af, null
end_hunk_0
