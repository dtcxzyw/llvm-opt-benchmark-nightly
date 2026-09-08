Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstCombineSimplifyDemanded?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1943
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm11raw_ostreamlsEPKc:bb.a
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i64 noundef %i.a) #23
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !192
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !192  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2) #23
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %1, i64 %2, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %2
  store ptr %i.k, ptr %i.c, align 8, !tbaa !192
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvmlsERNS_11raw_ostreamERKNS_9KnownBitsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @_ZNK4llvm9KnownBits5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %0) #23
  ret ptr %0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @_ZN4llvm27computeKnownBitsFromContextEPKNS_5ValueERNS_9KnownBitsERKNS_13SimplifyQueryEj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(59), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm5APInt4ashrEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !29
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.a
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #23
  %.pr = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp ult i32 %.pr, 65
  br i1 %i.e, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.b

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.a
  %.sink = phi ptr [ %1, %bb.a ], [ %0, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.f = phi i32 [ %i.c, %bb.a ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ] ; 4 uses
  %.pre = load i64, ptr %.sink, align 8, !tbaa !31
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  %i.h = sub nuw nsw i32 64, %i.f
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = shl i64 %.pre, %i.i
  %i.k = ashr exact i64 %i.j, %i.i
  %.0.i.i = select i1 %i.g, i64 0, i64 %i.k
  %i.l = icmp eq i32 %2, %i.f
  %narrow.i = select i1 %i.l, i32 63, i32 %2
  %.pn.i = zext nneg i32 %narrow.i to i64
  %storemerge.i = ashr i64 %.0.i.i, %.pn.i
  %i.m = sub nsw i32 0, %i.f
  %i.n = and i32 %i.m, 63
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 -1, %i.o
  %spec.select.i = select i1 %i.g, i64 0, i64 %i.p, !prof !30
  %i.q = and i64 %storemerge.i, %spec.select.i
  store i64 %i.q, ptr %0, align 8, !tbaa !31
  br label %_ZN4llvm5APInt11ashrInPlaceEj.exit

bb.b:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  tail call void @_ZN4llvm5APInt12ashrSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %2) #23
  br label %_ZN4llvm5APInt11ashrInPlaceEj.exit

_ZN4llvm5APInt11ashrInPlaceEj.exit:               ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.b
  ret void
}

declare void @_ZN4llvm11Instruction18setHasNoSignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm11Instruction20setHasNoUnsignedWrapEb(ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm11Instruction17hasNoUnsignedWrapEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jb(ptr noundef nonnull align 8 dereferenceable(1240) %0, ptr noundef %1, ptr nofree noundef align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 13 uses
  %7 = alloca %"class.llvm::SmallVector.119", align 8 ; 12 uses
  %i.c = alloca ptr, align 8                      ; 31 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %8 = alloca %class.anon.125, align 8            ; 22 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 25 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %11 = alloca %"class.llvm::APInt", align 8      ; 15 uses
  %12 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %13 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %14 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %"struct.llvm::PatternMatch::TwoOps_match", align 8 ; 6 uses
  %16 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %17 = alloca %"class.llvm::ArrayRef.148", align 8 ; 6 uses
  %18 = alloca %"class.llvm::detail::BindStorage", align 4 ; 2 uses
  %19 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %20 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %21 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %22 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %23 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %29 = alloca %"class.llvm::SmallVector.149", align 8 ; 9 uses
  %30 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %31 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %34 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %35 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %36 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %37 = alloca %"class.llvm::APInt", align 8      ; 15 uses
  %38 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %39 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %42 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 12 uses
  %44 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %45 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %46 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %47 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %48 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %49 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %50 = alloca %"class.std::function.151", align 8 ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %51 = alloca %class.anon.154, align 8           ; 10 uses
  %52 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %53 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  store i32 %4, ptr %i.b, align 4, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 255
  %i.n = icmp eq i32 %i.m, 19
  br i1 %i.n, label %bb.lu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !194  ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 %i.p, ptr %i.q, align 8, !tbaa !29, !alias.scope !565
  %i.r = icmp ult i32 %i.p, 65                    ; 4 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nsw i32 0, %i.p
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 -1, %i.u
  %i.w = icmp eq i32 %i.p, 0
  %spec.select.i.i = select i1 %i.w, i64 0, i64 %i.v, !prof !30
  store i64 %spec.select.i.i, ptr %6, align 8, !tbaa !31, !alias.scope !565
  br label %_ZN4llvm5APInt10getAllOnesEj.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef -1, i1 noundef zeroext true) #23
  br label %_ZN4llvm5APInt10getAllOnesEj.exit

_ZN4llvm5APInt10getAllOnesEj.exit:                ; preds = %bb.c, %bb.d
  %i.x = load i8, ptr %1, align 8, !tbaa !57
  %i.y = icmp eq i8 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.q, align 8, !tbaa !29  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %6, align 8, !tbaa !31
  store i64 %i.ae, ptr %3, align 8, !tbaa !31
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !29
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %6) #23
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.i:                                             ; preds = %_ZN4llvm5APInt10getAllOnesEj.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 21 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 65
  br i1 %i.ah, label %.split, label %_ZNK4llvm5APInt6isZeroEv.exit

.split:                                           ; preds = %bb.i
  %i.ai = load i64, ptr %2, align 8, !tbaa !31
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.n

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.i
  %i.ak = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25
  %i.al = icmp eq i32 %i.ak, %i.ag
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %i.ao = icmp ult i32 %i.an, 65
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !29  ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 65
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %6, align 8, !tbaa !31
  store i64 %i.ar, ptr %3, align 8, !tbaa !31
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !29
  br label %_ZN4llvm5APIntaSERKS0_.exit426

