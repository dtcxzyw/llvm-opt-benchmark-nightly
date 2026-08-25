Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpFrame?download=true
inline.NumInlined: 784
inline.NumDeleted: 398
begin_hunk_0_@_ZNK5clang6interp10IntegralAPILb0EE8toAPSIntEj:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.k = icmp ult i32 %.pre, 65
  br i1 %i.k, label %_ZN4llvm5APIntC2Ejmbb.exit.i3, label %bb.b

_ZN4llvm5APIntC2Ejmbb.exit.i3:                    ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.thread, %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit
  %i.l = phi i32 [ %i.c, %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit.thread ], [ %.pre, %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit ]
  %i.m = load i64, ptr %1, align 8, !tbaa !182, !noalias !352
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.l, ptr %i.n, align 8, !tbaa !262, !alias.scope !352
  store i64 %i.m, ptr %5, align 8, !tbaa !182, !alias.scope !352
  br label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb0EE8getValueEv.exit
  %i.o = zext i32 %.pre to i64
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 6
  %i.r = load ptr, ptr %1, align 8, !tbaa !182, !noalias !352
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %.pre, ptr %i.r, i64 %i.q) #11
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %_ZN4llvm5APIntC2Ejmbb.exit.i3
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %.0) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !262
  store i32 %i.u, ptr %i.s, align 8, !tbaa !262
  %i.v = load i64, ptr %4, align 8
  store i64 %i.v, ptr %0, align 8
  store i32 0, ptr %i.t, align 8, !tbaa !262
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.w, align 4, !tbaa !264
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !262
  %i.z = icmp ugt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit5

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.aa = load ptr, ptr %5, align 8, !tbaa !182   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #12
  br label %_ZN4llvm5APIntD2Ev.exit5

_ZN4llvm5APIntD2Ev.exit5:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !262
  %i.ae = icmp ugt i32 %i.ad, 64
  br i1 %i.ae, label %bb.e, label %_ZN4llvm5APIntD2Ev.exit6

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit5
  %i.af = load ptr, ptr %3, align 8, !tbaa !182   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.af) #12
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZN4llvm5APIntD2Ev.exit5, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang6interp10IntegralAPILb1EE8toAPSIntEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::APSInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %i.a = icmp eq i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 8 uses
  %.0 = select i1 %i.a, i32 %i.c, i32 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.d = icmp ult i32 %i.c, 65
  br i1 %i.d, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread, label %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread: ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !182, !noalias !355
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.c, ptr %i.f, align 8, !tbaa !262, !alias.scope !355
  %i.g = sub nsw i32 0, %i.c
  %i.h = and i32 %i.g, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = lshr i64 -1, %i.i
  %i.k = icmp eq i32 %i.c, 0
  %spec.select.i.i = select i1 %i.k, i64 0, i64 %i.j, !prof !358
  %i.l = and i64 %i.e, %spec.select.i.i
  store i64 %i.l, ptr %3, align 8, !tbaa !182, !alias.scope !355
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i3

_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit: ; preds = %bb.a
  %i.m = zext i32 %i.c to i64
  %i.n = add nuw nsw i64 %i.m, 63
  %i.o = lshr i64 %i.n, 6
  %i.p = load ptr, ptr %1, align 8, !tbaa !182, !noalias !355
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.c, ptr %i.p, i64 %i.o) #11
  %.pre = load i32, ptr %i.b, align 8, !tbaa !359, !noalias !361 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.q = icmp ult i32 %.pre, 65
  br i1 %i.q, label %_ZN4llvm5APIntC2Ejmbb.exit.i3, label %bb.b

