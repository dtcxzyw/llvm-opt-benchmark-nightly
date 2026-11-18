Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmRKS3_:bb.a
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.aj = add nsw i64 %.017.i, -4                 ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !65
  %i.al = add i32 %i.z, 4                         ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !189

_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmRKS3_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EmRKS3_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.c, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = shl nuw nsw i64 %1, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  store i64 %1, ptr %i.b, align 8, !tbaa !35
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %bound0 = icmp ugt ptr %i.g, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 2305843009213693944        ; 3 uses
  %i.h = and i64 %1, 7
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.l = load i32, ptr %2, align 4, !tbaa !65, !alias.scope !198
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !65
  %i.o = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.p = add <4 x i32> %vec.phi7, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !199, !noalias !198
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.f, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %bb.f ], [ %i.r, %middle.block ] ; 2 uses
  %.017.i.ph = phi i64 [ %1, %vector.memcheck ], [ %1, %bb.f ], [ %i.h, %middle.block ] ; 4 uses
  %.01416.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %bb.f ], [ %i.j, %middle.block ] ; 2 uses
  %i.s = add nsw i64 %.017.i.ph, -1
  %xtraiter = and i64 %.017.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.t = phi i32 [ %i.w, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader ]
  %.017.i.prol = phi i64 [ %i.u, %.lr.ph.i.prol ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %.01416.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.u = add nsw i64 %.017.i.prol, -1             ; 2 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.v, ptr %.01416.i.prol, align 4, !tbaa !65
  %i.w = add i32 %i.t, 1                          ; 3 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !196

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.017.i.unr = phi i64 [ %.017.i.ph, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %.01416.i.ph, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %i.y = icmp ult i64 %i.s, 3
  br i1 %i.y, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.z = phi i32 [ %i.al, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.017.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01416.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01416.i, align 4, !tbaa !65
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4
  %i.ad = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.z, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.ag = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.z, 3
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.aj = add nsw i64 %.017.i, -4                 ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !65
  %i.al = add i32 %i.z, 4                         ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !197

_ZN5boost9container26uninitialized_fill_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5ERKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.f, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.b, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 8 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !58
  store i64 %i.b, ptr %i.d, align 8, !tbaa !35
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60  ; 8 uses
  %.not17.i = icmp eq i64 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.i = load ptr, ptr %1, align 8, !tbaa !58     ; 7 uses
  %.pre7 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %.pre, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.pre, 2                         ; 2 uses
  %2 = getelementptr i8, ptr %i.h, i64 %i.j       ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.h, %i.k
  %bound119 = icmp ult ptr %i.i, %2
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound122 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  br i1 %conflict.rdx24, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre, -8                      ; 3 uses
  %i.l = and i64 %.pre, 7
  %i.m = shl i64 %n.vec, 2                        ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.h, i64 %i.m
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.q = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.h, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !207
  %wide.load27 = load <4 x i32>, ptr %i.r, align 4, !tbaa !65, !alias.scope !207
  %i.s = getelementptr i8, ptr %next.gep26, i64 16
  store <4 x i32> %wide.load, ptr %next.gep26, align 4, !tbaa !65, !alias.scope !208, !noalias !209
  store <4 x i32> %wide.load27, ptr %i.s, align 4, !tbaa !65, !alias.scope !208, !noalias !209
  %i.t = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.u = add <4 x i32> %vec.phi25, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !210, !noalias !207
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %.0819.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %i.x = add i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %i.y = phi i32 [ %i.ab, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader30 ]
  %.020.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader30 ]
  %.0819.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0819.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.z = add i64 %.020.i.prol, -1                 ; 2 uses
  %i.aa = load i32, ptr %.0819.i.prol, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ab = add i32 %i.y, 1                         ; 3 uses
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !205

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader30 ], [ %i.ab, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader30 ], [ %i.z, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %.0819.i.ph, %.lr.ph.i.preheader30 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader30 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.x, 3
  br i1 %i.ae, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.af = phi i32 [ %i.au, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ag = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.ag, ptr %.01618.i, align 4, !tbaa !65
  %i.ah = add i32 %i.af, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.af, 2
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.af, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.as = add i64 %.020.i, -4                     ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !65
  %i.au = add i32 %i.af, 4                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !206

_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EOS6_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !35
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.c, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = shl nuw nsw i64 %2, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  store i64 %2, ptr %i.b, align 8, !tbaa !35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ugt ptr %i.g, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 2305843009213693944        ; 3 uses
  %i.h = and i64 %2, 7
  %i.i = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !217
  %wide.load7 = load <4 x i32>, ptr %i.n, align 4, !tbaa !65, !alias.scope !217
  %i.o = getelementptr i8, ptr %next.gep6, i64 16
  store <4 x i32> %wide.load, ptr %next.gep6, align 4, !tbaa !65
  store <4 x i32> %wide.load7, ptr %i.o, align 4, !tbaa !65
  %i.p = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.q = add <4 x i32> %vec.phi5, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !218, !noalias !217
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.f, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %bb.f ], [ %i.s, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %bb.f ], [ %i.h, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.f ], [ %i.j, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %bb.f ], [ %i.k, %middle.block ] ; 2 uses
  %i.t = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.u = phi i32 [ %i.w, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader ]
  %.020.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader ]
  %.0919.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.v = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.v, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.w = add i32 %i.u, 1                          ; 3 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.z = add nsw i64 %.020.i.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !215

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %i.aa = icmp ult i64 %i.t, 3
  br i1 %i.aa, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ab = phi i32 [ %i.ap, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ac = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ac, ptr %.01618.i, align 4, !tbaa !65
  %i.ad = add i32 %i.ab, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.ab, 2
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.ab, 3
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.ab, 4                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.as = add nsw i64 %.020.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i, !llvm.loop !216

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2ERKS6_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5ERKS6_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.e, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.f, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.b, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 8 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !58
  store i64 %i.b, ptr %i.d, align 8, !tbaa !35
  %.pre = load i64, ptr %i.a, align 8, !tbaa !60  ; 8 uses
  %.not17.i = icmp eq i64 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.i = load ptr, ptr %1, align 8, !tbaa !58     ; 7 uses
  %.pre7 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %.pre, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.pre, 2                         ; 2 uses
  %3 = getelementptr i8, ptr %i.h, i64 %i.j       ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %3, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.h, %i.k
  %bound119 = icmp ult ptr %i.i, %3
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound122 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  br i1 %conflict.rdx24, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre, -8                      ; 3 uses
  %i.l = and i64 %.pre, 7
  %i.m = shl i64 %n.vec, 2                        ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.h, i64 %i.m
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.q = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.h, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !226
  %wide.load27 = load <4 x i32>, ptr %i.r, align 4, !tbaa !65, !alias.scope !226
  %i.s = getelementptr i8, ptr %next.gep26, i64 16
  store <4 x i32> %wide.load, ptr %next.gep26, align 4, !tbaa !65, !alias.scope !227, !noalias !228
  store <4 x i32> %wide.load27, ptr %i.s, align 4, !tbaa !65, !alias.scope !227, !noalias !228
  %i.t = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.u = add <4 x i32> %vec.phi25, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !229, !noalias !226
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %i.x = add i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %i.y = phi i32 [ %i.aa, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader30 ]
  %.020.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader30 ]
  %.0919.i.prol = phi ptr [ %i.ab, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.z = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.z, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.aa = add i32 %i.y, 1                         ; 3 uses
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.ad = add i64 %.020.i.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !224

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader30 ], [ %i.aa, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader30 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader30 ], [ %i.ab, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader30 ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.x, 3
  br i1 %i.ae, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.af = phi i32 [ %i.at, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ag = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ag, ptr %.01618.i, align 4, !tbaa !65
  %i.ah = add i32 %i.af, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.af, 2
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.af, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !65
  %i.at = add i32 %i.af, 4                        ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.aw = add i64 %.020.i, -4                     ; 2 uses
  %.not.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !225

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EOS6_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EOS6_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %i.b, ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !35
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 5 uses
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.g, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add i64 %.05.i.prol, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !65
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !230

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05.i.unr = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %storemerge4.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %i.h = icmp ult i64 %i.c, 4
  br i1 %i.h, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.r, %.lr.ph.i ], [ %storemerge4.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.k, align 4, !tbaa !65
  %i.l = add i32 %i.i, -2
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !65
  %i.n = add i32 %i.i, -3
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.p = add i64 %.05.i, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !65
  %i.q = add i32 %i.i, -4
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i, !llvm.loop !0

_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i1 = icmp eq i64 %i.t, 0
  br i1 %.not.i1, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit
  %i.u = shl i64 %i.t, 2
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.u) #25
  br label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmRKS3_:bb.a
  %.01416.i.unr = phi ptr [ %.01416.i.ph, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %i.y = icmp ult i64 %i.s, 3
  br i1 %i.y, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.z = phi i32 [ %i.al, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.017.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01416.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01416.i, align 4, !tbaa !65
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4
  %i.ad = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.z, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.ag = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.z, 3
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.aj = add nsw i64 %.017.i, -4                 ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !65
  %i.al = add i32 %i.z, 4                         ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !540

_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmRKS3_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EmRKS3_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %1 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !94
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 65535
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %bound0 = icmp ugt ptr %i.g, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, 65528                      ; 3 uses
  %i.h = and i64 %1, 7
  %i.i = shl nuw nsw i64 %n.vec, 2
  %i.j = getelementptr i8, ptr %i.f, i64 %i.i
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.l = load i32, ptr %2, align 4, !tbaa !65, !alias.scope !549
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !65
  %i.o = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.p = add <4 x i32> %vec.phi7, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !550, !noalias !549
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.d, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %bb.d ], [ %i.r, %middle.block ] ; 2 uses
  %.017.i.ph = phi i64 [ %1, %vector.memcheck ], [ %1, %bb.d ], [ %i.h, %middle.block ] ; 4 uses
  %.01416.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %bb.d ], [ %i.j, %middle.block ] ; 2 uses
  %i.s = add nsw i64 %.017.i.ph, -1
  %xtraiter = and i64 %.017.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.t = phi i32 [ %i.w, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader ]
  %.017.i.prol = phi i64 [ %i.u, %.lr.ph.i.prol ], [ %.017.i.ph, %.lr.ph.i.preheader ]
  %.01416.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %.01416.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.u = add nsw i64 %.017.i.prol, -1             ; 2 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.v, ptr %.01416.i.prol, align 4, !tbaa !65
  %i.w = add i32 %i.t, 1                          ; 3 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !547

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.017.i.unr = phi i64 [ %.017.i.ph, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %.01416.i.ph, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %i.y = icmp ult i64 %i.s, 3
  br i1 %i.y, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.z = phi i32 [ %i.al, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.017.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01416.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01416.i, align 4, !tbaa !65
  %i.ab = add i32 %i.z, 1
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4
  %i.ad = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.z, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.ag = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.z, 3
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.aj = add nsw i64 %.017.i, -4                 ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !65
  %i.al = add i32 %i.z, 4                         ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !548

_ZN5boost9container26uninitialized_fill_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5ERKS8_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.b, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !94
  %.not.i.i = icmp eq i16 %i.b, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 8 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.d, align 2, !tbaa !93
  %.pre = load i16, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  %.not17.i = icmp eq i16 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.h = zext i16 %.pre to i64                    ; 6 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !92     ; 7 uses
  %.pre7 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i16 %.pre, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %2 = getelementptr i8, ptr %i.g, i64 %i.j       ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.g, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %2, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %i.g, %i.k
  %bound118 = icmp ult ptr %i.i, %2
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound121 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %.lr.ph.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 65528                    ; 3 uses
  %i.l = and i64 %i.h, 7
  %i.m = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.g, i64 %i.m
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.q = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !558
  %wide.load26 = load <4 x i32>, ptr %i.r, align 4, !tbaa !65, !alias.scope !558
  %i.s = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load, ptr %next.gep25, align 4, !tbaa !65, !alias.scope !559, !noalias !560
  store <4 x i32> %wide.load26, ptr %i.s, align 4, !tbaa !65, !alias.scope !559, !noalias !560
  %i.t = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.u = add <4 x i32> %vec.phi24, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !561, !noalias !558
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader29

.lr.ph.i.preheader29:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %.0819.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %i.x = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader29, %.lr.ph.i.prol
  %i.y = phi i32 [ %i.ab, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader29 ]
  %.020.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader29 ]
  %.0819.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0819.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader29 ]
  %i.z = add nsw i64 %.020.i.prol, -1             ; 2 uses
  %i.aa = load i32, ptr %.0819.i.prol, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ab = add i32 %i.y, 1                         ; 3 uses
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !556

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader29
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader29 ], [ %i.ab, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader29 ], [ %i.z, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %.0819.i.ph, %.lr.ph.i.preheader29 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader29 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.x, 3
  br i1 %i.ae, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.af = phi i32 [ %i.au, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ag = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.ag, ptr %.01618.i, align 4, !tbaa !65
  %i.ah = add i32 %i.af, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.af, 2
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.af, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.as = add nsw i64 %.020.i, -4                 ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !65
  %i.au = add i32 %i.af, 4                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !557

_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97
  %i.c = zext i16 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EOS8_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.a, ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load <2 x i16>, ptr %i.c, align 8, !tbaa !93
  store <2 x i16> %i.e, ptr %i.b, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !92
  store i16 0, ptr %i.d, align 2, !tbaa !94
  store i16 0, ptr %i.c, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %2 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !94
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 65535
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %2, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 5 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.d
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ugt ptr %i.g, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, 65528                      ; 3 uses
  %i.h = and i64 %2, 7
  %i.i = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.f, i64 %i.i
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !568
  %wide.load7 = load <4 x i32>, ptr %i.n, align 4, !tbaa !65, !alias.scope !568
  %i.o = getelementptr i8, ptr %next.gep6, i64 16
  store <4 x i32> %wide.load, ptr %next.gep6, align 4, !tbaa !65
  store <4 x i32> %wide.load7, ptr %i.o, align 4, !tbaa !65
  %i.p = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.q = add <4 x i32> %vec.phi5, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !569, !noalias !568
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.d, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %bb.d ], [ %i.s, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %bb.d ], [ %i.h, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.d ], [ %i.j, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %bb.d ], [ %i.k, %middle.block ] ; 2 uses
  %i.t = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.u = phi i32 [ %i.w, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader ]
  %.020.i.prol = phi i64 [ %i.z, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader ]
  %.0919.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.y, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.v = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.v, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.w = add i32 %i.u, 1                          ; 3 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.z = add nsw i64 %.020.i.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !566

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i.prol ]
  %i.aa = icmp ult i64 %i.t, 3
  br i1 %i.aa, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ab = phi i32 [ %i.ap, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.as, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ac = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ac, ptr %.01618.i, align 4, !tbaa !65
  %i.ad = add i32 %i.ab, 1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.ab, 2
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.ab, 3
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.ab, 4                        ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.as = add nsw i64 %.020.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i64 %i.as, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i, !llvm.loop !567

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2ERKS8_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5ERKS8_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.b, ptr %i.c, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.d, align 2, !tbaa !94
  %.not.i.i = icmp eq i16 %i.b, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.b to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 8 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.d, align 2, !tbaa !93
  %.pre = load i16, ptr %i.a, align 8, !tbaa !97  ; 3 uses
  %.not17.i = icmp eq i16 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.h = zext i16 %.pre to i64                    ; 6 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !92     ; 7 uses
  %.pre7 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i16 %.pre, 20
  br i1 %min.iters.check, label %.lr.ph.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %3 = getelementptr i8, ptr %i.g, i64 %i.j       ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.g, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %3, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %i.g, %i.k
  %bound118 = icmp ult ptr %i.i, %3
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound121 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %.lr.ph.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 65528                    ; 3 uses
  %i.l = and i64 %i.h, 7
  %i.m = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr i8, ptr %i.g, i64 %i.m
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.p, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %i.q = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !577
  %wide.load26 = load <4 x i32>, ptr %i.r, align 4, !tbaa !65, !alias.scope !577
  %i.s = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load, ptr %next.gep25, align 4, !tbaa !65, !alias.scope !578, !noalias !579
  store <4 x i32> %wide.load26, ptr %i.s, align 4, !tbaa !65, !alias.scope !578, !noalias !579
  %i.t = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.u = add <4 x i32> %vec.phi24, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.u, %i.t
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !580, !noalias !577
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader29

.lr.ph.i.preheader29:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %i.x = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader29, %.lr.ph.i.prol
  %i.y = phi i32 [ %i.aa, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader29 ]
  %.020.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader29 ]
  %.0919.i.prol = phi ptr [ %i.ab, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader29 ]
  %i.z = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.z, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.aa = add i32 %i.y, 1                         ; 3 uses
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.ad = add nsw i64 %.020.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !575

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader29
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader29 ], [ %i.aa, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader29 ], [ %i.ad, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader29 ], [ %i.ab, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader29 ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ae = icmp ult i64 %i.x, 3
  br i1 %i.ae, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.af = phi i32 [ %i.at, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ag = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ag, ptr %.01618.i, align 4, !tbaa !65
  %i.ah = add i32 %i.af, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !65
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !65
  %i.al = add i32 %i.af, 2
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !65
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !65
  %i.ap = add i32 %i.af, 3
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !65
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !65
  %i.at = add i32 %i.af, 4                        ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.aw = add nsw i64 %.020.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !576

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EOS8_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EOS8_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 0, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.b, align 2, !tbaa !94
  %i.c = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.c, ptr %0, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load <2 x i16>, ptr %i.d, align 8, !tbaa !93
  store <2 x i16> %i.f, ptr %i.a, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !92
  store i16 0, ptr %i.e, align 2, !tbaa !94
  store i16 0, ptr %i.d, align 8, !tbaa !95
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97   ; 3 uses
  %.not3.i = icmp eq i16 %i.c, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05.i.prol = phi i64 [ %i.e, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ]
  %storemerge4.i.prol = phi ptr [ %i.h, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.e = add nsw i64 %.05.i.prol, -1              ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.prol, align 4, !tbaa !65
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !581

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05.i.unr = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %storemerge4.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.i = icmp ult i16 %i.c, 4
  br i1 %i.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05.i = phi i64 [ %i.q, %.lr.ph.i ], [ %.05.i.unr, %.lr.ph.i.prol.loopexit ]
  %storemerge4.i = phi ptr [ %i.s, %.lr.ph.i ], [ %storemerge4.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !65
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !65
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 12
  %i.q = add nsw i64 %.05.i, -4                   ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !65
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %.not.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i, !llvm.loop !13

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i16, ptr %i.t, align 2, !tbaa !94   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.ac, ptr %.015.lcssa.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %4, align 4, !tbaa !65
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.aj, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ak, %.lr.ph.i20.i.i ], [ %i.af, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ag = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.ag, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !894

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.v, 4
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !65
  %i.at = add i32 %i.aq, -2
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !65
  %i.av = add i32 %i.aq, -3
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ax = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !65
  %i.ay = add i32 %i.aq, -4
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !62
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.bb) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !61
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.bc = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.u to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.t, ptr %1, align 8, !tbaa !58
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !61
  store i64 %i.p, ptr %i.a, align 8, !tbaa !35
  %i.bh = getelementptr inbounds i8, ptr %i.t, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 3 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = icmp samesign ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !58     ; 8 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.u, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.x = load i32, ptr %.018.i.i.i, align 4, !tbaa !65
  store i32 %i.x, ptr %.01517.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !65
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %.lr.ph.i.i.i ] ; 8 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %3, 2
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %5, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %.015.lcssa.i.i.i, %i.ad
  %bound126 = icmp ult ptr %4, %5
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ugt ptr %i.ad, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound129 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %.lr.ph.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ae = and i64 %3, 7
  %i.af = shl i64 %n.vec, 2
  %i.ag = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.af
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ai = load i32, ptr %4, align 4, !tbaa !65, !alias.scope !903
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65, !alias.scope !904, !noalias !905
  store <4 x i32> %broadcast.splat, ptr %i.ak, align 4, !tbaa !65, !alias.scope !904, !noalias !905
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi32, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !899

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !906, !noalias !903
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader41

.lr.ph.i.i.i.i.preheader41:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %i.ap = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader41, %.lr.ph.i.i.i.i.prol
  %i.aq = phi i32 [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader41 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader41 ]
  %i.ar = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.as = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.as, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !65
  %i.at = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !900

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader41
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader41 ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ], [ %i.au, %.lr.ph.i.i.i.i.prol ]
  %i.av = icmp ult i64 %i.ap, 3
  br i1 %i.av, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.aw = phi i32 [ %i.bi, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.ax = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.ax, ptr %.01416.i.i.i.i, align 4, !tbaa !65
  %i.ay = add i32 %i.aw, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.ba = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !65
  %i.bb = add i32 %i.aw, 2
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bd = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !65
  %i.be = add i32 %i.aw, 3
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.bg = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bh = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !65
  %i.bi = add i32 %i.aw, 4                        ; 2 uses
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !901

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bp, %.lr.ph.i20.i.i ], [ %i.bk, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bl = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.bl, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bo, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter44 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bt, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bq = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !902

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.prol ]
  %i.bu = icmp ult i64 %i.v, 4
  br i1 %i.bu, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.bv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !65
  %i.by = add i32 %i.bv, -2
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bz, align 4, !tbaa !65
  %i.ca = add i32 %i.bv, -3
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cc = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cb, align 4, !tbaa !65
  %i.cd = add i32 %i.bv, -4
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !62
  %i.cg = shl i64 %i.cf, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.cg) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !61
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.ch = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.ci = ptrtoint ptr %2 to i64
  %i.cj = ptrtoint ptr %i.u to i64
  %i.ck = sub i64 %i.ci, %i.cj
  store ptr %i.t, ptr %1, align 8, !tbaa !58
  %i.cl = add i64 %i.ch, %3
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !61
  store i64 %i.p, ptr %i.a, align 8, !tbaa !35
  %i.cm = getelementptr inbounds i8, ptr %i.t, i64 %i.ck
  store ptr %i.cm, ptr %0, align 8, !tbaa !72
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_:bb.a
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !65
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !65
  %i.fd = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 8
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !65
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !65
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 12
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !65
  store i32 %i.fi, ptr %i.fh, align 4, !tbaa !65
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 16
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !65
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !65
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 20
  %i.fn = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 20
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !65
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !65
  %i.fp = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 24
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !65
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !65
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 28
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 28
  %i.fu = add i64 %.0610.i.i53.i.i.i, -8          ; 2 uses
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !65
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !65
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 32
  %.not.i.i55.i.i.i.7 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i55.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, label %.lr.ph.i.i51.i.i.i, !llvm.loop !919

