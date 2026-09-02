Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BytecodeGenerator?download=true
inline.NumInlined: 2659
inline.NumDeleted: 1336
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6hermes3hbc25BytecodeFunctionGenerator14getScopeDescIDEPNS_9ScopeDescE:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !231  ; 2 uses
  %.not2.i = icmp eq ptr %i.e, null
  br i1 %.not2.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.e) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287
  %.not1.i = icmp eq i32 %i.h, 2
  br i1 %.not1.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !223
  br label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit

_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.j = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.m = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !223
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !287
  %.not1 = icmp eq i32 %i.f, 2
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !223
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.k = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.j)
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %i.d, i64 %i.i, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.d, align 1, !tbaa !95
  store i8 %i.l, ptr %i.c, align 1, !tbaa !95
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.e
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.p, ptr %i.f, align 8, !tbaa !99
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit

_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, %bb.f
  %i.q = add i32 %1, -1
  %i.r = zext i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !95
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr i8, ptr @switch.table._ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj, i64 %i.v
  %switch.gep = getelementptr i8, ptr %i.w, i64 113
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %i.t, align 1, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %.not8 = icmp eq i32 %3, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i32 [ %i.f, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %.0610.prol = phi i32 [ %i.e, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.079.prol = phi i32 [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = trunc i32 %.0610.prol to i8
  %i.b = zext i32 %.079.prol to i64
  %i.c = load ptr, ptr %0, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  store i8 %i.a, ptr %i.d, align 1, !tbaa !95
  %i.e = ashr i32 %.0610.prol, 8                  ; 2 uses
  %i.f = add nsw i32 %.011.prol, -1               ; 2 uses
  %i.g = add i32 %.079.prol, 1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !487

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i32 [ %3, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.0610.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.079.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %i.h = icmp ult i32 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i32 [ %i.af, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ]
  %.0610 = phi i32 [ %i.ae, %.lr.ph ], [ %.0610.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.079 = phi i32 [ %i.ag, %.lr.ph ], [ %.079.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.i = trunc i32 %.0610 to i8
  %i.j = zext i32 %.079 to i64
  %i.k = load ptr, ptr %0, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 %i.i, ptr %i.l, align 1, !tbaa !95
  %i.m = lshr i32 %.0610, 8
  %i.n = add i32 %.079, 1
  %i.o = trunc i32 %i.m to i8
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %0, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.o, ptr %i.r, align 1, !tbaa !95
  %i.s = lshr i32 %.0610, 16
  %i.t = add i32 %.079, 2
  %i.u = trunc i32 %i.s to i8
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 %i.u, ptr %i.x, align 1, !tbaa !95
  %i.y = lshr i32 %.0610, 24
  %i.z = add i32 %.079, 3
  %i.aa = trunc nuw i32 %i.y to i8
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !95
  %i.ae = ashr i32 %.0610, 31
  %i.af = add nsw i32 %.011, -4                   ; 2 uses
  %i.ag = add i32 %.079, 4
  %.not.3 = icmp eq i32 %i.af, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !488

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator21updateJumpTableOffsetEjjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %4 = sub i64 %i.d, %i.e
  %5 = shl i32 %2, 2
  %6 = trunc i64 %4 to i32
  %7 = sub i32 %5, %3
  %8 = add i32 %7, %6                             ; 4 uses
  %i.f = trunc i32 %8 to i8
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !95
  %i.i = lshr i32 %8, 8
  %i.j = add i32 %1, 1
  %i.k = trunc i32 %i.i to i8
  %i.l = zext i32 %i.j to i64
  %i.m = load ptr, ptr %0, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 %i.k, ptr %i.n, align 1, !tbaa !95
  %i.o = lshr i32 %8, 16
  %i.p = add i32 %1, 2
  %i.q = trunc i32 %i.o to i8
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 %i.q, ptr %i.t, align 1, !tbaa !95
  %i.u = lshr i32 %8, 24
  %i.v = add i32 %1, 3
  %i.w = trunc nuw i32 %i.u to i8
  %i.x = zext i32 %i.v to i64
  %i.y = load ptr, ptr %0, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.w, ptr %i.z, align 1, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !289
  %i.b = load ptr, ptr %0, align 8, !tbaa !290    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !291  ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.k, %i.j              ; 2 uses
  %i.l = zext nneg i32 %.02744.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !289  ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !79

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02744.i.i.i, %bb.b ]
  %.046.i.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.c, !prof !83

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.046.i.i.i, 1
  %i.s = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.s, %i.k                ; 2 uses
  %i.t = zext i32 %.027.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !289  ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !84, !llvm.loop !489

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.y, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %.not = icmp eq ptr %.sink.i.i.ph.pn.i, %i.aa
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !491
  br label %bb.g

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !292 ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !293 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !294
  %.not.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 8) #20
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !293
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit: ; preds = %bb.e, %bb.f
  %i.an = phi i32 [ %.pre.i, %bb.f ], [ %i.aj, %bb.e ]
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !295
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i64, ptr %i.a, align 8
  store i64 %i.ar, ptr %i.aq, align 1
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !293
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !293
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit, %bb.d
  %.0 = phi i32 [ %i.ac, %bb.d ], [ %i.ae, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes8FunctionELb1EE9push_backERKS3_.exit ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %3 = alloca %"struct.std::pair.355", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !494
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.355") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !494
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !495, !range !93, !noalias !494, !noundef !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !494
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !296  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !496
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %i.i, ptr %i.f, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !296
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !297  ; 4 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %i.x, ptr %i.w, align 8, !tbaa !223
  %i.y = icmp sgt i64 %i.n, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.k, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN6hermes9ScopeDescESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !496
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #21
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.v, ptr %i.d, align 8, !tbaa !297
  store ptr %i.z, ptr %i.e, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !496
  br label %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes9ScopeDescESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !223
  %i.b = load ptr, ptr %0, align 8, !tbaa !298    ; 4 uses
end_hunk_0
