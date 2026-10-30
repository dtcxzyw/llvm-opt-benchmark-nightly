Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APFloatWrappers?download=true
inline.NumInlined: 363
inline.NumDeleted: 55
begin_hunk_0_@_mlir_apfloat_convert:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !9
  %i.f = icmp ult i32 %i.d, 65
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %4, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %2, i1 noundef zeroext false) #7
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %.not.i.i = icmp eq ptr %i.b, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %4) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %4) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d, %bb.e
  %i.g = load i32, ptr %i.e, align 8, !tbaa !9
  %i.h = icmp ugt i32 %i.g, 64
  br i1 %i.h, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.i = load ptr, ptr %4, align 8, !tbaa !10     ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.i) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.k = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.c, i8 noundef signext 1, ptr noundef nonnull %i.a) #7 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.l = load ptr, ptr %3, align 8, !tbaa !10, !noalias !31
  %.not.i = icmp eq ptr %i.l, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.h, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !9
  %i.o = icmp ult i32 %i.n, 65                    ; 2 uses
  %i.p = load ptr, ptr %5, align 8                ; 3 uses
  %spec.select.i = select i1 %i.o, ptr %5, ptr %i.p
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !10
  %i.q = icmp eq ptr %i.p, null
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.p) #8
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.0.i
}

declare noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_mlir_apfloat_convert_to_int(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::APFloat", align 8     ; 6 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %6 = alloca %"class.llvm::APSInt", align 8      ; 9 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %0) #7 ; 4 uses
  %i.c = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.b) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.c, ptr %i.d, align 8, !tbaa !9
  %i.e = icmp ult i32 %i.c, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %5, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %3, i1 noundef zeroext false) #7
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %.not.i.i = icmp eq ptr %i.b, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %5) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d, %bb.e
  %i.f = load i32, ptr %i.d, align 8, !tbaa !9
  %i.g = icmp ugt i32 %i.f, 64
  br i1 %i.g, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.h = load ptr, ptr %5, align 8, !tbaa !10     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.h) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %1, ptr %i.j, align 8, !tbaa !9
  %i.k = icmp ult i32 %1, 65
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  store i64 0, ptr %6, align 8, !tbaa !10
  br label %_ZN4llvm6APSIntC2Ejb.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %6, i64 noundef 0, i1 noundef zeroext false) #7
  br label %_ZN4llvm6APSIntC2Ejb.exit

_ZN4llvm6APSIntC2Ejb.exit:                        ; preds = %bb.h, %bb.i
  %i.l = zext i1 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.l, ptr %i.m, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.n = call noundef i32 @_ZNK4llvm7APFloat16convertToIntegerERNS_6APSIntENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(13) %6, i8 noundef signext 1, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.o = load i32, ptr %i.j, align 8, !tbaa !9
  %i.p = icmp ult i32 %i.o, 65                    ; 2 uses
  %i.q = load ptr, ptr %6, align 8                ; 3 uses
  %spec.select.i = select i1 %i.p, ptr %6, ptr %i.q
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.r = icmp eq ptr %i.q, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm6APSIntC2Ejb.exit
  call void @_ZdaPv(ptr noundef nonnull %i.q) #8
  br label %_ZN4llvm5APIntD2Ev.exit6

_ZN4llvm5APIntD2Ev.exit6:                         ; preds = %_ZN4llvm6APSIntC2Ejb.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.0.i
}

declare noundef i32 @_ZNK4llvm7APFloat16convertToIntegerERNS_6APSIntENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(13), i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_mlir_apfloat_convert_from_int(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 11 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.a = xor i1 %2, true                          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.b, align 8, !tbaa !9
  %i.c = icmp ult i32 %1, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %3, ptr %4, align 8, !tbaa !10
  br i1 %2, label %_ZN4llvm5APIntC2Ejmbb.exit, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.a

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.a:       ; preds = %bb.b
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f
  %i.h = icmp eq i32 %1, 0
  %spec.select.i = select i1 %i.h, i64 0, i64 %i.g, !prof !37
  %7 = and i64 %spec.select.i, %3
  store i64 %7, ptr %4, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %3, i1 noundef zeroext %i.a) #7
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.a, %bb.c
  %i.i = call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %0) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %.not.i.i = icmp eq ptr %i.i, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) %i.i) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) %i.i) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %bb.d, %bb.e
  %i.j = load ptr, ptr %5, align 8, !tbaa !10
  %.not.i = icmp eq ptr %i.j, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit
  %i.k = call noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext %i.a, i8 noundef signext 1) #7 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

