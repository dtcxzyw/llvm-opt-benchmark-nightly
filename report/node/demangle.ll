inline.NumInlined: 653
inline.NumDeleted: 85
begin_hunk_0_@_ZN4absl18debugging_internal14DemangleStringB5cxx11EPKc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i8: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i7
  %i.ab = load i64, ptr %i.b, align 8
  %i.ac = select i1 %i.z, i64 15, i64 %i.ab
  %.not.i.i9 = icmp ugt i64 %i.x, %i.ac
  br i1 %.not.i.i9, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i8
  %.not8.i.i10 = icmp eq i64 %i.v, 0
  br i1 %.not8.i.i10, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.h ; 2 uses
  %cond.i.i11 = icmp eq i64 %i.v, 1
  br i1 %cond.i.i11, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ae = load i8, ptr %1, align 1
  store i8 %i.ae, ptr %i.ad, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %1, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.v)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12: ; preds = %bb.m, %bb.o, %bb.p, %bb.q
  store i64 %i.x, ptr %i.c, align 8
  %i.af = load ptr, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 0, ptr %i.ag, align 1
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseMangledNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = add nsw i32 %i.d, 2
  store i32 %i.i, ptr %i.c, align 8
  %i.j = icmp sgt i32 %i.b, 254
  %i.k = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10.i = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val11.i = load i32, ptr %i.l, align 4         ; 2 uses
  %i.m = sext i32 %.val11.i to i64
  %i.n = getelementptr inbounds i8, ptr %.val10.i, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 95
  br i1 %i.p, label %bb.d, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 90
  br i1 %i.s, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit8, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit8: ; preds = %bb.d
  %i.t = add nsw i32 %.val11.i, 2
  store i32 %i.t, ptr %i.l, align 4
  store i32 %i.h, ptr %i.a, align 4
  %i.u = add nsw i32 %i.d, 3
  store i32 %i.u, ptr %i.c, align 8
  %i.v = icmp sgt i32 %i.d, 131069
  br i1 %i.v, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit8
  %i.w = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.x, label %bb.g, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit

bb.h:                                             ; preds = %bb.e
  %i.y = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit: ; preds = %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit8, %bb.f, %bb.g, %bb.h
  %.0.i6 = phi i1 [ true, %bb.f ], [ true, %bb.g ], [ false, %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit8 ], [ %i.y, %bb.h ]
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = add nsw i32 %i.z, -2
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.c, %bb.d, %bb.b, %bb.a, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit
  %i.ab = phi i32 [ %i.b, %bb.a ], [ %i.aa, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  %.0 = phi i1 [ false, %bb.a ], [ %.0.i6, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ]
  store i32 %i.ab, ptr %i.a, align 4
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp sgt i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %.not4.i = icmp eq i8 %i.c, 0
  br i1 %.not4.i, label %_ZN4absl18debugging_internalL6StrLenEPKc.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.d = add i64 %strlen.i, 1
  br label %_ZN4absl18debugging_internalL6StrLenEPKc.exit

_ZN4absl18debugging_internalL6StrLenEPKc.exit:    ; preds = %bb.b, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.d, %.lr.ph.preheader.i ]
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0.lcssa.i)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4absl18debugging_internalL6StrLenEPKc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val10 = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val11 = load i32, ptr %i.i, align 4           ; 2 uses
  %i.j = sext i32 %.val11 to i64
  %i.k = getelementptr inbounds i8, ptr %.val10, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %1, align 1
  %i.n = icmp eq i8 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = add nsw i32 %.val11, 2
  store i32 %i.t, ptr %i.i, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  store i32 %i.b, ptr %i.a, align 4
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre8 = load i32, ptr %i.a, align 4            ; 6 uses
  br i1 %i.j, label %bb.d, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %.pre8, 1                    ; 2 uses
  %i.l = load i32, ptr %i.d, align 8              ; 4 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.d, align 8
  %i.n = icmp sgt i32 %.pre8, 255
  %i.o = icmp sgt i32 %i.l, 131071
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %.sroa.0.i.sroa.0.0.copyload = load <3 x i32>, ptr %i.p, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.q = and i32 %.sroa.4.0.copyload.i, 2147483647
  store i32 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.r = add nsw i32 %.pre8, 2
  store i32 %i.r, ptr %i.a, align 4
  %i.s = add nsw i32 %i.l, 2
  store i32 %i.s, ptr %i.d, align 8
  %i.t = icmp sgt i32 %.pre8, 254
  %i.u = icmp sgt i32 %i.l, 131070
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val5.i.i = load ptr, ptr %0, align 8
  %.val6.i.i = load i32, ptr %i.p, align 4        ; 2 uses
  %i.v = sext i32 %.val6.i.i to i64
  %i.w = getelementptr inbounds i8, ptr %.val5.i.i, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 81
  br i1 %i.y, label %bb.g, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i: ; preds = %bb.f, %bb.e
  store i32 %i.k, ptr %i.a, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %.val6.i.i, 1
  store i32 %i.z, ptr %i.p, align 4
  store i32 %i.k, ptr %i.a, align 4
  %i.aa = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !6
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ac = and i32 %.sroa.4.0.copyload.i, -2147483648
  %i.ad = and i32 %i.ab, 2147483647
  %i.ae = or disjoint i32 %i.ad, %i.ac
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i
  store <3 x i32> %.sroa.0.i.sroa.0.0.copyload, ptr %i.p, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i = phi i32 [ %i.ae, %bb.h ], [ %.sroa.4.0.copyload.i, %bb.i ]
  store i32 %storemerge.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.pre.i = load i32, ptr %i.a, align 4
  %i.af = add nsw i32 %.pre.i, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.j, %bb.d, %bb.a, %bb.k, %bb.c
  %i.ah = phi i32 [ %.pre8, %bb.c ], [ %.pre, %bb.k ], [ %i.c, %bb.a ], [ %i.af, %bb.j ], [ %.pre8, %bb.d ]
  %.0 = phi i1 [ true, %bb.c ], [ %i.ag, %bb.k ], [ false, %bb.a ], [ true, %bb.j ], [ true, %bb.d ]
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.a, align 4
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 18 uses
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.e = load i32, ptr %i.d, align 8              ; 6 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.b, 2                      ; 4 uses
  %i.j = add nsw i32 %i.e, 2
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.e, 131070
  %or.cond56 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond56, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 8 uses
  %.sroa.0.i.sroa.0.0.copyload = load <3 x i32>, ptr %i.m, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.n = add nsw i32 %i.b, 3
  store i32 %i.n, ptr %i.a, align 4
  %i.o = add nsw i32 %i.e, 3                      ; 3 uses
  store i32 %i.o, ptr %i.d, align 8
  %i.p = icmp sgt i32 %i.b, 253
  %i.q = icmp sgt i32 %i.e, 131069
  %or.cond.i16 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i16, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val5.i17 = load ptr, ptr %0, align 8
  %.val6.i18 = load i32, ptr %i.m, align 4        ; 2 uses
  %i.r = sext i32 %.val6.i18 to i64
  %i.s = getelementptr inbounds i8, ptr %.val5.i17, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 78
  br i1 %i.u, label %bb.e, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.val6.i18, 1
  store i32 %i.v, ptr %i.m, align 4
  store i32 %i.i, ptr %i.a, align 4
  %i.w = and i32 %.sroa.4.0.copyload.i, -2147418113
  store i32 %i.w, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.x = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseCVQualifiersEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !7 ; 0 uses
  %i.y = load i32, ptr %i.a, align 4              ; 3 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.a, align 4
  %i.aa = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.d, align 8
  %i.ac = icmp sgt i32 %i.y, 255
  %i.ad = icmp sgt i32 %i.aa, 131071
  %or.cond.i.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val13.i.i = load ptr, ptr %0, align 8
  %.val14.i.i = load i32, ptr %i.m, align 4       ; 2 uses
  %i.ae = sext i32 %.val14.i.i to i64
  %i.af = getelementptr inbounds i8, ptr %.val13.i.i, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit [
    i8 82, label %bb.g
    i8 79, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ah = add nsw i32 %.val14.i.i, 1
  store i32 %i.ah, ptr %i.m, align 4
  br label %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit

_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit: ; preds = %bb.e, %bb.f, %bb.g
  store i32 %i.y, ptr %i.a, align 4
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ParsePrefixEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !7
  %storemerge.in.pre.pre = load i32, ptr %i.a, align 4 ; 6 uses
  %.pre.pre = load i32, ptr %i.d, align 8         ; 3 uses
  br i1 %i.ai, label %bb.h, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit

bb.h:                                             ; preds = %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit
  %i.aj = and i32 %.sroa.4.0.copyload.i, 2147418112
  %i.ak = load i32, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.al = and i32 %i.ak, -2147418113
  %i.am = or disjoint i32 %i.al, %i.aj
  store i32 %i.am, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.an = add nsw i32 %storemerge.in.pre.pre, 1
  store i32 %i.an, ptr %i.a, align 4
  %i.ao = add nsw i32 %.pre.pre, 1                ; 3 uses
  store i32 %i.ao, ptr %i.d, align 8
  %i.ap = icmp sgt i32 %storemerge.in.pre.pre, 255
  %i.aq = icmp sgt i32 %.pre.pre, 131071
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.m, align 4          ; 2 uses
  %i.ar = sext i32 %.val6.i to i64
  %i.as = getelementptr inbounds i8, ptr %.val5.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 69
  br i1 %i.au, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread45, label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit

_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread45: ; preds = %bb.i
  %i.av = add nsw i32 %.val6.i, 1
  store i32 %i.av, ptr %i.m, align 4
  %i.aw = add nsw i32 %storemerge.in.pre.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit: ; preds = %bb.i, %bb.h, %bb.d, %bb.c, %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit
  %.pre = phi i32 [ %.pre.pre, %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ]
  %storemerge.in.pre = phi i32 [ %storemerge.in.pre.pre, %_ZN4absl18debugging_internalL17ParseRefQualifierEPNS0_5StateE.exit ], [ %i.i, %bb.d ], [ %i.i, %bb.c ], [ %storemerge.in.pre.pre, %bb.h ], [ %storemerge.in.pre.pre, %bb.i ]
  store <3 x i32> %.sroa.0.i.sroa.0.0.copyload, ptr %i.m, align 4
  store i32 %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread: ; preds = %bb.b, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit
  %i.ax = phi i32 [ %i.j, %bb.b ], [ %.pre, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit ] ; 6 uses
  %storemerge.in = phi i32 [ %i.i, %bb.b ], [ %storemerge.in.pre, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit ] ; 7 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.d, align 8
  %i.az = icmp sgt i32 %storemerge.in, 256
  %i.ba = icmp sgt i32 %i.ax, 131071
  %or.cond57 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond57, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %.sroa.074.0.copyload = load <4 x i32>, ptr %i.bb, align 4
  %i.bc = add nsw i32 %storemerge.in, 1           ; 2 uses
  store i32 %i.bc, ptr %i.a, align 4
  %i.bd = add nsw i32 %i.ax, 2
  store i32 %i.bd, ptr %i.d, align 8
  %i.be = icmp sgt i32 %storemerge.in, 255
  %i.bf = icmp sgt i32 %i.ax, 131070
  %or.cond.i30 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond.i30, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val5.i31 = load ptr, ptr %0, align 8
  %.val6.i32 = load i32, ptr %i.bb, align 4       ; 2 uses
  %i.bg = sext i32 %.val6.i32 to i64
  %i.bh = getelementptr inbounds i8, ptr %.val5.i31, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = icmp eq i8 %i.bi, 90
  br i1 %i.bj, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.i, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.i: ; preds = %bb.k
  %i.bk = add nsw i32 %.val6.i32, 1
  store i32 %i.bk, ptr %i.bb, align 4
  store i32 %i.bc, ptr %i.a, align 4
  %i.bl = add nsw i32 %i.ax, 3
  store i32 %i.bl, ptr %i.d, align 8
  %i.bm = icmp sgt i32 %i.ax, 131069
  br i1 %i.bm, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.i
  %i.bn = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !8
  br i1 %i.bn, label %bb.m, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !8
  br i1 %i.bo, label %bb.n, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread: ; preds = %bb.m, %bb.n
  %i.bp = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  br label %bb.o

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit: ; preds = %bb.l
  %i.br = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !8
  %i.bs = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  br i1 %i.br, label %bb.o, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit

bb.o:                                             ; preds = %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit
  %i.bu = phi i32 [ %i.bq, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread ], [ %i.bt, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ] ; 4 uses
  %i.bv = phi i32 [ %i.bp, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread ], [ %i.bs, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ]
  store i32 %i.bv, ptr %i.a, align 4
  %i.bw = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.d, align 8
  %i.by = icmp sgt i32 %i.bu, 255
  %i.bz = icmp sgt i32 %i.bw, 131071
  %or.cond.i23 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond.i23, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val5.i24 = load ptr, ptr %0, align 8
  %.val6.i25 = load i32, ptr %i.bb, align 4       ; 2 uses
  %i.ca = sext i32 %.val6.i25 to i64
  %i.cb = getelementptr inbounds i8, ptr %.val5.i24, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 69
  br i1 %i.cd, label %bb.q, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit

bb.q:                                             ; preds = %bb.p
  %i.ce = add nsw i32 %.val6.i25, 1
  store i32 %i.ce, ptr %i.bb, align 4
  store i32 %i.bu, ptr %i.a, align 4
  %i.cf = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseLocalNameSuffixEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !9
  %storemerge.in58.pre.pre = load i32, ptr %i.a, align 4 ; 2 uses
  br i1 %i.cf, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread54, label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit

_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread54: ; preds = %bb.q
  %i.cg = add nsw i32 %storemerge.in58.pre.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit: ; preds = %bb.p, %bb.o, %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.i, %bb.k, %bb.j, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit, %bb.q
  %storemerge.in58.pre = phi i32 [ %i.bt, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ], [ %storemerge.in58.pre.pre, %bb.q ], [ %storemerge.in, %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.i ], [ %storemerge.in, %bb.k ], [ %storemerge.in, %bb.j ], [ %i.bu, %bb.o ], [ %i.bu, %bb.p ]
  store <4 x i32> %.sroa.074.0.copyload, ptr %i.bb, align 4
  br label %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread: ; preds = %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit
  %storemerge.in58 = phi i32 [ %storemerge.in, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread ], [ %storemerge.in58.pre, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit ]
  %storemerge = add nsw i32 %storemerge.in58, -1
  store i32 %storemerge, ptr %i.a, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseSubstitutionEPNS0_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext false)
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread
  %i.cj = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.cj, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.ch, align 4
  %i.ck = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseUnscopedNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %.0 = phi i1 [ true, %bb.r ], [ true, %bb.t ], [ false, %bb.s ]
  %.pre61 = load i32, ptr %i.a, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread54, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread45, %bb.u
  %i.cm = phi i32 [ %.pre61, %bb.u ], [ %i.c, %bb.a ], [ %i.cg, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread54 ], [ %i.aw, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread45 ]
  %.1 = phi i1 [ %.0, %bb.u ], [ false, %bb.a ], [ true, %_ZN4absl18debugging_internalL14ParseLocalNameEPNS0_5StateE.exit.thread54 ], [ true, %_ZN4absl18debugging_internalL15ParseNestedNameEPNS0_5StateE.exit.thread45 ]
  %i.cn = add nsw i32 %i.cm, -1
  store i32 %i.cn, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 6 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.h, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.i = and i32 %.sroa.4.0.copyload, 2147483647
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.j = add nsw i32 %i.b, 2                      ; 2 uses
  %i.k = add nsw i32 %i.d, 2
  store i32 %i.k, ptr %i.c, align 8
  %i.l = icmp sgt i32 %i.b, 254
  %i.m = icmp sgt i32 %i.d, 131070
  %or.cond2427 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond2427, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.n = add nsw i32 %i.b, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit
  %i.o = phi i32 [ %i.ag, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.ae, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit ], [ %i.j, %.lr.ph.preheader ] ; 4 uses
  %i.q = phi i32 [ %i.af, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %.sroa.061.0.copyload = load <4 x i32>, ptr %i.h, align 4
  %i.r = add nsw i32 %i.q, 2
  store i32 %i.r, ptr %i.a, align 4
  %i.s = add nsw i32 %i.o, 2
  store i32 %i.s, ptr %i.c, align 8
  %i.t = icmp sgt i32 %i.q, 254
  %i.u = icmp sgt i32 %i.o, 131070
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.h, align 4         ; 2 uses
  %i.v = sext i32 %.val11.i to i64
  %i.w = getelementptr inbounds i8, ptr %.val10.i, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 85
  br i1 %i.y, label %bb.d, label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 97
  br i1 %i.ab, label %bb.e, label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %.val11.i, 2
  store i32 %i.ac, ptr %i.h, align 4
  store i32 %i.p, ptr %i.a, align 4
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !10
  br i1 %i.ad, label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit, label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22.loopexit

_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22.loopexit: ; preds = %bb.e
  %storemerge.in.pre.pre = load i32, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22

_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22: ; preds = %bb.c, %bb.d, %.lr.ph, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22.loopexit
  %storemerge.in.pre = phi i32 [ %storemerge.in.pre.pre, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22.loopexit ], [ %i.p, %.lr.ph ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  store <4 x i32> %.sroa.061.0.copyload, ptr %i.h, align 4
  br label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit

_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit: ; preds = %bb.e
  %i.ae = load i32, ptr %i.a, align 4             ; 4 uses
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = load i32, ptr %i.c, align 8             ; 3 uses
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.c, align 8
  %i.ai = icmp sgt i32 %i.ae, 256
  %i.aj = icmp sgt i32 %i.ag, 131071
  %or.cond24 = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond24, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, label %.lr.ph, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit, %bb.b, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22
  %storemerge.in = phi i32 [ %storemerge.in.pre, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit.thread22 ], [ %i.j, %bb.b ], [ %i.ae, %_ZN4absl18debugging_internalL22ParseOverloadAttributeEPNS0_5StateE.exit ]
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 4
  %i.ak = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13 ; 2 uses
  br i1 %i.ak, label %.preheader.i, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

.preheader.i:                                     ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %.preheader.i
  %i.al = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.al, label %.preheader.i, label %bb.f, !llvm.loop !14

bb.f:                                             ; preds = %.preheader.i
  %i.am = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.an = and i32 %.sroa.4.0.copyload, -2147483648
  %i.ao = and i32 %i.am, 2147483647
  %i.ap = or disjoint i32 %i.ao, %i.an
  store i32 %i.ap, ptr %.sroa.4.0..sroa_idx, align 8
  %.not.i = icmp sgt i32 %.sroa.4.0.copyload, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.230, i64 noundef 2)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.h, align 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.g, %bb.f, %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit
  %.pre = load i32, ptr %i.a, align 4
  %i.aq = add nsw i32 %.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  %i.ar = phi i32 [ %i.aq, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %i.ak, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ], [ false, %bb.a ]
  store i32 %i.ar, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.i, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.j = and i32 %.sroa.4.0.copyload, 2147483647
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = add nsw i32 %i.b, 2
  store i32 %i.k, ptr %i.a, align 4
  %i.l = add nsw i32 %i.e, 2
  store i32 %i.l, ptr %i.d, align 8
  %i.m = icmp sgt i32 %i.b, 254
  %i.n = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.i, align 4          ; 2 uses
  %i.o = sext i32 %.val6.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val5.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 81
  br i1 %i.r, label %bb.d, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.b, %bb.c
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.val6.i, 1
  store i32 %i.s, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.t = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.v = and i32 %.sroa.4.0.copyload, -2147483648
  %i.w = and i32 %i.u, 2147483647
  %i.x = or disjoint i32 %i.w, %i.v
  br label %bb.g

bb.f:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, %bb.d
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i32 [ %i.x, %bb.e ], [ %.sroa.4.0.copyload, %bb.f ]
  store i32 %storemerge, ptr %.sroa.4.0..sroa_idx, align 8
  %.pre = load i32, ptr %i.a, align 4
  %i.y = add nsw i32 %.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.g
  %i.z = phi i32 [ %i.y, %bb.g ], [ %i.b, %bb.a ]
  store i32 %i.z, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 54 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.e = load i32, ptr %i.d, align 8              ; 10 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond176 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond176, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 44 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.i, align 4 ; 14 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 8 ; 21 uses
  %i.j = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = add nsw i32 %i.e, 2
  store i32 %i.k, ptr %i.d, align 8
  %i.l = icmp sgt i32 %i.b, 254                   ; 3 uses
  %i.m = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.i, align 4         ; 2 uses
  %i.n = sext i32 %.val11.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val10.i, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 84
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 87
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val11.i, 2
  store i32 %i.u, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %.not.i = icmp sgt i32 %.sroa.17.0.copyload, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.279, i64 noundef 33)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.e, %bb.f
  %i.v = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.v, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.w = add nsw i32 %i.e, 3
  store i32 %i.w, ptr %i.d, align 8
  %i.x = icmp sgt i32 %i.e, 131069
  %or.cond.i100 = select i1 %i.l, i1 true, i1 %i.x
  br i1 %or.cond.i100, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val10.i101 = load ptr, ptr %0, align 8
  %.val11.i102 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.y = sext i32 %.val11.i102 to i64
  %i.z = getelementptr inbounds i8, ptr %.val10.i101, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 84
  br i1 %i.ab, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 72
  br i1 %i.ae, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %.val11.i102, 2
  store i32 %i.af, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %.not.i105 = icmp sgt i32 %.sroa.17.0.copyload, -1
  br i1 %.not.i105, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.281, i64 noundef 40)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107: ; preds = %bb.k, %bb.l
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ag, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