_ZN4llvm5APIntC2Ejmbb.exit.i3:                    ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit
  %i.r = phi i32 [ %i.c, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit.thread ], [ %.pre, %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit ] ; 3 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !182, !noalias !361
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %i.t, align 8, !tbaa !262, !alias.scope !361
  %i.u = sub nsw i32 0, %i.r
  %i.v = and i32 %i.u, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = lshr i64 -1, %i.w
  %i.y = icmp eq i32 %i.r, 0
  %spec.select.i.i4 = select i1 %i.y, i64 0, i64 %i.x, !prof !358
  %i.z = and i64 %i.s, %spec.select.i.i4
  store i64 %i.z, ptr %5, align 8, !tbaa !182, !alias.scope !361
  br label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %_ZNK5clang6interp10IntegralAPILb1EE8getValueEv.exit
  %i.aa = zext i32 %.pre to i64
  %i.ab = add nuw nsw i64 %i.aa, 63
  %i.ac = lshr i64 %i.ab, 6
  %i.ad = load ptr, ptr %1, align 8, !tbaa !182, !noalias !361
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %.pre, ptr %i.ad, i64 %i.ac) #11
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.b, %_ZN4llvm5APIntC2Ejmbb.exit.i3
  call void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %.0) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !262
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !262
  %i.ah = load i64, ptr %4, align 8
  store i64 %i.ah, ptr %0, align 8
  store i32 0, ptr %i.af, align 8, !tbaa !262
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.ai, align 4, !tbaa !264
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !262
  %i.al = icmp ugt i32 %i.ak, 64
  br i1 %i.al, label %bb.c, label %_ZN4llvm5APIntD2Ev.exit6

bb.c:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.am = load ptr, ptr %5, align 8, !tbaa !182   ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.am) #12
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !262
  %i.aq = icmp ugt i32 %i.ap, 64
  br i1 %i.aq, label %bb.e, label %_ZN4llvm5APIntD2Ev.exit7

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit6
  %i.ar = load ptr, ptr %3, align 8, !tbaa !182   ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4llvm5APIntD2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #12
  br label %_ZN4llvm5APIntD2Ev.exit7

_ZN4llvm5APIntD2Ev.exit7:                         ; preds = %_ZN4llvm5APIntD2Ev.exit6, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZNK4llvm5APInt4sextEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang6interp8Floating8getValueEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !364
  %i.c = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.b) #11
  %i.d = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.c) #11 ; 3 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !364
  %i.f = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.e) #11
  %i.g = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.f) #11
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %.mask.i = and i64 %i.i, 8589934528
  %i.j = icmp eq i64 %.mask.i, 64
  %i.k = load i32, ptr %i.a, align 8, !tbaa !364
  %i.l = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.k) #11 ; 4 uses
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.m = load i64, ptr %1, align 8, !tbaa !182    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 %i.d, ptr %i.n, align 8, !tbaa !262
  %i.o = icmp ult i32 %i.d, 65
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.m, ptr %2, align 8, !tbaa !182
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %i.m, i1 noundef zeroext false) #11
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.c, %bb.d
  %.not.i.i = icmp eq ptr %i.l, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %2) #11
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

bb.f:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %2) #11
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.e, %bb.f
  %i.p = load i32, ptr %i.n, align 8, !tbaa !262
  %i.q = icmp ugt i32 %i.p, 64
  br i1 %i.q, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !182    ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.r) #12
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.t = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.l) #11
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 63
  %i.w = lshr i64 %i.v, 6
  %i.x = load i32, ptr %i.a, align 8, !tbaa !364
  %i.y = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %i.x) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.z = load ptr, ptr %1, align 8, !tbaa !182
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.d, ptr %i.z, i64 %i.w) #11
  %.not.i.i3 = icmp eq ptr %i.y, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %3) #11
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit4

bb.k:                                             ; preds = %bb.i
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %3) #11
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit4

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit4: ; preds = %bb.j, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !262
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit5

bb.l:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit4
  %i.ad = load ptr, ptr %3, align 8, !tbaa !182   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit5, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #12
  br label %_ZN4llvm5APIntD2Ev.exit5

