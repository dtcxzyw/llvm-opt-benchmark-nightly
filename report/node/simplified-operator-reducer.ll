inline.NumInlined: 548
inline.NumDeleted: 231
begin_hunk_0_@_ZN2v88internal12StdoutStreamD0Ev:bb.a
; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #16, !inline_history !17
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #16, !inline_history !17
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #16, !inline_history !17
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #16, !inline_history !21
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #16, !inline_history !21
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #16, !inline_history !21
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #14, !inline_history !22
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #12

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler12BinopMatcherINS1_21HeapObjectMatcherImplILNS1_8IrOpcode5ValueE25EEES6_LNS0_21MachineRepresentationE9EE10SwapInputsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"struct.v8::internal::compiler::HeapObjectMatcherImpl", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 17, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.a
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.a
  %.not18.i = icmp eq ptr %i.k, %i.d
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.p = phi ptr [ %i.j, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.n, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.q = phi ptr [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.o, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.r = phi ptr [ %i.c, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.q, null
  br i1 %.not14.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull %i.s) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.d, ptr %i.p, align 8
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.s) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.c, %bb.d
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 251658240
  %.not.i.i1 = icmp eq i32 %i.x, 251658240
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = add i64 %i.y, 32
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %.not.i.i1, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i8 = icmp eq ptr %i.ag, %i.u
  br i1 %.not.i8, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not18.i3 = icmp eq ptr %i.ai, %i.u
  br i1 %.not18.i3, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7
  %i.aj = phi ptr [ %i.ah, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.af, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ]
  %i.ak = phi ptr [ %i.ai, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.ag, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ] ; 2 uses
  %i.al = phi ptr [ %i.t, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.ab, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -48 ; 2 uses
  %.not14.i5 = icmp eq ptr %i.ak, null
  br i1 %.not14.i5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull %i.am) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4
  store ptr %i.u, ptr %i.aj, align 8
  %.not15.i6 = icmp eq ptr %i.u, null
  br i1 %.not15.i6, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %i.am) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler12BinopMatcherINS1_10IntMatcherIiLNS1_8IrOpcode5ValueE27EEES6_LNS0_21MachineRepresentationE4EE10SwapInputsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 13, i1 false)
  %.sroa.0.0.vec.extract = shufflevector <16 x i8> %.sroa.0.0.copyload, <16 x i8> poison, <13 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  store <13 x i8> %.sroa.0.0.vec.extract, ptr %i.b, align 8
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 251658240
  %.not.i.i = icmp eq i32 %i.g, 251658240
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = add i64 %i.h, 32
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.a
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = add i64 %i.l, 16
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.a
  %.not18.i = icmp eq ptr %i.k, %i.d
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.p = phi ptr [ %i.j, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.n, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.q = phi ptr [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.o, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.r = phi ptr [ %i.c, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.k, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.q, null
  br i1 %.not14.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull %i.s) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.d, ptr %i.p, align 8
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.s) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.c, %bb.d
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 251658240
  %.not.i.i1 = icmp eq i32 %i.x, 251658240
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = add i64 %i.y, 32
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  br i1 %.not.i.i1, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.ac, 16
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i8 = icmp eq ptr %i.ag, %i.u
  br i1 %.not.i8, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not18.i3 = icmp eq ptr %i.ai, %i.u
  br i1 %.not18.i3, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7
  %i.aj = phi ptr [ %i.ah, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.af, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ]
  %i.ak = phi ptr [ %i.ai, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.ag, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ] ; 2 uses
  %i.al = phi ptr [ %i.t, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2 ], [ %i.ab, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7 ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -48 ; 2 uses
  %.not14.i5 = icmp eq ptr %i.ak, null
  br i1 %.not14.i5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull %i.am) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i4
  store ptr %i.u, ptr %i.aj, align 8
  %.not15.i6 = icmp eq ptr %i.u, null
  br i1 %.not15.i6, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %i.am) #16
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit9: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i7, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i2, %bb.f, %bb.g
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{null}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{null, null}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!14 = distinct !{!14, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = distinct !{null, null, null, null}
!17 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!18 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!19 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!20 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!21 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!22 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
end_hunk_0
