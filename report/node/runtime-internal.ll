inline.NumInlined: 991
inline.NumDeleted: 393
begin_hunk_0_@_ZN2v88internal22Runtime_ThrowTypeErrorEiPmPNS0_7IsolateE:bb.a
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i: ; preds = %bb.a
  %i.m = add i64 %i.k, -8
  store i64 %i.m, ptr %3, align 16
  %exitcond.1.not.i.i = icmp eq i32 %i.l, 1
  br i1 %exitcond.1.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %i.n = add i64 %i.k, -16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %exitcond.2.not.i.i = icmp eq i32 %i.l, 2
  br i1 %exitcond.2.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i
  %i.p = add i64 %i.k, -24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.p, ptr %i.q, align 16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 3, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i ], [ 0, %bb.a ], [ 1, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ], [ 2, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.r, align 8
  %i.s = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = add i64 %i.u, 31
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, 2311
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = icmp eq ptr %i.b, %i.d
  br i1 %i.ab, label %bb.b, label %_ZN2v88internal7Isolate19type_error_functionEv.exit, !prof !5

bb.b:                                             ; preds = %.critedge.i.i
  %i.ac = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #17
  br label %_ZN2v88internal7Isolate19type_error_functionEv.exit

_ZN2v88internal7Isolate19type_error_functionEv.exit: ; preds = %.critedge.i.i, %bb.b
  %.0.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.b, %.critedge.i.i ] ; 3 uses
  %i.ad = ptrtoint ptr %.0.i.i.i to i64
  %i.ae = add i64 %i.ad, 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.a, align 8
  store i64 %i.aa, ptr %.0.i.i.i, align 8
  %i.ag = call ptr @_ZN2v88internal7Factory8NewErrorENS0_12DirectHandleINS0_10JSFunctionEEENS0_15MessageTemplateENS_4base6VectorIKNS2_INS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i, i32 noundef %i.j, ptr nonnull %3, i64 %.0.lcssa.i.i) #17
  %i.ah = load i64, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.ai = load i32, ptr %i.e, align 8
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.e, align 8
  %i.ak = load ptr, ptr %i.c, align 8
  %.not.i.i.i = icmp eq ptr %i.ak, %i.d
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal7Isolate19type_error_functionEv.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit

_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit: ; preds = %_ZN2v88internal7Isolate19type_error_functionEv.exit, %bb.c
  %i.al = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ah, ptr noundef null) #17
  ret i64 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal30Runtime_ThrowTypeErrorIfStrictEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %"class.v8::internal::DirectHandle.465"], align 16 ; 7 uses
  %i.a = tail call noundef i32 @_ZN2v88internal14GetShouldThrowEPNS0_7IsolateENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef %2, i64 0) #17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZN2v88internalL40__RT_impl_Runtime_ThrowTypeErrorIfStrictENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = ptrtoint ptr %1 to i64                   ; 3 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  %i.p = add nsw i32 %smax.i.i, -1                ; 3 uses
  %exitcond.not.i.i = icmp eq i32 %i.p, 0
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i: ; preds = %bb.c
  %i.q = add i64 %i.o, -8
  store i64 %i.q, ptr %3, align 16
  %exitcond.1.not.i.i = icmp eq i32 %i.p, 1
  br i1 %exitcond.1.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i
  %i.r = add i64 %i.o, -16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8
  %exitcond.2.not.i.i = icmp eq i32 %i.p, 2
  br i1 %exitcond.2.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i
  %i.t = add i64 %i.o, -24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.t, ptr %i.u, align 16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 3, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.2.i.i ], [ 0, %bb.c ], [ 1, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.i.i ], [ 2, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit.1.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.v, align 8
  %i.w = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  %i.z = add i64 %i.y, 31
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 2311
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = icmp eq ptr %i.f, %i.h
  br i1 %i.af, label %bb.d, label %_ZN2v88internal7Isolate19type_error_functionEv.exit, !prof !5

bb.d:                                             ; preds = %.critedge.i.i
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #17
  br label %_ZN2v88internal7Isolate19type_error_functionEv.exit

_ZN2v88internal7Isolate19type_error_functionEv.exit: ; preds = %.critedge.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.f, %.critedge.i.i ] ; 3 uses
  %i.ah = ptrtoint ptr %.0.i.i.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.e, align 8
  store i64 %i.ae, ptr %.0.i.i.i, align 8
  %i.ak = call ptr @_ZN2v88internal7Factory8NewErrorENS0_12DirectHandleINS0_10JSFunctionEEENS0_15MessageTemplateENS_4base6VectorIKNS2_INS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i, i32 noundef %i.n, ptr nonnull %3, i64 %.0.lcssa.i.i) #17
  %i.al = load i64, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr %i.f, ptr %i.e, align 8
  %i.am = load i32, ptr %i.i, align 8
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.i, align 8
  %i.ao = load ptr, ptr %i.g, align 8
  %.not.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i, label %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %_ZN2v88internal7Isolate19type_error_functionEv.exit
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit

