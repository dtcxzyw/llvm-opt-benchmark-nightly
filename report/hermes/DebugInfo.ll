inline.NumInlined: 835
inline.NumDeleted: 375
begin_hunk_0_@_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_:bb.a
_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25: ; preds = %.lr.ph.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i24
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i23, i64 32 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.dj, %i.dd
  br i1 %.not.i.i26, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20, label %.lr.ph.i.i22, !llvm.loop !231

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit20: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i17, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i25, %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes3hbc15DebugFileRegionEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #14
  %.pre = load ptr, ptr %1, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  store ptr %i.i, ptr %0, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !3
  store <2 x i32> %i.l, ptr %i.f, align 8, !tbaa !3
  store ptr %i.c, ptr %1, align 8, !tbaa !64
  store i32 0, ptr %i.k, align 4, !tbaa !103
  store i32 0, ptr %i.j, align 8, !tbaa !63
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  switch i32 %i.n, label %bb.h [
    i32 0, label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit
    i32 1, label %bb.i
  ], !prof !232

bb.h:                                             ; preds = %bb.g
  %.idx = mul nuw nsw i64 %i.o, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.s, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !233
  br label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit

_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit: ; preds = %bb.g, %bb.i, %bb.h
  store i32 %i.n, ptr %i.p, align 8, !tbaa !63
  store i32 0, ptr %i.m, align 8, !tbaa !63
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !103
  %i.v = icmp ult i32 %i.u, %i.n
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.o, i64 noundef 12) #14
  br label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37

bb.l:                                             ; preds = %bb.j
  %.not35 = icmp eq i32 %i.q, 0
  br i1 %.not35, label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not40 = icmp eq i32 %i.q, 1
  br i1 %.not40, label %bb.o, label %bb.n, !prof !234

bb.n:                                             ; preds = %bb.m
  %.idx39 = mul nuw nsw i64 %i.r, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.b, i64 %.idx39, i1 false)
  br label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.x, ptr noundef nonnull align 1 dereferenceable(12) %i.b, i64 12, i1 false), !tbaa.struct !233
  br label %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37