bb.m:                                             ; preds = %bb.k, %bb.j
  call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %6) #23
  br label %_ZN4llvm5APIntaSERKS0_.exit426

_ZN4llvm5APIntaSERKS0_.exit426:                   ; preds = %bb.l, %bb.m
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.at = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.as) #23
  br label %_ZN4llvm5APIntaSERKS0_.exit

bb.n:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 18 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !29 ; 2 uses
  %i.aw = icmp ult i32 %i.av, 65
  br i1 %i.aw, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %bb.o

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.n
  store i64 0, ptr %3, align 8, !tbaa !31
  br label %_ZN4llvm5APIntaSEm.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %3, align 8, !tbaa !31
  store i64 0, ptr %i.ax, align 8, !tbaa !94
  %i.ay = load ptr, ptr %3, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i32 %i.av to i64
  %i.bb = add nuw nsw i64 %i.ba, 63
  %sh.diff.i = lshr i64 %i.bb, 3
  %i.bc = and i64 %sh.diff.i, 1073741816
  %i.bd = add nsw i64 %i.bc, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.bd, i1 false)
  br label %_ZN4llvm5APIntaSEm.exit

_ZN4llvm5APIntaSEm.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %bb.o
  %i.be = load i8, ptr %1, align 8, !tbaa !57     ; 3 uses
  %i.bf = icmp ugt i8 %i.be, 22
  br i1 %i.bf, label %.thread591, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5APIntaSEm.exit
  %i.bg = load i32, ptr %i.af, align 8, !tbaa !29 ; 4 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN4llvm5APIntaSERKS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp ult i32 %i.bg, 65
  br i1 %i.bi, label %_ZNK4llvm5APInt9isAllOnesEv.exit, label %.split589

.split589:                                        ; preds = %bb.q
  %i.bj = call noundef i32 @_ZNK4llvm5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %2) #25
  %i.bk = icmp eq i32 %i.bj, %i.bg
  br i1 %i.bk, label %_ZN4llvm5APIntaSERKS0_.exit, label %bb.r

_ZNK4llvm5APInt9isAllOnesEv.exit:                 ; preds = %bb.q
  %i.bl = load i64, ptr %2, align 8, !tbaa !31
  %i.bm = sub nuw nsw i32 64, %i.bg
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn
  %i.bp = icmp eq i64 %i.bl, %i.bo
  br i1 %i.bp, label %_ZN4llvm5APIntaSERKS0_.exit, label %bb.r

bb.r:                                             ; preds = %.split589, %_ZNK4llvm5APInt9isAllOnesEv.exit
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !195
  %i.bt = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.bs) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.bv, align 8, !tbaa !153
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.bw, align 4, !tbaa !157
  %.not394665 = icmp eq i32 %i.p, 0
  br i1 %.not394665, label %.critedge422, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r, %_ZN4llvm5APInt6setBitEj.exit
  %.0334666 = phi i32 [ %i.dp, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %bb.r ] ; 4 uses
  %i.bx = and i32 %.0334666, 63
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by                    ; 5 uses
  %i.ca = load i32, ptr %i.af, align 8, !tbaa !29
  %i.cb = icmp ult i32 %i.ca, 65
  %i.cc = load ptr, ptr %2, align 8
  %i.cd = lshr i32 %.0334666, 6
  %i.ce = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  %.in.i.i = select i1 %i.cb, ptr %2, ptr %i.cf
  %i.cg = load i64, ptr %.in.i.i, align 8, !tbaa !31
  %i.ch = and i64 %i.cg, %i.bz
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.lr.ph
  %i.ci = load i32, ptr %i.bv, align 8, !tbaa !153 ; 2 uses
  %i.cj = load i32, ptr %i.bw, align 4, !tbaa !157
  %.not.i = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i, label %bb.u, label %bb.t, !prof !158

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

bb.u:                                             ; preds = %bb.s
  %i.ck = zext i32 %i.ci to i64
  %i.cl = load ptr, ptr %7, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store ptr %i.bt, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.bv, align 8, !tbaa !153
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.bv, align 8, !tbaa !153
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit: ; preds = %bb.t, %bb.u
  %i.cp = load i32, ptr %i.au, align 8, !tbaa !29
  %i.cq = icmp ult i32 %i.cp, 65
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE9push_backES2_.exit
  %i.cr = load i64, ptr %3, align 8, !tbaa !31
  %i.cs = or i64 %i.cr, %i.bz
  store i64 %i.cs, ptr %3, align 8, !tbaa !31
  br label %_ZN4llvm5APInt6setBitEj.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jb:bb.a

bb.gt:                                            ; preds = %bb.gr
  %i.abz = load ptr, ptr %32, align 8, !tbaa !31
  %i.aca = lshr i32 %.0313679, 6
  %i.acb = zext nneg i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.acb ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !94
  %i.ace = and i64 %i.acd, %i.abu
  store i64 %i.ace, ptr %i.acc, align 8, !tbaa !94
  br label %_ZN4llvm5APInt8clearBitEj.exit506

_ZN4llvm5APInt8clearBitEj.exit506:                ; preds = %bb.gt, %bb.gs, %bb.gp, %bb.go, %bb.gq
  %i.acf = add nuw i32 %.0313679, 1               ; 2 uses
  %exitcond718.not = icmp eq i32 %i.acf, %i.p
  br i1 %exitcond718.not, label %.loopexit, label %.lr.ph680, !llvm.loop !558