_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i: ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i, %middle.block59
  %.lcssa = phi ptr [ %i.eo, %middle.block59 ], [ %.lcssa67.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ], [ %i.fw, %.lr.ph.i.i51.i.i.i ] ; 2 uses
  %i.fy = sub i64 %3, %i.ao                       ; 3 uses
  %xtraiter75 = and i64 %i.fy, 3                  ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i58.i.i.i.prol.loopexit, label %.lr.ph.i.i58.i.i.i.prol

.lr.ph.i.i58.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, %.lr.ph.i.i58.i.i.i.prol
  %.020.i.i.i.i.i.prol = phi i64 [ %i.ge, %.lr.ph.i.i58.i.i.i.prol ], [ %i.fy, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  %.0919.i.i.i.i.i.prol = phi ptr [ %i.gc, %.lr.ph.i.i58.i.i.i.prol ], [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ] ; 2 uses
  %.01618.i.i.i.i.i.prol = phi ptr [ %i.gd, %.lr.ph.i.i58.i.i.i.prol ], [ %i.j, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i58.i.i.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.prol) ]
  %i.fz = load i32, ptr %.0919.i.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.fz, ptr %.01618.i.i.i.i.i.prol, align 4, !tbaa !65
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ge = add i64 %.020.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i58.i.i.i.prol.loopexit, label %.lr.ph.i.i58.i.i.i.prol, !llvm.loop !920

