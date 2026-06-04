inline.NumInlined: 2363
inline.NumDeleted: 900
begin_hunk_0_@_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEEmS5_ET_S7_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEEmS5_ET_S7_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !80
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !93
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !80
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check41 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 4 uses
  %next.gep42 = getelementptr i8, ptr %i.c, i64 %i.ai ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.aj = getelementptr i8, ptr %next.gep42, i64 32 ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep42, i64 64 ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep42, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep42, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %wide.load43 = load <4 x ptr>, ptr %i.aj, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %wide.load44 = load <4 x ptr>, ptr %i.ak, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %wide.load45 = load <4 x ptr>, ptr %i.al, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !80, !alias.scope !529, !noalias !526
  store <4 x ptr> %wide.load43, ptr %i.am, align 8, !tbaa !80, !alias.scope !529, !noalias !526
  store <4 x ptr> %wide.load44, ptr %i.an, align 8, !tbaa !80, !alias.scope !529, !noalias !526
  store <4 x ptr> %wide.load45, ptr %i.ao, align 8, !tbaa !80, !alias.scope !529, !noalias !526
  store <4 x ptr> splat (ptr null), ptr %next.gep42, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  store <4 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  store <4 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  store <4 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !531

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !287

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec48, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.c, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.at = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.u, i64 %i.at
  %next.gep51 = getelementptr i8, ptr %i.c, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %wide.load52 = load <4 x ptr>, ptr %next.gep51, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  store <4 x ptr> %wide.load52, ptr %next.gep50, align 8, !tbaa !80, !alias.scope !529, !noalias !526
  store <4 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !80, !alias.scope !526, !noalias !521
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !532

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.aa, %n.vec48
  br i1 %cmp.n54, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.av = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !80, !alias.scope !524, !noalias !521
  store ptr %i.av, ptr %.012.i.i.i, align 8, !tbaa !80, !alias.scope !521, !noalias !524
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !80, !alias.scope !524, !noalias !521
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !533

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %i.ay = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #28
  br label %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit37

_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit37: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !96
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEEmS5_ET_S7_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE13_M_deallocateEPS5_m.exit37, %bb.a
  ret void
}

declare void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94), i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !87     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN8facebook5velox10BaseVectorEEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN8facebook5velox10BaseVectorEEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !106
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #30 ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -16
  %i.y = sub i64 %i.x, %i.e                       ; 2 uses
  %i.z = lshr i64 %i.y, 4
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 304
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = add i64 %i.d, -16
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = or disjoint i64 %i.ad, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae
  %scevgep40 = getelementptr i8, ptr %i.c, i64 %i.ae
  %scevgep41 = getelementptr i8, ptr %i.c, i64 8
  %i.af = add i64 %i.ad, 16                       ; 2 uses
  %scevgep42 = getelementptr i8, ptr %i.c, i64 %i.af
  %scevgep43 = getelementptr i8, ptr %i.u, i64 8
  %scevgep44 = getelementptr i8, ptr %i.u, i64 %i.af
  %bound0 = icmp ult ptr %i.u, %scevgep40
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound045 = icmp ult ptr %scevgep41, %scevgep44
  %bound146 = icmp ult ptr %scevgep43, %scevgep42
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 2305843009213693948     ; 3 uses
  %i.ag = shl i64 %n.vec, 4                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 4                       ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.u, i64 %i.aj
  %next.gep50 = getelementptr i8, ptr %i.c, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %wide.vec52 = load <8 x ptr>, ptr %next.gep50, align 8, !tbaa !108, !alias.scope !537, !noalias !534
  store <8 x ptr> %wide.vec52, ptr %next.gep49, align 8, !tbaa !108, !alias.scope !534, !noalias !537
  store <8 x ptr> splat (ptr null), ptr %next.gep50, align 8, !tbaa !108, !alias.scope !537, !noalias !534
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i.preheader57

.lr.ph.i.i.i.preheader57:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader57, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader57 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !108, !alias.scope !537, !noalias !534
  store ptr null, ptr %i.al, align 8, !tbaa !91, !alias.scope !537, !noalias !534
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !tbaa !108, !alias.scope !534, !noalias !537
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !537, !noalias !534
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !540

_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ap = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #28
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit37

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit37: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt10shared_ptrIN8facebook5velox10BaseVectorEEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE13_M_deallocateEPS4_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !541
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef 1) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #27 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !541
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.t = urem i64 %2, %i.s                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.r, align 8, !tbaa !33   ; 2 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !33
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, label %bb.i