bb.n:                                             ; preds = %bb.h, %bb.j, %bb.i
  %i.ah = add nsw i32 %i.e, 4                     ; 3 uses
  store i32 %i.ah, ptr %i.d, align 8
  %i.ai = icmp sgt i32 %i.e, 131068
  %or.cond.i108 = select i1 %i.l, i1 true, i1 %i.ai
  br i1 %or.cond.i108, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val5.i = load ptr, ptr %0, align 8            ; 2 uses
  %.val6.i = load i32, ptr %i.i, align 4          ; 3 uses
  %i.aj = sext i32 %.val6.i to i64
  %i.ak = getelementptr inbounds i8, ptr %.val5.i, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp eq i8 %i.al, 84
  br i1 %i.am, label %bb.p, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %.val6.i, 1                 ; 2 uses
  store i32 %i.an, ptr %i.i, align 4
  store i32 %i.j, ptr %i.a, align 4
  %i.ao = add nsw i32 %i.e, 5                     ; 2 uses
  store i32 %i.ao, ptr %i.d, align 8
  %i.ap = icmp sgt i32 %i.e, 131067
  br i1 %i.ap, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds i8, ptr %.val5.i, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  switch i8 %i.as, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread [
    i8 83, label %bb.r
    i8 86, label %bb.r
    i8 84, label %bb.r
    i8 73, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.at = add nsw i32 %.val6.i, 2
  store i32 %i.at, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.au = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.au, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.pre = load i32, ptr %i.a, align 4
  %.pre177 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.p, %bb.q, %bb.o, %bb.n, %._crit_edge
  %i.av = phi i32 [ %.pre177, %._crit_edge ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ 131073, %bb.p ], [ %i.ao, %bb.q ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %._crit_edge ], [ %i.c, %bb.o ], [ %i.c, %bb.n ], [ %i.c, %bb.p ], [ %i.c, %bb.q ] ; 4 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.a, align 4
  %i.ay = add nsw i32 %i.av, 1
  store i32 %i.ay, ptr %i.d, align 8
  %i.az = icmp sgt i32 %i.aw, 255
  %i.ba = icmp sgt i32 %i.av, 131071
  %or.cond.i111 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i111, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit115.thread, label %bb.s

bb.s:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  %.val10.i112 = load ptr, ptr %0, align 8
  %.val11.i113 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.bb = sext i32 %.val11.i113 to i64
  %i.bc = getelementptr inbounds i8, ptr %.val10.i112, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 84
  br i1 %i.be, label %bb.t, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit115.thread

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 99
  br i1 %i.bh, label %bb.u, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit115.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit115.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, %bb.t, %bb.s
  store i32 %i.aw, ptr %i.a, align 4
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %.val11.i113, 2
  store i32 %i.bi, ptr %i.i, align 4
  store i32 %i.aw, ptr %i.a, align 4
  %i.bj = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseCallOffsetEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bj, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bk = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseCallOffsetEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bl, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %bb.x

bb.x:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit115.thread, %bb.w, %bb.v, %bb.u
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.bm = load i32, ptr %i.a, align 4             ; 6 uses
  %i.bn = add nsw i32 %i.bm, 1                    ; 4 uses
  store i32 %i.bn, ptr %i.a, align 4
  %i.bo = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bp = add nsw i32 %i.bo, 1                    ; 4 uses
  store i32 %i.bp, ptr %i.d, align 8
  %i.bq = icmp sgt i32 %i.bm, 255
  %i.br = icmp sgt i32 %i.bo, 131071
  %or.cond.i116 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond.i116, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val10.i117 = load ptr, ptr %0, align 8
  %.val11.i118 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.bs = sext i32 %.val11.i118 to i64
  %i.bt = getelementptr inbounds i8, ptr %.val10.i117, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = icmp eq i8 %i.bu, 71
  br i1 %i.bv, label %bb.z, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 86
  br i1 %i.by, label %bb.aa, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread

bb.aa:                                            ; preds = %bb.z
  %i.bz = add nsw i32 %.val11.i118, 2
  store i32 %i.bz, ptr %i.i, align 4
  store i32 %i.bm, ptr %i.a, align 4
  %i.ca = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ca, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %._crit_edge178

._crit_edge178:                                   ; preds = %bb.aa
  %.pre179 = load i32, ptr %i.a, align 4          ; 2 uses
  %.pre180 = load i32, ptr %i.d, align 8
  %.pre188 = add nsw i32 %.pre179, 1
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread: ; preds = %bb.y, %bb.z, %bb.x, %._crit_edge178
  %.pre-phi = phi i32 [ %.pre188, %._crit_edge178 ], [ %i.bn, %bb.x ], [ %i.bn, %bb.z ], [ %i.bn, %bb.y ]
  %i.cb = phi i32 [ %.pre180, %._crit_edge178 ], [ %i.bp, %bb.x ], [ %i.bp, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  %i.cc = phi i32 [ %.pre179, %._crit_edge178 ], [ %i.bm, %bb.x ], [ %i.bm, %bb.z ], [ %i.bm, %bb.y ] ; 4 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.cd = add nsw i32 %i.cb, 1                    ; 3 uses
  store i32 %i.cd, ptr %i.d, align 8
  %i.ce = icmp sgt i32 %i.cc, 255
  %i.cf = icmp sgt i32 %i.cb, 131071
  %or.cond.i121 = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond.i121, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread
  %.val5.i122 = load ptr, ptr %0, align 8
  %.val6.i123 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.cg = sext i32 %.val6.i123 to i64
  %i.ch = getelementptr inbounds i8, ptr %.val5.i122, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 84
  br i1 %i.cj, label %bb.ac, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ck = add nsw i32 %.val6.i123, 1
  store i32 %i.ck, ptr %i.i, align 4
  store i32 %i.cc, ptr %i.a, align 4
  %i.cl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseCallOffsetEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre235 = load i32, ptr %i.a, align 4          ; 4 uses
  %.pre237 = load i32, ptr %i.d, align 8          ; 3 uses
  br i1 %i.cl, label %bb.ad, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cm = add nsw i32 %.pre235, 1
  store i32 %i.cm, ptr %i.a, align 4
  %i.cn = add nsw i32 %.pre237, 1                 ; 2 uses
  store i32 %i.cn, ptr %i.d, align 8
  %i.co = icmp sgt i32 %.pre235, 255
  %i.cp = icmp sgt i32 %.pre237, 131071
  %or.cond.i204 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i204, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.cq, label %bb.af, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit

bb.af:                                            ; preds = %bb.ae
  %i.cr = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.cr, label %bb.ag, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread: ; preds = %bb.af, %bb.ag
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = add nsw i32 %i.cs, -1
  store i32 %i.ct, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit: ; preds = %bb.ae
  %i.cu = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  %i.cv = load i32, ptr %i.a, align 4
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.a, align 4
  br i1 %i.cu, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit._crit_edge

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit._crit_edge: ; preds = %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit
  %.pre236 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread: ; preds = %bb.ad, %bb.ab, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit._crit_edge, %bb.ac
  %i.cx = phi i32 [ %i.cd, %bb.ab ], [ %.pre237, %bb.ac ], [ %.pre236, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit._crit_edge ], [ %i.cd, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread ], [ %i.cn, %bb.ad ] ; 2 uses
  %i.cy = phi i32 [ %i.cc, %bb.ab ], [ %.pre235, %bb.ac ], [ %i.cw, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit._crit_edge ], [ %i.cc, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit120.thread ], [ %.pre235, %bb.ad ] ; 4 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.a, align 4
  %i.da = add nsw i32 %i.cx, 1
  store i32 %i.da, ptr %i.d, align 8
  %i.db = icmp sgt i32 %i.cy, 255
  %i.dc = icmp sgt i32 %i.cx, 131071
  %or.cond.i126 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i126, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit130.thread, label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread
  %.val10.i127 = load ptr, ptr %0, align 8
  %.val11.i128 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.dd = sext i32 %.val11.i128 to i64
  %i.de = getelementptr inbounds i8, ptr %.val10.i127, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 84
  br i1 %i.dg, label %bb.ai, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit130.thread

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = icmp eq i8 %i.di, 67
  br i1 %i.dj, label %bb.aj, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit130.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit130.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit125.thread, %bb.ai, %bb.ah
  store i32 %i.cy, ptr %i.a, align 4
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dk = add nsw i32 %.val11.i128, 2
  store i32 %i.dk, ptr %i.i, align 4
  store i32 %i.cy, ptr %i.a, align 4
  %i.dl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.dl, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.dm = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
  br i1 %i.dm, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.dn = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc(ptr noundef nonnull %0, i8 noundef signext 95)
  br i1 %i.dn, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.do = load i32, ptr %.sroa.17.0..sroa_idx, align 8
  %i.dp = and i32 %i.do, 2147483647
  store i32 %i.dp, ptr %.sroa.17.0..sroa_idx, align 8
  %i.dq = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dr = load i32, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ds = and i32 %.sroa.17.0.copyload, -2147483648
  %i.dt = and i32 %i.dr, 2147483647
  %i.du = or disjoint i32 %i.dt, %i.ds
  store i32 %i.du, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

bb.ao:                                            ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit130.thread, %bb.am, %bb.al, %bb.ak, %bb.aj
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.dv = load i32, ptr %i.a, align 4             ; 7 uses
  %i.dw = add nsw i32 %i.dv, 1                    ; 6 uses
  store i32 %i.dw, ptr %i.a, align 4
  %i.dx = load i32, ptr %i.d, align 8             ; 4 uses
  %i.dy = add nsw i32 %i.dx, 1                    ; 3 uses
  store i32 %i.dy, ptr %i.d, align 8
  %i.dz = icmp sgt i32 %i.dv, 255
  %i.ea = icmp sgt i32 %i.dx, 131071
  %or.cond.i131 = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.i131, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val5.i132 = load ptr, ptr %0, align 8         ; 2 uses
  %.val6.i133 = load i32, ptr %i.i, align 4       ; 3 uses
  %i.eb = sext i32 %.val6.i133 to i64
  %i.ec = getelementptr inbounds i8, ptr %.val5.i132, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 84
  br i1 %i.ee, label %bb.aq, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ef = add nsw i32 %.val6.i133, 1              ; 2 uses
  store i32 %i.ef, ptr %i.i, align 4
  store i32 %i.dw, ptr %i.a, align 4
  %i.eg = add nsw i32 %i.dx, 2                    ; 2 uses
  store i32 %i.eg, ptr %i.d, align 8
  %i.eh = icmp sgt i32 %i.dx, 131070
  br i1 %i.eh, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = sext i32 %i.ef to i64
  %i.ej = getelementptr inbounds i8, ptr %.val5.i132, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  switch i8 %i.ek, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread [
    i8 74, label %bb.as
    i8 70, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.el = add nsw i32 %.val6.i133, 2
  store i32 %i.el, ptr %i.i, align 4
  store i32 %i.dv, ptr %i.a, align 4
  %i.em = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.em, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %._crit_edge181

._crit_edge181:                                   ; preds = %bb.as
  %.pre182 = load i32, ptr %i.a, align 4          ; 2 uses
  %.pre183 = load i32, ptr %i.d, align 8
  %.pre189 = add nsw i32 %.pre182, 1
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread: ; preds = %bb.aq, %bb.ar, %bb.ap, %bb.ao, %._crit_edge181
  %.pre-phi190 = phi i32 [ %.pre189, %._crit_edge181 ], [ %i.dw, %bb.ap ], [ %i.dw, %bb.ao ], [ %i.dw, %bb.aq ], [ %i.dw, %bb.ar ] ; 4 uses
  %i.en = phi i32 [ %.pre183, %._crit_edge181 ], [ %i.dy, %bb.ap ], [ %i.dy, %bb.ao ], [ 131073, %bb.aq ], [ %i.eg, %bb.ar ] ; 6 uses
  %i.eo = phi i32 [ %.pre182, %._crit_edge181 ], [ %i.dv, %bb.ap ], [ %i.dv, %bb.ao ], [ %i.dv, %bb.aq ], [ %i.dv, %bb.ar ] ; 7 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  store i32 %.pre-phi190, ptr %i.a, align 4
  %i.ep = add nsw i32 %i.en, 1
  store i32 %i.ep, ptr %i.d, align 8
  %i.eq = icmp sgt i32 %i.eo, 255                 ; 2 uses
  %i.er = icmp sgt i32 %i.en, 131071
  %or.cond.i145 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i145, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread
  %.val10.i146 = load ptr, ptr %0, align 8
  %.val11.i147 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.es = sext i32 %.val11.i147 to i64
  %i.et = getelementptr inbounds i8, ptr %.val10.i146, i64 %i.es ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = icmp eq i8 %i.eu, 71
  br i1 %i.ev, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = icmp eq i8 %i.ex, 82
  br i1 %i.ey, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.ez = add nsw i32 %.val11.i147, 2
  store i32 %i.ez, ptr %i.i, align 4
  store i32 %i.eo, ptr %i.a, align 4
  %.not.i150 = icmp sgt i32 %.sroa.17.0.copyload, -1
  br i1 %.not.i150, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit152, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.288, i64 noundef 24)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit152

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit152: ; preds = %bb.av, %bb.aw
  %i.fa = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.fa, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit152
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

bb.ay:                                            ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit152
  %i.fb = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL10ParseSeqIdEPNS0_5StateE(ptr noundef nonnull %0)
  %i.fc = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc(ptr noundef nonnull %0, i8 noundef signext 95)
  %.not = xor i1 %i.fb, true
  %or.cond = or i1 %i.fc, %.not
  br i1 %or.cond, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

bb.ba:                                            ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit135.thread, %bb.au, %bb.at
  %i.fd = add nsw i32 %i.en, 2                    ; 4 uses
  store i32 %i.fd, ptr %i.d, align 8
  %i.fe = icmp sgt i32 %i.en, 131070
  %or.cond.i153 = select i1 %i.eq, i1 true, i1 %i.fe
  br i1 %or.cond.i153, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val10.i154 = load ptr, ptr %0, align 8
  %.val11.i155 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.ff = sext i32 %.val11.i155 to i64
  %i.fg = getelementptr inbounds i8, ptr %.val10.i154, i64 %i.ff ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = icmp eq i8 %i.fh, 71
  br i1 %i.fi, label %bb.bc, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread

bb.bc:                                            ; preds = %bb.bb
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, 65
  br i1 %i.fl, label %bb.bd, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread

bb.bd:                                            ; preds = %bb.bc
  %i.fm = add nsw i32 %.val11.i155, 2
  store i32 %i.fm, ptr %i.i, align 4
  %i.fn = add nsw i32 %i.eo, 1                    ; 2 uses
  store i32 %i.fn, ptr %i.a, align 4
  %i.fo = add nsw i32 %i.en, 3
  store i32 %i.fo, ptr %i.d, align 8
  %i.fp = icmp sgt i32 %i.en, 131069
  br i1 %i.fp, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fq = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.fq, label %bb.bf, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207

bb.bf:                                            ; preds = %bb.be
  %i.fr = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.fr, label %bb.bg, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.thread

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.thread

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.thread: ; preds = %bb.bf, %bb.bg
  %i.fs = load i32, ptr %i.a, align 4
  %i.ft = add nsw i32 %i.fs, -1
  store i32 %i.ft, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207: ; preds = %bb.be
  %i.fu = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  %i.fv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.fw = add nsw i32 %i.fv, -1                   ; 2 uses
  store i32 %i.fw, ptr %i.a, align 4
  br i1 %i.fu, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge: ; preds = %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207
  %.pre186.pre = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread: ; preds = %bb.bd, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge, %bb.bb, %bb.bc, %bb.ba
  %.pre-phi192 = phi i32 [ %.pre-phi190, %bb.bb ], [ %.pre-phi190, %bb.ba ], [ %.pre-phi190, %bb.bc ], [ %i.fv, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge ], [ %i.fn, %bb.bd ]
  %i.fx = phi i32 [ %i.fd, %bb.bb ], [ %i.fd, %bb.ba ], [ %i.fd, %bb.bc ], [ %.pre186.pre, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge ], [ 131073, %bb.bd ] ; 2 uses
  %i.fy = phi i32 [ %i.eo, %bb.bb ], [ %i.eo, %bb.ba ], [ %i.eo, %bb.bc ], [ %i.fw, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.._crit_edge184_crit_edge ], [ %i.eo, %bb.bd ] ; 6 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  store i32 %.pre-phi192, ptr %i.a, align 4
  %i.fz = add nsw i32 %i.fx, 1                    ; 5 uses
  store i32 %i.fz, ptr %i.d, align 8
  %i.ga = icmp sgt i32 %i.fy, 255
  %i.gb = icmp sgt i32 %i.fx, 131071
  %or.cond.i158 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond.i158, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread
  %.val14.i159 = load ptr, ptr %0, align 8
  %.val15.i = load i32, ptr %i.i, align 4         ; 2 uses
  %i.gc = sext i32 %.val15.i to i64
  %i.gd = getelementptr inbounds i8, ptr %.val14.i159, i64 %i.gc ; 3 uses
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = icmp eq i8 %i.ge, 71
  br i1 %i.gf, label %bb.bi, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = icmp eq i8 %i.gh, 84
  br i1 %i.gi, label %bb.bj, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = icmp eq i8 %i.gk, 116
  br i1 %i.gl, label %bb.bk, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.gm = add nsw i32 %.val15.i, 3
  store i32 %i.gm, ptr %i.i, align 4
  store i32 %i.fy, ptr %i.a, align 4
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.291)
  %i.gn = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.gn, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %._crit_edge239

._crit_edge239:                                   ; preds = %bb.bk
  %.pre240 = load i32, ptr %i.a, align 4
  %.pre241 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread

_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread, %._crit_edge239
  %i.go = phi i32 [ %.pre241, %._crit_edge239 ], [ %i.fz, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread ], [ %i.fz, %bb.bj ], [ %i.fz, %bb.bi ], [ %i.fz, %bb.bh ] ; 4 uses
  %i.gp = phi i32 [ %.pre240, %._crit_edge239 ], [ %i.fy, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit157.thread ], [ %i.fy, %bb.bj ], [ %i.fy, %bb.bi ], [ %i.fy, %bb.bh ] ; 7 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.gq = add nsw i32 %i.gp, 1                    ; 2 uses
  store i32 %i.gq, ptr %i.a, align 4
  %i.gr = add nsw i32 %i.go, 1                    ; 3 uses
  store i32 %i.gr, ptr %i.d, align 8
  %i.gs = icmp sgt i32 %i.gp, 255
  %i.gt = icmp sgt i32 %i.go, 131071
  %or.cond.i208 = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %or.cond.i208, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228, label %bb.bl

bb.bl:                                            ; preds = %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread
  %.val5.i209 = load ptr, ptr %0, align 8         ; 2 uses
  %.val6.i210 = load i32, ptr %i.i, align 4       ; 3 uses
  %i.gu = sext i32 %.val6.i210 to i64
  %i.gv = getelementptr inbounds i8, ptr %.val5.i209, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = icmp eq i8 %i.gw, 84
  br i1 %i.gx, label %bb.bm, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228

bb.bm:                                            ; preds = %bb.bl
  %i.gy = add nsw i32 %.val6.i210, 1              ; 2 uses
  store i32 %i.gy, ptr %i.i, align 4
  store i32 %i.gq, ptr %i.a, align 4
  %i.gz = add nsw i32 %i.go, 2                    ; 2 uses
  store i32 %i.gz, ptr %i.d, align 8
  %i.ha = icmp sgt i32 %i.go, 131070
  br i1 %i.ha, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hb = sext i32 %i.gy to i64
  %i.hc = getelementptr inbounds i8, ptr %.val5.i209, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1
  switch i8 %i.hd, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228 [
    i8 118, label %bb.bo
    i8 104, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %i.he = add nsw i32 %.val6.i210, 2
  store i32 %i.he, ptr %i.i, align 4
  store i32 %i.gp, ptr %i.a, align 4
  %i.hf = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseCallOffsetEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre242 = load i32, ptr %i.a, align 4          ; 4 uses
  %.pre244 = load i32, ptr %i.d, align 8          ; 3 uses
  br i1 %i.hf, label %bb.bp, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228

bb.bp:                                            ; preds = %bb.bo
  %i.hg = add nsw i32 %.pre242, 1
  store i32 %i.hg, ptr %i.a, align 4
  %i.hh = add nsw i32 %.pre244, 1                 ; 2 uses
  store i32 %i.hh, ptr %i.d, align 8
  %i.hi = icmp sgt i32 %.pre242, 255
  %i.hj = icmp sgt i32 %.pre244, 131071
  %or.cond.i213 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond.i213, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hk = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.hk, label %bb.br, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215

bb.br:                                            ; preds = %bb.bq
  %i.hl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBareFunctionTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  br i1 %i.hl, label %bb.bs, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215.thread

bb.bs:                                            ; preds = %bb.br
  tail call fastcc void @_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE(ptr noundef nonnull %0)
  br label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215.thread

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215.thread: ; preds = %bb.br, %bb.bs
  %i.hm = load i32, ptr %i.a, align 4
  %i.hn = add nsw i32 %i.hm, -1
  store i32 %i.hn, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215: ; preds = %bb.bq
  %i.ho = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseSpecialNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !5
  %i.hp = load i32, ptr %i.a, align 4
  %i.hq = add nsw i32 %i.hp, -1                   ; 2 uses
  store i32 %i.hq, ptr %i.a, align 4
  br i1 %i.ho, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215._crit_edge

_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215._crit_edge: ; preds = %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215
  %.pre243 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228: ; preds = %bb.bp, %bb.bm, %bb.bn, %bb.bl, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215._crit_edge, %bb.bo
  %i.hr = phi i32 [ 131073, %bb.bm ], [ %i.gr, %bb.bl ], [ %.pre244, %bb.bo ], [ %.pre243, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215._crit_edge ], [ %i.gr, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread ], [ %i.hh, %bb.bp ], [ %i.gz, %bb.bn ] ; 2 uses
  %i.hs = phi i32 [ %i.gp, %bb.bm ], [ %i.gp, %bb.bl ], [ %.pre242, %bb.bo ], [ %i.hq, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215._crit_edge ], [ %i.gp, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit.thread ], [ %.pre242, %bb.bp ], [ %i.gp, %bb.bn ] ; 4 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.a, align 4
  %i.hu = add nsw i32 %i.hr, 1
  store i32 %i.hu, ptr %i.d, align 8
  %i.hv = icmp sgt i32 %i.hs, 255
  %i.hw = icmp sgt i32 %i.hr, 131071
  %or.cond.i216 = select i1 %i.hv, i1 true, i1 %i.hw
  br i1 %or.cond.i216, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228
  %.val10.i217 = load ptr, ptr %0, align 8
  %.val11.i218 = load i32, ptr %i.i, align 4      ; 2 uses
  %i.hx = sext i32 %.val11.i218 to i64
  %i.hy = getelementptr inbounds i8, ptr %.val10.i217, i64 %i.hx ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = icmp eq i8 %i.hz, 84
  br i1 %i.ia, label %bb.bu, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.bu:                                            ; preds = %bb.bt
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = icmp eq i8 %i.ic, 65
  br i1 %i.id, label %bb.bv, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread228, %bb.bu, %bb.bt
  store i32 %i.hs, ptr %i.a, align 4
  br label %.critedge

bb.bv:                                            ; preds = %bb.bu
  %i.ie = add nsw i32 %.val11.i218, 2
  store i32 %i.ie, ptr %i.i, align 4
  store i32 %i.hs, ptr %i.a, align 4
  %i.if = and i32 %.sroa.17.0.copyload, 2147483647
  store i32 %i.if, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ig = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ig, label %bb.bw, label %.critedge

bb.bw:                                            ; preds = %bb.bv
  %i.ih = load i32, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ii = and i32 %.sroa.17.0.copyload, -2147483648
  %i.ij = and i32 %i.ih, 2147483647
  %i.ik = or disjoint i32 %i.ij, %i.ii
  store i32 %i.ik, ptr %.sroa.17.0..sroa_idx, align 8
  %.not.i220 = icmp sgt i32 %.sroa.17.0.copyload, -1
  br i1 %.not.i220, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.294, i64 noundef 25)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

.critedge:                                        ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, %bb.bv
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.17.0.copyload, ptr %.sroa.17.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221: ; preds = %bb.bx, %bb.bw, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215, %bb.bk, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207, %bb.az, %bb.ay, %bb.as, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit, %bb.aa, %bb.w, %bb.r, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, %.critedge, %bb.ax, %bb.an, %bb.m, %bb.g
  %.2 = phi i1 [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215.thread ], [ false, %bb.g ], [ true, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ], [ false, %bb.m ], [ true, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit107 ], [ true, %bb.r ], [ true, %bb.w ], [ true, %bb.aa ], [ true, %bb.an ], [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit ], [ true, %bb.as ], [ false, %bb.ax ], [ false, %bb.az ], [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207 ], [ true, %bb.bk ], [ false, %.critedge ], [ true, %bb.ay ], [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit215 ], [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit.thread ], [ true, %_ZN4absl18debugging_internalL13ParseEncodingEPNS0_5StateE.exit207.thread ], [ true, %bb.bw ], [ true, %bb.bx ]
  %.pre187 = load i32, ptr %i.a, align 4
  %i.il = add nsw i32 %.pre187, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221
  %i.im = phi i32 [ %i.il, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221 ], [ %i.b, %bb.a ]
  %.3 = phi i1 [ %.2, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit221 ], [ false, %bb.a ]
  store i32 %i.im, ptr %i.a, align 4
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseSubstitutionEPNS0_5StateEb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %i.b = load i32, ptr %i.a, align 4              ; 6 uses
  %i.c = add nsw i32 %i.b, 1                      ; 5 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8              ; 10 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond68 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond68, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.b, 2                      ; 4 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.j = add nsw i32 %i.e, 2
  store i32 %i.j, ptr %i.d, align 8
  %i.k = icmp sgt i32 %i.b, 254                   ; 2 uses
  %i.l = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10.i = load ptr, ptr %0, align 8
  %i.m = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val11.i = load i32, ptr %i.m, align 4         ; 2 uses
  %i.n = sext i32 %.val11.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val10.i, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 83
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 95
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val11.i, 2
  store i32 %i.u, ptr %i.m, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 1)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 11 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.x, align 4 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.y = add nsw i32 %i.e, 3                      ; 3 uses
  store i32 %i.y, ptr %i.d, align 8
  %i.z = icmp sgt i32 %i.e, 131069
  %or.cond.i35 = select i1 %i.k, i1 true, i1 %i.z
  br i1 %or.cond.i35, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val5.i = load ptr, ptr %0, align 8            ; 3 uses
  %.val6.i = load i32, ptr %i.x, align 4          ; 2 uses
  %i.aa = sext i32 %.val6.i to i64
  %i.ab = getelementptr inbounds i8, ptr %.val5.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 83
  br i1 %i.ad, label %bb.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %.val6.i, 1                 ; 3 uses
  store i32 %i.ae, ptr %i.x, align 4
  store i32 %i.i, ptr %i.a, align 4
  %i.af = add nsw i32 %i.e, 4                     ; 4 uses
  store i32 %i.af, ptr %i.d, align 8
  %i.ag = icmp sgt i32 %i.e, 131068
  br i1 %i.ag, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds i8, ptr %.val5.i, i64 %i.ah ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %.not27.i = icmp eq i8 %i.aj, 0
  br i1 %.not27.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.ak = phi i8 [ %i.ap, %bb.k ], [ %i.aj, %bb.j ] ; 2 uses
  %.028.i = phi ptr [ %i.ao, %bb.k ], [ %i.ai, %bb.j ] ; 3 uses
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  %i.an = add i8 %i.ak, -65
  %or.cond.i37 = icmp ult i8 %i.an, 26
  %or.cond26.i = or i1 %i.am, %or.cond.i37
  br i1 %or.cond26.i, label %bb.k, label %._crit_edge.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.028.i, i64 1 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %.not.i38 = icmp eq i8 %i.ap, 0
  br i1 %.not.i38, label %.loopexit, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not16.not.i = icmp eq ptr %.028.i, %i.ai
  br i1 %.not16.not.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %._crit_edge.i
  %.0.lcssa38.i = phi ptr [ %.028.i, %._crit_edge.i ], [ %i.ao, %bb.k ]
  %i.aq = ptrtoint ptr %.0.lcssa38.i to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = add nsw i32 %i.ae, %i.at                ; 3 uses
  store i32 %i.au, ptr %i.x, align 4
  store i32 %i.i, ptr %i.a, align 4
  %i.av = add nsw i32 %i.e, 5                     ; 3 uses
  store i32 %i.av, ptr %i.d, align 8
  %i.aw = icmp eq i32 %i.e, 131068
  br i1 %i.aw, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds i8, ptr %.val5.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 95
  br i1 %i.ba, label %bb.m, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %i.au, 1
  store i32 %i.bb, ptr %i.x, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load i32, ptr %i.bc, align 8
  %.not.i44 = icmp sgt i32 %i.bd, -1
  br i1 %.not.i44, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 1)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.l, %.loopexit, %bb.j, %._crit_edge.i, %bb.i, %bb.h, %bb.g
  %i.be = phi i32 [ %i.af, %bb.j ], [ %i.y, %bb.h ], [ %i.y, %bb.g ], [ %i.af, %bb.i ], [ %i.af, %._crit_edge.i ], [ %i.av, %.loopexit ], [ %i.av, %bb.l ] ; 2 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.x, align 4
  %i.bf = add nsw i32 %i.b, 2
  store i32 %i.bf, ptr %i.a, align 4
  %i.bg = add nsw i32 %i.be, 1
  store i32 %i.bg, ptr %i.d, align 8
  %i.bh = icmp sgt i32 %i.b, 254
  %i.bi = icmp sgt i32 %i.be, 131071
  %or.cond.i47 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i47, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51.thread, label %bb.o