.loopexit:                                        ; preds = %_ZN4llvm5APInt8clearBitEj.exit506, %_ZN4llvm5APIntC2ERKS0_.exit504
  %i.acg = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ach = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.aci = load i32, ptr %i.aao, align 8, !tbaa !29 ; 2 uses
  store i32 %i.aci, ptr %i.ach, align 8, !tbaa !29
  %i.acj = icmp ult i32 %i.aci, 65
  br i1 %i.acj, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.loopexit
  %i.ack = load i64, ptr %31, align 8, !tbaa !31
  store i64 %i.ack, ptr %33, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit508

bb.gv:                                            ; preds = %.loopexit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 8 dereferenceable(12) %31) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit508

_ZN4llvm5APIntC2ERKS0_.exit508:                   ; preds = %bb.gu, %bb.gv
  call fastcc void @"_ZZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jbENK3$_0clEPNS_11InstructionEjS3_S4_"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.acg, i32 noundef 1, ptr nofree noundef align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %i.acl = load i32, ptr %i.ach, align 8, !tbaa !29
  %i.acm = icmp ugt i32 %i.acl, 64
  br i1 %i.acm, label %bb.gw, label %_ZN4llvm5APIntD2Ev.exit509

bb.gw:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit508
  %i.acn = load ptr, ptr %33, align 8, !tbaa !31  ; 2 uses
  %i.aco = icmp eq ptr %i.acn, null
  br i1 %i.aco, label %_ZN4llvm5APIntD2Ev.exit509, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZdaPv(ptr noundef nonnull %i.acn) #24
  br label %_ZN4llvm5APIntD2Ev.exit509

_ZN4llvm5APIntD2Ev.exit509:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit508, %bb.gw, %bb.gx
  %i.acp = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.acq = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.acr = load i32, ptr %i.aar, align 8, !tbaa !29 ; 2 uses
  store i32 %i.acr, ptr %i.acq, align 8, !tbaa !29
  %i.acs = icmp ult i32 %i.acr, 65
  br i1 %i.acs, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit509
  %i.act = load i64, ptr %32, align 8, !tbaa !31
  store i64 %i.act, ptr %34, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit510

bb.gz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit509
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %32) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit510

_ZN4llvm5APIntC2ERKS0_.exit510:                   ; preds = %bb.gy, %bb.gz
  call fastcc void @"_ZZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jbENK3$_0clEPNS_11InstructionEjS3_S4_"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.acp, i32 noundef 2, ptr nofree noundef align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(12) %10)
  %i.acu = load i32, ptr %i.acq, align 8, !tbaa !29
  %i.acv = icmp ugt i32 %i.acu, 64
  br i1 %i.acv, label %bb.ha, label %_ZN4llvm5APIntD2Ev.exit511

bb.ha:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit510
  %i.acw = load ptr, ptr %34, align 8, !tbaa !31  ; 2 uses
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %_ZN4llvm5APIntD2Ev.exit511, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @_ZdaPv(ptr noundef nonnull %i.acw) #24
  br label %_ZN4llvm5APIntD2Ev.exit511

_ZN4llvm5APIntD2Ev.exit511:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit510, %bb.ha, %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  %i.acy = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.acz = load i32, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  store i32 %i.acz, ptr %i.acy, align 8, !tbaa !29
  %i.ada = icmp ult i32 %i.acz, 65
  br i1 %i.ada, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit511
  %i.adb = load i64, ptr %9, align 8, !tbaa !31
  store i64 %i.adb, ptr %36, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit512

bb.hd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit511
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %36, ptr noundef nonnull align 8 dereferenceable(12) %9) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit512

_ZN4llvm5APIntC2ERKS0_.exit512:                   ; preds = %bb.hc, %bb.hd
  call void @_ZN4llvmanENS_5APIntERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %35, ptr nofree noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(12) %10)
  %i.adc = load i32, ptr %i.au, align 8, !tbaa !29
  %i.add = icmp ult i32 %i.adc, 65
  br i1 %i.add, label %_ZN4llvm5APIntD2Ev.exit513, label %bb.he

bb.he:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit512
  %i.ade = load ptr, ptr %3, align 8, !tbaa !31   ; 2 uses
  %i.adf = icmp eq ptr %i.ade, null
  br i1 %i.adf, label %_ZN4llvm5APIntD2Ev.exit513, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @_ZdaPv(ptr noundef nonnull %i.ade) #24
  br label %_ZN4llvm5APIntD2Ev.exit513

_ZN4llvm5APIntD2Ev.exit513:                       ; preds = %bb.hf, %bb.he, %_ZN4llvm5APIntC2ERKS0_.exit512
  %i.adg = load i64, ptr %35, align 8
  store i64 %i.adg, ptr %3, align 8
  %i.adh = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.adi = load i32, ptr %i.adh, align 8, !tbaa !29
  store i32 %i.adi, ptr %i.au, align 8, !tbaa !29
  store i32 0, ptr %i.adh, align 8, !tbaa !29
  %i.adj = load i32, ptr %i.acy, align 8, !tbaa !29
  %i.adk = icmp ugt i32 %i.adj, 64
  br i1 %i.adk, label %bb.hg, label %_ZN4llvm5APIntD2Ev.exit514

bb.hg:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit513
  %i.adl = load ptr, ptr %36, align 8, !tbaa !31  ; 2 uses
  %i.adm = icmp eq ptr %i.adl, null
  br i1 %i.adm, label %_ZN4llvm5APIntD2Ev.exit514, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @_ZdaPv(ptr noundef nonnull %i.adl) #24
  br label %_ZN4llvm5APIntD2Ev.exit514