_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41: ; preds = %bb.h
  %i.y = load ptr, ptr %1, align 8, !tbaa !32
  store ptr %i.y, ptr %3, align 8, !tbaa !32
  store ptr %3, ptr %1, align 8, !tbaa !32
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE9_M_rehashEmRS1_.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.t ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !38 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.loopexit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !33  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !33
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i

bb.k:                                             ; preds = %bb.l
  %i.ah = icmp eq i64 %i.ad, %i.ak
  br i1 %i.ah, label %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !39

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.020.i = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ai = load ptr, ptr %.020.i, align 8, !tbaa !32 ; 4 uses
  %.not18.i = icmp eq ptr %i.ai, null
  br i1 %.not18.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !33 ; 2 uses
  %i.al = urem i64 %i.ak, %i.s
  %.not19.i = icmp eq i64 %i.al, %i.t
  br i1 %.not19.i, label %bb.k, label %..loopexit_crit_edge21.i, !llvm.loop !39

..loopexit_crit_edge21.i:                         ; preds = %bb.l
  br label %.loopexit, !llvm.loop !39

_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.k, %bb.j
  %i.am = phi ptr [ %i.ac, %bb.j ], [ %i.ai, %bb.k ]
  %i.an = phi ptr [ %i.ab, %bb.j ], [ %.020.i, %bb.k ] ; 2 uses
  store ptr %i.am, ptr %3, align 8, !tbaa !32
  store ptr %3, ptr %i.an, align 8, !tbaa !32
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %bb.m, label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, !prof !542

bb.m:                                             ; preds = %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41, %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.ap = phi i64 [ %i.v, %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit.thread41 ], [ %i.ad, %_ZNKSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE19_M_find_before_nodeEmRS1_m.exit ]
  %i.aq = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %.not36 = icmp eq ptr %i.aq, null
  br i1 %.not36, label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !33 ; 2 uses
  %i.at = icmp eq i64 %i.ap, %i.as
  br i1 %i.at, label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = urem i64 %i.as, %i.s                    ; 2 uses
  %.not37 = icmp eq i64 %i.au, %i.t
  br i1 %.not37, label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !37
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  store ptr %3, ptr %i.aw, align 8, !tbaa !38
  br label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit:                                        ; preds = %.lr.ph.i, %..loopexit_crit_edge21.i
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !32
  store ptr %i.ax, ptr %3, align 8, !tbaa !32
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !38
  store ptr %3, ptr %i.ay, align 8, !tbaa !32
  br label %_ZNSt10_HashtableImSt4pairIKmjESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

.loopexit.thread:                                 ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !332
  store ptr %i.ba, ptr %3, align 8, !tbaa !32
  store ptr %3, ptr %i.az, align 8, !tbaa !332
  %i.bb = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %.not11.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !23
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !17
  store i64 %.0, ptr %i.h, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #28
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !17
  store i64 %.0, ptr %i.d, align 8, !tbaa !23
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !22
  store i8 0, ptr %i.c, align 1, !tbaa !23
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  store i8 %i.s, ptr %i.q, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8, !tbaa !22
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.8") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.106", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !594
  store i64 %2, ptr %4, align 16, !tbaa !23, !alias.scope !597, !noalias !594
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !23, !alias.scope !597, !noalias !594
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.3, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !594
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.3) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !194
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !81
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !76

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #29
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 2 uses
  %i.r = lshr i64 %1, 2                           ; 2 uses
  %i.s = lshr i64 %2, 2                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -4
  %i.x = and i64 %1, -4
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 9223372036854775776     ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !601

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <8 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !602

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.u, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !603

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !111
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !214
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !214
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox13FlatMapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox13FlatMapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox13FlatMapVectorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(217) %i.a) #27, !inline_history !604
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox13FlatMapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox13FlatMapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox13FlatMapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !605  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox13FlatMapVectorEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiRKS8_INS1_10BaseVectorEESt6vectorISK_SaISK_EESN_ISH_SaISH_EERKSt9nullopt_tRKbEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %11 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %12 = alloca %"class.std::vector", align 16     ; 7 uses
  %13 = alloca %"class.std::vector.11", align 16  ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !140
  %i.b = load ptr, ptr %3, align 8, !tbaa !80
  store ptr %i.b, ptr %10, align 8, !tbaa !80
  store ptr null, ptr %3, align 8, !tbaa !80
  %i.c = load i32, ptr %4, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = load <2 x ptr>, ptr %5, align 8, !tbaa !108
  store <2 x ptr> %i.g, ptr %11, align 16, !tbaa !108
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = load <2 x ptr>, ptr %6, align 8, !tbaa !265
  store <2 x ptr> %i.n, ptr %12, align 16, !tbaa !265
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107
  store ptr %i.q, ptr %i.o, align 16, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.r = load <2 x ptr>, ptr %7, align 8, !tbaa !273
  store <2 x ptr> %i.r, ptr %13, align 16, !tbaa !273
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !115
  store ptr %i.u, ptr %i.s, align 16, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.v = load i8, ptr %9, align 1, !tbaa !607, !range !194, !noundef !195
  %i.w = trunc nuw i8 %i.v to i1
  invoke void @_ZN8facebook5velox13FlatMapVectorC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiS5_INS0_10BaseVectorEESt6vectorISG_SaISG_EESH_ISE_SaISE_EESt8optionalIiEb(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %10, i32 noundef %i.c, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i64 0, i1 noundef zeroext %i.w)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.y = load ptr, ptr %13, align 16, !tbaa !96   ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !93   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v4i32