.lr.ph.i.i58.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i58.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i
  %.020.i.i.i.i.i.unr = phi i64 [ %i.fy, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.ge, %.lr.ph.i.i58.i.i.i.prol ]
  %.0919.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.gc, %.lr.ph.i.i58.i.i.i.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.gd, %.lr.ph.i.i58.i.i.i.prol ]
  %i.gf = sub i64 %i.ao, %3
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i58.i.i.i

.lr.ph.i.i58.i.i.i:                               ; preds = %.lr.ph.i.i58.i.i.i.prol.loopexit, %.lr.ph.i.i58.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i58.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i58.i.i.i ], [ %.0919.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i58.i.i.i ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i) ]
  %i.gh = load i32, ptr %.0919.i.i.i.i.i, align 4, !tbaa !65
  store i32 %i.gh, ptr %.01618.i.i.i.i.i, align 4, !tbaa !65
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !65
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !65
  %i.gn = add i32 %i.gi, 2
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.go = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !65
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !65
  %i.gr = add i32 %i.gi, 3
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !65
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !65
  %i.gv = add i32 %i.gi, 4
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %i.gy = add i64 %.020.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i59.i.i.i.3 = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i59.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i58.i.i.i, !llvm.loop !908

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i58.i.i.i.prol.loopexit, %.lr.ph.i.i58.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block39, %bb.c, %bb.d
  %i.gz = add i64 %i.f, %3
  store i64 %i.gz, ptr %i.e, align 8, !tbaa !61
  store ptr %i.b, ptr %0, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.b, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !62   ; 6 uses
  %i.c = sub i64 4611686018427387903, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.l, i64 4611686018427387903)
  %i.n = select i1 %i.k, i64 4611686018427387903, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ]
  %i.o = add i64 %i.e, %3                         ; 2 uses
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %.0.i.i) ; 3 uses
  %i.q = icmp ugt i64 %i.o, 4611686018427387903
  br i1 %i.q, label %bb.f, label %bb.g, !prof !40

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = icmp samesign ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.h, label %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !40

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.p, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !58     ; 8 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !60   ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.u, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.u, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.x = load i32, ptr %.018.i.i.i, align 4, !tbaa !65
  store i32 %i.x, ptr %.01517.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !65
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.t, %_ZN5boost9container19vector_alloc_holderINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %.lr.ph.i.i.i ] ; 8 uses
  %.not17.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %3, 2                           ; 2 uses
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %4, i64 %i.ac     ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %5, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %.015.lcssa.i.i.i, %i.ad
  %bound126 = icmp ult ptr %4, %5
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  %bound028 = icmp ugt ptr %i.ad, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound129 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx31 = or i1 %conflict.rdx, %found.conflict30
  br i1 %conflict.rdx31, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ae = and i64 %3, 7
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %i.ah = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.af
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.aj ; 2 uses
  %next.gep33 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep33) ]
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !931
  %wide.load41 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !65, !alias.scope !931
  %i.al = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load, ptr %next.gep33, align 4, !tbaa !65, !alias.scope !932, !noalias !933
  store <4 x i32> %wide.load41, ptr %i.al, align 4, !tbaa !65, !alias.scope !932, !noalias !933
  %i.am = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.an = add <4 x i32> %vec.phi32, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !934, !noalias !931
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ] ; 2 uses
  %.020.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 4 uses
  %.0919.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %.01618.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ] ; 2 uses
  %i.aq = add i64 %.020.i.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.prol
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader44 ]
  %.020.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i.i.i.prol ], [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.prol ], [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader44 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.as = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.as, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !65
  %i.at = add i32 %i.ar, 1                        ; 3 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aw = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader44
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader44 ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ], [ %i.au, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ], [ %i.av, %.lr.ph.i.i.i.i.prol ]
  %i.ax = icmp ult i64 %i.aq, 3
  br i1 %i.ax, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ay = phi i32 [ %i.bm, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !65
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !65
  %i.ba = add i32 %i.ay, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !65
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !65
  %i.be = add i32 %i.ay, 2
  store i32 %i.be, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !65
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !65
  %i.bi = add i32 %i.ay, 3
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bj = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !65
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !65
  %i.bm = add i32 %i.ay, 4                        ; 2 uses
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.bp = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !929

_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bu, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bv, %.lr.ph.i20.i.i ], [ %i.bq, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.br = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.br, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bu, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test16simple_allocatorINS3_24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSD_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %xtraiter47 = and i64 %i.v, 3                   ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bw, %.lr.ph.i.i.prol ], [ %i.v, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i.prol ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bw = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !930

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.preheader ], [ %i.bw, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.u, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = icmp ult i64 %i.v, 4
  br i1 %i.ca, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ci, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !65
  %i.ce = add i32 %i.cb, -2
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cf, align 4, !tbaa !65
  %i.cg = add i32 %i.cb, -3
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ci = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !65
  %i.cj = add i32 %i.cb, -4
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.i
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !62
  %i.cm = shl i64 %i.cl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.cm) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !61
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %.loopexit.i
  %i.cn = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.s = load i16, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  %i.t = zext i16 %i.s to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !65
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.aa, ptr %.015.lcssa.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %4, align 4, !tbaa !65
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !14

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add nsw i64 %.05.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1637

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i16 %i.s, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !65
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !65
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add nsw i64 %.05.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !65
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.ay = load i16, ptr %i.a, align 2, !tbaa !94
  %i.az = zext i16 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ba) #25
  %.pre.i = load i16, ptr %i.e, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.bb = phi i16 [ %i.s, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = ptrtoint ptr %i.r to i64
  %i.be = sub i64 %i.bc, %i.bd
  store ptr %i.q, ptr %1, align 8, !tbaa !92
  %i.bf = trunc i64 %3 to i16
  %i.bg = add i16 %i.bb, %i.bf
  store i16 %i.bg, ptr %i.e, align 8, !tbaa !95
  %i.bh = trunc nuw i64 %i.n to i16
  store i16 %i.bh, ptr %i.a, align 2, !tbaa !93
  %i.bi = getelementptr inbounds i8, ptr %i.q, i64 %i.be
  store ptr %i.bi, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !94   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = xor i64 %i.c, 65535
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !95
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.a
  %.tr.i = zext i16 %i.b to i32
  %.lhs.trunc.i = shl nuw nsw i32 %.tr.i, 3
  %i.j = udiv i32 %.lhs.trunc.i, 5
  %i.k = add i64 %3, %i.g                         ; 2 uses
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.j, i32 65535)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.o = icmp ugt i64 %i.k, 65535
  br i1 %i.o, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !40