bb.o:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  %.val5.i48 = load ptr, ptr %0, align 8          ; 2 uses
  %.val6.i49 = load i32, ptr %i.x, align 4        ; 2 uses
  %i.bj = sext i32 %.val6.i49 to i64
  %i.bk = getelementptr inbounds i8, ptr %.val5.i48, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp eq i8 %i.bl, 83
  br i1 %i.bm, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, %bb.o
  store i32 %i.c, ptr %i.a, align 4
  br label %.critedge

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51: ; preds = %bb.o
  %i.bn = add nsw i32 %.val6.i49, 1               ; 2 uses
  store i32 %i.bn, ptr %i.x, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %.val5.i48, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %i.br = icmp eq i8 %i.bq, 116
  %or.cond = and i1 %i.br, %1
  br i1 %or.cond, label %bb.p, label %bb.t

switch.hole_check:                                ; preds = %bb.t
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 278795, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bs = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl18debugging_internalL17ParseSubstitutionEPNS0_5StateEb, i64 %i.bs
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51
  %.071.lcssa = phi ptr [ @_ZN4absl18debugging_internalL17kSubstitutionListE, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51 ], [ %switch.load, %switch.lookup ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8
  %.not.i52 = icmp sgt i32 %i.bu, -1
  br i1 %.not.i52, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.254, i64 noundef 3)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit54

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit54: ; preds = %bb.p, %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.071.lcssa, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %.not29 = icmp eq i8 %i.bx, 0
  br i1 %.not29, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60, label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit54
  %i.by = load i32, ptr %i.bt, align 8
  %.not.i55 = icmp sgt i32 %i.by, -1
  br i1 %.not.i55, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit57

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit57: ; preds = %bb.r
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, i64 noundef 2)
  %.pr = load i32, ptr %i.bt, align 8
  %.not.i58 = icmp sgt i32 %.pr, -1
  br i1 %.not.i58, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60, label %bb.s