!401 = !{!402, !402, i64 0}
!402 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !5, i64 0}
!403 = distinct !{!403, !35}
!404 = !{!405, !4, i64 16}
!405 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !396, i64 0, !4, i64 16}
!406 = !{!407, !407, i64 0}
!407 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !10, i64 0}
!408 = !{!409, !409, i64 0}
!409 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !10, i64 0}
!410 = !{!411, !409, i64 8}
!411 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !407, i64 0, !409, i64 8, !10, i64 16}
!412 = !{i64 8}
!413 = !{!411, !10, i64 16}
!414 = !{i64 4}
!415 = !{!411, !407, i64 0}
!416 = distinct !{!416, !35}
!417 = !{!418, !20, i64 0}
!418 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !20, i64 0, !68, i64 8, !68, i64 16}
!419 = !{!68, !68, i64 0}
!420 = !{!421, !20, i64 0}
!421 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !20, i64 0, !21, i64 8, !21, i64 16, !10, i64 24}
!422 = !{!421, !21, i64 8}
!423 = !{!421, !21, i64 16}
!424 = !{!421, !10, i64 24}
!425 = !{!426, !21, i64 288}
!426 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !421, i64 0, !5, i64 32, !21, i64 288}
!427 = !{!394, !4, i64 8}
!428 = distinct !{!428, !35}
!429 = distinct !{!429, !35, !285, !286}
!430 = !{!"branch_weights", i32 8, i32 120}
!431 = distinct !{!431, !35, !285, !286}
!432 = distinct !{!432, !433}
!433 = !{!"llvm.loop.unroll.disable"}
!434 = distinct !{!434, !35, !285}
!435 = distinct !{!435, !35}
!436 = !{!437, !64, i64 0}
!437 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !64, i64 0, !396, i64 8, !20, i64 24, !21, i64 32}
!438 = !{!20, !20, i64 0}
!439 = !{!437, !20, i64 24}
!440 = !{!437, !21, i64 32}
!441 = distinct !{null, null, null}
!442 = !{!443, !20, i64 0}
!443 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !20, i64 0, !20, i64 8, !4, i64 16}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!446 = distinct !{!446, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!447 = !{!443, !20, i64 8}
!448 = !{!443, !4, i64 16}
!449 = distinct !{null, null, null}
!450 = distinct !{!450, !35, !285, !286}
!451 = distinct !{!451, !35, !285, !286}
!452 = distinct !{!452, !433}
!453 = distinct !{!453, !35}
!454 = distinct !{!454, !35, !285}
!455 = distinct !{!455, !35}
!456 = distinct !{null, null}
!457 = distinct !{null, null, null, null}
!458 = distinct !{!458, !35, !285, !286}
!459 = distinct !{!459, !35, !285, !286}
!460 = distinct !{!460, !433}
!461 = distinct !{!461, !35, !285}
!462 = distinct !{!462, !35}
!463 = distinct !{!463, !35, !285, !286}
!464 = distinct !{!464, !35, !285, !286}
!465 = distinct !{!465, !433}
!466 = distinct !{!466, !35, !285}
!467 = distinct !{!467, !35}
!468 = distinct !{!468, !35}
!469 = distinct !{!469, !35, !285, !286}
!470 = distinct !{!470, !35, !285, !286}
!471 = distinct !{!471, !433}
!472 = distinct !{!472, !35, !285}
!473 = distinct !{!473, !35}
!474 = distinct !{!474, !35}
!475 = distinct !{null, null, null}
!476 = !{!477, !68, i64 0}
!477 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !68, i64 0}
!478 = distinct !{null, null, null, null}
!479 = distinct !{!479, !35}
!480 = distinct !{!480, !35, !285, !286}
!481 = distinct !{!481, !35, !285, !286}
!482 = distinct !{!482, !433}
!483 = distinct !{!483, !35, !285}
!484 = distinct !{!484, !35}
!485 = !{!486, !487, i64 0}
!486 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !487, i64 0, !5, i64 8}
!487 = !{!"long long", !5, i64 0}
!488 = !{!489, !491}
!489 = distinct !{!489, !490, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!490 = distinct !{!490, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!491 = distinct !{!491, !492, !"_ZNK3fmt3v117context3argEi: argument 0"}
!492 = distinct !{!492, !"_ZNK3fmt3v117context3argEi"}
!493 = !{!494, !496}
!494 = distinct !{!494, !495, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!495 = distinct !{!495, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!496 = distinct !{!496, !497, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!497 = distinct !{!497, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!498 = !{!499, !21, i64 8}
!499 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !500, i64 0, !21, i64 8}
!500 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !10, i64 0}
!501 = !{!499, !500, i64 0}
!502 = distinct !{!502, !35}
!503 = !{!504, !20, i64 0}
!504 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !20, i64 0, !4, i64 8}
!505 = !{!504, !4, i64 8}
!506 = !{!507, !507, i64 0}
!507 = !{!"_ZTSN3fmt3v116detail4typeE", !5, i64 0}
!508 = distinct !{null}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!511 = distinct !{!511, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!514 = distinct !{!514, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!515 = !{!516}
!516 = distinct !{!516, !517, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!517 = distinct !{!517, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!518 = !{!519}
!519 = distinct !{!519, !520, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!520 = distinct !{!520, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!521 = !{!522}
!522 = distinct !{!522, !523, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!523 = distinct !{!523, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_"}
!524 = !{!525}
!525 = distinct !{!525, !523, !"_ZSt19__relocate_object_aIN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!526 = !{!525, !527}
!527 = distinct !{!527, !528}
!528 = distinct !{!528, !"LVerDomain"}
!529 = !{!522, !530}
!530 = distinct !{!530, !528}
!531 = distinct !{!531, !35, !285, !286}
!532 = distinct !{!532, !35, !285, !286}
!533 = distinct !{!533, !35, !285}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox10BaseVectorEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!536 = distinct !{!536, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox10BaseVectorEES4_SaIS4_EEvPT_PT0_RT1_"}
!537 = !{!538}
!538 = distinct !{!538, !536, !"_ZSt19__relocate_object_aISt10shared_ptrIN8facebook5velox10BaseVectorEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!539 = distinct !{!539, !35, !285, !286}
!540 = distinct !{!540, !35, !285}
!541 = !{!30, !21, i64 8}
!542 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!543 = !{!25, !29, i64 48}
!544 = distinct !{!544, !35}
!545 = distinct !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_, null, null}
!546 = distinct !{ptr @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_, null, null, null}
!547 = distinct !{!547, !35}
!548 = distinct !{!548, !35}
!549 = distinct !{null, null, null, null, null}
!550 = distinct !{!550, !35}
!551 = distinct !{!551, !35}
!552 = distinct !{null, null, null, null}
!553 = distinct !{!553, !35}
!554 = distinct !{!554, !35}
!555 = distinct !{!555, !35}
!556 = !{!9, !9, i64 0}
!557 = !{!558, !558, i64 0}
!558 = !{!"p1 _ZTSN8facebook5velox12CompareFlagsE", !10, i64 0}
!559 = distinct !{null, null, null, null}
!560 = distinct !{!560, !35}
!561 = distinct !{null, null, null, null, null}
!562 = distinct !{!562, !35}
!563 = distinct !{!563, !35}
!564 = distinct !{null, null, null}
!565 = distinct !{null, null, null, null}
!566 = distinct !{!566, !35}
!567 = distinct !{null, null}
!568 = distinct !{null, null, null}
!569 = distinct !{!569, !35}
!570 = distinct !{null, null, null, null}
!571 = distinct !{!571, !35}
!572 = distinct !{!572, !35}
!573 = distinct !{!573, !35}
!574 = !{!575, !575, i64 0}
!575 = !{!"p2 int", !27, i64 0}
!576 = distinct !{null, null, null, null}
!577 = distinct !{!577, !35}
!578 = distinct !{!578, !35}
!579 = distinct !{null, null, null, null}
!580 = distinct !{!580, !35}
!581 = distinct !{null, null, null, null, null}
!582 = distinct !{!582, !35}
!583 = distinct !{!583, !35}
!584 = distinct !{null, null, null}
!585 = distinct !{null, null, null, null}
!586 = distinct !{!586, !35}
!587 = !{!588, !9, i64 0}
!588 = !{!"_ZTSZNK8facebook5velox10BaseVector11sortIndicesERSt6vectorIiSaIiEEPKiNS0_12CompareFlagsEEUliiE_", !9, i64 0, !575, i64 8, !558, i64 16}
!589 = !{!588, !575, i64 8}
!590 = !{!588, !558, i64 16}
!591 = distinct !{null, null}
!592 = distinct !{null, null, null}
!593 = distinct !{!593, !35}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!596 = distinct !{!596, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!599 = distinct !{!599, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!600 = distinct !{!600, !35, !285, !286}
!601 = !{!"branch_weights", i32 8, i32 24}
!602 = distinct !{!602, !35, !285, !286}
!603 = distinct !{!603, !35, !286, !285}
!604 = distinct !{null, null}
!605 = !{!606, !20, i64 8}
!606 = !{!"_ZTSSt9type_info", !20, i64 8}
!607 = !{!64, !64, i64 0}
!608 = !{!30, !31, i64 0}
!609 = !{!610}
!610 = distinct !{!610, !611, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE: argument 0"}
!611 = distinct !{!611, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE"}
!612 = !{!613, !610}
!613 = distinct !{!613, !614, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!614 = distinct !{!614, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!615 = !{!616, !613, !610}
!616 = distinct !{!616, !617, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!617 = distinct !{!617, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!620 = distinct !{!620, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!621 = !{!622}
!622 = distinct !{!622, !623, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!623 = distinct !{!623, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!626 = distinct !{!626, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!627 = !{!628}
!628 = distinct !{!628, !629, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKiELi2ELi0ELy20EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!629 = distinct !{!629, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKiELi2ELi0ELy20EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZNK8facebook5velox13FlatMapVector7keyTypeEv: argument 0"}
!632 = distinct !{!632, !"_ZNK8facebook5velox13FlatMapVector7keyTypeEv"}
!633 = !{!634}
!634 = distinct !{!634, !635, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!635 = distinct !{!635, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!636 = distinct !{!636, !35}
!637 = distinct !{!637, !35}
!638 = !{!639, !639, i64 0}
!639 = !{!"short", !5, i64 0}
!640 = distinct !{!640, !35}
!641 = distinct !{null, null}
!642 = !{!643}
!643 = distinct !{!643, !644, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE: argument 0"}
!644 = distinct !{!644, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE"}
!645 = !{!646}
!646 = distinct !{!646, !647, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!647 = distinct !{!647, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!648 = !{!646, !643}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!651 = distinct !{!651, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!652 = !{!650, !646, !643}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE: argument 0"}
!655 = distinct !{!655, !"_ZN8facebook5velox10BaseVector16getOrCreateEmptyESt10shared_ptrIS1_ERKS2_IKNS0_4TypeEEPNS0_6memory10MemoryPoolE"}
!656 = !{!657}
!657 = distinct !{!657, !658, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!658 = distinct !{!658, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!659 = !{!657, !654}
!660 = !{!661}
!661 = distinct !{!661, !662, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!662 = distinct !{!662, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!663 = !{!661, !657, !654}
!664 = !{!665, !64, i64 160}
!665 = !{!"_ZTSN8facebook5velox9MapVectorE", !666, i64 0, !186, i64 128, !186, i64 144, !64, i64 160}
!666 = !{!"_ZTSN8facebook5velox15ArrayVectorBaseE", !59, i64 0, !66, i64 96, !181, i64 104, !66, i64 112, !181, i64 120}
!667 = !{!63, !63, i64 0}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!670 = distinct !{!670, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!673 = distinct !{!673, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!676 = distinct !{!676, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!677 = !{!666, !181, i64 104}
!678 = !{!666, !181, i64 120}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!681 = distinct !{!681, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!684 = distinct !{!684, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!687 = distinct !{!687, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!690 = distinct !{!690, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
end_hunk_2