bb.c:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !92     ; 8 uses
  %i.s = load i16, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  %i.t = zext i16 %i.s to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !65
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 8 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %3, 2
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %5, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %.015.lcssa.i.i.i, %i.ab
  %bound122 = icmp ult ptr %4, %5
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ugt ptr %i.ab, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound125 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %.lr.ph.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ac = and i64 %3, 7
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ad
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ag = load i32, ptr %4, align 4, !tbaa !65, !alias.scope !1646
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi28 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %i.ah = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65, !alias.scope !1647, !noalias !1648
  store <4 x i32> %broadcast.splat, ptr %i.ai, align 4, !tbaa !65, !alias.scope !1647, !noalias !1648
  %i.aj = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ak = add <4 x i32> %vec.phi28, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1642

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !1649, !noalias !1646
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader37

.lr.ph.i.i.i.i.preheader37:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %i.an = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.prol
  %i.ao = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader37 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader37 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader37 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader37 ]
  %i.ap = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.aq = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.aq, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !65
  %i.ar = add i32 %i.ao, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1643

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader37
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader37 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader37 ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader37 ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.at = icmp ult i64 %i.an, 3
  br i1 %i.at, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.au = phi i32 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.av = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.av, ptr %.01416.i.i.i.i, align 4, !tbaa !65
  %i.aw = add i32 %i.au, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.ay = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !65
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bb = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !65
  %i.bc = add i32 %i.au, 3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.be = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !65
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !65
  %i.bg = add i32 %i.au, 4                        ; 2 uses
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1644

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bm, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bn, %.lr.ph.i20.i.i ], [ %i.bi, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bj = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.bj, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bm, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !14

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSD_mT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter40 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = add nsw i64 %.05.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1645

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = icmp ult i16 %i.s, 4
  br i1 %i.bs, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bv, align 4, !tbaa !65
  %i.bw = add i32 %i.bt, -2
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !65
  %i.by = add i32 %i.bt, -3
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ca = add nsw i64 %.05.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.bz, align 4, !tbaa !65
  %i.cb = add i32 %i.bt, -4
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.cd = load i16, ptr %i.a, align 2, !tbaa !94
  %i.ce = zext i16 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cf) #25
  %.pre.i = load i16, ptr %i.e, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %.loopexit.i
  %i.cg = phi i16 [ %i.s, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.ch = ptrtoint ptr %2 to i64
  %i.ci = ptrtoint ptr %i.r to i64
  %i.cj = sub i64 %i.ch, %i.ci
  store ptr %i.q, ptr %1, align 8, !tbaa !92
  %i.ck = trunc i64 %3 to i16
  %i.cl = add i16 %i.cg, %i.ck
  store i16 %i.cl, ptr %i.e, align 8, !tbaa !95
  %i.cm = trunc nuw i64 %i.n to i16
  store i16 %i.cm, ptr %i.a, align 2, !tbaa !93
  %i.cn = getelementptr inbounds i8, ptr %i.q, i64 %i.cj
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_:bb.a
.lr.ph.i.i51.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i51.i.i.i.prol, %.lr.ph.i.i51.i.i.i.preheader66
  %.lcssa67.unr = phi ptr [ poison, %.lr.ph.i.i51.i.i.i.preheader66 ], [ %i.ey, %.lr.ph.i.i51.i.i.i.prol ]
  %.011.i.i52.i.i.i.unr = phi ptr [ %.011.i.i52.i.i.i.ph, %.lr.ph.i.i51.i.i.i.preheader66 ], [ %i.ez, %.lr.ph.i.i51.i.i.i.prol ]
  %.0610.i.i53.i.i.i.unr = phi i64 [ %.0610.i.i53.i.i.i.ph, %.lr.ph.i.i51.i.i.i.preheader66 ], [ %i.ew, %.lr.ph.i.i51.i.i.i.prol ]
  %.079.i.i54.i.i.i.unr = phi ptr [ %.079.i.i54.i.i.i.ph, %.lr.ph.i.i51.i.i.i.preheader66 ], [ %i.ey, %.lr.ph.i.i51.i.i.i.prol ]
  %i.fa = icmp ult i64 %i.ev, 7
  br i1 %i.fa, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, label %.lr.ph.i.i51.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i
  %.011.i.i52.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i51.i.i.i ], [ %.011.i.i52.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 9 uses
  %.0610.i.i53.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i51.i.i.i ], [ %.0610.i.i53.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ]
  %.079.i.i54.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i51.i.i.i ], [ %.079.i.i54.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 9 uses
  %i.fb = load i32, ptr %.079.i.i54.i.i.i, align 4, !tbaa !65
  store i32 %i.fb, ptr %.011.i.i52.i.i.i, align 4, !tbaa !65
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !65
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 8
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !65
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 12
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !65
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !65
  %i.fl = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 16
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !65
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !65
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 20
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 20
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !65
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !65
  %i.fr = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 24
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !65
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !65
  %i.fu = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 28
  %i.fv = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 28
  %i.fw = add i64 %.0610.i.i53.i.i.i, -8          ; 2 uses
  %i.fx = load i32, ptr %i.fu, align 4, !tbaa !65
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %.079.i.i54.i.i.i, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.i52.i.i.i, i64 32
  %.not.i.i55.i.i.i.7 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i55.i.i.i.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, label %.lr.ph.i.i51.i.i.i, !llvm.loop !1662

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i: ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i, %middle.block59
  %.lcssa = phi ptr [ %i.eq, %middle.block59 ], [ %.lcssa67.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ], [ %i.fy, %.lr.ph.i.i51.i.i.i ] ; 2 uses
  %i.ga = sub i64 %3, %i.aq                       ; 3 uses
  %xtraiter75 = and i64 %i.ga, 3                  ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i58.i.i.i.prol.loopexit, label %.lr.ph.i.i58.i.i.i.prol

.lr.ph.i.i58.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, %.lr.ph.i.i58.i.i.i.prol
  %.020.i.i.i.i.i.prol = phi i64 [ %i.gg, %.lr.ph.i.i58.i.i.i.prol ], [ %i.ga, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  %.0919.i.i.i.i.i.prol = phi ptr [ %i.ge, %.lr.ph.i.i58.i.i.i.prol ], [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ] ; 2 uses
  %.01618.i.i.i.i.i.prol = phi ptr [ %i.gf, %.lr.ph.i.i58.i.i.i.prol ], [ %i.l, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ] ; 3 uses
  %prol.iter77 = phi i64 [ %prol.iter77.next, %.lr.ph.i.i58.i.i.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i.prol) ]
  %i.gb = load i32, ptr %.0919.i.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.gb, ptr %.01618.i.i.i.i.i.prol, align 4, !tbaa !65
  %i.gc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.gg = add i64 %.020.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter77.next = add i64 %prol.iter77, 1     ; 2 uses
  %prol.iter77.cmp.not = icmp eq i64 %prol.iter77.next, %xtraiter75
  br i1 %prol.iter77.cmp.not, label %.lr.ph.i.i58.i.i.i.prol.loopexit, label %.lr.ph.i.i58.i.i.i.prol, !llvm.loop !1663

.lr.ph.i.i58.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i58.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i
  %.020.i.i.i.i.i.unr = phi i64 [ %i.ga, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.gg, %.lr.ph.i.i58.i.i.i.prol ]
  %.0919.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.ge, %.lr.ph.i.i58.i.i.i.prol ]
  %.01618.i.i.i.i.i.unr = phi ptr [ %i.l, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.gf, %.lr.ph.i.i58.i.i.i.prol ]
  %i.gh = sub i64 %i.aq, %3
  %i.gi = icmp ugt i64 %i.gh, -4
  br i1 %i.gi, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i58.i.i.i