bb.g:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit
  %i.l = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext %i.a, i8 noundef signext 1) #7 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.m = load ptr, ptr %5, align 8, !tbaa !10, !noalias !38
  %.not.i5 = icmp eq ptr %i.m, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.i:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.h, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !9
  %i.p = icmp ult i32 %i.o, 65                    ; 2 uses
  %i.q = load ptr, ptr %6, align 8                ; 3 uses
  %spec.select.i6 = select i1 %i.p, ptr %6, ptr %i.q
  %.0.i7 = load i64, ptr %spec.select.i6, align 8, !tbaa !10
  %i.r = icmp eq ptr %i.q, null
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %_ZN4llvm5APIntD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.q) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.s = load i32, ptr %i.b, align 8, !tbaa !9
  %i.t = icmp ugt i32 %i.s, 64
  br i1 %i.t, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit8

bb.k:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !10     ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN4llvm5APIntD2Ev.exit8, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.u) #8
  br label %_ZN4llvm5APIntD2Ev.exit8

_ZN4llvm5APIntD2Ev.exit8:                         ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret i64 %.0.i7
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_mlir_apfloat_compare(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::APFloat", align 8     ; 8 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %0) #7 ; 6 uses
  %i.b = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.a) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !9
  %i.d = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %4, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %1, i1 noundef zeroext false) #7
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.b, %bb.c
  %.not.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %4) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %4) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d, %bb.e
  %i.e = load i32, ptr %i.c, align 8, !tbaa !9
  %i.f = icmp ugt i32 %i.e, 64
  br i1 %i.f, label %bb.f, label %_ZN4llvm5APIntD2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !10     ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN4llvm5APIntD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.g) #8
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.i, align 8, !tbaa !9
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  store i64 %2, ptr %6, align 8, !tbaa !10
  br label %_ZN4llvm5APIntC2Ejmbb.exit7

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %6, i64 noundef %2, i1 noundef zeroext false) #7
  br label %_ZN4llvm5APIntC2Ejmbb.exit7

_ZN4llvm5APIntC2Ejmbb.exit7:                      ; preds = %bb.h, %bb.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit7
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %6) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit9

bb.k:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit7
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %6) #7
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit9

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit9: ; preds = %bb.j, %bb.k
  %i.j = load i32, ptr %i.i, align 8, !tbaa !9
  %i.k = icmp ugt i32 %i.j, 64
  br i1 %i.k, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit10

bb.l:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit9
  %i.l = load ptr, ptr %6, align 8, !tbaa !10     ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN4llvm5APIntD2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.l) #8
  br label %_ZN4llvm5APIntD2Ev.exit10

_ZN4llvm5APIntD2Ev.exit10:                        ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit9, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  %i.n = load ptr, ptr %3, align 8, !tbaa !10
  %.not.i = icmp eq ptr %i.n, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit10
  %i.o = call noundef i32 @_ZNK4llvm6detail9IEEEFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  br label %_ZNK4llvm7APFloat7compareERKS0_.exit

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit10
  %i.p = call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat7compareERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  br label %_ZNK4llvm7APFloat7compareERKS0_.exit

_ZNK4llvm7APFloat7compareERKS0_.exit:             ; preds = %bb.n, %bb.o
  %.0.i = phi i32 [ %i.o, %bb.n ], [ %i.p, %bb.o ]
  %i.q = trunc i32 %.0.i to i8
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i8 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_mlir_apfloat_neg(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 11 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZN4llvm11APFloatBase15EnumToSemanticsENS0_9SemanticsE(i32 noundef %0) #7 ; 4 uses
  %i.b = tail call noundef i32 @_ZN4llvm11APFloatBase19semanticsSizeInBitsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.a) #7 ; 2 uses
end_hunk_0