_ZN4llvm5APIntD2Ev.exit514:                       ; preds = %_ZN4llvm5APIntD2Ev.exit513, %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.adn = load i32, ptr %i.aar, align 8, !tbaa !29
  %i.ado = icmp ugt i32 %i.adn, 64
  br i1 %i.ado, label %bb.hi, label %_ZN4llvm5APIntD2Ev.exit515

bb.hi:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit514
  %i.adp = load ptr, ptr %32, align 8, !tbaa !31  ; 2 uses
  %i.adq = icmp eq ptr %i.adp, null
  br i1 %i.adq, label %_ZN4llvm5APIntD2Ev.exit515, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @_ZdaPv(ptr noundef nonnull %i.adp) #24
  br label %_ZN4llvm5APIntD2Ev.exit515

_ZN4llvm5APIntD2Ev.exit515:                       ; preds = %_ZN4llvm5APIntD2Ev.exit514, %bb.hi, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  %i.adr = load i32, ptr %i.aao, align 8, !tbaa !29
  %i.ads = icmp ugt i32 %i.adr, 64
  br i1 %i.ads, label %bb.hk, label %_ZN4llvm5APIntD2Ev.exit516

bb.hk:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit515
  %i.adt = load ptr, ptr %31, align 8, !tbaa !31  ; 2 uses
  %i.adu = icmp eq ptr %i.adt, null
  br i1 %i.adu, label %_ZN4llvm5APIntD2Ev.exit516, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @_ZdaPv(ptr noundef nonnull %i.adt) #24
  br label %_ZN4llvm5APIntD2Ev.exit516

_ZN4llvm5APIntD2Ev.exit516:                       ; preds = %_ZN4llvm5APIntD2Ev.exit515, %bb.hk, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %_ZN4llvm5APIntD2Ev.exit538

bb.hm:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit434
  %i.adv = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.adw = load i32, ptr %i.adv, align 4          ; 2 uses
  %i.adx = and i32 %i.adw, 1073741824
  %.not.i.i517 = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i517, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ady = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !58
  br label %_ZNK4llvm4User10getOperandEj.exit518

bb.ho:                                            ; preds = %bb.hm
  %i.aea = and i32 %i.adw, 268435455
  %i.aeb = zext nneg i32 %i.aea to i64
  %i.aec = sub nsw i64 0, %i.aeb
  %i.aed = getelementptr inbounds [32 x i8], ptr %i.em, i64 %i.aec
  br label %_ZNK4llvm4User10getOperandEj.exit518

_ZNK4llvm4User10getOperandEj.exit518:             ; preds = %bb.hn, %bb.ho
  %i.aee = phi ptr [ %i.adz, %bb.hn ], [ %i.aed, %bb.ho ]
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !63
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !55 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 8
  %i.aej = load i32, ptr %i.aei, align 8
  %i.aek = and i32 %i.aej, 254
  %spec.select.i.i.i.i.i.i.i.i = icmp ne i32 %i.aek, 18
  %.not402634 = icmp eq ptr %i.aeh, null
  %.not402 = or i1 %.not402634, %spec.select.i.i.i.i.i.i.i.i
  br i1 %.not402, label %_ZN4llvm5APIntD2Ev.exit538, label %bb.hp

bb.hp:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit518
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 32
  %i.aem = load i32, ptr %i.ael, align 8, !tbaa !194 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  %i.aen = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 5 uses
  store i32 %i.aem, ptr %i.aen, align 8, !tbaa !29
  %i.aeo = icmp ult i32 %i.aem, 65
  %i.aep = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  br i1 %i.aeo, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  store i64 0, ptr %37, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  store i32 %i.aem, ptr %i.aep, align 8, !tbaa !29
  store i64 0, ptr %38, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2Ejmbb.exit521

bb.hr:                                            ; preds = %bb.hp
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %37, i64 noundef 0, i1 noundef zeroext false) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  store i32 %i.aem, ptr %i.aep, align 8, !tbaa !29
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %38, i64 noundef 0, i1 noundef zeroext false) #23
  br label %_ZN4llvm5APIntC2Ejmbb.exit521

_ZN4llvm5APIntC2Ejmbb.exit521:                    ; preds = %bb.hq, %bb.hr
  %i.aeq = load i32, ptr %i.ek, align 8, !tbaa !29
  %i.aer = icmp ult i32 %i.aeq, 65
  br i1 %i.aer, label %_ZN4llvm5APIntD2Ev.exit523, label %bb.hs

bb.hs:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit521
  %i.aes = load ptr, ptr %9, align 8, !tbaa !31   ; 2 uses
  %i.aet = icmp eq ptr %i.aes, null
  br i1 %i.aet, label %_ZN4llvm5APIntD2Ev.exit523, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_ZdaPv(ptr noundef nonnull %i.aes) #24
  br label %_ZN4llvm5APIntD2Ev.exit523

_ZN4llvm5APIntD2Ev.exit523:                       ; preds = %bb.ht, %bb.hs, %_ZN4llvm5APIntC2Ejmbb.exit521
  %i.aeu = load i64, ptr %38, align 8
  store i64 %i.aeu, ptr %9, align 8
  %i.aev = load i32, ptr %i.aep, align 8, !tbaa !29
  store i32 %i.aev, ptr %i.ek, align 8, !tbaa !29
  store i32 0, ptr %i.aep, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %i.aew = icmp eq i32 %i.p, %i.aem               ; 2 uses
  br i1 %i.aew, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit523
  %i.aex = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntaSERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %37, ptr noundef nonnull align 8 dereferenceable(12) %2) ; 0 uses
  br label %.loopexit661

