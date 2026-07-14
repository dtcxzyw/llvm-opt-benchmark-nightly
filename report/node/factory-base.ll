inline.NumInlined: 12826
inline.NumDeleted: 1652
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE18NewDescriptorArrayEiiNS0_14AllocationTypeE:bb.a
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64088
  %i.n = load i8, ptr %i.m, align 8, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNK2v88internal12LocalIsolate20shared_space_isolateEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal12LocalIsolate20shared_space_isolateEv.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 64080
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 63936
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNK2v88internal12LocalIsolate20shared_space_isolateEv.exit
  %.pn = phi ptr [ %i.s, %_ZNK2v88internal12LocalIsolate20shared_space_isolateEv.exit ], [ %0, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1920
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1880
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 872
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 3
  %i.af = shl i32 %1, 2
  %i.ag = and i32 %i.af, 262140
  %i.ah = or disjoint i32 %i.ae, %i.ag
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.ah, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 %i.f, ptr %4, align 8
  %.sroa.0.0.copyload.i.i24 = load ptr, ptr %0, align 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i24, i64 192
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = load i64, ptr %.sroa.0.0.copyload.i.i24, align 8
  call void @_ZN2v88internal15DescriptorArray10InitializeENS0_6TaggedINS0_9EnumCacheEEENS2_INS0_10HeapObjectEEEiij(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %i.aj, i64 %i.ak, i32 noundef %1, i32 noundef %2, i32 noundef %.1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !6, !noundef !7
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.ao, i64 noundef %i.f) #15
  br label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ar) #15
  %.pre = load ptr, ptr %i.ar, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ax = phi ptr [ %.pre, %bb.j ], [ %i.as, %bb.i ]
  %.0.i.i = phi ptr [ %i.aw, %bb.j ], [ %i.as, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.ar, align 8
  store i64 %i.f, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_15DescriptorArrayEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.h, %bb.k
  %.012.i.i = phi ptr [ %i.ap, %bb.h ], [ %.0.i.i, %bb.k ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17NewClassPositionsEii(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17NewStructInternalINS0_14ClassPositionsEEENS0_6TaggedIT_EENS0_12InstanceTypeENS0_14AllocationTypeE.exit:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 7720
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 24, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 4 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  store atomic volatile i64 %i.b, ptr %i.e monotonic, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.g = add i64 %i.c, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.f, i64 2, ptr %i.h) #15, !srcloc !10 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = sext i32 %1 to i64
  %i.l = shl nsw i64 %i.k, 32
  store atomic volatile i64 %i.l, ptr %i.j monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = sext i32 %2 to i64
  %i.o = shl nsw i64 %i.n, 32
  store atomic volatile i64 %i.o, ptr %i.m monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17NewStructInternalINS0_14ClassPositionsEEENS0_6TaggedIT_EENS0_12InstanceTypeENS0_14AllocationTypeE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.s, i64 noundef %i.c) #15
  br label %_ZN2v88internal6HandleINS0_14ClassPositionsEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.b:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17NewStructInternalINS0_14ClassPositionsEEENS0_6TaggedIT_EENS0_12InstanceTypeENS0_14AllocationTypeE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #15
  %.pre = load ptr, ptr %i.v, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.w, %bb.b ]
  %.0.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ac, ptr %i.v, align 8
  store i64 %i.c, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_14ClassPositionsEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_14ClassPositionsEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.a, %bb.d
  %.012.i.i = phi ptr [ %i.t, %bb.a ], [ %.0.i.i, %bb.d ]
  ret ptr %.012.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE22NewSwissNameDictionaryEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  %..i = select i1 %i.b, i32 0, i32 4
  br label %_ZN2v88internal19SwissNameDictionary11CapacityForEi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = udiv i32 %1, 7
  %i.d = add nsw i32 %1, -1
  %spec.select.i7.i = add nuw i32 %i.d, %i.c
  %i.e = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i7.i, i1 false)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = shl nuw i32 1, %i.f
  br label %_ZN2v88internal19SwissNameDictionary11CapacityForEi.exit

