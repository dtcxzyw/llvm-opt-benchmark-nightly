inline.NumInlined: 1540
inline.NumDeleted: 621
begin_hunk_0_@_ZN2v88internal16ObjectDescriptorINS0_12LocalIsolateEE16AddNamedPropertyEPS2_NS0_6HandleINS0_4NameEEENS0_16ClassBoilerplate9ValueKindEi:bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i: ; preds = %bb.af
  %i.es = load i64, ptr %.sroa.21.0.copyload.i.i.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i
  %.sroa.05.0.i.i.i = phi i64 [ %i.er, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i.i ], [ %i.es, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 %.sroa.09.1.i158.i, i64 %i.em, i64 %.sroa.05.0.i.i.i, i32 %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

bb.ah:                                            ; preds = %_ZN2v88internal15DescriptorArray6SearchENS0_6TaggedINS0_4NameEEEib.exit.i
  %i.et = add i64 %i.dz, 15
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = load atomic volatile i64, ptr %i.eu monotonic, align 8 ; 3 uses
  %i.ew = trunc i64 %i.ev to i1
  br i1 %i.ew, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.ah
  %i.ex = add nsw i64 %i.ev, -1
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i64, ptr %i.ey monotonic, align 8
  %i.fa = add i64 %i.ez, 11
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = load atomic volatile i16, ptr %i.fb monotonic, align 2
  %i.fd = icmp eq i16 %i.fc, 140
  br i1 %i.fd, label %bb.am, label %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.ah
  %i.fe = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @_ZN2v88internal10Descriptor16AccessorConstantENS0_12DirectHandleINS0_4NameEEENS2_INS0_6ObjectEEENS0_18PropertyAttributesE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::Descriptor") align 8 %11, ptr nonnull %2, ptr %i.fe, i32 noundef 2) #12
  %i.ff = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = and i32 %i.fg, -523777
  %i.fi = shl nuw nsw i32 %i.ee, 9
  %i.fj = or disjoint i32 %i.fh, %i.fi            ; 2 uses
  store i32 %i.fj, ptr %i.ff, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.fk = load i64, ptr %.sroa.02.0.copyload, align 8
  store i64 %i.fk, ptr %12, align 8
  %.sroa.0.0.copyload.i.i54.i = load ptr, ptr %11, align 8
  %i.fl = load i64, ptr %.sroa.0.0.copyload.i.i54.i, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.0.copyload.i10.i55.i = load i32, ptr %i.fm, align 8
  %.sroa.21.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.21.0.copyload.i.i57.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i56.i, align 8 ; 3 uses
  %i.fn = icmp eq i32 %.sroa.0.0.copyload.i10.i55.i, 0
  %i.fo = icmp eq ptr %.sroa.21.0.copyload.i.i57.i, null ; 2 uses
  br i1 %i.fn, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.aj, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i, !prof !8

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i: ; preds = %bb.ai
  %i.fp = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  %i.fq = or i64 %i.fp, 3
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

bb.ak:                                            ; preds = %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  br i1 %i.fo, label %bb.al, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, !prof !8

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #13
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i: ; preds = %bb.ak
  %i.fr = load i64, ptr %.sroa.21.0.copyload.i.i57.i, align 8
  br label %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i

_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i
  %.sroa.05.0.i.i59.i = phi i64 [ %i.fq, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit3.i.i61.i ], [ %i.fr, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit.i.i58.i ]
  call void @_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexENS0_6TaggedINS0_4NameEEENS3_INS0_9MaybeWeakINS0_6ObjectEEEEENS0_15PropertyDetailsE(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 %.sroa.09.1.i158.i, i64 %i.fl, i64 %.sroa.05.0.i.i59.i, i32 %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  %i.fs = load i64, ptr %i.fe, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i
  %.sroa.066.0.i = phi i64 [ %i.fs, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit62.i ], [ %i.ev, %_ZN2v88internal14IsAccessorPairENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  %i.ft = load i64, ptr %.sroa.0.0.copyload, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEENS_15ReleaseStoreTagE(i64 %.sroa.066.0.i, i32 noundef %3, i64 %i.ft)
  br label %_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_128AddToDescriptorArrayTemplateINS0_12LocalIsolateEEEvPT_NS0_12DirectHandleINS0_15DescriptorArrayEEENS6_INS0_4NameEEENS0_16ClassBoilerplate9ValueKindENS6_INS0_6ObjectEEE.exit: ; preds = %bb.am, %_ZN2v88internal15DescriptorArray3SetENS0_13InternalIndexEPNS0_10DescriptorE.exit.i, %bb.ab, %bb.b
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE9NewStructENS0_12InstanceTypeENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal16LocalHandleScope14CloseAndEscapeINS0_16ClassBoilerplateENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEES7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = add i64 %i.g, -55464
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 560
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN2v88internal16LocalHandleScope20CloseMainThreadScopeEPNS0_9LocalHeapEPmS4_(ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.n) #12
  br label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.r, ptr %i.p, align 8
  store ptr %i.t, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i, label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12LocalHandles18RemoveUnusedBlocksEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #12
  br label %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit

_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.p, %bb.c ], [ %i.p, %bb.d ] ; 3 uses
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !range !9, !noundef !10
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit
  %i.ad = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.z, i64 noundef %i.a) #12
  br label %_ZN2v88internal10HandleBaseC2EmPNS0_9LocalHeapE.exit

bb.f:                                             ; preds = %_ZN2v88internal16LocalHandleScope10CloseScopeEPNS0_9LocalHeapEPmS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.af = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af) #12
  %.pre = load ptr, ptr %i.af, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %.pre, %bb.g ], [ %i.ag, %bb.f ]
  %.0.i.i = phi ptr [ %i.ak, %bb.g ], [ %i.ag, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.af, align 8
  store i64 %i.a, ptr %.0.i.i, align 8
  br label %_ZN2v88internal10HandleBaseC2EmPNS0_9LocalHeapE.exit

_ZN2v88internal10HandleBaseC2EmPNS0_9LocalHeapE.exit: ; preds = %bb.e, %bb.h
  %.012.i.i = phi ptr [ %i.ad, %bb.e ], [ %.0.i.i, %bb.h ]
  %i.an = load ptr, ptr %.0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27ArrayBoilerplateDescription17BriefPrintDetailsERSo(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) #12 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.c = inttoptr i64 %i.b to ptr
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %3 = load i32, ptr %.shift.i.i, align 4
  %i.d = trunc i32 %3 to i8
  %i.e = tail call noundef ptr @_ZN2v88internal20ElementsKindToStringENS0_12ElementsKindE(i8 noundef zeroext %i.d) #12 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l) #12
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #12
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef %i.m) #12 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 2) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.sroa.0.0.copyload.i.i3 = load i64, ptr %0, align 8
  %i.p = add i64 %.sroa.0.0.copyload.i.i3, 15
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %2, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal20ElementsKindToStringENS0_12ElementsKindE(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal28RegExpBoilerplateDescription17BriefPrintDetailsERSo(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %3 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %0, align 8
  %i.b = add i64 %.sroa.0.0.copyload.i.i.i.i.i, 7
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  store i64 %i.d, ptr %2, align 8
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #12 ; 2 uses
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.1, i64 noundef 2) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %3, align 8
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %3) #12 ; 2 uses
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 2) #12 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8
  %i.l = add i64 %.sroa.0.0.copyload.i, 23
  %i.m = inttoptr i64 %i.l to ptr
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %4 = load i32, ptr %.shift.i, align 4
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef %4) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64, i64 noundef, i64) local_unnamed_addr #3

