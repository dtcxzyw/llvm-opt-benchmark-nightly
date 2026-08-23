Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-object?download=true
inline.NumInlined: 3035
inline.NumDeleted: 949
begin_hunk_0_@_ZN2v88internal37Runtime_DefineGetterPropertyUncheckedEiPmPNS0_7IsolateE:bb.a

.thread:                                          ; preds = %bb.k, %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.cc = call ptr @_ZN2v88internal8JSObject33DefineOwnAccessorIgnoreAttributesENS0_12DirectHandleIS1_EENS2_INS0_4NameEEENS2_INS0_6ObjectEEES7_NS0_18PropertyAttributesE(ptr %1, ptr %i.j, ptr nonnull %i.l, ptr nonnull %i.cb, i32 noundef %i.r) #19
  %i.cd = icmp eq ptr %i.cc, null
  %. = select i1 %i.cd, i64 912, i64 648
  br label %_ZN2v88internalL47__RT_impl_Runtime_DefineGetterPropertyUncheckedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL47__RT_impl_Runtime_DefineGetterPropertyUncheckedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %.thread, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sink = phi i64 [ 912, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %., %.thread ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %.sink
  %.sroa.048.1 = load i64, ptr %i.ce, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.cf = load i32, ptr %i.e, align 8
  %i.cg = add nsw i32 %i.cf, -1
  store i32 %i.cg, ptr %i.e, align 8
  %i.ch = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.ch, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.m, !prof !9

bb.m:                                             ; preds = %_ZN2v88internalL47__RT_impl_Runtime_DefineGetterPropertyUncheckedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.m, %_ZN2v88internalL47__RT_impl_Runtime_DefineGetterPropertyUncheckedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.048.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_SetDataPropertiesEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i16 @_ZN2v88internal10JSReceiver23SetOrCopyDataPropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_25PropertiesEnumerationModeENS_4base6VectorIS7_EEb(ptr noundef nonnull %2, ptr %1, ptr nonnull %i.j, i32 noundef 0, ptr null, i64 0, i1 noundef zeroext true) #19
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8
  br label %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.e, %bb.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.sroa.019.0 = phi i64 [ %i.v, %bb.f ], [ %i.u, %bb.e ], [ %i.m, %bb.c ], [ %i.k, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.w = load i32, ptr %i.e, align 8
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.e, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %_ZN2v88internalL35__RT_impl_Runtime_SetDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.019.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal26Runtime_CopyDataPropertiesEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 648 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i16 @_ZN2v88internal10JSReceiver23SetOrCopyDataPropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_25PropertiesEnumerationModeENS_4base6VectorIS7_EEb(ptr noundef nonnull %2, ptr %1, ptr nonnull %i.j, i32 noundef 1, ptr null, i64 0, i1 noundef zeroext false) #19
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.u = load i64, ptr %i.t, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.l, align 8
  br label %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %bb.f, %bb.e, %bb.c, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %.sroa.020.0 = phi i64 [ %i.v, %bb.f ], [ %i.u, %bb.e ], [ %i.m, %bb.c ], [ %i.k, %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit ]
  store ptr %i.b, ptr %i.a, align 8
  %i.w = load i32, ptr %i.e, align 8
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.e, align 8
  %i.y = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.y, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.g, %_ZN2v88internalL36__RT_impl_Runtime_CopyDataPropertiesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.020.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal55Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, !prof !10

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = add i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = lshr i64 %i.l, 32                        ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32
  %.not68 = icmp eq i32 %0, 1
  br i1 %.not68, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit3, !prof !10

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit3: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %i.o = add i64 %i.i, -16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i64, ptr %1, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit3
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.s, %i.x
  br i1 %i.y, label %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, label %bb.c

_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit3, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.z = tail call i64 @_ZN2v88internal10ErrorUtils28ThrowLoadFromNullOrUndefinedEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %2, ptr nonnull %1, ptr null) #19
  br label %_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.c:                                             ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit
  %i.aa = ashr i64 %i.l, 32                       ; 4 uses
  %i.ab = icmp ugt i64 %i.aa, 1152921504606846975
  br i1 %i.ab, label %bb.d, label %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #21
  unreachable

_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i
  %i.ac = shl nuw nsw i64 %i.aa, 3                ; 3 uses
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #22 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.ac, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  br label %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit

_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit: ; preds = %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.020.0 = phi ptr [ %i.ad, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i ] ; 5 uses
  %.sink.i.i = phi i64 [ %i.ag, %.lr.ph.preheader.i.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.preheader.i.i.i.i.i.i ], [ 0, %_ZNSt6vectorIN2v88internal21DirectHandleUncheckedINS1_6ObjectEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i ]
  %i.ah = icmp sgt i32 %i.n, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit
  %i.ai = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  br label %bb.f

._crit_edge:                                      ; preds = %.critedge.i, %_ZN2v88internal18DirectHandleVectorINS0_6ObjectEEC2INS0_7IsolateEEEPT_m.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 344
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = add i64 %.sroa.0.0.copyload.i.i.i, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.al monotonic, align 8
  %i.an = add i64 %i.am, 31
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 1375
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.d, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZN2v88internal7Isolate15object_functionEv.exit, !prof !10

bb.e:                                             ; preds = %._crit_edge
  %i.aw = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64320) %2) #19
  br label %_ZN2v88internal7Isolate15object_functionEv.exit