_ZN2v88internal19SwissNameDictionary11CapacityForEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %..i, %bb.b ], [ %i.g, %bb.c ]
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE34NewSwissNameDictionaryWithCapacityEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %.0.i, i8 noundef zeroext %2)
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE34NewSwissNameDictionaryWithCapacityEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.1018", align 1 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.924", align 8 ; 4 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1904
  br label %_ZN2v88internal6HandleINS0_19SwissNameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 48806444
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, i32 noundef %1) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = icmp samesign ult i32 %1, 257
  %i.f = icmp samesign ult i32 %1, 65537
  %.neg.i.i2930 = lshr i32 %1, 3                  ; 2 uses
  %i.g = add nuw nsw i32 %1, 2                    ; 2 uses
  %i.h = sub nsw i32 %i.g, %.neg.i.i2930
  %i.i = select i1 %i.f, i32 1, i32 2
  %i.j = select i1 %i.e, i32 0, i32 %i.i
  %i.k = shl nsw i32 %i.h, %i.j                   ; 6 uses
  %i.l = icmp ugt i32 %i.k, 134217728
  br i1 %i.l, label %bb.f, label %5, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, i32 noundef %i.k) #17
  unreachable

5:                                                ; preds = %bb.e
  %6 = icmp eq i32 %i.g, %.neg.i.i2930
  br i1 %6, label %7, label %11, !prof !5

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1952
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 1824
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %12, align 1
  %13 = call ptr @_ZN2v88internal18PrimitiveArrayBaseINS0_9ByteArrayENS0_14ByteArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_12LocalIsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_19AllocationAlignmentE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.k, ptr noundef nonnull %3, i8 noundef zeroext %2, i8 noundef zeroext 0) ; 2 uses
  %14 = add nuw nsw i32 %i.k, 23
  %15 = and i32 %14, 536870904
  %reass.sub = sub nsw i32 %15, %i.k
  %16 = add nsw i32 %reass.sub, -16
  %17 = load i64, ptr %13, align 8
  %18 = add i64 %17, -1
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = zext nneg i32 %i.k to i64
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 %21
  %23 = sext i32 %16 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %22, i8 0, i64 %23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE.exit: ; preds = %7, %11
  %.sroa.012.0.i.i = phi ptr [ %10, %7 ], [ %13, %11 ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 696
  %i.n = load i64, ptr %i.m, align 8
  %i.o = mul nuw nsw i32 %1, 17
  %i.p = add nuw nsw i32 %1, 40
  %i.q = add nuw nsw i32 %i.p, %i.o
  %i.r = call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.q, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 0) #15 ; 4 uses
  %i.s = add i64 %i.r, -1
  %i.t = inttoptr i64 %i.s to ptr
  store atomic volatile i64 %i.n, ptr %i.t monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store i64 %i.r, ptr %4, align 8
  %i.u = load i64, ptr %.sroa.012.0.i.i, align 8
  call void @_ZN2v88internal19SwissNameDictionary10InitializeINS0_12LocalIsolateEEEvPT_NS0_6TaggedINS0_9ByteArrayEEEi(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0, i64 %i.u, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !6, !noundef !7
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.y, i64 noundef %i.r) #15
  br label %_ZN2v88internal6HandleINS0_19SwissNameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