bb.hv:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit523
  %i.aey = urem i32 %i.p, %i.aem
  %i.aez = icmp eq i32 %i.aey, 0
  br i1 %i.aez, label %bb.hw, label %bb.ib

bb.hw:                                            ; preds = %bb.hv
  %i.afa = udiv i32 %i.p, %i.aem                  ; 2 uses
  %.not404670 = icmp eq i32 %i.p, 0
  br i1 %.not404670, label %.loopexit661, label %.lr.ph672

.lr.ph672:                                        ; preds = %bb.hw
  %i.afb = load i32, ptr %i.af, align 8, !tbaa !29
  %i.afc = icmp ult i32 %i.afb, 65
  %i.afd = load i32, ptr %i.aen, align 8
  %i.afe = icmp ult i32 %i.afd, 65
  br label %bb.hx

bb.hx:                                            ; preds = %.lr.ph672, %_ZN4llvm5APInt6setBitEj.exit525
  %.0311671 = phi i32 [ 0, %.lr.ph672 ], [ %i.aga, %_ZN4llvm5APInt6setBitEj.exit525 ] ; 4 uses
  %i.aff = and i32 %.0311671, 63
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = shl nuw i64 1, %i.afg
  %i.afi = load ptr, ptr %2, align 8
  %i.afj = lshr i32 %.0311671, 6
  %i.afk = zext nneg i32 %i.afj to i64
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %i.afk
  %.in.i.i524 = select i1 %i.afc, ptr %2, ptr %i.afl
  %i.afm = load i64, ptr %.in.i.i524, align 8, !tbaa !31
  %i.afn = and i64 %i.afm, %i.afh
  %.not636 = icmp eq i64 %i.afn, 0
  br i1 %.not636, label %_ZN4llvm5APInt6setBitEj.exit525, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.afo = udiv i32 %.0311671, %i.afa             ; 2 uses
  %i.afp = and i32 %i.afo, 63
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = shl nuw i64 1, %i.afq                  ; 2 uses
  br i1 %i.afe, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.afs = load i64, ptr %37, align 8, !tbaa !31
  %i.aft = or i64 %i.afs, %i.afr
  store i64 %i.aft, ptr %37, align 8, !tbaa !31
  br label %_ZN4llvm5APInt6setBitEj.exit525

bb.ia:                                            ; preds = %bb.hy
  %i.afu = load ptr, ptr %37, align 8, !tbaa !31
  %i.afv = lshr i32 %i.afo, 6
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afu, i64 %i.afw ; 2 uses
  %i.afy = load i64, ptr %i.afx, align 8, !tbaa !94
  %i.afz = or i64 %i.afy, %i.afr
  store i64 %i.afz, ptr %i.afx, align 8, !tbaa !94
  br label %_ZN4llvm5APInt6setBitEj.exit525

_ZN4llvm5APInt6setBitEj.exit525:                  ; preds = %bb.ia, %bb.hz, %bb.hx
  %i.aga = add nuw i32 %.0311671, 1               ; 2 uses
  %.not404 = icmp eq i32 %i.aga, %i.p
  br i1 %.not404, label %.loopexit661, label %bb.hx, !llvm.loop !559

bb.ib:                                            ; preds = %bb.hv
  %i.agb = urem i32 %i.aem, %i.p
  %54 = udiv i32 %i.aem, %i.p                     ; 2 uses
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %bb.ic, label %.loopexit659

bb.ic:                                            ; preds = %bb.ib
  %i.agd = load i32, ptr %i.af, align 8, !tbaa !29
  %i.age = icmp ult i32 %i.agd, 65
  %i.agf = load i32, ptr %i.aen, align 8
  %i.agg = icmp ult i32 %i.agf, 65
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %_ZN4llvm5APInt6setBitEj.exit527
  %.0310669 = phi i32 [ 0, %bb.ic ], [ %i.ahc, %_ZN4llvm5APInt6setBitEj.exit527 ] ; 4 uses
  %i.agh = udiv i32 %.0310669, %54                ; 2 uses
  %i.agi = and i32 %i.agh, 63
  %i.agj = zext nneg i32 %i.agi to i64
  %i.agk = shl nuw i64 1, %i.agj
  %i.agl = load ptr, ptr %2, align 8
  %i.agm = lshr i32 %i.agh, 6
  %i.agn = zext nneg i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.agn
  %.in.i.i526 = select i1 %i.age, ptr %2, ptr %i.ago
  %i.agp = load i64, ptr %.in.i.i526, align 8, !tbaa !31
  %i.agq = and i64 %i.agp, %i.agk
  %.not635 = icmp eq i64 %i.agq, 0
  br i1 %.not635, label %_ZN4llvm5APInt6setBitEj.exit527, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.agr = and i32 %.0310669, 63
  %i.ags = zext nneg i32 %i.agr to i64
  %i.agt = shl nuw i64 1, %i.ags                  ; 2 uses
  br i1 %i.agg, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.agu = load i64, ptr %37, align 8, !tbaa !31
  %i.agv = or i64 %i.agu, %i.agt
  store i64 %i.agv, ptr %37, align 8, !tbaa !31
  br label %_ZN4llvm5APInt6setBitEj.exit527