_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit: ; preds = %_ZN2v88internal7Isolate19type_error_functionEv.exit, %bb.e
  %i.ap = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.al, ptr noundef null) #17
  br label %_ZN2v88internalL40__RT_impl_Runtime_ThrowTypeErrorIfStrictENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL40__RT_impl_Runtime_ThrowTypeErrorIfStrictENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.b, %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ %i.ap, %_ZN2v88internal12_GLOBAL__N_110ThrowErrorEPNS0_7IsolateENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEMS2_FNS0_6HandleINS0_10JSFunctionEEEvE.exit ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal39Runtime_ThrowInvalidTypedArrayAlignmentEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %"class.v8::internal::DirectHandle.465"], align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.j = ptrtoint ptr %1 to i64
  %i.k = add i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %1, align 8
  %i.n = add i64 %i.m, 14
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i8, ptr %i.o, align 1
  %i.q = lshr i8 %i.p, 2                          ; 2 uses
  %switch.tableidx = add nsw i8 %i.q, -18         ; 2 uses
  %i.r = icmp ult i8 %switch.tableidx, 24
  br i1 %i.r, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #18
  unreachable

switch.lookup:                                    ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_6StringEEENS0_6HandleIT_EEi.exit
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal39Runtime_ThrowInvalidTypedArrayAlignmentEiPmPNS0_7IsolateE, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #19
  %i.u = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %switch.load, i64 %i.t, i8 noundef zeroext 0) #17 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !5