.lr.ph.i.i58.i.i.i:                               ; preds = %.lr.ph.i.i58.i.i.i.prol.loopexit, %.lr.ph.i.i58.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.i58.i.i.i ], [ %.020.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i58.i.i.i ], [ %.0919.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i58.i.i.i ], [ %.01618.i.i.i.i.i.unr, %.lr.ph.i.i58.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.i) ]
  %i.gj = load i32, ptr %.0919.i.i.i.i.i, align 4, !tbaa !65
  store i32 %i.gj, ptr %.01618.i.i.i.i.i, align 4, !tbaa !65
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 4
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !65
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !65
  %i.gp = add i32 %i.gk, 2
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 8
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !65
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !65
  %i.gt = add i32 %i.gk, 3
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 12
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 12
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !65
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !65
  %i.gx = add i32 %i.gk, 4
  store i32 %i.gx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gy = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.i, i64 16
  %i.gz = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.i, i64 16
  %i.ha = add i64 %.020.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i59.i.i.i.3 = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i59.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i58.i.i.i, !llvm.loop !1651

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i58.i.i.i.prol.loopexit, %.lr.ph.i.i58.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block39, %bb.c, %bb.d
  %i.hb = trunc i64 %3 to i16
  %i.hc = add i16 %i.g, %i.hb
  store i16 %i.hc, ptr %i.f, align 8, !tbaa !95
  store ptr %i.b, ptr %0, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.b, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !94   ; 2 uses
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = xor i64 %i.c, 65535
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !95
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.a
  %.tr.i = zext i16 %i.b to i32
  %.lhs.trunc.i = shl nuw nsw i32 %.tr.i, 3
  %i.j = udiv i32 %.lhs.trunc.i, 5
  %i.k = add i64 %3, %i.g                         ; 2 uses
  %i.l = tail call i32 @llvm.umin.i32(i32 %i.j, i32 65535)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = tail call noundef i64 @llvm.umax.i64(i64 %i.k, i64 %i.m) ; 2 uses
  %i.o = icmp ugt i64 %i.k, 65535
  br i1 %i.o, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !40