bb.ig:                                            ; preds = %bb.ie
  %i.agw = load ptr, ptr %37, align 8, !tbaa !31
  %i.agx = lshr i32 %.0310669, 6
  %i.agy = zext nneg i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %i.agy ; 2 uses
  %i.aha = load i64, ptr %i.agz, align 8, !tbaa !94
  %i.ahb = or i64 %i.aha, %i.agt
  store i64 %i.ahb, ptr %i.agz, align 8, !tbaa !94
  br label %_ZN4llvm5APInt6setBitEj.exit527

_ZN4llvm5APInt6setBitEj.exit527:                  ; preds = %bb.ig, %bb.if, %bb.id
  %i.ahc = add i32 %.0310669, 1                   ; 2 uses
  %.not403 = icmp eq i32 %i.ahc, %i.aem
  br i1 %.not403, label %.loopexit661, label %bb.id, !llvm.loop !560

.loopexit661:                                     ; preds = %_ZN4llvm5APInt6setBitEj.exit527, %_ZN4llvm5APInt6setBitEj.exit525, %bb.hw, %bb.hu
  %.0312 = phi i32 [ 1, %bb.hu ], [ 0, %bb.hw ], [ %i.afa, %_ZN4llvm5APInt6setBitEj.exit525 ], [ %54, %_ZN4llvm5APInt6setBitEj.exit527 ] ; 4 uses
  %i.ahd = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.ahe = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.ahf = load i32, ptr %i.aen, align 8, !tbaa !29 ; 2 uses
  store i32 %i.ahf, ptr %i.ahe, align 8, !tbaa !29
  %i.ahg = icmp ult i32 %i.ahf, 65
  br i1 %i.ahg, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %.loopexit661
  %i.ahh = load i64, ptr %37, align 8, !tbaa !31
  store i64 %i.ahh, ptr %39, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit528

bb.ii:                                            ; preds = %.loopexit661
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %37) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit528

_ZN4llvm5APIntC2ERKS0_.exit528:                   ; preds = %bb.ih, %bb.ii
  call fastcc void @"_ZZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jbENK3$_0clEPNS_11InstructionEjS3_S4_"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %i.ahd, i32 noundef 0, ptr nofree noundef align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(12) %9)
  %i.ahi = load i32, ptr %i.ahe, align 8, !tbaa !29
  %i.ahj = icmp ugt i32 %i.ahi, 64
  br i1 %i.ahj, label %bb.ij, label %_ZN4llvm5APIntD2Ev.exit529

bb.ij:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit528
  %i.ahk = load ptr, ptr %39, align 8, !tbaa !31  ; 2 uses
  %i.ahl = icmp eq ptr %i.ahk, null
  br i1 %i.ahl, label %_ZN4llvm5APIntD2Ev.exit529, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZdaPv(ptr noundef nonnull %i.ahk) #24
  br label %_ZN4llvm5APIntD2Ev.exit529

_ZN4llvm5APIntD2Ev.exit529:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit528, %bb.ij, %bb.ik
  br i1 %i.aew, label %bb.il, label %bb.im

bb.il:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit529
  %i.ahm = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntaSERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %9) ; 0 uses
  br label %.loopexit659

bb.im:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit529
  %i.ahn = urem i32 %i.p, %i.aem
  %i.aho = icmp eq i32 %i.ahn, 0
  br i1 %i.aho, label %.preheader658, label %.lr.ph675

.preheader658:                                    ; preds = %bb.im
  %.not406676 = icmp eq i32 %i.p, 0
  br i1 %.not406676, label %.loopexit659, label %.lr.ph678

.lr.ph678:                                        ; preds = %.preheader658
  %i.ahp = load i32, ptr %i.ek, align 8, !tbaa !29
  %i.ahq = icmp ult i32 %i.ahp, 65
  %.pre743 = load ptr, ptr %9, align 8
  br label %bb.in

bb.in:                                            ; preds = %.lr.ph678, %_ZN4llvm5APInt6setBitEj.exit531
  %i.ahr = phi ptr [ %.pre743, %.lr.ph678 ], [ %i.aio, %_ZN4llvm5APInt6setBitEj.exit531 ] ; 3 uses
  %.0309677 = phi i32 [ 0, %.lr.ph678 ], [ %i.aip, %_ZN4llvm5APInt6setBitEj.exit531 ] ; 4 uses
  %i.ahs = udiv i32 %.0309677, %.0312             ; 2 uses
  %i.aht = and i32 %i.ahs, 63
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = shl nuw i64 1, %i.ahu
  %i.ahw = lshr i32 %i.ahs, 6
  %i.ahx = zext nneg i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %i.ahx
  %.in.i.i530 = select i1 %i.ahq, ptr %9, ptr %i.ahy
  %i.ahz = load i64, ptr %.in.i.i530, align 8, !tbaa !31
  %i.aia = and i64 %i.ahz, %i.ahv
  %.not637 = icmp eq i64 %i.aia, 0
  br i1 %.not637, label %_ZN4llvm5APInt6setBitEj.exit531, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.aib = and i32 %.0309677, 63
  %i.aic = zext nneg i32 %i.aib to i64
  %i.aid = shl nuw i64 1, %i.aic                  ; 2 uses
  %i.aie = load i32, ptr %i.au, align 8, !tbaa !29
  %i.aif = icmp ult i32 %i.aie, 65
  br i1 %i.aif, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.aig = load i64, ptr %3, align 8, !tbaa !31
  %i.aih = or i64 %i.aig, %i.aid
  store i64 %i.aih, ptr %3, align 8, !tbaa !31
  br label %_ZN4llvm5APInt6setBitEj.exit531

