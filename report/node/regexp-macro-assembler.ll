Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-macro-assembler?download=true
inline.NumInlined: 521
inline.NumDeleted: 359
begin_hunk_0_@_ZN2v88internal26NativeRegExpMacroAssembler18GetOrAddRangeArrayEPKNS0_8ZoneListINS0_14CharacterRangeEEE:bb.a
  br i1 %i.ey, label %.lr.ph.i15, label %_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit

.lr.ph.i15:                                       ; preds = %.critedge
  %i.ez = add nsw i32 %i.el, -1
  %i.fa = zext nneg i32 %i.ez to i64
  %wide.trip.count.i16 = zext nneg i32 %i.el to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i15
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i18, %bb.o ] ; 4 uses
  %i.fb = load ptr, ptr %1, align 8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.i17 ; 2 uses
  %i.fd = load i64, ptr %i.ex, align 8
  %i.fe = add i64 %i.fd, -1
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load i32, ptr %i.fc, align 4
  %i.fh = trunc i32 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fj = trunc nuw nsw i64 %indvars.iv.i17 to i32
  %i.fk = shl i32 %i.fj, 2                        ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fl
  store i16 %i.fh, ptr %i.fm, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = and i32 %i.fo, 65535
  %i.fq = icmp ne i64 %indvars.iv.i17, %i.fa
  %i.fr = icmp ne i32 %i.fp, 65535
  %or.cond.not.i = or i1 %i.fq, %i.fr
  br i1 %or.cond.not.i, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit

bb.o:                                             ; preds = %bb.n
  %i.fs = load i64, ptr %i.ex, align 8
  %i.ft = add i64 %i.fs, -1
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = or disjoint i32 %i.fk, 2
  %i.fw = trunc i32 %i.fo to i16
  %i.fx = add i16 %i.fw, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = zext i32 %i.fv to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fz
  store i16 %i.fx, ptr %i.ga, align 1
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %wide.trip.count.i16
  br i1 %exitcond.not.i19, label %_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit, label %bb.n, !llvm.loop !28

_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit: ; preds = %bb.n, %bb.o, %.critedge
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal6HandleINS4_21FixedIntegerArrayBaseItNS4_9ByteArrayEEEEEENS4_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIjENS3_4base4hashIjEENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  store ptr %i.ex, ptr %i.gb, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.l, %.preheader.i, %_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit
  %.sroa.020.0 = phi ptr [ %i.ex, %_ZN2v88internal12_GLOBAL__N_114MakeRangeArrayEPNS0_7IsolateEPKNS0_8ZoneListINS0_14CharacterRangeEEE.exit ], [ %.sroa.04.0.copyload, %.preheader.i ], [ %.sroa.04.0.copyload, %bb.l ], [ %.sroa.04.0.copyload, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.sroa.020.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN2v88internal20RegExpMacroAssembler23IsCharacterInRangeArrayEjm(i32 noundef %0, i64 noundef %1) local_unnamed_addr #6 align 2 !guid !31 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.0.copyload.i.i = load i16, ptr %i.c, align 1
  %i.d = zext i16 %.0.copyload.i.i to i32
  %i.e = icmp ult i32 %0, %i.d
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = ashr i32 %i.i, 1                         ; 3 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %.0.copyload.i.i32 = load i16, ptr %i.n, align 1
  %i.o = zext i16 %.0.copyload.i.i32 to i32
  %.not = icmp ult i32 %0, %i.o
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.j, 1
  br label %bb.e

.preheader:                                       ; preds = %bb.b, %.preheader
  %.025 = phi i32 [ %.227, %.preheader ], [ 0, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %.2, %.preheader ], [ %i.j, %bb.b ] ; 2 uses
  %i.q = sub nsw i32 %.024, %.025
  %i.r = sdiv i32 %i.q, 2
  %i.s = add nsw i32 %i.r, %.025                  ; 4 uses
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.u
  %.0.copyload.i.i33 = load i16, ptr %i.v, align 1
  %i.w = zext i16 %.0.copyload.i.i33 to i32       ; 3 uses
  %i.x = icmp samesign uge i32 %0, %i.w           ; 2 uses
  %i.y = add nsw i32 %i.s, 1
  %.not42 = icmp samesign ugt i32 %0, %i.w
  %.227 = select i1 %.not42, i32 %i.y, i32 %.025  ; 2 uses
  %.2 = select i1 %i.x, i32 %.024, i32 %i.s       ; 2 uses
  %.not44 = icmp ne i32 %0, %i.w
  %i.z = icmp slt i32 %.227, %.2
  %or.cond = select i1 %.not44, i1 %i.z, i1 false
  br i1 %or.cond, label %.preheader, label %bb.d, !llvm.loop !30

bb.d:                                             ; preds = %.preheader
  %.tr = trunc i32 %i.s to i1
  %i.aa = xor i1 %i.x, %.tr
  %i.ab = zext i1 %i.aa to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.ab, %bb.d ], [ %i.p, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20RegExpMacroAssembler23CheckNotInSurrogatePairEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !guid !32 {
bb.a:
  %3 = alloca %"class.v8::internal::Label", align 4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1) #11, !inline_history !16
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext -9216, i16 noundef zeroext -8193, ptr noundef nonnull %3) #11
  %i.h = add nsw i32 %1, -1
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1) #11, !inline_history !16
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext -10240, i16 noundef zeroext -9217, ptr noundef %2) #11
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20RegExpMacroAssembler20LoadCurrentCharacterEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 !guid !33 {
bb.a:
  %i.a = icmp eq i32 %5, -1
  %spec.select = select i1 %i.a, i32 %4, i32 %5
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %spec.select) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal20RegExpMacroAssembler13CheckPositionEiPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !guid !34 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1) #11, !inline_history !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal26NativeRegExpMacroAssembler24LoadCurrentCharacterImplEiPNS0_5LabelEbii(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 align 2 !guid !35 {
bb.a:
  br i1 %3, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = add i32 %i.a, %5
  %i.c = icmp slt i32 %1, 0
  %.sink = select i1 %i.c, i32 %1, i32 %i.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %.sink, ptr noundef %2) #11
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1, i32 noundef %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal26NativeRegExpMacroAssembler16CanReadUnalignedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #6 align 2 !guid !36 {
  %2 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1366), align 2, !range !37, !noundef !38
  %3 = trunc nuw i8 %2 to i1
  br i1 %3, label %bb.a, label %4

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !37, !noundef !38
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %4