_ZN4llvm5APIntD2Ev.exit5:                         ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit4, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit5, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

declare noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #4

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN4llvm7APFloat7StorageC1EOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

declare void @_ZNK5clang6interp13MemberPointer9toAPValueERKNS_10ASTContextE(ptr dead_on_unwind writable sret(%"class.clang::APValue") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTSN5clang6interp11InterpFrameE", !12, i64 0, !13, i64 8, !15, i64 16, !5, i64 24, !16, i64 32, !17, i64 40, !5, i64 48, !18, i64 56, !5, i64 64, !6, i64 68}
!12 = !{!"_ZTSN5clang6interp5FrameE"}
!13 = !{!"p1 _ZTSN5clang6interp11InterpFrameE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTSN5clang6interp11InterpStateE", !14, i64 0}
!16 = !{!"p1 _ZTSN5clang6interp8FunctionE", !14, i64 0}
!17 = !{!"_ZTSN5clang6interp7CodePtrE", !14, i64 0}
!18 = !{!"p1 omnipotent char", !14, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{!11, !5, i64 24}
!21 = !{!11, !18, i64 56}
!22 = !{!11, !5, i64 64}
!23 = !{!11, !6, i64 68}
!24 = !{!11, !16, i64 32}
!25 = !{!14, !14, i64 0}
!26 = !{!11, !5, i64 48}
!27 = !{!28, !50, i64 176}
!28 = !{!"_ZTSN5clang6interp11InterpStateE", !29, i64 0, !34, i64 40, !35, i64 48, !36, i64 56, !37, i64 64, !44, i64 72, !17, i64 160, !49, i64 168, !50, i64 176, !51, i64 184, !11, i64 192, !13, i64 264, !52, i64 272, !53, i64 280, !5, i64 288, !30, i64 292, !5, i64 296, !54, i64 300, !55, i64 304, !30, i64 312, !5, i64 316, !56, i64 320, !60, i64 328, !66, i64 392}
!29 = !{!"_ZTSN5clang6interp5StateE", !30, i64 8, !30, i64 9, !30, i64 10, !31, i64 12, !32, i64 16, !33, i64 24, !30, i64 32, !30, i64 33}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"_ZTSN5clang14EvaluationModeE", !6, i64 0}
!32 = !{!"p1 _ZTSN5clang10ASTContextE", !14, i64 0}
!33 = !{!"p1 _ZTSN5clang4Expr10EvalStatusE", !14, i64 0}
!34 = !{!"_ZTSN5clang6interp12SourceMapperE"}
!35 = !{!"p1 _ZTSN5clang6interp9DeadBlockE", !14, i64 0}
!36 = !{!"p1 _ZTSN5clang6interp12SourceMapperE", !14, i64 0}
!37 = !{!"_ZTSSt10unique_ptrIN5clang6interp16DynamicAllocatorESt14default_deleteIS2_EE", !38, i64 0}
!38 = !{!"_ZTSSt15__uniq_ptr_dataIN5clang6interp16DynamicAllocatorESt14default_deleteIS2_ELb1ELb1EE", !39, i64 0}
!39 = !{!"_ZTSSt15__uniq_ptr_implIN5clang6interp16DynamicAllocatorESt14default_deleteIS2_EE", !40, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN5clang6interp16DynamicAllocatorESt14default_deleteIS2_EEE", !41, i64 0}
!41 = !{!"_ZTSSt11_Tuple_implILm0EJPN5clang6interp16DynamicAllocatorESt14default_deleteIS2_EEE", !42, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN5clang6interp16DynamicAllocatorELb0EE", !43, i64 0}
!43 = !{!"p1 _ZTSN5clang6interp16DynamicAllocatorE", !14, i64 0}
!44 = !{!"_ZTSSt8optionalIN4llvm20BumpPtrAllocatorImplINS0_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE", !45, i64 0}
!45 = !{!"_ZTSSt14_Optional_baseIN4llvm20BumpPtrAllocatorImplINS0_15MallocAllocatorELm4096ELm4096ELm128ELm8EEELb0ELb0EE", !46, i64 0}
!46 = !{!"_ZTSSt17_Optional_payloadIN4llvm20BumpPtrAllocatorImplINS0_15MallocAllocatorELm4096ELm4096ELm128ELm8EEELb0ELb0ELb0EE", !47, i64 0}
!47 = !{!"_ZTSSt17_Optional_payloadIN4llvm20BumpPtrAllocatorImplINS0_15MallocAllocatorELm4096ELm4096ELm128ELm8EEELb1ELb0ELb0EE", !48, i64 0}
!48 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm20BumpPtrAllocatorImplINS0_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE", !6, i64 0, !30, i64 80}
!49 = !{!"p1 _ZTSN5clang6interp7ProgramE", !14, i64 0}
!50 = !{!"p1 _ZTSN5clang6interp11InterpStackE", !14, i64 0}
!51 = !{!"p1 _ZTSN5clang6interp7ContextE", !14, i64 0}
!52 = !{!"_ZTSN5clang14SourceLocationE", !5, i64 0}
!53 = !{!"p1 _ZTSN5clang7VarDeclE", !14, i64 0}
!54 = !{!"_ZTSN5clang6interp14EvaluationKindE", !6, i64 0}
!55 = !{!"p1 _ZTSN4llvm15SmallVectorImplISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEEEE", !14, i64 0}
!56 = !{!"_ZTSSt8optionalIbE", !57, i64 0}
!57 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !59, i64 0}
!59 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !30, i64 1}
!60 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKN5clang4ExprEPKNS2_29LifetimeExtendedTemporaryDeclEELj3EEE", !61, i64 0, !65, i64 16}
!61 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKN5clang4ExprEPKNS2_29LifetimeExtendedTemporaryDeclEEEE", !62, i64 0}
!62 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKN5clang4ExprEPKNS2_29LifetimeExtendedTemporaryDeclEELb1EEE", !63, i64 0}
!63 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKN5clang4ExprEPKNS2_29LifetimeExtendedTemporaryDeclEEvEE", !64, i64 0}
!64 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !5, i64 8, !5, i64 12}
!65 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIPKN5clang4ExprEPKNS2_29LifetimeExtendedTemporaryDeclEELj3EEE", !6, i64 0}
!66 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp7PtrViewELj2EEE", !67, i64 0, !70, i64 16}
!67 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp7PtrViewEEE", !68, i64 0}
!68 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp7PtrViewELb1EEE", !69, i64 0}
!69 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp7PtrViewEvEE", !64, i64 0}
!70 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp7PtrViewELj2EEE", !6, i64 0}
!71 = !{}
!72 = !{i64 8}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSN5clang6interp11InterpStackE", !75, i64 0, !76, i64 8, !77, i64 16}
!75 = !{!"p1 _ZTSN5clang6interp11InterpStack10StackChunkE", !14, i64 0}
!76 = !{!"long", !6, i64 0}
!77 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp8PrimTypeELj40EEE", !78, i64 0, !82, i64 24}
!78 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp8PrimTypeEEE", !79, i64 0}
!79 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp8PrimTypeELb1EEE", !80, i64 0}
!80 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp8PrimTypeEvEE", !81, i64 0}
!81 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !14, i64 0, !76, i64 8, !76, i64 16}
!82 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp8PrimTypeELj40EEE", !6, i64 0}
!83 = !{!64, !5, i64 8}
!84 = !{!64, !14, i64 0}
!85 = !{!86, !5, i64 24}
!86 = !{!"_ZTSN5clang6interp8FunctionE", !49, i64 0, !87, i64 8, !88, i64 16, !5, i64 24, !5, i64 28, !93, i64 32, !98, i64 96, !103, i64 120, !108, i64 552, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 616, !5, i64 617, !5, i64 617, !5, i64 617}
!87 = !{!"_ZTSN5clang6interp8Function12FunctionKindE", !6, i64 0}
!88 = !{!"_ZTSN4llvm12PointerUnionIJPKN5clang12FunctionDeclEPKNS1_9BlockExprEEEE", !89, i64 0}
!89 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang12FunctionDeclEPKNS3_9BlockExprEEEELi0EJS6_S9_EEE", !90, i64 0}
!90 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang12FunctionDeclEPKNS3_9BlockExprEEEELi1EJS9_EEE", !91, i64 0}
!91 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKN5clang12FunctionDeclEPKNS3_9BlockExprEEEELi2EJEEE", !92, i64 0}
!92 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !6, i64 0}
!93 = !{!"_ZTSN4llvm11SmallVectorISt4byteLj40EEE", !94, i64 0, !97, i64 24}
!94 = !{!"_ZTSN4llvm15SmallVectorImplISt4byteEE", !95, i64 0}
!95 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4byteLb1EEE", !96, i64 0}
!96 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4bytevEE", !81, i64 0}
!97 = !{!"_ZTSN4llvm18SmallVectorStorageISt4byteLj40EEE", !6, i64 0}
!98 = !{!"_ZTSSt6vectorISt4pairIjN5clang6interp10SourceInfoEESaIS4_EE", !99, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt4pairIjN5clang6interp10SourceInfoEESaIS4_EE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN5clang6interp10SourceInfoEESaIS4_EE12_Vector_implE", !101, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseISt4pairIjN5clang6interp10SourceInfoEESaIS4_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSSt4pairIjN5clang6interp10SourceInfoEE", !14, i64 0}
!103 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp5ScopeELj2EEE", !104, i64 0, !107, i64 16}
!104 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp5ScopeEEE", !105, i64 0}
!105 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp5ScopeELb0EEE", !106, i64 0}
!106 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp5ScopeEvEE", !64, i64 0}
!107 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp5ScopeELj2EEE", !6, i64 0}
!108 = !{!"_ZTSN4llvm11SmallVectorIN5clang6interp8Function15ParamDescriptorELj2EEE", !109, i64 0, !112, i64 16}
!109 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang6interp8Function15ParamDescriptorEEE", !110, i64 0}
!110 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang6interp8Function15ParamDescriptorELb1EEE", !111, i64 0}
!111 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang6interp8Function15ParamDescriptorEvEE", !64, i64 0}
!112 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang6interp8Function15ParamDescriptorELj2EEE", !6, i64 0}
!113 = !{!28, !5, i64 296}
!114 = !{!115, !5, i64 12}
!115 = !{!"_ZTSN5clang6interp8Function15ParamDescriptorE", !116, i64 0, !5, i64 8, !5, i64 12, !117, i64 16}
!116 = !{!"p1 _ZTSN5clang6interp10DescriptorE", !14, i64 0}
!117 = !{!"_ZTSN5clang6interp8PrimTypeE", !6, i64 0}
!118 = !{!115, !116, i64 0}
!119 = !{!120, !116, i64 0}
!120 = !{!"_ZTSN5clang6interp5BlockE", !116, i64 0, !121, i64 8, !122, i64 16, !5, i64 20, !30, i64 24, !30, i64 25, !122, i64 28, !6, i64 32}
!121 = !{!"p1 _ZTSN5clang6interp7PointerE", !14, i64 0}
!122 = !{!"_ZTSN5clang16OptionalUnsignedIjEE", !5, i64 0}
!123 = !{!120, !121, i64 8}
!124 = !{!122, !5, i64 0}
!125 = !{!120, !5, i64 20}
!126 = !{!120, !30, i64 24}
!127 = !{!120, !30, i64 25}
!128 = !{!120, !6, i64 32}
!129 = distinct !{!129, !130}
end_hunk_0