bb.iq:                                            ; preds = %bb.io
  %i.aii = load ptr, ptr %3, align 8, !tbaa !31
  %i.aij = lshr i32 %.0309677, 6
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.aii, i64 %i.aik ; 2 uses
  %i.aim = load i64, ptr %i.ail, align 8, !tbaa !94
  %i.ain = or i64 %i.aim, %i.aid
  store i64 %i.ain, ptr %i.ail, align 8, !tbaa !94
  %.pre742 = load ptr, ptr %9, align 8
  br label %_ZN4llvm5APInt6setBitEj.exit531

_ZN4llvm5APInt6setBitEj.exit531:                  ; preds = %bb.iq, %bb.ip, %bb.in
  %i.aio = phi ptr [ %.pre742, %bb.iq ], [ %i.ahr, %bb.ip ], [ %i.ahr, %bb.in ]
  %i.aip = add nuw i32 %.0309677, 1               ; 2 uses
  %.not406 = icmp eq i32 %i.aip, %i.p
  br i1 %.not406, label %.loopexit659, label %bb.in, !llvm.loop !561

.lr.ph675:                                        ; preds = %bb.im
  %i.aiq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.air = getelementptr inbounds nuw i8, ptr %40, i64 8
  br label %bb.ir

bb.ir:                                            ; preds = %.lr.ph675, %_ZN4llvm5APIntD2Ev.exit535
  %.0308674 = phi i32 [ 0, %.lr.ph675 ], [ %i.aju, %_ZN4llvm5APIntD2Ev.exit535 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  %i.ais = mul i32 %.0308674, %.0312
  call void @_ZNK4llvm5APInt4lshrEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %41, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.ais)
  call void @_ZNK4llvm5APInt11zextOrTruncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %40, ptr noundef nonnull align 8 dereferenceable(12) %41, i32 noundef %.0312) #23
  %i.ait = load i32, ptr %i.aiq, align 8, !tbaa !29
  %i.aiu = icmp ugt i32 %i.ait, 64
  br i1 %i.aiu, label %bb.is, label %_ZN4llvm5APIntD2Ev.exit532

bb.is:                                            ; preds = %bb.ir
  %i.aiv = load ptr, ptr %41, align 8, !tbaa !31  ; 2 uses
  %i.aiw = icmp eq ptr %i.aiv, null
  br i1 %i.aiw, label %_ZN4llvm5APIntD2Ev.exit532, label %bb.it

bb.it:                                            ; preds = %bb.is
  call void @_ZdaPv(ptr noundef nonnull %i.aiv) #24
  br label %_ZN4llvm5APIntD2Ev.exit532

_ZN4llvm5APIntD2Ev.exit532:                       ; preds = %bb.ir, %bb.is, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  %i.aix = load i32, ptr %i.air, align 8, !tbaa !29 ; 2 uses
  %i.aiy = icmp ult i32 %i.aix, 65
  br i1 %i.aiy, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit532
  %i.aiz = load i64, ptr %40, align 8, !tbaa !31
  %i.aja = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.aiz)
  %i.ajb = trunc nuw nsw i64 %i.aja to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit

bb.iv:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit532
  %i.ajc = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %40) #25
  br label %_ZNK4llvm5APInt8popcountEv.exit

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %bb.iu, %bb.iv
  %.0.i533 = phi i32 [ %i.ajb, %bb.iu ], [ %i.ajc, %bb.iv ]
  %i.ajd = icmp eq i32 %.0.i533, %.0312
  br i1 %i.ajd, label %bb.iw, label %_ZN4llvm5APInt6setBitEj.exit534

bb.iw:                                            ; preds = %_ZNK4llvm5APInt8popcountEv.exit
  %i.aje = and i32 %.0308674, 63
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = shl nuw i64 1, %i.ajf                  ; 2 uses
  %i.ajh = load i32, ptr %i.au, align 8, !tbaa !29
  %i.aji = icmp ult i32 %i.ajh, 65
  br i1 %i.aji, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.ajj = load i64, ptr %3, align 8, !tbaa !31
  %i.ajk = or i64 %i.ajj, %i.ajg
  store i64 %i.ajk, ptr %3, align 8, !tbaa !31
  br label %_ZN4llvm5APInt6setBitEj.exit534

bb.iy:                                            ; preds = %bb.iw
  %i.ajl = load ptr, ptr %3, align 8, !tbaa !31
  %i.ajm = lshr i32 %.0308674, 6
  %i.ajn = zext nneg i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajn ; 2 uses
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !94
  %i.ajq = or i64 %i.ajp, %i.ajg
  store i64 %i.ajq, ptr %i.ajo, align 8, !tbaa !94
  br label %_ZN4llvm5APInt6setBitEj.exit534

_ZN4llvm5APInt6setBitEj.exit534:                  ; preds = %bb.iy, %bb.ix, %_ZNK4llvm5APInt8popcountEv.exit
  %i.ajr = icmp ugt i32 %i.aix, 64
  br i1 %i.ajr, label %bb.iz, label %_ZN4llvm5APIntD2Ev.exit535

bb.iz:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit534
  %i.ajs = load ptr, ptr %40, align 8, !tbaa !31  ; 2 uses
  %i.ajt = icmp eq ptr %i.ajs, null
  br i1 %i.ajt, label %_ZN4llvm5APIntD2Ev.exit535, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @_ZdaPv(ptr noundef nonnull %i.ajs) #24
  br label %_ZN4llvm5APIntD2Ev.exit535

