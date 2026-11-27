Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-parser?download=true
inline.NumInlined: 2670
inline.NumDeleted: 833
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal14CharacterRange4ListEPNS0_4ZoneES1_:bb.a

bb.e:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiRPS1_EEEPT_DpOT0_.exit
  %i.v = shl nsw i32 %i.t, 1
  %i.w = or disjoint i32 %i.v, 1                  ; 2 uses
  %i.x = icmp sgt i32 %i.t, -1
  br i1 %i.x, label %bb.g, label %bb.f, !prof !40

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = zext nneg i32 %i.w to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 3 uses
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i, !prof !38

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %i.z) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ae = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = add i64 %i.ae, %i.z
  store i64 %i.ag, ptr %i.c, align 8
  %i.ah = load i32, ptr %i.k, align 4             ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.i:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.h, align 8             ; 3 uses
  switch i32 %i.ah, label %bb.l [
    i32 2, label %bb.k
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.aj, align 1
  store i64 %i.ak, ptr %i.af, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.l:                                             ; preds = %bb.i
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aj, i64 %i.am, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  store ptr %i.af, ptr %i.h, align 8
  store i32 %i.w, ptr %i.j, align 8
  %i.an = load i32, ptr %i.k, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiRPS1_EEEPT_DpOT0_.exit, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i
  %.sink10 = phi i32 [ %i.an, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ], [ %i.s, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiRPS1_EEEPT_DpOT0_.exit ] ; 2 uses
  %.sink7 = phi ptr [ %i.af, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ], [ %i.q, %_ZN2v88internal4Zone3NewINS0_8ZoneListINS0_14CharacterRangeEEEJiRPS1_EEEPT_DpOT0_.exit ]
  %i.ao = add nsw i32 %.sink10, 1
  store i32 %i.ao, ptr %i.k, align 4
  %i.ap = sext i32 %.sink10 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sink7, i64 %i.ap
  store i64 %1, ptr %i.aq, align 4
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17RegExpClassRangesC2EPNS0_4ZoneEPNS0_8ZoneListINS0_14CharacterRangeEEENS_4base5FlagsINS1_4FlagEiiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i32 %3) unnamed_addr #0 comdat align 2 !guid !119 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 312) (i8, ptr @_ZTVN2v88internal17RegExpClassRangesE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8
  store i32 1, ptr %i.d, align 4
  store i64 4785070309113856, ptr %i.j, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = shl nsw i32 %i.h, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  %i.m = icmp sgt i32 %i.h, -1
  br i1 %i.m, label %bb.f, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = zext nneg i32 %i.l to i64
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i, !prof !38

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.o) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %.pre.i.i.i.i.i.i, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load i32, ptr %i.d, align 4              ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  %i.aa = load ptr, ptr %2, align 8               ; 3 uses
  switch i32 %i.y, label %bb.k [
    i32 2, label %bb.j
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.aa, align 1
  store i64 %i.ab, ptr %i.w, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.w, ptr noundef nonnull align 1 dereferenceable(16) %i.aa, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.aa, i64 %i.ad, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  store ptr %i.w, ptr %2, align 8
  store i32 %i.l, ptr %i.g, align 8
  %i.ae = load i32, ptr %i.d, align 4             ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.d, align 4
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ag
  store i64 4785070309113856, ptr %i.ah, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit: ; preds = %bb.c, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i
  %i.ai = load i32, ptr %i.c, align 8
  %i.aj = xor i32 %i.ai, 1
  store i32 %i.aj, ptr %i.c, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit, %bb.a
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !guid !120 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !guid !121 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j) ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k                 ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 3 uses
  %i.n = icmp ult i64 %.sroa.speculated, 1152921504606846977
  br i1 %i.n, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw i64 8, %i.l                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit, !prof !38

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #19
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit: ; preds = %bb.c, %bb.d
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.d ], [ %i.s, %bb.c ] ; 3 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 5 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.5) #20
  unreachable

bb.f:                                             ; preds = %_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE22AllocateDynamicStorageEm.exit
  %i.z = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, 8
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !40

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.z, i64 %i.ad, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.af = icmp eq i64 %i.ad, 8
  br i1 %i.af, label %bb.i, label %_ZSt18uninitialized_moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.z, align 8
  store ptr %i.ag, ptr %i.w, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

_ZSt18uninitialized_moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.h
  %i.aj = shl nuw i64 1, %i.l
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  store ptr %i.w, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ai
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  store ptr %i.al, ptr %i.e, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal10RegExpTreeELm8ENS2_13ZoneAllocatorIS4_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !guid !122 {
_ZSt9destroy_nIPPN2v88internal10RegExpTreeElET_S5_T0_.exit:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2v88internal17RegExpAlternativeC1EPNS0_8ZoneListIPNS0_10RegExpTreeEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN2v88internal17RegExpDisjunctionC1EPNS0_8ZoneListIPNS0_10RegExpTreeEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6AddAllENS_4base6VectorIKS3_EEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 !guid !123 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKPNS_8internal10RegExpTreeEE6lengthEv.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #20
  unreachable

_ZNK2v84base6VectorIKPNS_8internal10RegExpTreeEE6lengthEv.exit: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKPNS_8internal10RegExpTreeEE6lengthEv.exit
  %i.c = trunc nuw nsw i64 %2 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.h, %i.f
  br i1 %i.i, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.f, -1
  br i1 %i.j, label %bb.f, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %i.f to i64
  %i.l = shl nuw nsw i64 %i.k, 3                  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i, !prof !38

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.l) #19
  %.pre.i.i.i = load i64, ptr %i.o, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i: ; preds = %bb.g, %bb.f
  %i.s = phi i64 [ %.pre.i.i.i, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %i.u = add i64 %i.s, %i.l
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.d, align 4              ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit

bb.h:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i
  %i.x = load ptr, ptr %0, align 8                ; 3 uses
  switch i32 %i.v, label %bb.k [
    i32 2, label %bb.j
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.x, align 1
  store i64 %i.y, ptr %i.t, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %i.x, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit

bb.k:                                             ; preds = %bb.h
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit

_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_10RegExpTreeEA_S4_EEPT_m.exit.i, %bb.i, %bb.j, %bb.k
  store ptr %i.t, ptr %0, align 8
  store i32 %i.f, ptr %i.g, align 8
  %.pre8 = load i32, ptr %i.d, align 4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit
  %i.ab = phi i32 [ %i.e, %._crit_edge ], [ %.pre8, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit ]
  %i.ac = phi ptr [ %.pre, %._crit_edge ], [ %i.t, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE6ResizeEiPNS0_4ZoneE.exit ]
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ad
  %i.af = shl nuw nsw i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %1, i64 %i.af, i1 false)
  store i32 %i.f, ptr %i.d, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2v84base6VectorIKPNS_8internal10RegExpTreeEE6lengthEv.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
end_hunk_0