bb.d:                                             ; preds = %switch.lookup
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @_ZN2v88internal7Factory26TypeAndSizeForElementsKindENS0_12ElementsKindEPNS0_17ExternalArrayTypeEPm(i8 noundef zeroext %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.w = load i64, ptr %i.b, align 8
  %sext = shl i64 %i.w, 32
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %i.aa = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.0.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ] ; 3 uses
  %i.ab = ptrtoint ptr %.0.i.i to i64
  %i.ac = add i64 %i.ab, 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.c, align 8
  store i64 %sext, ptr %.0.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.l, ptr %3, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.u, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0.i.i, ptr %i.af, align 8
  %i.ag = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 255, ptr nonnull %3, i64 3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ah, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store ptr %i.d, ptr %i.c, align 8
  %i.aj = load i32, ptr %i.g, align 8
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.g, align 8
  %i.al = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  store ptr %i.f, ptr %i.e, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %bb.f
  ret i64 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Runtime_UnwindAndFindExceptionHandlerEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_ZN2v88internal7Isolate20UnwindAndFindHandlerEv(ptr noundef nonnull align 8 dereferenceable(64320) %2) #17
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_PropagateExceptionEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_ThrowReferenceErrorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.h = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 221, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal42Runtime_ThrowAccessedUninitializedVariableEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.h = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 223, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal16Runtime_NewErrorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = ptrtoint ptr %1 to i64
  %i.l = add i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.m, ptr %3, align 8
  %i.n = call ptr @_ZN2v88internal7Factory8NewErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.j, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.o = load i64, ptr %i.n, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal20Runtime_NewTypeErrorEiPmPNS0_7IsolateE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_NewReferenceErrorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = ptrtoint ptr %1 to i64
  %i.l = add i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.m, ptr %3, align 8
  %i.n = call ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.j, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.o = load i64, ptr %i.n, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.p = load i32, ptr %i.e, align 8
  %i.q = add nsw i32 %i.p, -1
  store i32 %i.q, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.r, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.d, %bb.c
  ret i64 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_ThrowInvalidStringLengthEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Factory27NewInvalidStringLengthErrorEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal38Runtime_ThrowIteratorResultNotAnObjectEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.h = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 92, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal31Runtime_ThrowThrowMethodMissingEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 213, ptr null, i64 0) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal34Runtime_ThrowSymbolIteratorInvalidEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 206, ptr null, i64 0) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal21Runtime_ThrowNoAccessEiPmPNS0_7IsolateE(i32 noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::SaveAndSwitchContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 58816
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr [8 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.p, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #17
  br label %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.w, %bb.b ], [ %i.s, %bb.a ] ; 2 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %.sroa.0.0.copyload.i2, ptr %.0.i.i.i, align 8
  %i.aa = add i64 %.sroa.0.0.copyload.i2, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 31
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  call void @_ZN2v88internal20SaveAndSwitchContextC1EPNS0_7IsolateENS0_6TaggedINS0_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %2, i64 %i.af) #17
  %i.ag = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 104, ptr null, i64 0) #17
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ah, ptr noundef null) #17
  call void @_ZN2v88internal11SaveContextD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.aj = load i32, ptr %i.e, align 8
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.e, align 8
  %i.al = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %_ZN2v88internal12DirectHandleINS0_13NativeContextEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  ret i64 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal27Runtime_ThrowNotConstructorEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %"class.v8::internal::DirectHandle.465"], align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.h = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 121, ptr nonnull %3, i64 1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.i, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.k = load i32, ptr %i.e, align 8
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.e, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.b, %bb.a
  ret i64 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_ThrowApplyNonFunctionEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %"class.v8::internal::DirectHandle.465"], align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = tail call ptr @_ZN2v88internal6Object6TypeOfEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %2, ptr %1) #17 ; 2 uses
  %i.i = load i64, ptr %1, align 8
  %i.j = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10624
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.i, %i.n
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.20, i64 4, i8 noundef zeroext 0) #17 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %bb.j, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6912
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, -1                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.h, align 8              ; 3 uses
  %i.w = or disjoint i64 %i.t, 1
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.z = add i64 %i.y, 11
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i16, ptr %i.aa monotonic, align 2
  %i.ac = and i16 %i.ab, -96
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %i.v, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8
  %i.ah = add i64 %i.ag, 11
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load atomic volatile i16, ptr %i.ai monotonic, align 2
  %i.ak = and i16 %i.aj, -96
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.e, %bb.f
  %i.am = tail call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i64 %i.v) #17
  br i1 %i.am, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, label %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread: ; preds = %bb.d, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  %i.an = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.21, i64 9, i8 noundef zeroext 0) #17 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.j, !prof !5

bb.g:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33: ; preds = %bb.f, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit
  %i.ap = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull @.str.22, i64 2, i8 noundef zeroext 0) #17 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5, !prof !5

bb.h:                                             ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5: ; preds = %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread33
  %i.ar = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewConsStringINS0_6HandleEQsr3stdE16is_convertible_vITL0__INS0_6StringEENS0_12DirectHandleIS7_EEEEENT_IS7_E9MaybeTypeESC_SC_NS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ap, ptr nonnull %i.h, i8 noundef zeroext 0) #17 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.j, !prof !5

bb.i:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #18
  unreachable

bb.j:                                             ; preds = %bb.b, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5
  %.sroa.013.0 = phi ptr [ %i.an, %_ZNK2v88internal6String6EqualsENS0_6TaggedIS1_EE.exit.thread ], [ %i.p, %bb.b ], [ %i.ar, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.013.0, ptr %i.at, align 8
  %i.au = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 13, ptr nonnull %3, i64 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.av, ptr noundef null) #17
  store ptr %i.b, ptr %i.a, align 8
  %i.ax = load i32, ptr %i.e, align 8
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.e, align 8
  %i.az = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.az, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.k, !prof !6

bb.k:                                             ; preds = %bb.j
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #17
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.k, %bb.j
end_hunk_1