4:                                                ; preds = %bb.a, %1
  %5 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -2, 1) i32 @_ZN2v88internal26NativeRegExpMacroAssembler20CheckStackGuardStateEPNS0_7IsolateEiNS0_6RegExp10CallOriginEPmNS0_6TaggedINS0_17InstructionStreamEEES6_PPKhSC_m(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, i64 noundef %8) local_unnamed_addr #2 align 2 !guid !39 {
bb.a:
  %9 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 3 uses
  %10 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.a = load i64, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store ptr %0, ptr %10, align 8
  %i.b = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %8) #11 ; 2 uses
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %10, align 8
  %i.e = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #11
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = icmp ult i64 %i.e, %i.g
  %. = select i1 %i.h, i32 -2, i32 0
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  %i.p = icmp eq ptr %i.j, %i.l
  br i1 %i.p, label %bb.e, label %_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  %i.q = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #11
  br label %_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.q, %bb.e ], [ %i.j, %bb.d ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.i, align 8
  store i64 %4, ptr %.0.i.i, align 8
  %i.u = load i64, ptr %5, align 8                ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.k, align 8
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.f, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !17

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.y = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #11
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.f
  %.0.i.i40 = phi ptr [ %i.y, %bb.f ], [ %i.v, %_ZN2v88internal6HandleINS0_17InstructionStreamEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 4 uses
  %i.z = ptrtoint ptr %.0.i.i40 to i64
  %i.aa = add i64 %i.z, 8
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.i, align 8
  store i64 %i.u, ptr %.0.i.i40, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.04.0.i = phi i64 [ %i.u, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.ak, %bb.h ]
  %i.ac = add i64 %.sroa.04.0.i, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = and i16 %i.ah, 9
  switch i16 %i.ai, label %bb.h [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.loopexit
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.g

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.loopexit: ; preds = %bb.g
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit: ; preds = %bb.g, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.loopexit
  %.1.ph.i = phi i1 [ false, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.loopexit ], [ true, %bb.g ] ; 2 uses
  br i1 %i.b, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit
  %i.al = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %0) #11 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit
  %i.am = load ptr, ptr %10, align 8
  %i.an = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 2) #11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp ne i64 %i.as, %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.1 = phi i1 [ false, %bb.i ], [ %i.av, %bb.k ], [ true, %bb.j ]
  %i.aw = load i64, ptr %.0.i.i, align 8          ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %4
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = sub i64 %i.a, %4
  %i.az = add i64 %i.ay, %i.aw
  store i64 %i.az, ptr %3, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.1, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ba = load i64, ptr %.0.i.i40, align 8        ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.04.0.i41 = phi i64 [ %i.ba, %bb.o ], [ %i.bj, %bb.q ]
  %i.bb = add i64 %.sroa.04.0.i41, -1
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, 11
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = load atomic volatile i16, ptr %i.bf monotonic, align 2
  %i.bh = and i16 %i.bg, 9
  switch i16 %i.bh, label %bb.q [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44
    i16 0, label %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44_crit_edge
  ]

._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44_crit_edge: ; preds = %bb.p
  br i1 %.1.ph.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bj = load i64, ptr %i.bi, align 8
  br label %bb.p

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44: ; preds = %bb.p
  br i1 %.1.ph.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44_crit_edge, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44
  store i64 %i.ba, ptr %5, align 8
  %i.bk = load ptr, ptr %7, align 8
  %i.bl = load ptr, ptr %6, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load i64, ptr %.0.i.i40, align 8
  %i.bq = add i64 %i.bp, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = call noundef ptr @_ZN2v88internal6String20AddressOfCharacterAtEjRKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.br, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %9) #11 ; 2 uses
  store ptr %i.bs, ptr %6, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bo
  store ptr %i.bt, ptr %7, align 8
  br label %bb.s

bb.s:                                             ; preds = %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44_crit_edge, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44, %bb.r, %bb.n
  %.2 = phi i32 [ -1, %bb.n ], [ 0, %bb.r ], [ -2, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44 ], [ -2, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit44_crit_edge ] ; 3 uses
  %i.bu = icmp eq ptr %0, null
  br i1 %i.bu, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.t, !prof !17

bb.t:                                             ; preds = %bb.s
  store ptr %i.j, ptr %i.i, align 8
  %i.bv = load i32, ptr %i.m, align 8
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.m, align 8
  %i.bx = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.bx, %i.l
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.u, !prof !18

bb.u:                                             ; preds = %bb.t
  store ptr %i.l, ptr %i.k, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %0) #11
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.u, %bb.t, %bb.s, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %., %bb.c ], [ %.2, %bb.s ], [ %.2, %bb.t ], [ %.2, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  ret i32 %.0
}
end_hunk_0