_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.029 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.r, %bb.n ], [ 1, %bb.o ] ; 4 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !63
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.029, %i.z
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37
  %i.aa = load ptr, ptr %1, align 8, !tbaa !64
  %.idx42 = mul nuw nsw i64 %.029, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx42
  %i.ac = load ptr, ptr %0, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %.029
  %.idx4143 = sub nsw i64 %i.z, %.029
  %gepdiff = mul nsw i64 %.idx4143, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ab, i64 %gepdiff, i1 false)
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit: ; preds = %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit37, %bb.p
  store i32 %i.n, ptr %i.p, align 8, !tbaa !63
  store i32 0, ptr %i.m, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %_ZSt4moveIPN6hermes3hbc15DebugFileRegionES3_ET0_T_S5_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit, %bb.a, %bb.e
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.c, -1                         ; 2 uses
  %.02944.i = and i32 %i.j, %i.k                  ; 2 uses
  %i.l = zext nneg i32 %.02944.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = icmp eq ptr %i.e, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !35

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.p = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %i.y, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %.02947.i = phi i32 [ %.029.i, %bb.d ], [ %.02944.i, %bb.b ]
  %.02746.i = phi i32 [ %i.v, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.r = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %bb.c, label %bb.d, !prof !36

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03245.i, null
  %i.s = select i1 %.not.i, ptr %i.q, ptr %.03245.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.t = icmp eq ptr %i.p, inttoptr (i64 -16 to ptr)
  %i.u = icmp eq ptr %.03245.i, null
  %or.cond.not.i = select i1 %i.t, i1 %i.u, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.q, ptr %.03245.i
  %i.v = add i32 %.02746.i, 1
  %i.w = add i32 %.02746.i, %.02947.i
  %.029.i = and i32 %i.w, %i.k                    ; 2 uses
  %i.x = zext i32 %.029.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = icmp eq ptr %i.e, %i.z
  br i1 %i.aa, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !37, !llvm.loop !38

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.s, %bb.c ], [ null, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !40
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !34
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #18 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !32
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !42
  %i.w = load i32, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.07.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !235

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.07.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.07.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !237

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !42
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !34  ; 4 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !238

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ay, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.az, align 8, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ba, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bb, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bc, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bd, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.be, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !237

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not19.i = icmp eq i32 %i.b, 0
  br i1 %.not19.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  %2 = icmp ne i32 %i.aq, 0
  %3 = add i32 %i.aq, -1                          ; 2 uses
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %bb.f
  %i.bg = phi i32 [ %i.cg, %bb.f ], [ 0, %.lr.ph.i6.preheader ] ; 3 uses
  %.020.i = phi ptr [ %i.ch, %bb.f ], [ %i.c, %.lr.ph.i6.preheader ] ; 3 uses
  %i.bh = load ptr, ptr %.020.i, align 8, !tbaa !13 ; 4 uses
  %magicptr.i = ptrtoint ptr %i.bh to i64         ; 2 uses
  switch i64 %magicptr.i, label %bb.c [
    i64 -8, label %bb.f
    i64 -16, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %2)
  %i.bi = trunc i64 %magicptr.i to i32            ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = lshr i32 %i.bi, 9
  %i.bl = xor i32 %i.bj, %i.bk
  %.02944.i.i.i = and i32 %i.bl, %3               ; 2 uses
  %i.bm = zext nneg i32 %.02944.i.i.i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bm ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13 ; 2 uses
  %i.bp = icmp eq ptr %i.bh, %i.bo
  br i1 %i.bp, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !35

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bq = phi ptr [ %i.ca, %bb.e ], [ %i.bo, %bb.c ] ; 2 uses
  %i.br = phi ptr [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.e ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.03245.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bs = icmp eq ptr %i.bq, inttoptr (i64 -8 to ptr)
  br i1 %i.bs, label %bb.d, label %bb.e, !prof !36

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03245.i.i.i, null
  %i.bt = select i1 %.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bu = icmp eq ptr %i.bq, inttoptr (i64 -16 to ptr)
  %i.bv = icmp eq ptr %.03245.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.br, ptr %.03245.i.i.i
  %i.bw = add i32 %.02746.i.i.i, 1
  %i.bx = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.bx, %3                 ; 2 uses
  %i.by = zext i32 %.029.i.i.i to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.by ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cb = icmp eq ptr %i.bh, %i.ca
  br i1 %i.cb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !37, !llvm.loop !38

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bt, %bb.d ], [ %i.bn, %bb.c ], [ %i.bz, %bb.e ] ; 2 uses
  store ptr %i.bh, ptr %.sink.i.i.i, align 8, !tbaa !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !3
  %i.cf = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.ao, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, %.lr.ph.i6, %.lr.ph.i6
  %i.cg = phi i32 [ %i.cf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ], [ %i.bg, %.lr.ph.i6 ], [ %i.bg, %.lr.ph.i6 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ch, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !239

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #14
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !117
  store i8 %i.s, ptr %i.g, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !16
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !117
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check160, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

iter.check160:                                    ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %min.iters.check142 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.k, %i.b
  %diff.check141 = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check142, %diff.check141
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %iter.check160
  %min.iters.check144 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check144, label %vec.epilog.ph164, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %n.mod.vf146 = and i64 %i.c, 28
  %n.vec147 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.ae = and i64 %i.c, 31
  %i.af = getelementptr i8, ptr %1, i64 %n.vec147
  %i.ag = getelementptr i8, ptr %2, i64 %n.vec147
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph145
  %index149 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body148 ] ; 3 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index149 ; 2 uses
  %next.gep151 = getelementptr i8, ptr %2, i64 %index149 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load152 = load <16 x i8>, ptr %next.gep151, align 1, !tbaa !117
  %wide.load153 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !117
  %i.ai = getelementptr i8, ptr %next.gep150, i64 16
  store <16 x i8> %wide.load152, ptr %next.gep150, align 1, !tbaa !117
  store <16 x i8> %wide.load153, ptr %i.ai, align 1, !tbaa !117
  %index.next154 = add nuw i64 %index149, 32      ; 2 uses
  %i.aj = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.aj, label %middle.block155, label %vector.body148, !llvm.loop !240

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %i.c, %n.vec147
  br i1 %cmp.n156, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block155
  %min.epilog.iters.check163 = icmp eq i64 %n.mod.vf146, 0
  br i1 %min.epilog.iters.check163, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph164, !prof !243

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check162
  %vec.epilog.resume.val157 = phi i64 [ %n.vec147, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec166 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.ak = and i64 %i.c, 3
  %i.al = getelementptr i8, ptr %1, i64 %n.vec166
  %i.am = getelementptr i8, ptr %2, i64 %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph164
  %index168 = phi i64 [ %vec.epilog.resume.val157, %vec.epilog.ph164 ], [ %index.next172, %vec.epilog.vector.body167 ] ; 3 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %index168
  %next.gep170 = getelementptr i8, ptr %2, i64 %index168
  %wide.load171 = load <4 x i8>, ptr %next.gep170, align 1, !tbaa !117
  store <4 x i8> %wide.load171, ptr %next.gep169, align 1, !tbaa !117
  %index.next172 = add nuw i64 %index168, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next172, %n.vec166
  br i1 %i.an, label %vec.epilog.middle.block173, label %vec.epilog.vector.body167, !llvm.loop !244

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body167
  %cmp.n174 = icmp eq i64 %i.c, %n.vec166
  br i1 %cmp.n174, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block173
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check160 ], [ %i.ae, %vec.epilog.iter.check162 ], [ %i.ak, %vec.epilog.middle.block173 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check160 ], [ %i.af, %vec.epilog.iter.check162 ], [ %i.al, %vec.epilog.middle.block173 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check160 ], [ %i.ag, %vec.epilog.iter.check162 ], [ %i.am, %vec.epilog.middle.block173 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !117
  store i8 %i.ao, ptr %.0811.i.i.i.i.i, align 1, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.ar = add nsw i64 %.012.i.i.i.i.i, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, !llvm.loop !245

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.at = icmp eq i64 %i.l, 1
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.l ; 6 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av                     ; 11 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.aw, 4
  %i.ay = sub i64 %i.k, %i.b
  %diff.check = icmp ult i64 %i.ay, 32
  %or.cond178 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond178, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.aw, %n.vec92
  br i1 %cmp.n98, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aw, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.au, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bj = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !117
  store i8 %i.bj, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !117
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bm = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !248

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !16
  br label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.bo = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bp = sub nuw i64 %i.c, %i.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 3 uses
  store ptr %i.bq, ptr %i.f, align 8, !tbaa !16
  %i.br = icmp sgt i64 %i.l, 1
  br i1 %i.br, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.at, label %bb.m, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.m:                                             ; preds = %bb.l
  %i.bs = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.k, %bb.l, %bb.m
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.l
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !16
  %i.bv = icmp sgt i64 %i.l, 0
  br i1 %i.bv, label %iter.check122, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

iter.check122:                                    ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %min.iters.check104 = icmp ult i64 %i.l, 4
  %i.bw = sub i64 %i.k, %i.b
  %diff.check103 = icmp ult i64 %i.bw, 32
  %or.cond179 = or i1 %min.iters.check104, %diff.check103
  br i1 %or.cond179, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.main.loop.iter.check105

vector.main.loop.iter.check105:                   ; preds = %iter.check122
  %min.iters.check106 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check106, label %vec.epilog.ph126, label %vector.ph107

vector.ph107:                                     ; preds = %vector.main.loop.iter.check105
  %n.mod.vf108 = and i64 %i.l, 28
  %n.vec109 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.bx = and i64 %i.l, 31
  %i.by = getelementptr i8, ptr %1, i64 %n.vec109
  %i.bz = getelementptr i8, ptr %2, i64 %n.vec109
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next116, %vector.body110 ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %1, i64 %index111 ; 2 uses
  %next.gep113 = getelementptr i8, ptr %2, i64 %index111 ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load114 = load <16 x i8>, ptr %next.gep113, align 1, !tbaa !117
  %wide.load115 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !117
  %i.cb = getelementptr i8, ptr %next.gep112, i64 16
  store <16 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !117
  store <16 x i8> %wide.load115, ptr %i.cb, align 1, !tbaa !117
  %index.next116 = add nuw i64 %index111, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.cc, label %middle.block117, label %vector.body110, !llvm.loop !249

middle.block117:                                  ; preds = %vector.body110
  %cmp.n118 = icmp eq i64 %i.l, %n.vec109
  br i1 %cmp.n118, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check124

vec.epilog.iter.check124:                         ; preds = %middle.block117
  %min.epilog.iters.check125 = icmp eq i64 %n.mod.vf108, 0
  br i1 %min.epilog.iters.check125, label %.lr.ph.i.i.i.i.i49.preheader, label %vec.epilog.ph126, !prof !243

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check105, %vec.epilog.iter.check124
  %vec.epilog.resume.val119 = phi i64 [ %n.vec109, %vec.epilog.iter.check124 ], [ 0, %vector.main.loop.iter.check105 ]
  %n.vec128 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cd = and i64 %i.l, 3
  %i.ce = getelementptr i8, ptr %1, i64 %n.vec128
  %i.cf = getelementptr i8, ptr %2, i64 %n.vec128
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph126
  %index130 = phi i64 [ %vec.epilog.resume.val119, %vec.epilog.ph126 ], [ %index.next134, %vec.epilog.vector.body129 ] ; 3 uses
  %next.gep131 = getelementptr i8, ptr %1, i64 %index130
  %next.gep132 = getelementptr i8, ptr %2, i64 %index130
  %wide.load133 = load <4 x i8>, ptr %next.gep132, align 1, !tbaa !117
  store <4 x i8> %wide.load133, ptr %next.gep131, align 1, !tbaa !117
  %index.next134 = add nuw i64 %index130, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.cg, label %vec.epilog.middle.block135, label %vec.epilog.vector.body129, !llvm.loop !250

vec.epilog.middle.block135:                       ; preds = %vec.epilog.vector.body129
  %cmp.n136 = icmp eq i64 %i.l, %n.vec128
  br i1 %cmp.n136, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %iter.check122, %vec.epilog.iter.check124, %vec.epilog.middle.block135
  %.012.i.i.i.i.i50.ph = phi i64 [ %i.l, %iter.check122 ], [ %i.bx, %vec.epilog.iter.check124 ], [ %i.cd, %vec.epilog.middle.block135 ]
  %.0811.i.i.i.i.i51.ph = phi ptr [ %1, %iter.check122 ], [ %i.by, %vec.epilog.iter.check124 ], [ %i.ce, %vec.epilog.middle.block135 ]
  %.0910.i.i.i.i.i52.ph = phi ptr [ %2, %iter.check122 ], [ %i.bz, %vec.epilog.iter.check124 ], [ %i.cf, %vec.epilog.middle.block135 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i49 ], [ %.012.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %.0811.i.i.i.i.i51 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i49 ], [ %.0811.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %.0910.i.i.i.i.i52 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i49 ], [ %.0910.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %i.ch = load i8, ptr %.0910.i.i.i.i.i52, align 1, !tbaa !117
  store i8 %i.ch, ptr %.0811.i.i.i.i.i51, align 1, !tbaa !117
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i52, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i51, i64 1
  %i.ck = add nsw i64 %.012.i.i.i.i.i50, -1
  %i.cl = icmp samesign ugt i64 %.012.i.i.i.i.i50, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i49, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, !llvm.loop !251

bb.n:                                             ; preds = %bb.b
  %i.cm = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 4 uses
  %i.co = sub i64 %i.i, %i.cn                     ; 4 uses
  %i.cp = sub i64 9223372036854775807, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.c
  br i1 %i.cq, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.c)
  %i.cr = add i64 %.sroa.speculated.i, %i.co      ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.co
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775807)
  %i.cu = select i1 %i.cs, i64 9223372036854775807, i64 %i.ct ; 3 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #16
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cw = phi ptr [ %i.cv, %bb.p ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.cx = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.cy = sub i64 %i.cx, %i.cn                    ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !36

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cm, i64 %i.cy, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.da = icmp eq i64 %i.cy, 1
  br i1 %i.da, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cm, align 1, !tbaa !117
  store i8 %i.db, ptr %i.cw, align 1, !tbaa !117
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.cy  ; 2 uses
  %i.dd = icmp sgt i64 %i.c, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i.i.i55.preheader, label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit59

.lr.ph.i.i.i.i.i.i.i.i55.preheader:               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !117
  %i.de = add i64 %i.a, %i.cx
  %i.df = add i64 %i.b, %i.cn
  %i.dg = sub i64 %i.de, %i.df
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.dg
  br label %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit59

_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit59: ; preds = %.lr.ph.i.i.i.i.i.i.i.i55.preheader, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %.08.lcssa.i.i.i.i.i.i.i.i54 = phi ptr [ %i.dc, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i55.preheader ] ; 3 uses
  %i.dh = sub i64 %i.i, %i.cx                     ; 4 uses
  %i.di = icmp sgt i64 %i.dh, 1
  br i1 %i.di, label %bb.t, label %bb.u, !prof !36

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i54, ptr align 1 %1, i64 %i.dh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPhhET0_T_S4_S3_RSaIT1_E.exit59
  %i.dj = icmp eq i64 %i.dh, 1
  br i1 %i.dj, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60

bb.v:                                             ; preds = %bb.u
  %i.dk = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.dk, ptr %.08.lcssa.i.i.i.i.i.i.i.i54, align 1, !tbaa !117
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60: ; preds = %bb.t, %bb.u, %bb.v
  %i.dl = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i54, i64 %i.dh
  %.not.i61 = icmp eq ptr %i.cm, null
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60
  %i.dm = sub i64 %i.h, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dm) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit60, %bb.w
  store ptr %i.cw, ptr %0, align 8, !tbaa !19
  store ptr %i.dl, ptr %i.f, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cu
  store ptr %i.dn, ptr %i.d, align 8, !tbaa !219
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i49, %.lr.ph.i.i.i.i.i, %middle.block117, %vec.epilog.middle.block135, %middle.block155, %vec.epilog.middle.block173, %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47, %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not60 = icmp eq ptr %2, %3
  br i1 %.not60, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !219
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not = icmp ult i64 %i.j, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !117
  store i8 %i.s, ptr %i.g, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !16
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !117
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !36

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !117
  store i8 %i.ad, ptr %1, align 1, !tbaa !117
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !117
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !16
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !36

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !16
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !36

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !117
  store i8 %i.au, ptr %1, align 1, !tbaa !117
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #16
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !36

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !117
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !117
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !36

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !117
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !117
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !36

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !117
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i47 = icmp eq ptr %i.av, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !19
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !219
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6hermes3hbc20DebugScopeDescriptor5FlagsE", !9, i64 0, !9, i64 1}
!9 = !{!"bool", !5, i64 0}
!10 = !{!8, !9, i64 1}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN6hermes12UniqueStringE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!17, !18, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!23, !9, i64 16}
!23 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIPN6hermes12UniqueStringEjNS0_12DenseMapInfoIS4_EENS0_6detail12DenseMapPairIS4_jEELb0EEEbE", !24, i64 0, !9, i64 16}
!24 = !{!"_ZTSN4llvh16DenseMapIteratorIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEELb0EEE", !25, i64 0, !25, i64 8}
!25 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes12UniqueStringEjEE", !15, i64 0}
!26 = !{!27, !21, i64 8}
!27 = !{!"_ZTSN4llvh9StringRefE", !18, i64 0, !21, i64 8}
!28 = !{!18, !18, i64 0}
!29 = !{!27, !18, i64 0}
!30 = !{!31, !4, i64 8}
!31 = !{!"_ZTSSt4pairIPN6hermes12UniqueStringEjE", !14, i64 0, !4, i64 8}
!32 = !{!33, !25, i64 0}
!33 = !{!"_ZTSN4llvh8DenseMapIPN6hermes12UniqueStringEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEE", !25, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!34 = !{!33, !4, i64 16}
!35 = !{!"branch_weights", i32 1999, i32 1}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!"branch_weights", i32 1, i32 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!25, !25, i64 0}
!41 = !{!33, !4, i64 8}
!42 = !{!33, !4, i64 12}
!43 = !{!44, !4, i64 88}
!44 = !{!"_ZTSN6hermes3hbc9DebugInfoE", !45, i64 0, !50, i64 24, !53, i64 48, !4, i64 80, !4, i64 84, !4, i64 88, !59, i64 96}
!45 = !{!"_ZTSSt6vectorIN6hermes16StringTableEntryESaIS1_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !15, i64 0}
!50 = !{!"_ZTSSt6vectorIhSaIhEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !17, i64 0}
!53 = !{!"_ZTSN4llvh11SmallVectorIN6hermes3hbc15DebugFileRegionELj1EEE", !54, i64 0, !58, i64 16}
!54 = !{!"_ZTSN4llvh15SmallVectorImplIN6hermes3hbc15DebugFileRegionEEE", !55, i64 0}
!55 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIN6hermes3hbc15DebugFileRegionELb1EEE", !56, i64 0}
!56 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIN6hermes3hbc15DebugFileRegionEvEE", !57, i64 0}
!57 = !{!"_ZTSN4llvh15SmallVectorBaseE", !15, i64 0, !4, i64 8, !4, i64 12}
!58 = !{!"_ZTSN4llvh18SmallVectorStorageIN6hermes3hbc15DebugFileRegionELj1EEE", !5, i64 0}
!59 = !{!"_ZTSN6hermes3hbc12StreamVectorIhEE", !50, i64 0, !60, i64 24}
!60 = !{!"_ZTSN4llvh8ArrayRefIhEE", !18, i64 0, !21, i64 8}
!61 = !{!60, !21, i64 8}
!62 = !{!60, !18, i64 0}
!63 = !{!57, !4, i64 8}
!64 = !{!57, !15, i64 0}
!65 = !{!66, !4, i64 0}
!66 = !{!"_ZTSN6hermes3hbc15DebugFileRegionE", !4, i64 0, !4, i64 4, !4, i64 8}
!67 = distinct !{!67, !39, !68}
!68 = !{!"llvm.loop.peeled.count", i32 1}
!69 = !{!70, !4, i64 28}
!70 = !{!"_ZTSN6hermes3hbc19DebugSourceLocationE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!71 = !{!72, !4, i64 20}
!72 = !{!"_ZTSN12_GLOBAL__N_129FunctionDebugInfoDeserializerE", !60, i64 0, !4, i64 16, !4, i64 20, !70, i64 24}
!73 = !{!72, !4, i64 36}
!74 = !{!72, !4, i64 16}
!75 = !{!72, !4, i64 40}
!76 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3}
!77 = !{!78, !9, i64 32}
!78 = !{!"_ZTSN6hermes8OptValueINS_3hbc19DebugSourceLocationEEE", !70, i64 0, !9, i64 32}
!79 = !{!72, !4, i64 24}
!80 = !{!72, !4, i64 44}
!81 = !{!72, !4, i64 48}
!82 = !{!72, !4, i64 52}
!83 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3, i64 24, i64 4, !3, i64 28, i64 4, !3}
!84 = !{!66, !4, i64 4}
!85 = distinct !{!85, !39}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv: argument 0:pre.rot"}
!88 = distinct !{!88, !"_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv: argument 0"}
!91 = !{!92, !9, i64 16}
!92 = !{!"_ZTSN6hermes8OptValueINS_3hbc17DebugSearchResultEEE", !93, i64 0, !9, i64 16}
!93 = !{!"_ZTSN6hermes3hbc17DebugSearchResultE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!94 = !{!95}
!95 = distinct !{!95, !88, !"_ZN12_GLOBAL__N_129FunctionDebugInfoDeserializer4nextEv: argument 0:h.rot"}
!96 = !{!44, !4, i64 84}
!97 = !{!98, !9, i64 16}
!98 = !{!"_ZTSN6hermes8OptValueIN4llvh9StringRefEEE", !27, i64 0, !9, i64 16}
!99 = !{!44, !4, i64 80}
!100 = !{!101, !4, i64 0}
!101 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !9, i64 4}
!102 = !{!101, !9, i64 4}
!103 = !{!57, !4, i64 12}
!104 = !{!9, !9, i64 0}
!105 = distinct !{!105, !39}
!106 = !{!107, !18, i64 16}
!107 = !{!"_ZTSN4llvh11raw_ostreamE", !18, i64 8, !18, i64 16, !18, i64 24, !108, i64 32}
!108 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!109 = !{!107, !18, i64 24}
!110 = !{!48, !49, i64 8}
!111 = !{!48, !49, i64 0}
!112 = !{!49, !49, i64 0}
!113 = !{!114, !18, i64 0}
!114 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !115, i64 0, !21, i64 8, !5, i64 16}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!116 = !{!114, !21, i64 8}
!117 = !{!5, !5, i64 0}
!118 = distinct !{!118, !39}
!119 = !{!115, !18, i64 0}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!122 = distinct !{!122, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!123 = !{!124, !21, i64 0}
!124 = !{!"_ZTSN4llvh15FormattedNumberE", !21, i64 0, !21, i64 8, !4, i64 16, !9, i64 20, !9, i64 21, !9, i64 22}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4llvh10format_hexEmjb: argument 0"}
!127 = distinct !{!127, !"_ZN4llvh10format_hexEmjb"}
!128 = !{!124, !21, i64 8}
end_hunk_1