bb.s:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit57
  %i.bz = load i8, ptr %i.bw, align 1
  %.not4.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not4.i.i, label %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.s
  %scevgep.i.i = getelementptr i8, ptr %i.bw, i64 1
  %strlen.i.i59 = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i.i)
  %i.ca = add i64 %strlen.i.i59, 1
  br label %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i

_ZN4absl18debugging_internalL6StrLenEPKc.exit.i:  ; preds = %.lr.ph.preheader.i.i, %bb.s
  %.0.lcssa.i.i = phi i64 [ 0, %bb.s ], [ %i.ca, %.lr.ph.preheader.i.i ]
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bw, i64 noundef %.0.lcssa.i.i)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60: ; preds = %bb.r, %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit57, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit54
  %i.cb = load i32, ptr %i.x, align 4
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.x, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

bb.t:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51
  %switch.tableidx = add i8 %i.bq, -97            ; 3 uses
  %i.cd = icmp ult i8 %switch.tableidx, 19
  br i1 %i.cd, label %switch.hole_check, label %.critedge

.critedge:                                        ; preds = %switch.hole_check, %bb.t, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit51.thread
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.x, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %.critedge, %bb.m, %bb.n, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60, %bb.a, %bb.f, %bb.e
  %.2 = phi i1 [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.a ], [ true, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit60 ], [ false, %.critedge ], [ true, %bb.m ], [ true, %bb.n ]
  %i.ce = load i32, ptr %i.a, align 4
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.a, align 4
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 10 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.i, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %i.j = and i32 %.sroa.4.0.copyload, 2147483647
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = add nsw i32 %i.b, 2
  store i32 %i.k, ptr %i.a, align 4
  %i.l = add nsw i32 %i.e, 2
  store i32 %i.l, ptr %i.d, align 8
  %i.m = icmp sgt i32 %i.b, 254
  %i.n = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.i, align 4          ; 2 uses
  %i.o = sext i32 %.val6.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val5.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 73
  br i1 %i.r, label %bb.d, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.val6.i, 1
  store i32 %i.s, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.t = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.t, label %.preheader.i, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %i.u = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.u, label %.preheader.i, label %bb.e, !llvm.loop !14

bb.e:                                             ; preds = %.preheader.i
  %i.v = load i32, ptr %i.a, align 4              ; 5 uses
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  %i.x = load i32, ptr %i.d, align 8              ; 4 uses
  %i.y = add nsw i32 %i.x, 1
  %i.z = icmp sgt i32 %i.v, 255
  %i.aa = icmp sgt i32 %i.x, 131071
  %or.cond.i27 = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i27, label %_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.i.sroa.0.0.copyload = load <3 x i32>, ptr %i.i, align 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %i.ab = and i32 %.sroa.4.0.copyload.i, 2147483647
  store i32 %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ac = add nsw i32 %i.v, 2
  store i32 %i.ac, ptr %i.a, align 4
  %i.ad = add nsw i32 %i.x, 2
  store i32 %i.ad, ptr %i.d, align 8
  %i.ae = icmp sgt i32 %i.v, 254
  %i.af = icmp sgt i32 %i.x, 131070
  %or.cond.i.i = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val5.i.i = load ptr, ptr %0, align 8
  %.val6.i.i = load i32, ptr %i.i, align 4        ; 2 uses
  %i.ag = sext i32 %.val6.i.i to i64
  %i.ah = getelementptr inbounds i8, ptr %.val5.i.i, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 81
  br i1 %i.aj, label %bb.h, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i: ; preds = %bb.g, %bb.f
  store i32 %i.w, ptr %i.a, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %.val6.i.i, 1
  store i32 %i.ak, ptr %i.i, align 4
  store i32 %i.w, ptr %i.a, align 4
  %i.al = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !6
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.an = and i32 %.sroa.4.0.copyload.i, -2147483648
  %i.ao = and i32 %i.am, 2147483647
  %i.ap = or disjoint i32 %i.ao, %i.an
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread.i
  store <3 x i32> %.sroa.0.i.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi i32 [ %i.ap, %bb.i ], [ %.sroa.4.0.copyload.i, %bb.j ]
  store i32 %storemerge.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.pre.i = load i32, ptr %i.a, align 4           ; 2 uses
  %i.aq = add nsw i32 %.pre.i, -1
  %.pre28 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit

