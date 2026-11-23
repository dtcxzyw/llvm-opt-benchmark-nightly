Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueLattice?download=true
inline.NumInlined: 131
inline.NumDeleted: 47
begin_hunk_0_@_ZNK4llvm19ValueLatticeElement10getCompareENS_7CmpInst9PredicateEPNS_4TypeERKS0_RKNS_10DataLayoutE:bb.a
  %i.a = load i16, ptr %0, align 8
  %.fr36 = freeze i16 %i.a                        ; 2 uses
  %i.b = and i16 %.fr36, 255                      ; 4 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %3, align 8                ; 2 uses
  %i.e = and i16 %i.d, 255                        ; 4 uses
  %i.f = icmp eq i16 %i.b, 1
  %i.g = icmp samesign ult i16 %i.e, 2
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i16 %i.b, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i16 %i.e, 2
  br i1 %i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.n = tail call noundef ptr @_ZN4llvm31ConstantFoldCompareInstOperandsEjPNS_8ConstantES1_RKNS_10DataLayoutEPKNS_17TargetLibraryInfoEPKNS_11InstructionE(i32 noundef %1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 8 dereferenceable(912) %4, ptr noundef null, ptr noundef null) #8
  br label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

bb.f:                                             ; preds = %bb.c
  %i.o = and i32 %1, -2
  %i.p = icmp eq i32 %i.o, 32
  %i.q = icmp eq i16 %i.b, 3
  %or.cond31 = and i1 %i.p, %i.q
  %i.r = icmp eq i16 %i.e, 2
  %or.cond32 = and i1 %or.cond31, %i.r
  br i1 %or.cond32, label %bb.g, label %.thread29

.thread:                                          ; preds = %bb.d
  %i.s = and i32 %1, -2
  %i.t = icmp eq i32 %i.s, 32
  %i.u = icmp eq i16 %i.e, 3
  %or.cond33 = and i1 %i.t, %i.u
  br i1 %or.cond33, label %bb.h, label %.thread29

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.i, label %.thread29

bb.h:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.i, label %.thread29

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = icmp eq i32 %1, 33
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef %2) #8
  br label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call noundef ptr @_ZN4llvm11ConstantInt8getFalseEPNS_4TypeE(ptr noundef %2) #8
  br label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

.thread29:                                        ; preds = %bb.g, %.thread, %bb.h, %bb.f
  %i.ai = and i16 %.fr36, 254
  %switch = icmp eq i16 %i.ai, 4
  %i.aj = and i16 %i.d, 254
  %switch34 = icmp eq i16 %i.aj, 4
  %or.cond35 = and i1 %switch, %switch34
  br i1 %or.cond35, label %bb.l, label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

bb.l:                                             ; preds = %.thread29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm13ConstantRange4icmpENS_7CmpInst9PredicateERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #8
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef %2) #8
  br label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = tail call noundef i32 @_ZN4llvm7CmpInst19getInversePredicateENS0_9PredicateE(i32 noundef %1) #8
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm13ConstantRange4icmpENS_7CmpInst9PredicateERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #8
  br i1 %i.ap, label %bb.o, label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call noundef ptr @_ZN4llvm11ConstantInt8getFalseEPNS_4TypeE(ptr noundef %2) #8
  br label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit: ; preds = %bb.b, %.thread29, %bb.m, %bb.o, %bb.n, %bb.j, %bb.k, %bb.a, %bb.e
  %.1 = phi ptr [ %i.ah, %bb.k ], [ null, %bb.a ], [ %i.n, %bb.e ], [ %i.an, %bb.m ], [ null, %bb.n ], [ null, %bb.b ], [ %i.aq, %bb.o ], [ %i.ag, %bb.j ], [ null, %.thread29 ]
  ret ptr %.1
}