bb.c:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 4 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !92     ; 8 uses
  %i.s = load i16, ptr %i.e, align 8, !tbaa !97   ; 4 uses
  %i.t = zext i16 %i.s to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.r, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !65
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 8 uses
  %.not17.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not17.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %3, 2                           ; 2 uses
  %5 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %4, i64 %i.aa     ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %5, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %.015.lcssa.i.i.i, %i.ab
  %bound122 = icmp ult ptr %4, %5
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ugt ptr %i.ab, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound125 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %.lr.ph.i.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ac = and i64 %3, 7
  %i.ad = shl i64 %n.vec, 2                       ; 2 uses
  %i.ae = getelementptr i8, ptr %4, i64 %i.ad
  %i.af = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ad
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi28 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.ah ; 2 uses
  %next.gep29 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep29) ]
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !1674
  %wide.load37 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !65, !alias.scope !1674
  %i.aj = getelementptr i8, ptr %next.gep29, i64 16
  store <4 x i32> %wide.load, ptr %next.gep29, align 4, !tbaa !65, !alias.scope !1675, !noalias !1676
  store <4 x i32> %wide.load37, ptr %i.aj, align 4, !tbaa !65, !alias.scope !1675, !noalias !1676
  %i.ak = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.al = add <4 x i32> %vec.phi28, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1670

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !1677, !noalias !1674
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader40