_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit: ; preds = %bb.e, %bb.k
  %.pre-phi = phi i32 [ %i.w, %bb.e ], [ %.pre.i, %bb.k ]
  %i.ar = phi i32 [ %i.y, %bb.e ], [ %.pre28, %bb.k ] ; 2 uses
  %i.as = phi i32 [ %i.v, %bb.e ], [ %i.aq, %bb.k ] ; 4 uses
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.at = add nsw i32 %i.ar, 1
  store i32 %i.at, ptr %i.d, align 8
  %i.au = icmp sgt i32 %i.as, 255
  %i.av = icmp sgt i32 %i.ar, 131071
  %or.cond.i15 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i15, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit
  %.val5.i16 = load ptr, ptr %0, align 8
  %.val6.i17 = load i32, ptr %i.i, align 4        ; 2 uses
  %i.aw = sext i32 %.val6.i17 to i64
  %i.ax = getelementptr inbounds i8, ptr %.val5.i16, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 69
  br i1 %i.az, label %bb.m, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %.val6.i17, 1
  store i32 %i.ba, ptr %i.i, align 4
  store i32 %i.as, ptr %i.a, align 4
  %i.bb = load i32, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bc = and i32 %.sroa.4.0.copyload, -2147483648
  %i.bd = and i32 %i.bb, 2147483647
  %i.be = or disjoint i32 %i.bd, %i.bc
  store i32 %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %.not.i = icmp sgt i32 %.sroa.4.0.copyload, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.268, i64 noundef 2)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split: ; preds = %bb.l, %_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit, %bb.c, %bb.b
  %.sink = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.as, %_ZN4absl18debugging_internalL24ParseQRequiresClauseExprEPNS0_5StateE.exit ], [ %i.as, %bb.l ]
  store i32 %.sink, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, %bb.d
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.n, %bb.m, %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit
  %.0 = phi i1 [ false, %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit ], [ true, %bb.m ], [ true, %bb.n ]
  %.pre = load i32, ptr %i.a, align 4
  %i.bf = add nsw i32 %.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  %i.bg = phi i32 [ %i.bf, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ], [ false, %bb.a ]
  store i32 %i.bg, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseUnscopedNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseUnqualifiedNameEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre12 = load i32, ptr %i.a, align 4           ; 5 uses
  br i1 %i.i, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.j, align 4
  %i.k = add nsw i32 %.pre12, 1
  store i32 %i.k, ptr %i.a, align 4
  %i.l = load i32, ptr %i.d, align 8              ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.d, align 8
  %i.n = icmp sgt i32 %.pre12, 255
  %i.o = icmp sgt i32 %i.l, 131071
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.j, align 4         ; 2 uses
  %i.p = sext i32 %.val11.i to i64
  %i.q = getelementptr inbounds i8, ptr %.val10.i, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 83
  br i1 %i.s, label %bb.e, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 116
  br i1 %i.v, label %bb.f, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %bb.c, %bb.e, %bb.d
  store i32 %.pre12, ptr %i.a, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = add nsw i32 %.val11.i, 2
  store i32 %i.w, ptr %i.j, align 4
  store i32 %.pre12, ptr %i.a, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %.not.i = icmp sgt i32 %i.y, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.269, i64 noundef 5)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.f, %bb.g
  %i.z = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseUnqualifiedNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.j, align 4
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ]
  %.pre = load i32, ptr %i.a, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.b, %bb.i
  %i.aa = phi i32 [ %.pre, %bb.i ], [ %i.c, %bb.a ], [ %.pre12, %bb.b ]
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ], [ true, %bb.b ]
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc(ptr nofree noundef captures(none) %0, i8 noundef signext %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val6 = load i32, ptr %i.i, align 4            ; 2 uses
  %i.j = sext i32 %.val6 to i64
  %i.k = getelementptr inbounds i8, ptr %.val5, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, %1
  br i1 %i.m, label %bb.c, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.val6, 1
  store i32 %i.n, ptr %i.i, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.b ]
  store i32 %i.b, ptr %i.a, align 4
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseCVQualifiersEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.i = add nsw i32 %i.b, 2                      ; 3 uses
  store i32 %i.i, ptr %i.a, align 4
  %i.j = add nsw i32 %i.e, 2
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.e, 131070
  %or.cond3847 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond3847, label %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit
  %i.o = phi i32 [ %i.f, %.lr.ph ], [ %i.al, %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit ] ; 2 uses
  %i.p = phi i32 [ %i.i, %.lr.ph ], [ %i.ai, %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit ] ; 3 uses
  %i.q = phi i32 [ %i.c, %.lr.ph ], [ %i.aj, %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit ] ; 2 uses
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ak, %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit ] ; 3 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.m, align 4
  %i.r = add nsw i32 %i.q, 2
  store i32 %i.r, ptr %i.a, align 4
  %i.s = add nsw i32 %i.o, 2                      ; 2 uses
  store i32 %i.s, ptr %i.d, align 8
  %i.t = icmp sgt i32 %i.q, 254
  %i.u = icmp sgt i32 %i.o, 131070
  %or.cond.i23 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i23, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit27.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i24 = load ptr, ptr %0, align 8
  %.val6.i25 = load i32, ptr %i.m, align 4        ; 2 uses
  %i.v = sext i32 %.val6.i25 to i64
  %i.w = getelementptr inbounds i8, ptr %.val5.i24, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 85
  br i1 %i.y, label %bb.d, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit27.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit27.thread: ; preds = %bb.b, %bb.c
  store i32 %i.p, ptr %i.a, align 4
  br label %_ZN4absl18debugging_internalL22ParseExtendedQualifierEPNS0_5StateE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i32 %.val6.i25, 1
  store i32 %i.z, ptr %i.m, align 4
  store i32 %i.p, ptr %i.a, align 4
  %i.aa = load i32, ptr %i.n, align 8             ; 2 uses
  %i.ab = and i32 %i.aa, 2147483647
  store i32 %i.ab, ptr %i.n, align 8
  %i.ac = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !16
end_hunk_0
begin_hunk_1_@_ZN4absl18debugging_internalL18ParseTemplateParamEPNS0_5StateE:bb.a
  %i.cs = icmp ult i8 %i.cr, 10
  br i1 %i.cs, label %.lr.ph.i46, label %bb.w, !llvm.loop !21

bb.w:                                             ; preds = %.lr.ph.i46
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = ptrtoint ptr %i.cl to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = add nsw i32 %.val31.i43, %i.cw          ; 5 uses
  store i32 %i.cx, ptr %i.x, align 4
  store i32 %i.bn, ptr %i.a, align 4
  %i.cy = add nsw i32 %i.bm, 4
  store i32 %i.cy, ptr %i.d, align 8
  %i.cz = icmp sgt i32 %i.bm, 131068
  br i1 %i.cz, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.da = add nuw nsw i32 %i.bm, 5
  store i32 %i.da, ptr %i.d, align 8
  br label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.db = sext i32 %i.cx to i64
  %i.dc = getelementptr inbounds i8, ptr %.val10.i33, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = icmp eq i8 %i.dd, 95
  br i1 %i.de, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = icmp eq i8 %i.dg, 95
  br i1 %i.dh, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.di = add nsw i32 %i.cx, 2
  store i32 %i.di, ptr %i.x, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load i32, ptr %i.dj, align 8
  %.not.i55 = icmp sgt i32 %i.dk, -1
  br i1 %.not.i55, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i64 noundef 1)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.dl = add nsw i32 %i.bm, 5
  store i32 %i.dl, ptr %i.d, align 8
  %i.dm = icmp eq i32 %i.bm, 131068
  br i1 %i.dm, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = sext i32 %i.cx to i64
  %i.do = getelementptr inbounds i8, ptr %.val10.i33, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp eq i8 %i.dp, 95
  br i1 %i.dq, label %bb.ad, label %.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add nsw i32 %i.cx, 1
  store i32 %i.dr, ptr %i.x, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.ds = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi(ptr noundef nonnull %0, ptr noundef null)
  br i1 %i.ds, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dt = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc(ptr noundef nonnull %0, i8 noundef signext 95)
  br i1 %i.dt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.6)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

.sink.split:                                      ; preds = %bb.ac, %bb.ab, %.thread, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i42, %bb.s, %bb.q, %bb.r, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.ad, %bb.ae
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.x, align 4
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.af, %bb.ag, %bb.o, %bb.p, %bb.z, %bb.aa, %bb.a, %bb.f, %bb.e
  %.1 = phi i1 [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.a ], [ false, %bb.ag ], [ true, %bb.p ], [ true, %bb.af ], [ true, %bb.o ], [ true, %bb.z ], [ true, %bb.aa ]
  %i.du = load i32, ptr %i.a, align 4
  %i.dv = add nsw i32 %i.du, -1
  store i32 %i.dv, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL13ParseDecltypeEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8              ; 6 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.i, align 4
  %i.j = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.j, ptr %i.a, align 4
  %i.k = add nsw i32 %i.e, 2
  store i32 %i.k, ptr %i.d, align 8
  %i.l = icmp sgt i32 %i.b, 254
  %i.m = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8            ; 2 uses
  %.val6.i = load i32, ptr %i.i, align 4          ; 3 uses
  %i.n = sext i32 %.val6.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val5.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 68
  br i1 %i.q, label %bb.d, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.val6.i, 1                  ; 2 uses
  store i32 %i.r, ptr %i.i, align 4
  store i32 %i.j, ptr %i.a, align 4
  %i.s = add nsw i32 %i.e, 3
  store i32 %i.s, ptr %i.d, align 8
  %i.t = icmp sgt i32 %i.e, 131069
  br i1 %i.t, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds i8, ptr %.val5.i, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  switch i8 %i.w, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread [
    i8 84, label %bb.f
    i8 116, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.x = add nsw i32 %.val6.i, 2
  store i32 %i.x, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %i.y = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre.pre.pre = load i32, ptr %i.a, align 4     ; 6 uses
  br i1 %i.y, label %bb.g, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %.pre.pre.pre, 1
  store i32 %i.z, ptr %i.a, align 4
  %i.aa = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.d, align 8
  %i.ac = icmp sgt i32 %.pre.pre.pre, 255
  %i.ad = icmp sgt i32 %i.aa, 131071
  %or.cond.i11 = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i11, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val5.i12 = load ptr, ptr %0, align 8
  %.val6.i13 = load i32, ptr %i.i, align 4        ; 2 uses
  %i.ae = sext i32 %.val6.i13 to i64
  %i.af = getelementptr inbounds i8, ptr %.val5.i12, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = icmp eq i8 %i.ag, 69
  br i1 %i.ah, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15: ; preds = %bb.h
  %i.ai = add nsw i32 %.val6.i13, 1
  store i32 %i.ai, ptr %i.i, align 4
  br label %bb.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.h, %bb.g, %bb.d, %bb.e, %bb.c, %bb.b, %bb.f
  %.pre.pre = phi i32 [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ %.pre.pre.pre, %bb.f ], [ %i.c, %bb.b ], [ %.pre.pre.pre, %bb.h ], [ %i.c, %bb.e ], [ %.pre.pre.pre, %bb.g ]
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  %.pre = phi i32 [ %.pre.pre, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread ], [ %.pre.pre.pre, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15 ]
  %.0 = phi i1 [ false, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread ], [ true, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit15 ]
  %i.aj = add nsw i32 %.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.i
  %i.ak = phi i32 [ %i.aj, %bb.i ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %bb.i ], [ false, %bb.a ]
  store i32 %i.ak, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL20ParseUnnamedTypeNameEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 20 uses
  %i.c = load i32, ptr %i.b, align 4              ; 9 uses
  %i.d = add nsw i32 %i.c, 1                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8              ; 8 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp sgt i32 %i.c, 255
  %i.i = icmp sgt i32 %i.f, 131071
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.j, align 4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.k = add nsw i32 %i.c, 2                      ; 3 uses
  store i32 %i.k, ptr %i.b, align 4
  %i.l = add nsw i32 %i.f, 2                      ; 4 uses
  store i32 %i.l, ptr %i.e, align 8
  %i.m = icmp sgt i32 %i.c, 254
  %i.n = icmp sgt i32 %i.f, 131070
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10.i = load ptr, ptr %0, align 8           ; 4 uses
  %.val11.i = load i32, ptr %i.j, align 4         ; 3 uses
  %i.o = sext i32 %.val11.i to i64
  %i.p = getelementptr inbounds i8, ptr %.val10.i, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 85
  br i1 %i.r, label %bb.d, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 116
  br i1 %i.u, label %bb.e, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.val11.i, 2                 ; 5 uses
  store i32 %i.v, ptr %i.j, align 4
  store i32 %i.d, ptr %i.b, align 4
  %i.w = add nsw i32 %i.f, 3
  store i32 %i.w, ptr %i.e, align 8
  %i.x = icmp sgt i32 %i.f, 131069
  br i1 %i.x, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.c, 3
  store i32 %i.y, ptr %i.b, align 4
  %i.z = add nsw i32 %i.f, 4                      ; 4 uses
  store i32 %i.z, ptr %i.e, align 8
  %i.aa = icmp sgt i32 %i.c, 253
  %i.ab = icmp eq i32 %i.f, 131069
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds i8, ptr %.val10.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 110
  br i1 %i.af, label %bb.h, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i32 %.val11.i, 3                ; 2 uses
  store i32 %i.ag, ptr %i.j, align 4
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %.val31.i = phi i32 [ %i.v, %bb.g ], [ %i.ag, %bb.h ], [ %i.v, %bb.f ] ; 3 uses
  %.0.i33.i = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.f ]
  store i32 %i.k, ptr %i.b, align 4
  %i.ah = sext i32 %.val31.i to i64
  %i.ai = getelementptr inbounds i8, ptr %.val10.i, i64 %i.ah ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %i.al = icmp ult i8 %i.ak, 10
  br i1 %i.al, label %.lr.ph.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

.lr.ph.i:                                         ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, %.lr.ph.i
  %i.am = phi i8 [ %i.as, %.lr.ph.i ], [ %i.aj, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %.038.i = phi i32 [ %i.aq, %.lr.ph.i ], [ 0, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %.01937.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.ai, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  %i.an = mul i32 %.038.i, 10
  %i.ao = zext nneg i8 %i.am to i32
  %i.ap = add nsw i32 %i.ao, -48
  %i.aq = add i32 %i.ap, %i.an                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.i, i64 1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = add i8 %i.as, -48
  %i.au = icmp ult i8 %i.at, 10
  br i1 %i.au, label %.lr.ph.i, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit, !llvm.loop !21

_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit: ; preds = %.lr.ph.i
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = ptrtoint ptr %i.ai to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %.val31.i, %i.ay            ; 2 uses
  store i32 %i.az, ptr %i.j, align 4
  %i.ba = sub i32 0, %i.aq
  %spec.select.i = select i1 %.0.i33.i, i32 %i.ba, i32 %i.aq ; 2 uses
  %.not = icmp sgt i32 %spec.select.i, 2147483645
  br i1 %.not, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread

_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i, %bb.e, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit
  %.val6.i = phi i32 [ %i.az, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit ], [ %i.v, %bb.e ], [ %.val31.i, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ] ; 2 uses
  %i.bb = phi i32 [ %i.z, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit ], [ 131073, %bb.e ], [ %i.z, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ] ; 2 uses
  %.07177 = phi i32 [ %spec.select.i, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit ], [ -1, %bb.e ], [ -1, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i ]
  store i32 %i.k, ptr %i.b, align 4
  %i.bc = add nsw i32 %i.bb, 1                    ; 3 uses
  store i32 %i.bc, ptr %i.e, align 8
  %i.bd = icmp sgt i32 %i.bb, 131071
  br i1 %i.bd, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread
  %i.be = sext i32 %.val6.i to i64
  %i.bf = getelementptr inbounds i8, ptr %.val10.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 95
  br i1 %i.bh, label %bb.j, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = add nsw i32 %.val6.i, 1
  store i32 %i.bi, ptr %i.j, align 4
  store i32 %i.d, ptr %i.b, align 4
  %.not.i = icmp sgt i32 %.sroa.5.0.copyload, -1
  br i1 %.not.i, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit.thread, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br label %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit.thread

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.j
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.247, i64 noundef 14)
  %.pre = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bj = icmp sgt i32 %.pre, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  br i1 %i.bj, label %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit.thread, label %bb.k

_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit.thread: ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit.thread, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36

bb.k:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  %i.bk = add nsw i32 %.07177, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.08.i = phi i32 [ %i.bk, %bb.k ], [ %i.bq, %bb.l ] ; 3 uses
  %.0.i33 = phi ptr [ %i.bl, %bb.k ], [ %i.bp, %bb.l ]
  %i.bm = srem i32 %.08.i, 10
  %i.bn = trunc nsw i32 %i.bm to i8
  %i.bo = add nsw i8 %i.bn, 48
  %i.bp = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 5 uses
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = sdiv i32 %.08.i, 10
  %i.br = icmp ugt ptr %i.bp, %i.a
  %i.bs = add i32 %.08.i, -10
  %i.bt = icmp ult i32 %i.bs, -19
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.l, label %bb.m, !llvm.loop !26

bb.m:                                             ; preds = %bb.l
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.a to i64
  %.neg.i = sub i64 %i.bw, %i.bv
  %i.bx = add i64 %.neg.i, 20                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cb = load i32, ptr %i.by, align 8            ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1                    ; 2 uses
  %i.cd = load i32, ptr %i.bz, align 8            ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.018.i.i
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = load ptr, ptr %i.ca, align 8
  store i32 %i.cc, ptr %i.by, align 8
  %i.ci = sext i32 %i.cb to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  store i8 %i.cg, ptr %i.cj, align 1
  %i.ck = add nuw nsw i64 %.018.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.bx
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.n, !llvm.loop !24

bb.p:                                             ; preds = %bb.n
  %i.cl = add nsw i32 %i.cd, 1
  store i32 %i.cl, ptr %i.by, align 8
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %bb.p, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp slt i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.q, label %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit

bb.q:                                             ; preds = %.loopexit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = sext i32 %i.cn to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  store i8 0, ptr %i.cu, align 1
  br label %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit

_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit: ; preds = %.loopexit.i.i, %bb.q
  %.pr = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.not.i34 = icmp sgt i32 %.pr, -1
  br i1 %.not.i34, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36, label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit
  call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, i64 noundef 1)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %bb.i, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread, %bb.c, %bb.d, %bb.b, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit
  %i.cv = phi i32 [ %i.l, %bb.c ], [ %i.z, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit ], [ %i.l, %bb.b ], [ %i.l, %bb.d ], [ %i.bc, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit.thread ], [ %i.bc, %bb.i ] ; 2 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.j, align 4
  %i.cw = add nsw i32 %i.c, 2
  store i32 %i.cw, ptr %i.b, align 4
  %i.cx = add nsw i32 %i.cv, 1
  store i32 %i.cx, ptr %i.e, align 8
  %i.cy = icmp sgt i32 %i.c, 254
  %i.cz = icmp sgt i32 %i.cv, 131071
  %or.cond.i37 = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i37, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, label %bb.s