_ZN4llvm5APIntD2Ev.exit535:                       ; preds = %_ZN4llvm5APInt6setBitEj.exit534, %bb.iz, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  %i.aju = add nuw i32 %.0308674, 1               ; 2 uses
  %.not405 = icmp eq i32 %i.aju, %i.p
  br i1 %.not405, label %.loopexit659, label %bb.ir, !llvm.loop !562

.loopexit659:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit535, %_ZN4llvm5APInt6setBitEj.exit531, %.preheader658, %bb.il, %bb.ib
  %i.ajv = load i32, ptr %i.aen, align 8, !tbaa !29
  %i.ajw = icmp ugt i32 %i.ajv, 64
  br i1 %i.ajw, label %bb.jb, label %_ZN4llvm5APIntD2Ev.exit536

bb.jb:                                            ; preds = %.loopexit659
  %i.ajx = load ptr, ptr %37, align 8, !tbaa !31  ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, null
  br i1 %i.ajy, label %_ZN4llvm5APIntD2Ev.exit536, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  call void @_ZdaPv(ptr noundef nonnull %i.ajx) #24
  br label %_ZN4llvm5APIntD2Ev.exit536

_ZN4llvm5APIntD2Ev.exit536:                       ; preds = %.loopexit659, %bb.jb, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %_ZN4llvm5APIntD2Ev.exit538

bb.jd:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit434, %_ZN4llvm5APIntC2Ejmbb.exit434
  %i.ajz = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.aka = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  store i32 %i.aka, ptr %i.ajz, align 8, !tbaa !29
  %i.akb = icmp ult i32 %i.aka, 65
  br i1 %i.akb, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.akc = load i64, ptr %2, align 8, !tbaa !31
  store i64 %i.akc, ptr %42, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit537

bb.jf:                                            ; preds = %bb.jd
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %42, ptr noundef nonnull align 8 dereferenceable(12) %2) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit537

_ZN4llvm5APIntC2ERKS0_.exit537:                   ; preds = %bb.je, %bb.jf
  call fastcc void @"_ZZN4llvm16InstCombinerImpl26SimplifyDemandedVectorEltsEPNS_5ValueENS_5APIntERS3_jbENK3$_0clEPNS_11InstructionEjS3_S4_"(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %i.em, i32 noundef 0, ptr nofree noundef align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(12) %3)
  %i.akd = load i32, ptr %i.ajz, align 8, !tbaa !29
  %i.ake = icmp ugt i32 %i.akd, 64
  br i1 %i.ake, label %bb.jg, label %_ZN4llvm5APIntD2Ev.exit538

bb.jg:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit537
  %i.akf = load ptr, ptr %42, align 8, !tbaa !31  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, null
  br i1 %i.akg, label %_ZN4llvm5APIntD2Ev.exit538, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  call void @_ZdaPv(ptr noundef nonnull %i.akf) #24
  br label %_ZN4llvm5APIntD2Ev.exit538

bb.ji:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit434
  %i.akh = getelementptr inbounds i8, ptr %i.em, i64 -32 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !63 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aki, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm5APIntD2Ev.exit538, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.akj = load i8, ptr %i.aki, align 8, !tbaa !57
  %i.akk = icmp eq i8 %i.akj, 14
  br i1 %i.akk, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i, label %_ZN4llvm5APIntD2Ev.exit538

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i: ; preds = %bb.jj
  %i.akl = getelementptr inbounds nuw i8, ptr %i.aki, i64 32
  %i.akm = load i32, ptr %i.akl, align 8
  %i.akn = and i32 %i.akm, 8192
  %.not.i.i540 = icmp eq i32 %i.akn, 0
  br i1 %.not.i.i540, label %_ZN4llvm5APIntD2Ev.exit538, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aki, i64 36
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !146
  %i.akq = and i32 %i.akp, -2
  %switch = icmp eq i32 %i.akq, 240
  br i1 %switch, label %bb.jk, label %bb.kp

bb.jk:                                            ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @_ZN4llvm5APInt10getAllOnesEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %43, i32 noundef %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.akr = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %i.aks = load i32, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  store i32 %i.aks, ptr %i.akr, align 8, !tbaa !29
  %i.akt = icmp ult i32 %i.aks, 65
  br i1 %i.akt, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.aku = load i64, ptr %2, align 8, !tbaa !31
  store i64 %i.aku, ptr %44, align 8, !tbaa !31
  br label %_ZN4llvm5APIntC2ERKS0_.exit542

bb.jm:                                            ; preds = %bb.jk
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %44, ptr noundef nonnull align 8 dereferenceable(12) %2) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit542

_ZN4llvm5APIntC2ERKS0_.exit542:                   ; preds = %bb.jl, %bb.jm
  %i.akv = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.akw = load i32, ptr %i.akv, align 4
  %i.akx = and i32 %i.akw, 268435455
  %i.aky = zext nneg i32 %i.akx to i64
  %i.akz = sub nsw i64 0, %i.aky
  %i.ala = getelementptr inbounds [32 x i8], ptr %i.em, i64 %i.akz
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 32
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !63 ; 2 uses
  %i.ald = load i8, ptr %i.alc, align 8, !tbaa !57
  %i.ale = icmp ult i8 %i.ald, 23
  %i.alf = icmp ne i32 %i.p, 0
  %or.cond711 = and i1 %i.ale, %i.alf
  br i1 %or.cond711, label %.lr.ph668, label %.loopexit664

.lr.ph668:                                        ; preds = %_ZN4llvm5APIntC2ERKS0_.exit542
  %i.alg = getelementptr inbounds nuw i8, ptr %43, i64 8
  br label %bb.jn

end_hunk_1