.lr.ph.i.i.i.i.preheader40:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ] ; 2 uses
  %.020.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %.0919.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %.01618.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %i.ao = add i64 %.020.i.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.prol
  %i.ap = phi i32 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.020.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.prol ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.0919.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader40 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.aq = load i32, ptr %.0919.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.aq, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !65
  %i.ar = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i.prol, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %i.au = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1671

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader40
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.au, %.lr.ph.i.i.i.i.prol ]
  %.0919.i.i.i.i.unr = phi ptr [ %.0919.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %.01618.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %i.av = icmp ult i64 %i.ao, 3
  br i1 %i.av, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.aw = phi i32 [ %i.bk, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.0919.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.0919.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ax = load i32, ptr %.0919.i.i.i.i, align 4, !tbaa !65
  store i32 %i.ax, ptr %.01618.i.i.i.i, align 4, !tbaa !65
  %i.ay = add i32 %i.aw, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !65
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !65
  %i.bc = add i32 %i.aw, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !65
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !65
  %i.bg = add i32 %i.aw, 3
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !65
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !65
  %i.bk = add i32 %i.aw, 4                        ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.i, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %i.bn = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1672

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bs, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bt, %.lr.ph.i20.i.i ], [ %i.bo, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bp = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.bp, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bs = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bs, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !14

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter43 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bu, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bu = add nsw i64 %.05.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.bv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1673

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.bu, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.bx, %.lr.ph.i.i.prol ]
  %i.by = icmp ult i16 %i.s, 4
  br i1 %i.by, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.bz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.ca = add i32 %i.bz, -1
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.cb, align 4, !tbaa !65
  %i.cc = add i32 %i.bz, -2
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !65
  %i.ce = add i32 %i.bz, -3
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cg = add nsw i64 %.05.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.cf, align 4, !tbaa !65
  %i.ch = add i32 %i.bz, -4
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !13

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %i.cj = load i16, ptr %i.a, align 2, !tbaa !94
  %i.ck = zext i16 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cl) #25
  %.pre.i = load i16, ptr %i.e, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %.loopexit.i
end_hunk_5