bb.s:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %.val10.i38 = load ptr, ptr %0, align 8
  %.val11.i39 = load i32, ptr %i.j, align 4       ; 2 uses
  %i.da = sext i32 %.val11.i39 to i64
  %i.db = getelementptr inbounds i8, ptr %.val10.i38, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp eq i8 %i.dc, 85
  br i1 %i.dd, label %bb.t, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = icmp eq i8 %i.df, 108
  br i1 %i.dg, label %bb.u, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dh = add nsw i32 %.val11.i39, 2
  store i32 %i.dh, ptr %i.j, align 4
  store i32 %i.d, ptr %i.b, align 4
  %i.di = and i32 %.sroa.5.0.copyload, 2147483647
  store i32 %i.di, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %i.dj = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22ParseTemplateParamDeclEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !27
  br i1 %i.dj, label %bb.v, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %bb.v
  %i.dk = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.dk, label %.preheader.i, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

.preheader.i:                                     ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %.preheader.i
  %i.dl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.dl, label %.preheader.i, label %bb.w, !llvm.loop !14

bb.w:                                             ; preds = %.preheader.i
  %i.dm = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.dn = and i32 %.sroa.5.0.copyload, -2147483648
  %i.do = and i32 %i.dm, 2147483647
  %i.dp = or disjoint i32 %i.do, %i.dn
  store i32 %i.dp, ptr %.sroa.5.0..sroa_idx, align 8
  %i.dq = load i32, ptr %i.b, align 4             ; 11 uses
  %i.dr = add nsw i32 %i.dq, 1                    ; 3 uses
  store i32 %i.dr, ptr %i.b, align 4
  %i.ds = load i32, ptr %i.e, align 8             ; 6 uses
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.e, align 8
  %i.du = icmp sgt i32 %i.dq, 255
  %i.dv = icmp sgt i32 %i.ds, 131071
  %or.cond.i42 = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i42, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val5.i43 = load ptr, ptr %0, align 8          ; 4 uses
  %.val6.i44 = load i32, ptr %i.j, align 4        ; 3 uses
  %i.dw = sext i32 %.val6.i44 to i64
  %i.dx = getelementptr inbounds i8, ptr %.val5.i43, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = icmp eq i8 %i.dy, 69
  br i1 %i.dz, label %bb.y, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.y:                                             ; preds = %bb.x
  %i.ea = add nsw i32 %.val6.i44, 1               ; 5 uses
  store i32 %i.ea, ptr %i.j, align 4
  store i32 %i.dq, ptr %i.b, align 4
  %i.eb = add nsw i32 %i.ds, 2
  store i32 %i.eb, ptr %i.e, align 8
  %i.ec = icmp sgt i32 %i.ds, 131070
  br i1 %i.ec, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = add nsw i32 %i.dq, 2
  store i32 %i.ed, ptr %i.b, align 4
  %i.ee = add nsw i32 %i.ds, 3                    ; 3 uses
  store i32 %i.ee, ptr %i.e, align 8
  %i.ef = icmp sgt i32 %i.dq, 254
  %i.eg = icmp eq i32 %i.ds, 131070
  %or.cond.i.i48 = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond.i.i48, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eh = sext i32 %i.ea to i64
  %i.ei = getelementptr inbounds i8, ptr %.val5.i43, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = icmp eq i8 %i.ej, 110
  br i1 %i.ek, label %bb.ab, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52

bb.ab:                                            ; preds = %bb.aa
  %i.el = add nsw i32 %.val6.i44, 2               ; 2 uses
  store i32 %i.el, ptr %i.j, align 4
  br label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52: ; preds = %bb.ab, %bb.aa, %bb.z
  %.val31.i53 = phi i32 [ %i.ea, %bb.aa ], [ %i.el, %bb.ab ], [ %i.ea, %bb.z ] ; 3 uses
  %.0.i33.i54 = phi i1 [ false, %bb.aa ], [ true, %bb.ab ], [ false, %bb.z ]
  store i32 %i.dr, ptr %i.b, align 4
  %i.em = sext i32 %.val31.i53 to i64
  %i.en = getelementptr inbounds i8, ptr %.val5.i43, i64 %i.em ; 3 uses
  %i.eo = load i8, ptr %i.en, align 1             ; 2 uses
  %i.ep = add i8 %i.eo, -48
  %i.eq = icmp ult i8 %i.ep, 10
  br i1 %i.eq, label %.lr.ph.i56, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread

.lr.ph.i56:                                       ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52, %.lr.ph.i56
  %i.er = phi i8 [ %i.ex, %.lr.ph.i56 ], [ %i.eo, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ]
  %.038.i57 = phi i32 [ %i.ev, %.lr.ph.i56 ], [ 0, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ]
  %.01937.i58 = phi ptr [ %i.ew, %.lr.ph.i56 ], [ %i.en, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ]
  %i.es = mul i32 %.038.i57, 10
  %i.et = zext nneg i8 %i.er to i32
  %i.eu = add nsw i32 %i.et, -48
  %i.ev = add i32 %i.eu, %i.es                    ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.01937.i58, i64 1 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ey = add i8 %i.ex, -48
  %i.ez = icmp ult i8 %i.ey, 10
  br i1 %i.ez, label %.lr.ph.i56, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61, !llvm.loop !21

_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61: ; preds = %.lr.ph.i56
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = ptrtoint ptr %i.en to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add nsw i32 %.val31.i53, %i.fd          ; 2 uses
  store i32 %i.fe, ptr %i.j, align 4
  %i.ff = sub i32 0, %i.ev
  %spec.select.i59 = select i1 %.0.i33.i54, i32 %i.ff, i32 %i.ev ; 2 uses
  store i32 %i.dq, ptr %i.b, align 4
  %.not26 = icmp sgt i32 %spec.select.i59, 2147483645
  br i1 %.not26, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit, label %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread

_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52, %bb.y, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61
  %.val6.i64 = phi i32 [ %i.fe, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61 ], [ %i.ea, %bb.y ], [ %.val31.i53, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ] ; 2 uses
  %i.fg = phi i32 [ %i.ee, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61 ], [ 131073, %bb.y ], [ %i.ee, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ] ; 2 uses
  %.17284 = phi i32 [ %spec.select.i59, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61 ], [ -1, %bb.y ], [ -1, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.i52 ]
  store i32 %i.dr, ptr %i.b, align 4
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.e, align 8
  %i.fi = icmp sgt i32 %i.fg, 131071
  br i1 %i.fi, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread
  %i.fj = sext i32 %.val6.i64 to i64
  %i.fk = getelementptr inbounds i8, ptr %.val5.i43, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = icmp eq i8 %i.fl, 95
  br i1 %i.fm, label %bb.ad, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split

bb.ad:                                            ; preds = %bb.ac
  %i.fn = add nsw i32 %.val6.i64, 1
  store i32 %i.fn, ptr %i.j, align 4
  store i32 %i.dq, ptr %i.b, align 4
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.250)
  %i.fo = add nsw i32 %.17284, 2
  tail call fastcc void @_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi(ptr noundef nonnull %0, i32 noundef %i.fo)
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.248)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split: ; preds = %bb.ac, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread, %bb.x, %bb.w, %bb.s, %bb.t, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %.sink = phi i32 [ %i.dq, %bb.x ], [ %i.d, %bb.s ], [ %i.d, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread ], [ %i.d, %bb.t ], [ %i.dq, %bb.w ], [ %i.dq, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61.thread ], [ %i.dq, %bb.ac ]
  store i32 %.sink, ptr %i.b, align 4
  br label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit.sink.split, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %_ZN4absl18debugging_internalL11ParseNumberEPNS0_5StateEPi.exit61
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.j, align 4
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36: ; preds = %bb.r, %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit, %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit.thread, %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit, %bb.ad
  %.0 = phi i1 [ false, %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit ], [ true, %bb.ad ], [ true, %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit.thread ], [ true, %_ZN4absl18debugging_internalL18MaybeAppendDecimalEPNS0_5StateEi.exit ], [ true, %bb.r ]
  %.pre102 = load i32, ptr %i.b, align 4
  %i.fp = add nsw i32 %.pre102, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36
  %i.fq = phi i32 [ %i.fp, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36 ], [ %i.c, %bb.a ]
  %.1 = phi i1 [ %.0, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit36 ], [ false, %bb.a ]
  store i32 %i.fq, ptr %i.b, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 73 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 48 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = icmp sgt i32 %i.c, 255
  %i.i = icmp sgt i32 %i.f, 131071
  %or.cond198 = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond198, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL18ParseTemplateParamEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.j, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseExprPrimaryEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.k, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 78 uses
  %.sroa.0452.0.copyload = load <4 x i32>, ptr %i.l, align 4 ; 28 uses
  %i.m = load i32, ptr %i.b, align 4              ; 6 uses
  %i.n = add nsw i32 %i.m, 1                      ; 4 uses
  store i32 %i.n, ptr %i.b, align 4
  %i.o = load i32, ptr %i.e, align 8              ; 2 uses
  %i.p = add nsw i32 %i.o, 1                      ; 4 uses
  store i32 %i.p, ptr %i.e, align 8
  %i.q = icmp sgt i32 %i.m, 255
  %i.r = icmp sgt i32 %i.o, 131071
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.l, align 4         ; 2 uses
  %i.s = sext i32 %.val11.i to i64
  %i.t = getelementptr inbounds i8, ptr %.val10.i, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.f, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 108
  br i1 %i.y, label %bb.g, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %.val11.i, 2
  store i32 %i.z, ptr %i.l, align 4
  store i32 %i.m, ptr %i.b, align 4
  %i.aa = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.aa, label %.preheader.i, label %._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge

._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge: ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4             ; 2 uses
  %.pre210 = load i32, ptr %i.e, align 8
  %.pre213 = add nsw i32 %.pre, 1
  br label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %i.ab = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !13
  br i1 %i.ab, label %.preheader.i, label %bb.h, !llvm.loop !14

bb.h:                                             ; preds = %.preheader.i
  %i.ac = load i32, ptr %i.b, align 4             ; 5 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 3 uses
  store i32 %i.ad, ptr %i.b, align 4
  %i.ae = load i32, ptr %i.e, align 8             ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 3 uses
  store i32 %i.af, ptr %i.e, align 8
  %i.ag = icmp sgt i32 %i.ac, 255
  %i.ah = icmp sgt i32 %i.ae, 131071
  %or.cond.i148 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond.i148, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.l, align 4          ; 2 uses
  %i.ai = sext i32 %.val6.i to i64
  %i.aj = getelementptr inbounds i8, ptr %.val5.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 69
  br i1 %i.al, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit, label %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit: ; preds = %bb.i
  %i.am = add nsw i32 %.val6.i, 1
  store i32 %i.am, ptr %i.l, align 4
  store i32 %i.ac, ptr %i.b, align 4
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.f, %bb.d, %._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge
  %.pre-phi = phi i32 [ %.pre213, %._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge ], [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.f ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ] ; 5 uses
  %i.an = phi i32 [ %.pre210, %._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge ], [ %i.p, %bb.e ], [ %i.p, %bb.d ], [ %i.p, %bb.f ], [ %i.af, %bb.h ], [ %i.af, %bb.i ] ; 4 uses
  %i.ao = phi i32 [ %.pre, %._ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit_crit_edge ], [ %i.m, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.f ], [ %i.ac, %bb.h ], [ %i.ac, %bb.i ] ; 6 uses
  store <4 x i32> %.sroa.0452.0.copyload, ptr %i.l, align 4
  store i32 %.pre-phi, ptr %i.b, align 4
  %i.ap = add nsw i32 %i.an, 1
  store i32 %i.ap, ptr %i.e, align 8
  %i.aq = icmp sgt i32 %i.ao, 255                 ; 2 uses
  %i.ar = icmp sgt i32 %i.an, 131071
  %or.cond.i150 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.i150, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit
  %.val14.i = load ptr, ptr %0, align 8
  %.val15.i = load i32, ptr %i.l, align 4         ; 2 uses
  %i.as = sext i32 %.val15.i to i64
  %i.at = getelementptr inbounds i8, ptr %.val14.i, i64 %i.as ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 112
  br i1 %i.av, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, 112
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 95
  br i1 %i.bb, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl18debugging_internalL9OneOrMoreEPFbPNS0_5StateEES2_.exit, %bb.l, %bb.k, %bb.j
  %i.bc = add nsw i32 %i.an, 2                    ; 5 uses
  store i32 %i.bc, ptr %i.e, align 8
  %i.bd = icmp sgt i32 %i.an, 131070
  %or.cond.i152 = select i1 %i.aq, i1 true, i1 %i.bd
  br i1 %or.cond.i152, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val14.i153 = load ptr, ptr %0, align 8
  %.val15.i154 = load i32, ptr %i.l, align 4      ; 2 uses
  %i.be = sext i32 %.val15.i154 to i64
  %i.bf = getelementptr inbounds i8, ptr %.val14.i153, i64 %i.be ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 109
  br i1 %i.bh, label %bb.o, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 109
  br i1 %i.bk, label %bb.p, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 95
  br i1 %i.bn, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread

_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit: ; preds = %bb.p, %bb.l
  %storemerge.in = phi i32 [ %.val15.i, %bb.l ], [ %.val15.i154, %bb.p ]
  %storemerge = add nsw i32 %storemerge.in, 3
  store i32 %storemerge, ptr %i.l, align 4
  store i32 %i.ao, ptr %i.b, align 4
  %i.bo = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bo, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge

_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge: ; preds = %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit
  %.pre211 = load i32, ptr %i.b, align 4          ; 2 uses
  %.pre212 = load i32, ptr %i.e, align 8
  %.pre214 = add nsw i32 %.pre211, 1
  br label %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread

_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread: ; preds = %bb.n, %bb.o, %bb.p, %bb.m, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge
  %.pre-phi215 = phi i32 [ %.pre214, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge ], [ %.pre-phi, %bb.m ], [ %.pre-phi, %bb.p ], [ %.pre-phi, %bb.o ], [ %.pre-phi, %bb.n ]
  %i.bp = phi i32 [ %.pre212, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge ], [ %i.bc, %bb.m ], [ %i.bc, %bb.p ], [ %i.bc, %bb.o ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bq = phi i32 [ %.pre211, %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit._crit_edge ], [ %i.ao, %bb.m ], [ %i.ao, %bb.p ], [ %i.ao, %bb.o ], [ %i.ao, %bb.n ] ; 3 uses
  store <4 x i32> %.sroa.0452.0.copyload, ptr %i.l, align 4
  store i32 %.pre-phi215, ptr %i.b, align 4
  %i.br = add nsw i32 %i.bp, 1
  store i32 %i.br, ptr %i.e, align 8
  %i.bs = icmp sgt i32 %i.bq, 255
  %i.bt = icmp sgt i32 %i.bp, 131071
  %or.cond.i157 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond.i157, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit161.thread, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18debugging_internalL19ParseThreeCharTokenEPNS0_5StateEPKc.exit156.thread
  %.val10.i158 = load ptr, ptr %0, align 8
end_hunk_1
begin_hunk_2_@_ZN4absl18debugging_internalL21ParseBracedExpressionEPNS0_5StateE:bb.a
_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit28.thread: ; preds = %bb.l, %bb.n, %bb.m
  store i32 %i.an, ptr %i.a, align 4
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %.val11.i26, 2
  store i32 %i.ba, ptr %i.i, align 4
  store i32 %i.an, ptr %i.a, align 4
  %i.bb = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBracedExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit28.thread, %bb.q, %bb.p, %bb.o
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.be = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.k, %bb.f, %bb.r
  %.0 = phi i1 [ %i.be, %bb.r ], [ true, %bb.f ], [ true, %bb.k ], [ true, %bb.q ]
  %.pre = load i32, ptr %i.a, align 4
  %i.bf = add nsw i32 %.pre, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.s
  %i.bg = phi i32 [ %i.bf, %bb.s ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %bb.s ], [ false, %bb.a ]
  store i32 %i.bg, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseInitializerEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 11 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.i, align 4 ; 2 uses
  %i.j = add nsw i32 %i.b, 2
  store i32 %i.j, ptr %i.a, align 4
  %i.k = add nsw i32 %i.e, 2                      ; 4 uses
  store i32 %i.k, ptr %i.d, align 8
  %i.l = icmp sgt i32 %i.b, 254
  %i.m = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val10.i = load ptr, ptr %0, align 8
  %.val11.i = load i32, ptr %i.i, align 4         ; 2 uses
  %i.n = sext i32 %.val11.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val10.i, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 112
  br i1 %i.q, label %bb.d, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 105
  br i1 %i.t, label %bb.e, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val11.i, 2
  store i32 %i.u, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.v = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !27
  br i1 %i.v, label %bb.f, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %bb.f
  %i.w = load i32, ptr %i.a, align 4              ; 5 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.a, align 4
  %i.y = load i32, ptr %i.d, align 8              ; 2 uses
  %i.z = add nsw i32 %i.y, 1                      ; 3 uses
  store i32 %i.z, ptr %i.d, align 8
  %i.aa = icmp sgt i32 %i.w, 255
  %i.ab = icmp sgt i32 %i.y, 131071
  %or.cond.i13 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i13, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.i, align 4          ; 2 uses
  %i.ac = sext i32 %.val6.i to i64
  %i.ad = getelementptr inbounds i8, ptr %.val5.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 69
  br i1 %i.af, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit: ; preds = %bb.g
  %i.ag = add nsw i32 %.val6.i, 1
  store i32 %i.ag, ptr %i.i, align 4
  br label %bb.m

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %bb.g, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %bb.c, %bb.d, %bb.b
  %i.ah = phi i32 [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.k, %bb.d ], [ %i.z, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.z, %bb.g ] ; 2 uses
  %storemerge = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %i.w, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.w, %bb.g ] ; 6 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.ai = add nsw i32 %storemerge, 1
  store i32 %i.ai, ptr %i.a, align 4
  %i.aj = add nsw i32 %i.ah, 1
  store i32 %i.aj, ptr %i.d, align 8
  %i.ak = icmp sgt i32 %storemerge, 255
  %i.al = icmp sgt i32 %i.ah, 131071
  %or.cond.i15 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i15, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %.val10.i16 = load ptr, ptr %0, align 8
  %.val11.i17 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.am = sext i32 %.val11.i17 to i64
  %i.an = getelementptr inbounds i8, ptr %.val10.i16, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 105
  br i1 %i.ap, label %bb.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp eq i8 %i.ar, 108
  br i1 %i.as, label %bb.j, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %.val11.i17, 2
  store i32 %i.at, ptr %i.i, align 4
  store i32 %storemerge, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.au = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL21ParseBracedExpressionEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !27
  br i1 %i.au, label %bb.k, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit20, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit20: ; preds = %bb.k
  %i.av = load i32, ptr %i.a, align 4             ; 5 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.a, align 4
  %i.ax = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.d, align 8
  %i.az = icmp sgt i32 %i.av, 255
  %i.ba = icmp sgt i32 %i.ax, 131071
  %or.cond.i21 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i21, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread, label %bb.l

bb.l:                                             ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit20
  %.val5.i22 = load ptr, ptr %0, align 8
  %.val6.i23 = load i32, ptr %i.i, align 4        ; 2 uses
  %i.bb = sext i32 %.val6.i23 to i64
  %i.bc = getelementptr inbounds i8, ptr %.val5.i22, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 69
  br i1 %i.be, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit25, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit25: ; preds = %bb.l
  %i.bf = add nsw i32 %.val6.i23, 1
  store i32 %i.bf, ptr %i.i, align 4
  br label %bb.m

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread: ; preds = %bb.l, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit20, %bb.h, %bb.i, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %storemerge31 = phi i32 [ %storemerge, %bb.h ], [ %storemerge, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread ], [ %storemerge, %bb.i ], [ %i.av, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit20 ], [ %i.av, %bb.l ]
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit25, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread
  %i.bg = phi i32 [ %storemerge31, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread ], [ %i.w, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit ], [ %i.av, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit25 ]
  %.0 = phi i1 [ false, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit19.thread ], [ true, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit ], [ true, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit25 ]
  %i.bh = add nsw i32 %i.bg, -1
  br label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.m
  %i.bi = phi i32 [ %i.bh, %bb.m ], [ %i.b, %bb.a ]
  %.1 = phi i1 [ %.0, %bb.m ], [ false, %bb.a ]
  store i32 %i.bi, ptr %i.a, align 4
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOperatorNameEPNS0_5StateEPi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 21 uses
  %i.b = load i32, ptr %i.a, align 4              ; 7 uses
  %i.c = add nsw i32 %i.b, 1                      ; 6 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZN4absl18debugging_internalL24AtLeastNumCharsRemainingEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val58 = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %0, i64 28         ; 16 uses
  %.val59 = load i32, ptr %i.i, align 4           ; 2 uses
  %i.j = sext i32 %.val59 to i64
  %i.k = getelementptr inbounds i8, ptr %.val58, i64 %i.j ; 3 uses
  %i.l = load i8, ptr %i.k, align 1
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %_ZN4absl18debugging_internalL24AtLeastNumCharsRemainingEPKcm.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not.i.1 = icmp eq i8 %i.n, 0
  br i1 %.not.i.1, label %_ZN4absl18debugging_internalL24AtLeastNumCharsRemainingEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.1
  %.sroa.0.sroa.0.0.copyload = load <3 x i32>, ptr %i.i, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %i.o = add nsw i32 %i.b, 2
  store i32 %i.o, ptr %i.a, align 4
  %i.p = add nsw i32 %i.e, 2                      ; 5 uses
  store i32 %i.p, ptr %i.d, align 8
  %i.q = icmp sgt i32 %i.b, 254
  %i.r = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load i8, ptr %i.k, align 1
  %i.t = icmp eq i8 %i.s, 99
  br i1 %i.t, label %bb.d, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.m, align 1
  %i.v = icmp eq i8 %i.u, 118
  br i1 %i.v, label %bb.e, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = add nsw i32 %.val59, 2
  store i32 %i.w, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  %.not.i68 = icmp sgt i32 %.sroa.6.0.copyload, -1
  br i1 %.not.i68, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.136, i64 noundef 9)
  %.pre = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre119 = load i32, ptr %i.a, align 4
  %.pre120 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit: ; preds = %bb.e, %bb.f
  %i.x = phi i32 [ %i.p, %bb.e ], [ %.pre120, %bb.f ] ; 4 uses
  %i.y = phi i32 [ %i.c, %bb.e ], [ %.pre119, %bb.f ] ; 5 uses
  %i.z = phi i32 [ %.sroa.6.0.copyload, %bb.e ], [ %.pre, %bb.f ]
  %i.aa = and i32 %i.z, -2147418113
  store i32 %i.aa, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ab = add nsw i32 %i.y, 1
  %i.ac = add nsw i32 %i.x, 1
  %i.ad = icmp sgt i32 %i.y, 255
  %i.ae = icmp sgt i32 %i.x, 131071
  %or.cond105 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond105, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit
  %.val22.i = load ptr, ptr %0, align 8           ; 3 uses
  %.val23.i = load i32, ptr %i.i, align 4         ; 3 uses
  %i.af = add nsw i32 %i.y, 2                     ; 2 uses
  store i32 %i.af, ptr %i.a, align 4
  %i.ag = add nsw i32 %i.x, 2                     ; 2 uses
  store i32 %i.ag, ptr %i.d, align 8
  %i.ah = icmp sgt i32 %i.y, 254
  %i.ai = icmp sgt i32 %i.x, 131070
  %or.cond.i86111 = select i1 %i.ah, i1 true, i1 %i.ai
  %.pre129 = sext i32 %.val23.i to i64            ; 2 uses
  br i1 %or.cond.i86111, label %.loopexit106, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit ], [ %.pre129, %bb.g ] ; 3 uses
  %i.aj = phi i32 [ %i.am, %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit ], [ %i.ag, %bb.g ]
  %i.ak = getelementptr inbounds i8, ptr %.val22.i, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1
  switch i8 %i.al, label %.loopexit106.loopexit.split.loop.exit159 [
    i8 75, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 79, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 80, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 82, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 67, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 71, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 114, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
    i8 86, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit
  ]

_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit: ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.i, align 4
  store i32 %i.af, ptr %i.a, align 4
  %i.am = add i32 %i.aj, 1                        ; 3 uses
  store i32 %i.am, ptr %i.d, align 8
  %exitcond = icmp eq i32 %i.am, 131073
  br i1 %exitcond, label %.loopexit106, label %.lr.ph, !llvm.loop !38

.loopexit106.loopexit.split.loop.exit159:         ; preds = %.lr.ph
  %indvars145.le = trunc i64 %indvars.iv to i32
  br label %.loopexit106

.loopexit106:                                     ; preds = %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit, %.loopexit106.loopexit.split.loop.exit159, %bb.g
  %.val21.i = phi i32 [ %.val23.i, %bb.g ], [ %indvars145.le, %.loopexit106.loopexit.split.loop.exit159 ], [ %indvars, %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit ] ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4
  %i.an = getelementptr inbounds i8, ptr %.val22.i, i64 %.pre129
  %i.ao = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0), !inline_history !39
  br i1 %i.ao, label %.preheader.i, label %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread101

.preheader.i:                                     ; preds = %.loopexit106
  %.not25.i = icmp eq i32 %.val23.i, %.val21.i
  br i1 %.not25.i, label %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100, label %.lr.ph.i69.preheader

.lr.ph.i69.preheader:                             ; preds = %.preheader.i
  %i.ap = sext i32 %.val21.i to i64
  %i.aq = getelementptr inbounds i8, ptr %.val22.i, i64 %i.ap
  br label %.lr.ph.i69

_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread101: ; preds = %.loopexit106
  %i.ar = load i32, ptr %i.a, align 4
  %i.as = add nsw i32 %i.ar, -1
  %.pre124 = load i32, ptr %i.d, align 8
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread

.lr.ph.i69:                                       ; preds = %.lr.ph.i69.preheader, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85
  %.026.i = phi ptr [ %i.at, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85 ], [ %i.aq, %.lr.ph.i69.preheader ]
  %i.at = getelementptr inbounds i8, ptr %.026.i, i64 -1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1
  %switch.tableidx = add i8 %i.au, -67            ; 3 uses
  %i.av = icmp ult i8 %switch.tableidx, 48
  br i1 %i.av, label %switch.hole_check, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85

switch.hole_check:                                ; preds = %.lr.ph.i69
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 140737488924945, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85

switch.lookup:                                    ; preds = %switch.hole_check
  %i.aw = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4absl18debugging_internalL17ParseOperatorNameEPNS0_5StateEPi, i64 %i.aw
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  %i.ax = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.not.i83 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i83, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85, label %bb.h

bb.h:                                             ; preds = %switch.lookup
  %i.ay = load i8, ptr %switch.load, align 1
  %.not4.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not4.i.i, label %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %scevgep.i.i = getelementptr i8, ptr %switch.load, i64 1
  %strlen.i.i84 = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i.i)
  %i.az = add i64 %strlen.i.i84, 1
  br label %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i

_ZN4absl18debugging_internalL6StrLenEPKc.exit.i:  ; preds = %.lr.ph.preheader.i.i, %bb.h
  %.0.lcssa.i.i = phi i64 [ 0, %bb.h ], [ %i.az, %.lr.ph.preheader.i.i ]
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull readonly %switch.load, i64 noundef %.0.lcssa.i.i)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85: ; preds = %switch.hole_check, %.lr.ph.i69, %_ZN4absl18debugging_internalL6StrLenEPKc.exit.i, %switch.lookup
  %.not.i70 = icmp eq ptr %i.an, %i.at
  br i1 %.not.i70, label %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100, label %.lr.ph.i69, !llvm.loop !40

_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100: ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit85, %.preheader.i
  %storemerge.in = load i32, ptr %i.a, align 4
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.a, align 4
  %i.ba = and i32 %.sroa.6.0.copyload, 2147418112
  %i.bb = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bc = and i32 %i.bb, -2147418113
  %i.bd = or disjoint i32 %i.bc, %i.ba
  store i32 %i.bd, ptr %.sroa.6.0..sroa_idx, align 8
  %.not49 = icmp eq ptr %1, null
  br i1 %.not49, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100
  store i32 1, ptr %1, align 4
  br label %.loopexit

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread: ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit, %bb.c, %bb.d, %bb.b, %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread101
  %i.be = phi i32 [ %.pre124, %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread101 ], [ %i.p, %bb.c ], [ %i.p, %bb.b ], [ %i.p, %bb.d ], [ %i.ac, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ] ; 2 uses
  %i.bf = phi i32 [ %i.as, %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread101 ], [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %i.y, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit ] ; 6 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bg = add nsw i32 %i.bf, 1                    ; 4 uses
  store i32 %i.bg, ptr %i.a, align 4
  %i.bh = add nsw i32 %i.be, 1                    ; 4 uses
  store i32 %i.bh, ptr %i.d, align 8
  %i.bi = icmp sgt i32 %i.bf, 255
  %i.bj = icmp sgt i32 %i.be, 131071
  %or.cond.i71 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond.i71, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread
  %.val10.i72 = load ptr, ptr %0, align 8
  %.val11.i73 = load i32, ptr %i.i, align 4       ; 2 uses
  %i.bk = sext i32 %.val11.i73 to i64
  %i.bl = getelementptr inbounds i8, ptr %.val10.i72, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 108
  br i1 %i.bn, label %bb.k, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 105
  br i1 %i.bq, label %bb.l, label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread

bb.l:                                             ; preds = %bb.k
  %i.br = add nsw i32 %.val11.i73, 2
  store i32 %i.br, ptr %i.i, align 4
  store i32 %i.bf, ptr %i.a, align 4
  %.not.i76 = icmp sgt i32 %.sroa.6.0.copyload, -1
  br i1 %.not.i76, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN4absl18debugging_internalL21MaybeAppendWithLengthEPNS0_5StateEPKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str.138, i64 noundef 11)
  br label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78: ; preds = %bb.l, %bb.m
  %i.bs = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bs, label %.loopexit, label %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge

_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge: ; preds = %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78
  %.pre125 = load i32, ptr %i.a, align 4          ; 2 uses
  %.pre126 = load i32, ptr %i.d, align 8
  %.pre128 = add nsw i32 %.pre125, 1
  br label %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread

_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread: ; preds = %bb.j, %bb.k, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge
  %.pre-phi = phi i32 [ %.pre128, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge ], [ %i.bg, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread ], [ %i.bg, %bb.k ], [ %i.bg, %bb.j ] ; 2 uses
  %i.bt = phi i32 [ %.pre126, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge ], [ %i.bh, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread ], [ %i.bh, %bb.k ], [ %i.bh, %bb.j ] ; 4 uses
  %i.bu = phi i32 [ %.pre125, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78._crit_edge ], [ %i.bf, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit.thread ], [ %i.bf, %bb.k ], [ %i.bf, %bb.j ] ; 4 uses
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.bv = add nsw i32 %i.bt, 1
  store i32 %i.bv, ptr %i.d, align 8
  %i.bw = icmp sgt i32 %i.bu, 255
  %i.bx = icmp sgt i32 %i.bt, 131071
  %or.cond.i79 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond.i79, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread
  %.val5.i = load ptr, ptr %0, align 8            ; 2 uses
  %.val6.i = load i32, ptr %i.i, align 4          ; 3 uses
  %i.by = sext i32 %.val6.i to i64
  %i.bz = getelementptr inbounds i8, ptr %.val5.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = icmp eq i8 %i.ca, 118
  br i1 %i.cb, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.cc = add nsw i32 %.val6.i, 1                 ; 2 uses
  store i32 %i.cc, ptr %i.i, align 4
  store i32 %i.bu, ptr %i.a, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.val5.i, i64 %i.cd ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  store i32 %.pre-phi, ptr %i.a, align 4
  %i.cg = add nsw i32 %i.bt, 2
  store i32 %i.cg, ptr %i.d, align 8
  %i.ch = icmp sgt i32 %i.bt, 131070
  br i1 %i.ch, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i8, ptr %i.ce, align 1
  %.off.i = add i8 %i.ci, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit.i, label %.sink.split

_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit.i: ; preds = %bb.p
  %i.cj = add nsw i32 %.val6.i, 2
  store i32 %i.cj, ptr %i.i, align 4
  store i32 %i.bu, ptr %i.a, align 4
  %.not.i82 = icmp eq ptr %1, null
  br i1 %.not.i82, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit.i
  %i.ck = sext i8 %i.cf to i32
  %i.cl = add nsw i32 %i.ck, -48
  store i32 %i.cl, ptr %1, align 4
  br label %bb.r

bb.r:                                             ; preds = %_ZN4absl18debugging_internalL14ParseCharClassEPNS0_5StateEPKc.exit.i, %bb.q
  %i.cm = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.cm, label %.loopexit, label %bb.s

.sink.split:                                      ; preds = %bb.p, %bb.o, %bb.n, %_ZN4absl18debugging_internalL17ParseTwoCharTokenEPNS0_5StateEPKc.exit75.thread
  store i32 %i.bu, ptr %i.a, align 4
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r
  store <3 x i32> %.sroa.0.sroa.0.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.val56 = load ptr, ptr %0, align 8
  %.val57 = load i32, ptr %i.i, align 4
  %i.cn = sext i32 %.val57 to i64
  %i.co = getelementptr inbounds i8, ptr %.val56, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1             ; 3 uses
  %i.cq = add i8 %i.cp, -97
  %i.cr = icmp ult i8 %i.cq, 26
  br i1 %i.cr, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.ct = load i8, ptr %i.cs, align 1             ; 3 uses
  %i.cu = and i8 %i.ct, -33
  %i.cv = add i8 %i.cu, -65
  %i.cw = icmp ult i8 %i.cv, 26
  br i1 %i.cw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.t, %bb.aa
  %i.cx = phi ptr [ %i.dv, %bb.aa ], [ @.str.18, %bb.t ] ; 2 uses
  %.062 = phi ptr [ %i.du, %bb.aa ], [ @_ZN4absl18debugging_internalL13kOperatorListE, %bb.t ] ; 4 uses
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cp, %i.cy
  br i1 %i.cz, label %bb.u, label %.preheader.1

bb.u:                                             ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = icmp eq i8 %i.ct, %i.db
  br i1 %i.dc, label %.split.loop.exit166, label %.preheader.1

.split.loop.exit:                                 ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %.062, i64 24
  br label %.split.loop.exit166

.split.loop.exit166:                              ; preds = %bb.u, %.split.loop.exit
  %.062.lcssa = phi ptr [ %i.dd, %.split.loop.exit ], [ %.062, %bb.u ] ; 2 uses
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split.loop.exit166
  %i.de = getelementptr inbounds nuw i8, ptr %.062.lcssa, i64 16
  %i.df = load i32, ptr %i.de, align 8
  store i32 %i.df, ptr %1, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.split.loop.exit166
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.139)
  %i.dg = getelementptr inbounds nuw i8, ptr %.062.lcssa, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = add i8 %i.di, -97
  %i.dk = icmp ult i8 %i.dj, 26
  br i1 %i.dk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call fastcc void @_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc(ptr noundef nonnull %0, ptr noundef nonnull %i.dh)
  %i.dl = load i32, ptr %i.i, align 4
  %i.dm = add nsw i32 %i.dl, 2
  store i32 %i.dm, ptr %i.i, align 4
  br label %.loopexit

.preheader.1:                                     ; preds = %.preheader, %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %.062, i64 24
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp eq i8 %i.cp, %i.dp
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ct, %i.ds
  br i1 %i.dt, label %.split.loop.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader.1
  %i.du = getelementptr inbounds nuw i8, ptr %.062, i64 48 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not.not.1 = icmp eq ptr %i.dv, null
  br i1 %.not.not.1, label %.loopexit, label %.preheader, !llvm.loop !41

.loopexit:                                        ; preds = %bb.aa, %bb.y, %bb.s, %bb.t, %bb.r, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78, %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100, %bb.i
  %.1 = phi i1 [ true, %bb.r ], [ true, %_ZN4absl18debugging_internalL27ParseConversionOperatorTypeEPNS0_5StateE.exit.thread100 ], [ true, %_ZN4absl18debugging_internalL11MaybeAppendEPNS0_5StateEPKc.exit78 ], [ false, %bb.s ], [ true, %bb.i ], [ false, %bb.t ], [ true, %bb.y ], [ false, %bb.aa ]
  %.pre127 = load i32, ptr %i.a, align 4
  %i.dw = add nsw i32 %.pre127, -1
  br label %_ZN4absl18debugging_internalL24AtLeastNumCharsRemainingEPKcm.exit

_ZN4absl18debugging_internalL24AtLeastNumCharsRemainingEPKcm.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %bb.a, %.loopexit
  %i.dx = phi i32 [ %i.b, %bb.a ], [ %i.dw, %.loopexit ], [ %i.b, %.lr.ph.i.1 ], [ %i.b, %.lr.ph.i ]
  %.2 = phi i1 [ false, %bb.a ], [ %.1, %.loopexit ], [ false, %.lr.ph.i.1 ], [ false, %.lr.ph.i ]
  store i32 %i.dx, ptr %i.a, align 4
  ret i1 %.2
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 18 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8              ; 4 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl18debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.i, align 4 ; 6 uses
  %i.j = add nsw i32 %i.b, 2
  store i32 %i.j, ptr %i.a, align 4
  %i.k = add nsw i32 %i.e, 2                      ; 3 uses
  store i32 %i.k, ptr %i.d, align 8
  %i.l = icmp sgt i32 %i.b, 254
  %i.m = icmp sgt i32 %i.e, 131070
  %or.cond.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val5.i = load ptr, ptr %0, align 8
  %.val6.i = load i32, ptr %i.i, align 4          ; 2 uses
  %i.n = sext i32 %.val6.i to i64
  %i.o = getelementptr inbounds i8, ptr %.val5.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 74
  br i1 %i.q, label %bb.d, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.val6.i, 1
  store i32 %i.r, ptr %i.i, align 4
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.s = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef nonnull %0) #16, !inline_history !27
  br i1 %i.s, label %bb.e, label %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, !llvm.loop !11

_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit: ; preds = %bb.e
  %i.t = load i32, ptr %i.a, align 4              ; 5 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.a, align 4
  %i.v = load i32, ptr %i.d, align 8              ; 2 uses
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  store i32 %i.w, ptr %i.d, align 8
  %i.x = icmp sgt i32 %i.t, 255
  %i.y = icmp sgt i32 %i.v, 131071
  %or.cond.i24 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i24, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit
  %.val5.i25 = load ptr, ptr %0, align 8
  %.val6.i26 = load i32, ptr %i.i, align 4        ; 2 uses
  %i.z = sext i32 %.val6.i26 to i64
  %i.aa = getelementptr inbounds i8, ptr %.val5.i25, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, 69
  br i1 %i.ac, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit28, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit28: ; preds = %bb.f
  %i.ad = add nsw i32 %.val6.i26, 1
  store i32 %i.ad, ptr %i.i, align 4
  store i32 %i.t, ptr %i.a, align 4
  br label %bb.r

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread: ; preds = %bb.f, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit, %bb.c, %bb.b
  %i.ae = phi i32 [ %i.k, %bb.c ], [ %i.k, %bb.b ], [ %i.w, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.w, %bb.f ] ; 4 uses
  %storemerge = phi i32 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.t, %_ZN4absl18debugging_internalL10ZeroOrMoreEPFbPNS0_5StateEES2_.exit ], [ %i.t, %bb.f ] ; 7 uses
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.af = add nsw i32 %storemerge, 1
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.d, align 8
  %i.ah = icmp sgt i32 %storemerge, 255
  %i.ai = icmp sgt i32 %i.ae, 131071
  %or.cond.i29 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond.i29, label %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread
  %i.aj = add nsw i32 %storemerge, 2
  store i32 %i.aj, ptr %i.a, align 4
  %i.ak = add nsw i32 %i.ae, 2
  store i32 %i.ak, ptr %i.d, align 8
  %i.al = icmp sgt i32 %storemerge, 254
  %i.am = icmp sgt i32 %i.ae, 131070
  %or.cond.i.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond.i.i, label %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val5.i.i = load ptr, ptr %0, align 8
  %.val6.i.i = load i32, ptr %i.i, align 4        ; 2 uses
  %i.an = sext i32 %.val6.i.i to i64
  %i.ao = getelementptr inbounds i8, ptr %.val5.i.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 76
  br i1 %i.aq, label %bb.i, label %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i32 %.val6.i.i, 1
  store i32 %i.ar, ptr %i.i, align 4
  store i32 %i.af, ptr %i.a, align 4
  %i.as = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseSourceNameEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.as, label %bb.j, label %._ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit_crit_edge

._ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit_crit_edge: ; preds = %bb.i
  %.pre.i.pre = load i32, ptr %i.a, align 4
  %i.at = add nsw i32 %.pre.i.pre, -1
  br label %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit

_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit: ; preds = %bb.g, %bb.h, %._ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit_crit_edge
  %.pre.i = phi i32 [ %i.at, %._ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit_crit_edge ], [ %storemerge, %bb.h ], [ %storemerge, %bb.g ]
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  br label %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit.thread

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @_ZN4absl18debugging_internalL18ParseDiscriminatorEPNS0_5StateE(ptr noundef nonnull %0)
  %.pre.i44 = load i32, ptr %i.a, align 4
  %i.au = add nsw i32 %.pre.i44, -1
  store i32 %i.au, ptr %i.a, align 4
  %i.av = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseTemplateArgsEPNS0_5StateE(ptr noundef nonnull %0) ; 0 uses
  %.sroa.0.0.copyload60 = load <4 x i32>, ptr %i.i, align 4
  %i.aw = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL30ParseExprCastValueAndTrailingEEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.aw, label %bb.r, label %.sink.split

_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit.thread: ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread, %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit
  %storemerge47 = phi i32 [ %.pre.i, %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit ], [ %storemerge, %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit.thread ]
  store i32 %storemerge47, ptr %i.a, align 4
  %i.ax = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL9ParseTypeEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ax, label %bb.r, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18debugging_internalL20ParseLocalSourceNameEPNS0_5StateE.exit.thread
  %i.ay = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseExprPrimaryEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.ay, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.az = load i32, ptr %i.a, align 4             ; 4 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.a, align 4
  %i.bb = load i32, ptr %i.d, align 8             ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.d, align 8
  %i.bd = icmp sgt i32 %i.az, 255
  %i.be = icmp sgt i32 %i.bb, 131071
  %or.cond.i31 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond.i31, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit35.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val5.i32 = load ptr, ptr %0, align 8
  %.val6.i33 = load i32, ptr %i.i, align 4        ; 2 uses
  %i.bf = sext i32 %.val6.i33 to i64
  %i.bg = getelementptr inbounds i8, ptr %.val5.i32, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 88
  br i1 %i.bi, label %bb.n, label %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit35.thread

_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit35.thread: ; preds = %bb.l, %bb.m
  store i32 %i.az, ptr %i.a, align 4
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %.val6.i33, 1
  store i32 %i.bj, ptr %i.i, align 4
  store i32 %i.az, ptr %i.a, align 4
  %i.bk = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL15ParseExpressionEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bl = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc(ptr noundef nonnull %0, i8 noundef signext 69)
  br i1 %i.bl, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN4absl18debugging_internalL17ParseOneCharTokenEPNS0_5StateEc.exit35.thread, %bb.o, %bb.n
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.i, align 4
  %i.bm = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL22ParseTemplateParamDeclEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bm, label %bb.q, label %.sink.split

bb.q:                                             ; preds = %bb.p
  %i.bn = tail call fastcc noundef zeroext i1 @_ZN4absl18debugging_internalL16ParseTemplateArgEPNS0_5StateE(ptr noundef nonnull %0)
  br i1 %i.bn, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q, %bb.j
  %.sroa.0.0 = phi <4 x i32> [ %.sroa.0.0.copyload, %bb.q ], [ %.sroa.0.0.copyload, %bb.p ], [ %.sroa.0.0.copyload60, %bb.j ]
end_hunk_2
