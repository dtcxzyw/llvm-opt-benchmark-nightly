inline.NumInlined: 2660
inline.NumDeleted: 1336
begin_hunk_0_@_ZN6hermes3hbc25BytecodeFunctionGenerator24generateBytecodeFunctionENS_8Function14DefinitionKindENS_9ValueKindEbjjj:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.i = load i8, ptr %i.h, align 1, !tbaa !188
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.k = load i8, ptr %i.j, align 2, !tbaa !189
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.l = icmp ult i32 %switch.tableidx, 3
  br i1 %i.l, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i8 %3, -3
  %i.n = icmp eq i8 %i.m, -127
  %i.o = select i1 %i.n, i8 1, i8 2
  br label %bb.e

switch.lookup:                                    ; preds = %bb.c
  %switch.cast = trunc nuw i32 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65792, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  %.sroa.12.0 = phi i8 [ %i.o, %bb.d ], [ %switch.masked, %switch.lookup ]
  %i.p = select i1 %4, i8 4, i8 0
  %i.q = or disjoint i8 %.sroa.12.0, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !156  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.u = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23, !noalias !190 ; 19 uses
  %i.v = load <2 x ptr>, ptr %1, align 8, !tbaa !44, !noalias !190
  store <2 x ptr> %i.v, ptr %i.u, align 8, !tbaa !44, !noalias !190
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !152, !noalias !190
  store ptr %i.y, ptr %i.w, align 8, !tbaa !152, !noalias !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !190
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 0, ptr %i.z, align 8, !tbaa !3, !noalias !190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %5, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 %7, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %i.g, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !3, !noalias !190
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 %6, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !3, !noalias !190
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !193, !noalias !190
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 53
  store i8 %i.k, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !193, !noalias !190
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i32 -1, ptr %i.aa, align 8, !tbaa !194, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  store i32 -1, ptr %i.ab, align 4, !tbaa !196, !noalias !190
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i32 -1, ptr %i.ac, align 8, !tbaa !197, !noalias !190
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !156, !noalias !190
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.af = load <2 x ptr>, ptr %i.s, align 8, !tbaa !198
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !154
  %.not = icmp eq ptr %i.ag, %i.t
  %i.ah = select i1 %.not, i8 0, i8 8
  %i.ai = or disjoint i8 %i.q, %i.ah
  store i8 %i.ai, ptr %.sroa.12.0..sroa_idx, align 2, !tbaa !193, !noalias !190
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !198, !noalias !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !190
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store ptr null, ptr %i.aj, align 8, !tbaa !199, !noalias !190
  store ptr %i.u, ptr %0, align 8, !tbaa !202, !alias.scope !190
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator26bytecodeGenerationCompleteEv(ptr noundef nonnull align 8 dereferenceable(200) initializes((164, 169)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.b, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !153    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.i, ptr %i.j, align 4, !tbaa !186
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !183  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.h, 3
  %i.q = and i64 %i.p, 4294967292                 ; 5 uses
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, %i.q
  %i.v = and i64 %i.u, 4294967292                 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.g                       ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 6 uses
  %i.ac = icmp sgt i64 %i.h, 0
  br i1 %i.ac, label %bb.c, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.z) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.d, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.ab, ptr %0, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8, !tbaa !204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !152
  %.pre9 = ptrtoint ptr %i.ab to i64
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.b, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %.pre-phi10 = phi i64 [ %i.g, %bb.b ], [ %.pre9, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 3 uses
  %i.af = phi ptr [ %i.e, %bb.b ], [ %i.ab, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  %i.ag = phi ptr [ %i.d, %bb.b ], [ %i.ad, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !193
  %i.ah = icmp ugt i64 %i.q, %i.h
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.ai = sub nuw nsw i64 %i.q, %i.h
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ag, i64 noundef %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !44
  %.pre7 = load ptr, ptr %0, align 8, !tbaa !44   ; 2 uses
  %.pre13 = ptrtoint ptr %.pre7 to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.aj = icmp ult i64 %i.q, %i.h
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.q ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, %i.ak
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !204
  br label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit:            ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre-phi14 = phi i64 [ %.pre13, %bb.e ], [ %.pre-phi10, %bb.f ], [ %.pre-phi10, %bb.g ], [ %.pre-phi10, %bb.h ]
  %i.al = phi ptr [ %.pre7, %bb.e ], [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.af, %bb.h ]
  %i.am = phi ptr [ %.pre, %bb.e ], [ %i.ag, %bb.f ], [ %i.ag, %bb.g ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !181 ; 2 uses
  %i.ao = and i64 %i.t, 4294967292
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.aq, %.pre-phi14
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.ar
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.as, ptr noundef %i.an, ptr noundef %i.ap)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator13getFunctionIDEPNS_8FunctionE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !nonnull !40, !align !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 956 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !248, !range !185, !noundef !40
  %2 = zext i1 %i.e to i8
  %3 = or i8 %i.g, %2
  store i8 %3, ptr %i.f, align 4, !tbaa !248
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !326
  %i.j = icmp eq i8 %i.i, -125
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 957 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !327, !range !185, !noundef !40
  %4 = zext i1 %i.j to i8
  %5 = or i8 %i.l, %4
  store i8 %5, ptr %i.k, align 1, !tbaa !327
  %i.m = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(964) %i.b, ptr noundef %1)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator11addFunctionEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp ne i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !248, !range !185, !noundef !40
  %2 = zext i1 %i.c to i8
  %3 = or i8 %i.e, %2
  store i8 %3, ptr %i.d, align 4, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !326
  %i.h = icmp eq i8 %i.g, -125
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 957 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !327, !range !185, !noundef !40
  %4 = zext i1 %i.h to i8
  %5 = or i8 %i.j, %4
  store i8 %5, ptr %i.i, align 1, !tbaa !327
  %i.k = tail call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_8FunctionEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1)
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc25BytecodeFunctionGenerator14getScopeDescIDEPNS_9ScopeDescE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7, !nonnull !40, !align !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !328
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329  ; 2 uses
  %.not2.i = icmp eq ptr %i.e, null
  br i1 %.not2.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.e) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !337
  %.not1.i = icmp eq i32 %i.h, 2
  br i1 %.not1.i, label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !328
  br label %_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit

_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.j = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !328
  %i.m = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes3hbc23BytecodeModuleGenerator12addScopeDescEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(964) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !328
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !329  ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %i.c) #20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !337
  %.not1 = icmp eq i32 %i.f, 2
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !328
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = call noundef zeroext i1 @_ZN4llvh9SetVectorIPN6hermes9ScopeDescESt6vectorIS3_SaIS3_EENS_8DenseSetIS3_NS_12DenseMapInfoIS3_EEEEE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !328
  %i.k = call noundef i32 @_ZN6hermes3hbc15AllocationTableIPNS_9ScopeDescEE8allocateES3_(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef %i.j)
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj(ptr noundef nonnull align 8 captures(none) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.not11.i.i = icmp eq ptr %i.d, %i.g
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.h, %i.e                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d, !prof !166

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr nonnull align 1 %i.d, i64 %i.i, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i8, ptr %i.d, align 1, !tbaa !193
  store i8 %i.l, ptr %i.c, align 1, !tbaa !193
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.e
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.p, ptr %i.f, align 8, !tbaa !204
  br label %_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit

_ZNSt6vectorIhSaIhEE5eraseEN9__gnu_cxx17__normal_iteratorIPKhS1_EES6_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit.i.i, %bb.f
  %i.q = add i32 %1, -1
  %i.r = zext i32 %i.q to i64
  %i.s = load ptr, ptr %0, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !193
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr i8, ptr @switch.table._ZN6hermes3hbc25BytecodeFunctionGenerator10shrinkJumpEj, i64 %i.v
  %switch.gep = getelementptr i8, ptr %i.w, i64 113
  %switch.load = load i8, ptr %switch.gep, align 1
  store i8 %switch.load, ptr %i.t, align 1, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes3hbc25BytecodeFunctionGenerator16updateJumpTargetEjii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
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
  %i.c = load ptr, ptr %0, align 8, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  store i8 %i.a, ptr %i.d, align 1, !tbaa !193
  %i.e = ashr i32 %.0610.prol, 8                  ; 2 uses
  %i.f = add nsw i32 %.011.prol, -1               ; 2 uses
  %i.g = add i32 %.079.prol, 1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !393

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
  %i.k = load ptr, ptr %0, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 %i.i, ptr %i.l, align 1, !tbaa !193
  %i.m = lshr i32 %.0610, 8
  %i.n = add i32 %.079, 1
  %i.o = trunc i32 %i.m to i8
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %0, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.o, ptr %i.r, align 1, !tbaa !193
  %i.s = lshr i32 %.0610, 16
  %i.t = add i32 %.079, 2
  %i.u = trunc i32 %i.s to i8
  %i.v = zext i32 %i.t to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 %i.u, ptr %i.x, align 1, !tbaa !193
  %i.y = lshr i32 %.0610, 24
  %i.z = add i32 %.079, 3
  %i.aa = trunc nuw i32 %i.y to i8
  %i.ab = zext i32 %i.z to i64
  %i.ac = load ptr, ptr %0, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !193
  %i.ae = ashr i32 %.0610, 31
end_hunk_0