declare void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64, i64, i64) local_unnamed_addr #3

declare void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal16LocalHandleScope19OpenMainThreadScopeEPNS0_9LocalHeapE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal16LocalHandleScope20CloseMainThreadScopeEPNS0_9LocalHeapEPmS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal12LocalHandles18RemoveUnusedBlocksEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE15NewAccessorPairEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_129SetAccessorPlaceholderIndicesENS0_6TaggedINS0_12AccessorPairEEENS0_16ClassBoilerplate9ValueKindENS2_INS0_3SmiEEE(i64 %0, i32 noundef range(i32 1, 0) %1, i64 %2) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.t [
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %0, -1                           ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store atomic volatile i64 %2, ptr %i.c monotonic, align 8
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.c, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.g = and i64 %i.a, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %2, -262144
  %i.m = inttoptr i64 %i.l to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not39.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.e, i64 noundef %i.f, i64 %2) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.e, i64 %i.f, i64 %2) #12
  br label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.h:                                             ; preds = %bb.a
  %i.o = add i64 %0, -1                           ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store atomic volatile i64 %2, ptr %i.q monotonic, align 8
  %i.r = trunc i64 %2 to i1
  br i1 %i.r, label %bb.i, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %bb.h
  %i.s = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.u = and i64 %i.o, -262144
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load i64, ptr %i.v, align 262144         ; 2 uses
  %i.x = and i64 %i.w, 32
  %.not.i.i.i.i.i10 = icmp eq i64 %i.x, 0
  %i.y = and i64 %i.w, 25
  %.not38.i.i.i.i.i11 = icmp eq i64 %i.y, 0
  br i1 %.not38.i.i.i.i.i11, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = and i64 %2, -262144
  %i.aa = inttoptr i64 %i.z to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i12 = load i64, ptr %i.aa, align 262144
  %i.ab = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i12, 25
  %.not39.i.i.i.i.i13 = icmp eq i64 %i.ab, 0
  br i1 %.not39.i.i.i.i.i13, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.s, i64 noundef %i.t, i64 %2) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not.i.i.i.i.i10, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.s, i64 %i.t, i64 %2) #12
  br label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.n:                                             ; preds = %bb.a
  %i.ac = add i64 %0, -1                          ; 3 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store atomic volatile i64 %2, ptr %i.ae monotonic, align 8
  %i.af = trunc i64 %2 to i1
  br i1 %i.af, label %bb.o, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18