bb.h:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE12NewByteArrayEiNS0_14AllocationTypeENS0_19AllocationAlignmentE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ab) #15
  %.pre = load ptr, ptr %i.ab, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %.pre, %bb.i ], [ %i.ac, %bb.h ]
  %.0.i.i = phi ptr [ %i.ag, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.ab, align 8
  store i64 %i.r, ptr %.0.i.i, align 8
  br label %_ZN2v88internal6HandleINS0_19SwissNameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit

_ZN2v88internal6HandleINS0_19SwissNameDictionaryEEC2ENS0_6TaggedIS2_EEPNS0_12LocalIsolateE.exit: ; preds = %bb.j, %bb.g, %bb.b
  %.sroa.017.0 = phi ptr [ %i.d, %bb.b ], [ %i.z, %bb.g ], [ %.0.i.i, %bb.j ]
  ret ptr %.sroa.017.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19SwissNameDictionary10InitializeINS0_12LocalIsolateEEEvPT_NS0_6TaggedINS0_9ByteArrayEEEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr
  store i32 %3, ptr %i.c, align 4
  %i.d = load i64, ptr %0, align 8
  %i.e = add i64 %i.d, 7
  %i.f = inttoptr i64 %i.e to ptr
  store i32 0, ptr %i.f, align 4
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i32, ptr %i.i, align 4
  %i.k = shl nsw i32 %i.j, 4
  %i.l = sext i32 %i.k to i64
  %i.m = add i64 %i.g, 23
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = add nsw i32 %3, 16
  %i.q = sext i32 %i.p to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 -128, i64 %i.q, i1 false)
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %0, align 8
  %i.t = add i64 %i.s, 23
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = shl nuw nsw i32 %3, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.v, i64 %i.x, ptr %i.y) #15, !srcloc !10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.04.0.copyload.i = load i64, ptr %0, align 8
  %i.aa = add i64 %.sroa.04.0.copyload.i, 15
  %i.ab = inttoptr i64 %i.aa to ptr
  store atomic volatile i64 %2, ptr %i.ab monotonic, align 8
  %.sroa.02.0.copyload.i = load i64, ptr %0, align 8 ; 4 uses
  %i.ac = add i64 %.sroa.02.0.copyload.i, 15      ; 2 uses
  %i.ad = trunc i64 %2 to i1
  br i1 %i.ad, label %bb.d, label %_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = and i64 %.sroa.02.0.copyload.i, -262144
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i64, ptr %i.af, align 262144       ; 2 uses
  %i.ah = and i64 %i.ag, 32
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  %i.ai = and i64 %i.ag, 25
  %.not38.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not38.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = and i64 %2, -262144
  %i.ak = inttoptr i64 %i.aj to ptr
  %.sroa.0.0.copyload.i28.i.i.i = load i64, ptr %i.ak, align 262144
  %i.al = and i64 %.sroa.0.0.copyload.i28.i.i.i, 25
  %.not39.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not39.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %.sroa.02.0.copyload.i, i64 noundef %i.ac, i64 %2) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %.sroa.02.0.copyload.i, i64 %i.ac, i64 %2) #15
  br label %_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.c, %bb.g, %bb.h
  %i.am = load i64, ptr %0, align 8               ; 2 uses
  %i.an = add i64 %i.am, 11
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = add i64 %i.am, 15
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i32 %i.ap, 257
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit
  %i.au = add i64 %i.as, -1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 0, ptr %i.aw, align 1
  br label %_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit

bb.j:                                             ; preds = %_ZN2v88internal19SwissNameDictionary14set_meta_tableENS0_6TaggedINS0_9ByteArrayEEENS0_16WriteBarrierModeE.exit
  %i.ax = icmp samesign ult i32 %i.ap, 65537
  %i.ay = add i64 %i.as, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %i.ba, align 2
  br label %_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.ba, align 4
  br label %_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit

_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit: ; preds = %bb.i, %bb.k, %bb.l
  %i.bb = load i64, ptr %0, align 8               ; 2 uses
  %i.bc = add i64 %i.bb, 11
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = add i64 %i.bb, 15
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp slt i32 %i.be, 257
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit
  %i.bj = add i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 17
  store i8 0, ptr %i.bl, align 1
  br label %_ZN2v88internal19SwissNameDictionary26SetNumberOfDeletedElementsEi.exit

bb.n:                                             ; preds = %_ZN2v88internal19SwissNameDictionary19SetNumberOfElementsEi.exit
  %i.bm = icmp samesign ult i32 %i.be, 65537
  %i.bn = add i64 %i.bh, -1
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 0, ptr %i.bp, align 2
  br label %_ZN2v88internal19SwissNameDictionary26SetNumberOfDeletedElementsEi.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store i32 0, ptr %i.bq, align 4
  br label %_ZN2v88internal19SwissNameDictionary26SetNumberOfDeletedElementsEi.exit

_ZN2v88internal19SwissNameDictionary26SetNumberOfDeletedElementsEi.exit: ; preds = %bb.m, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE27NewFunctionTemplateRareDataEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17NewStructInternalINS0_24FunctionTemplateRareDataEEENS0_6TaggedIT_EENS0_12InstanceTypeENS0_14AllocationTypeE.exit:
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 7760
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i64 @_ZN2v88internal12LocalFactory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 80, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 0) #15 ; 5 uses
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  store atomic volatile i64 %i.b, ptr %i.e monotonic, align 8
  %i.f = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.g = add i64 %i.c, 7
  %i.h = inttoptr i64 %i.g to ptr
end_hunk_0