_ZN2v88internal7Isolate15object_functionEv.exit:  ; preds = %._crit_edge, %bb.e
  %.0.i.i.i = phi ptr [ %i.aw, %bb.e ], [ %i.at, %._crit_edge ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i.i to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.b, align 8
  store i64 %i.as, ptr %.0.i.i.i, align 8
  %i.ba = call ptr @_ZN2v88internal7Factory11NewJSObjectENS0_12DirectHandleINS0_10JSFunctionEEENS0_14AllocationTypeENS0_15NewJSObjectTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %.0.i.i.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #19 ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.020.0 to i64        ; 2 uses
  %i.bc = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = call i16 @_ZN2v88internal10JSReceiver23SetOrCopyDataPropertiesEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_6ObjectEEENS0_25PropertiesEnumerationModeENS_4base6VectorIS7_EEb(ptr noundef nonnull %2, ptr %i.ba, ptr nonnull %1, i32 noundef 1, ptr %.sroa.020.0, i64 %i.bd, i1 noundef zeroext false) #19
  %i.bf = trunc i16 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 912
  %.sroa.035.0.in = select i1 %i.bf, ptr %i.ba, ptr %i.bg
  %.sroa.035.0 = load i64, ptr %.sroa.035.0.in, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.020.0, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.q

bb.f:                                             ; preds = %.lr.ph, %.critedge.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge.i ] ; 3 uses
  %3 = sub nsw i64 0, %indvars.iv
  %4 = getelementptr inbounds [8 x i8], ptr %i.r, i64 %3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bh = load i64, ptr %4, align 8               ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge.i

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr               ; 3 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp ult i16 %i.bo, 128
  br i1 %i.bp, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load atomic i32, ptr %i.bq monotonic, align 8 ; 4 uses
  %i.bs = and i32 %i.br, -536870909
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 10624
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i8, ptr %i.bw, align 8, !range !5, !noundef !6
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  br label %.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ca = load ptr, ptr %i.ai, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 55464
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, -55464
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 648
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i = phi ptr [ %i.cf, %bb.k ], [ %i.bz, %bb.j ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1432
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = lshr exact i32 %i.br, 2
  %i.cl = and i32 %i.ck, 16777215                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 52
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 60
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 68
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = lshr i32 %i.cl, 12
  %i.ct = xor i32 %i.cs, %i.cl
  %i.cu = mul i32 %i.cr, %i.ct                    ; 2 uses
  %i.cv = lshr i32 %i.cu, 12
  %i.cw = and i32 %i.cv, 4095
  %i.cx = xor i32 %i.cw, %i.cu
  %i.cy = mul i32 %i.cx, %i.cp                    ; 2 uses
  %i.cz = lshr i32 %i.cy, 12
  %i.da = and i32 %i.cz, 4095
  %i.db = xor i32 %i.da, %i.cy
  %i.dc = mul i32 %i.db, %i.cn
  %i.dd = and i32 %i.dc, 16777215                 ; 2 uses
  %i.de = lshr i32 %i.dd, 12
  %i.df = xor i32 %i.de, %i.dd                    ; 2 uses
  store i32 %i.df, ptr %i.a, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.g
  %i.dg = trunc i32 %i.br to i1
  %i.dh = and i32 %i.br, 3
  %i.di = icmp eq i32 %i.dh, 0
  %or.cond.i = or i1 %i.di, %i.dg
  br i1 %or.cond.i, label %_ZN2v88internal6String12AsArrayIndexEPj.exit, label %.critedge.i

_ZN2v88internal6String12AsArrayIndexEPj.exit:     ; preds = %bb.l
  %i.dj = call noundef zeroext i1 @_ZN2v88internal6String16SlowAsArrayIndexEPj(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull %i.a) #19
  br i1 %i.dj, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %_ZN2v88internal6String12AsArrayIndexEPj.exit
  %.pr = load i32, ptr %i.a, align 4              ; 3 uses
  %i.dk = icmp sgt i32 %.pr, -1
  br i1 %i.dk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.thread, %bb.m
  %i.dl = phi i32 [ %i.df, %.thread ], [ %.pr, %bb.m ]
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 32
  %i.do = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dp = load ptr, ptr %i.d, align 8
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.o, label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.dr = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  br label %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i5 = phi ptr [ %i.dr, %bb.o ], [ %i.do, %bb.n ] ; 3 uses
  %i.ds = ptrtoint ptr %.0.i.i.i5 to i64
  %i.dt = add i64 %i.ds, 8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.b, align 8
  store i64 %i.dn, ptr %.0.i.i.i5, align 8
  br label %.critedge.i

bb.p:                                             ; preds = %bb.m
  %i.dv = uitofp i32 %.pr to double
  %i.dw = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #19 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = add i64 %i.dx, -1
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store double %i.dv, ptr %i.ea, align 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.l, %bb.f, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6String12AsArrayIndexEPj.exit
  %.sroa.018.0 = phi ptr [ %4, %bb.l ], [ %4, %_ZN2v88internal6String12AsArrayIndexEPj.exit ], [ %4, %bb.f ], [ %4, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.0.i.i.i5, %_ZN2v88internal6HandleINS0_3SmiEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.dw, %bb.p ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.020.0, i64 %indvars.iv
  %i.ec = ptrtoint ptr %.sroa.018.0 to i64
  store i64 %i.ec, ptr %i.eb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !23

bb.q:                                             ; preds = %_ZN2v88internal7Isolate15object_functionEv.exit
  %i.ed = sub i64 %.sink.i.i, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.0, i64 noundef %i.ed) #23
  br label %_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread, %_ZN2v88internal7Isolate15object_functionEv.exit, %bb.q
  %.sroa.035.1 = phi i64 [ %i.z, %_ZN2v88internal17IsNullOrUndefinedENS0_6TaggedINS0_6ObjectEEENS0_13ReadOnlyRootsE.exit.thread ], [ %.sroa.035.0, %_ZN2v88internal7Isolate15object_functionEv.exit ], [ %.sroa.035.0, %bb.q ]
  store ptr %i.c, ptr %i.b, align 8
  %i.ee = load i32, ptr %i.f, align 8
  %i.ef = add nsw i32 %i.ee, -1
  store i32 %i.ef, ptr %i.f, align 8
  %i.eg = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.eg, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.r, !prof !9

bb.r:                                             ; preds = %_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  store ptr %i.e, ptr %i.d, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.r, %_ZN2v88internalL65__RT_impl_Runtime_CopyDataPropertiesWithExcludedPropertiesOnStackENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
  ret i64 %.sroa.035.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal37Runtime_DefineSetterPropertyUncheckedEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.658", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.658", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.658", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit: ; preds = %bb.a
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.not77 = icmp eq i32 %0, 1
  br i1 %.not77, label %bb.c, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit, !prof !10

bb.c:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_4NameEEENS0_6HandleIT_EEi.exit
  %i.k = add i64 %i.h, -16
  %i.l = inttoptr i64 %i.k to ptr                 ; 5 uses
  %i.m = icmp ugt i32 %0, 2
  br i1 %i.m, label %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE2atINS0_10JSFunctionEEENS0_6HandleIT_EEi.exit
  %i.n = add i64 %i.h, -24
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr %i.o, align 8
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = load i64, ptr %i.l, align 8
  %i.t = add i64 %i.s, 31
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  %i.w = add i64 %i.v, 23
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x acquire, align 8 ; 4 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 284
  br i1 %i.ag, label %.split.i, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

.split.i:                                         ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %i.y, ptr %3, align 8
  %i.ah = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo21HasSharedFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.ah, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, label %bb.e

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i: ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EEixEi.exit
  %.not.i8 = icmp eq i64 %i.y, 0
  br i1 %.not.i8, label %bb.e, label %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %.split.i
  %i.ai = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10624
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.am = load i64, ptr %i.al, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.i, %.split.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i.i
  %i.an = load atomic volatile i64, ptr %i.x acquire, align 8 ; 6 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i
  %i.ap = add nsw i64 %i.an, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = icmp eq i16 %i.au, 284
  br i1 %i.av, label %bb.f, label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.f:                                             ; preds = %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 %i.an, ptr %4, align 8
  %i.aw = call noundef zeroext i1 @_ZNK2v88internal9ScopeInfo15HasFunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 %i.an, ptr %5, align 8
  %i.ax = call i64 @_ZNK2v88internal9ScopeInfo12FunctionNameEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10624
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  %i.bc = load i64, ptr %i.bb, align 8
  br label %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit

_ZNK2v88internal18SharedFunctionInfo4NameEv.exit: ; preds = %bb.e, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.g, %bb.h
  %.sroa.014.1.i = phi i64 [ %i.am, %bb.e ], [ %i.ax, %bb.g ], [ %i.bc, %bb.h ], [ %i.an, %_ZN2v88internal11IsScopeInfoENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %i.an, %_ZNK2v88internal18SharedFunctionInfo13HasSharedNameEv.exit.thread.i ]
  %i.bd = add i64 %.sroa.014.1.i, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo4NameEv.exit
  %i.bi = load i64, ptr %i.l, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.bp = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.i, %bb.j
  %.0.i2 = phi ptr [ %i.bp, %bb.j ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bq = ptrtoint ptr %.0.i2 to i64
  %i.br = add i64 %i.bq, 8
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %i.a, align 8
  store i64 %i.bl, ptr %.0.i2, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 7304
  %i.bu = call noundef zeroext i1 @_ZN2v88internal10JSFunction7SetNameEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_4NameEEENS4_INS0_6StringEEE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr %i.j, ptr nonnull %i.bt) #19
  br i1 %i.bu, label %bb.k, label %_ZN2v88internalL47__RT_impl_Runtime_DefineSetterPropertyUncheckedENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit

bb.k:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bv = load i64, ptr %.0.i2, align 8
  %i.bw = load i64, ptr %i.l, align 8
  %i.bx = add i64 %i.bw, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load atomic volatile i64, ptr %i.by monotonic, align 8
  %i.ca = icmp eq i64 %i.bv, %i.bz
  br i1 %i.ca, label %.thread, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
end_hunk_0