bb.o:                                             ; preds = %bb.n
  %i.ag = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = and i64 %i.ac, -262144
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 262144       ; 2 uses
  %i.al = and i64 %i.ak, 32
  %.not.i.i.i.i.i14 = icmp eq i64 %i.al, 0
  %i.am = and i64 %i.ak, 25
  %.not38.i.i.i.i.i15 = icmp eq i64 %i.am, 0
  br i1 %.not38.i.i.i.i.i15, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.an = and i64 %2, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i16 = load i64, ptr %i.ao, align 262144
  %i.ap = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i16, 25
  %.not39.i.i.i.i.i17 = icmp eq i64 %i.ap, 0
  br i1 %.not39.i.i.i.i.i17, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ag, i64 noundef %i.ah, i64 %2) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  br i1 %.not.i.i.i.i.i14, label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18, label %bb.s, !prof !5

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ag, i64 %i.ah, i64 %2) #12
  br label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18

_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18: ; preds = %bb.n, %bb.r, %bb.s
  %i.aq = and i64 %2, -4294967296
  %i.ar = add i64 %i.aq, 4294967296
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store atomic volatile i64 %i.ar, ptr %i.as monotonic, align 8
  br label %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.t:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4) #13
  unreachable

_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal12AccessorPair10set_getterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit18, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12AccessorPair10set_setterENS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE(ptr noundef nonnull align 4 dereferenceable(24) %0, i64 %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store atomic volatile i64 %1, ptr %i.a monotonic, align 8
  %i.b = icmp sgt i32 %2, 1
  %i.c = trunc i64 %1 to i1
  %or.cond.i.i.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN2v88internal12TaggedMemberINS0_6ObjectENS0_27V8HeapCompressionSchemeImplINS0_8MainCageEEEE5storeEPNS0_16HeapObjectLayoutENS0_6TaggedIS2_EENS0_16WriteBarrierModeE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = and i64 %i.d, -262144
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 262144         ; 2 uses
  %i.j = and i64 %i.i, 32
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %i.i, 25
  %.not38.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not38.i.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %1, -262144
end_hunk_0