declare noundef ptr @_ZN4llvm31ConstantFoldCompareInstOperandsEjPNS_8ConstantES1_RKNS_10DataLayoutEPKNS_17TargetLibraryInfoEPKNS_11InstructionE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm11ConstantInt7getTrueEPNS_4TypeE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm11ConstantInt8getFalseEPNS_4TypeE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZNK4llvm13ConstantRange4icmpENS_7CmpInst9PredicateERKS0_(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm7CmpInst19getInversePredicateENS0_9PredicateE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm19ValueLatticeElement9intersectERKS0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::ValueLatticeElement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ConstantRange", align 8 ; 8 uses
  %4 = alloca %"class.llvm::ConstantRange", align 8 ; 6 uses
  %i.a = load i16, ptr %1, align 8                ; 4 uses
  %i.b = and i16 %i.a, 255                        ; 4 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %0, align 8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %2, align 8                ; 2 uses
  %i.e = and i16 %i.d, 255                        ; 3 uses
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr %0, align 8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq i16 %i.b, 6
  br i1 %i.g, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  store i16 %i.e, ptr %0, align 8
  %trunc.i14 = trunc i16 %i.d to i8
  switch i8 %trunc.i14, label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit [
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 2, label %bb.l
    i8 3, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !10
  %i.m = icmp ult i32 %i.l, 65
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.i, align 8, !tbaa !8
  store i64 %i.n, ptr %i.h, align 8, !tbaa !8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i15

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i15

_ZN4llvm5APIntC2ERKS0_.exit.i.i15:                ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !10   ; 2 uses
  store i32 %i.s, ptr %i.q, align 8, !tbaa !10
  %i.t = icmp ult i32 %i.s, 65
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i15
  %i.u = load i64, ptr %i.p, align 8, !tbaa !8
  store i64 %i.u, ptr %i.o, align 8, !tbaa !8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i16

bb.k:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i15
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.p) #8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i16

_ZN4llvm13ConstantRangeC2ERKS0_.exit.i16:         ; preds = %bb.k, %bb.j
  %i.v = load i16, ptr %2, align 8
  %5 = lshr i16 %i.v, 8
  %6 = trunc nuw i16 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %6, ptr %7, align 1
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.l:                                             ; preds = %bb.f, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.m:                                             ; preds = %bb.e
  %i.z = icmp eq i16 %i.e, 6
  br i1 %i.z, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  store i16 %i.b, ptr %0, align 8
  %trunc.i18 = trunc i16 %i.a to i8
  switch i8 %trunc.i18, label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit [
    i8 4, label %bb.o
    i8 5, label %bb.o
    i8 2, label %bb.t
    i8 3, label %bb.t
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !10 ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !10
  %i.af = icmp ult i32 %i.ae, 65
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !8
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i19

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i19

_ZN4llvm5APIntC2ERKS0_.exit.i.i19:                ; preds = %bb.q, %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !10 ; 2 uses
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !10
  %i.am = icmp ult i32 %i.al, 65
  br i1 %i.am, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i19
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !8
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i20

bb.s:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i19
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i20

_ZN4llvm13ConstantRangeC2ERKS0_.exit.i20:         ; preds = %bb.s, %bb.r
  %i.ao = load i16, ptr %1, align 8
  %8 = lshr i16 %i.ao, 8
  %9 = trunc nuw i16 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %9, ptr %10, align 1
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.t:                                             ; preds = %bb.n, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.u:                                             ; preds = %bb.m
  %i.as = and i16 %i.a, 254
  %switch.i = icmp eq i16 %i.as, 4
  br i1 %switch.i, label %bb.v, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = tail call noundef ptr @_ZNK4llvm13ConstantRange16getSingleElementEv(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %.not.i = icmp eq ptr %i.au, null
  %.pre = load i16, ptr %1, align 8               ; 3 uses
  %.pre40 = and i16 %.pre, 255                    ; 2 uses
  br i1 %.not.i, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread

_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit: ; preds = %bb.v, %bb.u
  %.pre-phi = phi i16 [ %i.b, %bb.u ], [ %.pre40, %bb.v ]
  %i.av = phi i16 [ %i.a, %bb.u ], [ %.pre, %bb.v ]
  %i.aw = icmp eq i16 %.pre-phi, 2
  br i1 %i.aw, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread, label %bb.ac

_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread: ; preds = %bb.v, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit
  %.pre-phi42 = phi i16 [ 2, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit ], [ %.pre40, %bb.v ]
  %i.ax = phi i16 [ %i.av, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit ], [ %.pre, %bb.v ]
  store i16 %.pre-phi42, ptr %0, align 8
  %trunc.i22 = trunc i16 %i.ax to i8
  switch i8 %trunc.i22, label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit [
    i8 4, label %bb.w
    i8 5, label %bb.w
    i8 2, label %bb.ab
    i8 3, label %bb.ab
  ]

bb.w:                                             ; preds = %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !10 ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !10
  %i.bd = icmp ult i32 %i.bc, 65
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.be = load i64, ptr %i.az, align 8, !tbaa !8
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i23

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i23

_ZN4llvm5APIntC2ERKS0_.exit.i.i23:                ; preds = %bb.y, %bb.x
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !10 ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !10
  %i.bk = icmp ult i32 %i.bj, 65
  br i1 %i.bk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i23
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !8
  store i64 %i.bl, ptr %i.bf, align 8, !tbaa !8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i24

bb.aa:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i23
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i24

_ZN4llvm13ConstantRangeC2ERKS0_.exit.i24:         ; preds = %bb.aa, %bb.z
  %i.bm = load i16, ptr %1, align 8
  %11 = lshr i16 %i.bm, 8
  %12 = trunc nuw i16 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %12, ptr %13, align 1
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.ab:                                            ; preds = %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.ac:                                            ; preds = %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit
  %i.bq = load i16, ptr %2, align 8               ; 2 uses
  %i.br = and i16 %i.bq, 254
  %switch.i26 = icmp eq i16 %i.br, 4
  br i1 %switch.i26, label %bb.ad, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32

bb.ad:                                            ; preds = %bb.ac
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = tail call noundef ptr @_ZNK4llvm13ConstantRange16getSingleElementEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bs)
  %.not.i29 = icmp eq ptr %i.bt, null
  br i1 %.not.i29, label %._ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit_crit_edge.i30, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32.thread

._ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit_crit_edge.i30: ; preds = %bb.ad
  %.pre.i31 = load i16, ptr %2, align 8
  br label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32

_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32: ; preds = %bb.ac, %._ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit_crit_edge.i30
  %i.bu = phi i16 [ %.pre.i31, %._ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit_crit_edge.i30 ], [ %i.bq, %bb.ac ] ; 2 uses
  %i.bv = and i16 %i.bu, 255
  %i.bw = icmp eq i16 %i.bv, 2
  br i1 %i.bw, label %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32.thread, label %bb.ae

_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32.thread: ; preds = %bb.ad, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32
  tail call void @_ZN4llvm19ValueLatticeElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.ae:                                            ; preds = %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32
  %i.bx = load i16, ptr %1, align 8
  %i.by = and i16 %i.bx, 254
  %switch = icmp eq i16 %i.by, 4
  %i.bz = and i16 %i.bu, 254
  %switch39 = icmp eq i16 %i.bz, 4
  %or.cond = and i1 %switch, %switch39
  br i1 %or.cond, label %bb.af, label %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit

_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit: ; preds = %bb.ae
  tail call void @_ZN4llvm19ValueLatticeElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNK4llvm13ConstantRange13intersectWithERKS0_NS0_18PreferredRangeTypeE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ConstantRange") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i32 noundef 0) #8
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !10
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !10
  %i.cf = load i64, ptr %3, align 8
  store i64 %i.cf, ptr %4, align 8
  store i32 0, ptr %i.cd, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !10
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !10
  %i.cl = load i64, ptr %i.ch, align 8
  store i64 %i.cl, ptr %i.cg, align 8
  store i32 0, ptr %i.cj, align 8, !tbaa !10
  %i.cm = load i16, ptr %1, align 8
  %i.cn = and i16 %i.cm, 255
  %i.co = icmp eq i16 %i.cn, 5
  br i1 %i.co, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i16, ptr %2, align 8
  %i.cq = and i16 %i.cp, 255
  %i.cr = icmp eq i16 %i.cq, 5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cs = phi i1 [ true, %bb.af ], [ %i.cr, %bb.ag ]
  call void @_ZN4llvm19ValueLatticeElement8getRangeENS_13ConstantRangeEb(ptr dead_on_unwind writable sret(%"class.llvm::ValueLatticeElement") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %i.cs)
  call void @_ZN4llvm13ConstantRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #8
  call void @_ZN4llvm13ConstantRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %_ZN4llvm19ValueLatticeElementC2ERKS0_.exit

_ZN4llvm19ValueLatticeElementC2ERKS0_.exit:       ; preds = %bb.b, %bb.d, %bb.ab, %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i24, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit.thread, %bb.t, %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i20, %bb.n, %bb.l, %_ZN4llvm13ConstantRangeC2ERKS0_.exit.i16, %bb.f, %bb.ah, %_ZNK4llvm19ValueLatticeElement15isConstantRangeEb.exit, %_ZN4llvmL14hasSingleValueERKNS_19ValueLatticeElementE.exit32.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19ValueLatticeElementC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8
  %i.b = and i16 %i.a, 255
  store i16 %i.b, ptr %0, align 8
  %i.c = load i16, ptr %1, align 8
  %trunc = trunc i16 %i.c to i8
  switch i8 %trunc, label %bb.h [
    i8 4, label %bb.b
    i8 5, label %bb.b
    i8 2, label %bb.g
    i8 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  store i32 %i.h, ptr %i.f, align 8, !tbaa !10
  %i.i = icmp ult i32 %i.h, 65
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !8
  store i64 %i.j, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #8
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !10   ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !10
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.q = load i64, ptr %i.l, align 8, !tbaa !8
  store i64 %i.q, ptr %i.k, align 8, !tbaa !8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.l) #8
  br label %_ZN4llvm13ConstantRangeC2ERKS0_.exit

_ZN4llvm13ConstantRangeC2ERKS0_.exit:             ; preds = %bb.e, %bb.f
  %i.r = load i16, ptr %1, align 8
  %2 = lshr i16 %i.r, 8
  %3 = trunc nuw i16 %2 to i8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %3, ptr %4, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm13ConstantRangeC2ERKS0_.exit, %bb.a
  ret void
}

declare void @_ZNK4llvm13ConstantRange13intersectWithERKS0_NS0_18PreferredRangeTypeE(ptr dead_on_unwind writable sret(%"class.llvm::ConstantRange") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19ValueLatticeElement8getRangeENS_13ConstantRangeEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::ValueLatticeElement") align 8 %0, ptr nofree noundef align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::ConstantRange", align 8 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm13ConstantRange9isFullSetEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 6, ptr %0, align 8, !alias.scope !21
  br label %_ZN4llvm13ConstantRangeD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm13ConstantRange10isEmptySetEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %spec.store.select = zext i1 %2 to i16
  store i16 %spec.store.select, ptr %0, align 8
  br label %_ZN4llvm13ConstantRangeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  store i16 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10
  store i32 %i.e, ptr %i.c, align 8, !tbaa !10
  %i.f = load i64, ptr %1, align 8
  store i64 %i.f, ptr %3, align 8
  store i32 0, ptr %i.d, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.h, align 8
  store i64 %i.l, ptr %i.g, align 8
  store i32 0, ptr %i.j, align 8, !tbaa !10
  %.sroa.0.0.insert.ext = zext i1 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  %i.m = call noundef zeroext i1 @_ZN4llvm19ValueLatticeElement17markConstantRangeENS_13ConstantRangeENS0_12MergeOptionsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, i64 %.sroa.0.0.insert.insert) ; 0 uses
  %i.n = load i32, ptr %i.i, align 8, !tbaa !10
  %i.o = icmp ugt i32 %i.n, 64
  br i1 %i.o, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.p) #9
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load i32, ptr %i.c, align 8, !tbaa !10
  %i.s = icmp ugt i32 %i.r, 64
  br i1 %i.s, label %bb.h, label %_ZN4llvm13ConstantRangeD2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.t = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN4llvm13ConstantRangeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.t) #9
  br label %_ZN4llvm13ConstantRangeD2Ev.exit

_ZN4llvm13ConstantRangeD2Ev.exit:                 ; preds = %bb.d, %bb.i, %bb.h, %_ZN4llvm5APIntD2Ev.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ConstantRangeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4llvm5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #9
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10
  %i.i = icmp ugt i32 %i.h, 64
  br i1 %i.i, label %bb.d, label %_ZN4llvm5APIntD2Ev.exit1

bb.d:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4llvm5APIntD2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #9
  br label %_ZN4llvm5APIntD2Ev.exit1

_ZN4llvm5APIntD2Ev.exit1:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_19ValueLatticeElementE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 2 uses
  %trunc = trunc i16 %i.a to i8
  switch i8 %trunc, label %bb.w [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 6, label %bb.h
    i8 3, label %bb.k
    i8 5, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str, i64 noundef 7) #8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store ptr %i.l, ptr %i.d, align 8, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ult i64 %i.s, 5
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.1, i64 noundef 5) #8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store ptr %i.w, ptr %i.o, align 8, !tbaa !18
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, 11
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.2, i64 noundef 11) #8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.aa, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
end_hunk_0
