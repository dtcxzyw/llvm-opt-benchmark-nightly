Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmRKS5_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit: ; preds = %bb.d
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  store i64 %1, ptr %i.b, align 8, !tbaa !35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit: ; preds = %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EmNS0_14default_init_tE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.c, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit: ; preds = %bb.d
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  store i64 %1, ptr %i.b, align 8, !tbaa !35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit: ; preds = %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmNS0_14default_init_tERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EmNS0_14default_init_tERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 4611686018427387903
  br i1 %i.c, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, !prof !40

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit: ; preds = %bb.d
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !58
  store i64 %1, ptr %i.b, align 8, !tbaa !35
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit: ; preds = %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvEC5EmRKS3_) align 2 personality ptr @__gxx_personality_v0 {
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
  %i.l = load i32, ptr %2, align 4, !tbaa !65, !alias.scope !190
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !65
  %i.o = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.p = add <4 x i32> %vec.phi6, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !191, !noalias !190
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !188

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
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j     ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.h, %i.l
  %bound119 = icmp ult ptr %i.i, %i.k
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ugt ptr %i.l, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound122 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  br i1 %conflict.rdx24, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre, -8                      ; 3 uses
  %i.m = and i64 %.pre, 7
  %i.n = shl i64 %n.vec, 2                        ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.h, i64 %i.n
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.q, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.r ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.h, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !207
  %wide.load27 = load <4 x i32>, ptr %i.s, align 4, !tbaa !65, !alias.scope !207
  %i.t = getelementptr i8, ptr %next.gep26, i64 16
  store <4 x i32> %wide.load, ptr %next.gep26, align 4, !tbaa !65, !alias.scope !208, !noalias !209
  store <4 x i32> %wide.load27, ptr %i.t, align 4, !tbaa !65, !alias.scope !208, !noalias !209
  %i.u = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.v = add <4 x i32> %vec.phi25, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !210, !noalias !207
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %.0819.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %i.y = add i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %i.z = phi i32 [ %i.ac, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader30 ]
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader30 ]
  %.0819.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0819.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ae, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.aa = add i64 %.020.i.prol, -1                ; 2 uses
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !65
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ac = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !205

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader30 ], [ %i.ac, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader30 ], [ %i.aa, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %.0819.i.ph, %.lr.ph.i.preheader30 ], [ %i.ad, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader30 ], [ %i.ae, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.y, 3
  br i1 %i.af, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i32 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.at, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.ah, ptr %.01618.i, align 4, !tbaa !65
  %i.ai = add i32 %i.ag, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ag, 2
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !65
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !65
  %i.aq = add i32 %i.ag, 3
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.at = add i64 %.020.i, -4                     ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !65
  store i32 %i.au, ptr %i.as, align 4, !tbaa !65
  %i.av = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.at, 0
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
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j     ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.h, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound018 = icmp ult ptr %i.h, %i.l
  %bound119 = icmp ult ptr %i.i, %i.k
  %found.conflict20 = and i1 %bound018, %bound119
  %conflict.rdx = or i1 %found.conflict, %found.conflict20
  %bound021 = icmp ugt ptr %i.l, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound122 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx, %found.conflict23
  br i1 %conflict.rdx24, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.pre, -8                      ; 3 uses
  %i.m = and i64 %.pre, 7
  %i.n = shl i64 %n.vec, 2                        ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.h, i64 %i.n
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.q, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.r ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.h, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !226
  %wide.load27 = load <4 x i32>, ptr %i.s, align 4, !tbaa !65, !alias.scope !226
  %i.t = getelementptr i8, ptr %next.gep26, i64 16
  store <4 x i32> %wide.load, ptr %next.gep26, align 4, !tbaa !65, !alias.scope !227, !noalias !228
  store <4 x i32> %wide.load27, ptr %i.t, align 4, !tbaa !65, !alias.scope !227, !noalias !228
  %i.u = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.v = add <4 x i32> %vec.phi25, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !229, !noalias !226
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %i.y = add i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %i.z = phi i32 [ %i.ab, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader30 ]
  %.020.i.prol = phi i64 [ %i.ae, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader30 ]
  %.0919.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.aa = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ab = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.ae = add i64 %.020.i.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !224

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader30 ], [ %i.ab, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader30 ], [ %i.ae, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader30 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader30 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.y, 3
  br i1 %i.af, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i32 [ %i.au, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ah, ptr %.01618.i, align 4, !tbaa !65
  %i.ai = add i32 %i.ag, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ag, 2
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !65
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !65
  %i.aq = add i32 %i.ag, 3
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !65
  store i32 %i.at, ptr %i.as, align 4, !tbaa !65
  %i.au = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.ax = add i64 %.020.i, -4                     ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ax, 0
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
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE34priv_insert_ordered_at_shift_rangeEmmmm:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i40) ]
  %i.aj = load i32, ptr %.018.i39, align 4, !tbaa !65
  store i32 %i.aj, ptr %.01517.i40, align 4, !tbaa !65
  store i32 0, ptr %.018.i39, align 4, !tbaa !65
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i39, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i40, i64 4
  %.not.i41 = icmp eq ptr %i.am, %i.c
  br i1 %.not.i41, label %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit43, label %.lr.ph.i38, !llvm.loop !1

_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit43: ; preds = %.lr.ph.i38, %bb.e
  %.not8.i44 = icmp eq i64 %.idx53, %i.ai
  br i1 %.not8.i44, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit43
  %i.ao = shl i64 %i.y, 2
  %i.ap = add nsw i64 %.idx, -4
  %i.aq = sub i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check68 = icmp ult i64 %i.aq, 44
  br i1 %min.iters.check68, label %.lr.ph.i45.preheader86, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph.i45.preheader
  %i.at = shl i64 %i.y, 2
  %i.au = getelementptr i8, ptr %i.a, i64 %i.at
  %bound070 = icmp ult ptr %i.au, %i.ah
  %bound171 = icmp ult ptr %i.b, %i.ag
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %.lr.ph.i45.preheader86, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck69
  %n.vec74 = and i64 %i.as, 9223372036854775800   ; 3 uses
  %i.av = mul i64 %n.vec74, -4                    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ag, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.ah, i64 %i.av
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %i.ay = mul i64 %index76, -4                    ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.ag, i64 %i.ay ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.ah, i64 %i.ay ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %next.gep78, i64 -16 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %next.gep78, i64 -32 ; 2 uses
  %wide.load79 = load <4 x i32>, ptr %i.az, align 4, !tbaa !65, !alias.scope !380
  %wide.load80 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !65, !alias.scope !380
  %i.bb = getelementptr inbounds i8, ptr %next.gep77, i64 -16
  %i.bc = getelementptr inbounds i8, ptr %next.gep77, i64 -32
  store <4 x i32> %wide.load79, ptr %i.bb, align 4, !tbaa !65, !alias.scope !381, !noalias !380
  store <4 x i32> %wide.load80, ptr %i.bc, align 4, !tbaa !65, !alias.scope !381, !noalias !380
  store <4 x i32> zeroinitializer, ptr %i.az, align 4, !tbaa !65, !alias.scope !380
  store <4 x i32> zeroinitializer, ptr %i.ba, align 4, !tbaa !65, !alias.scope !380
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.bd, label %middle.block82, label %vector.body75, !llvm.loop !376

middle.block82:                                   ; preds = %vector.body75
  %cmp.n83 = icmp eq i64 %i.as, %n.vec74
  br i1 %cmp.n83, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i45.preheader86

.lr.ph.i45.preheader86:                           ; preds = %vector.memcheck69, %.lr.ph.i45.preheader, %middle.block82
  %.010.i46.ph = phi ptr [ %i.ag, %vector.memcheck69 ], [ %i.ag, %.lr.ph.i45.preheader ], [ %i.aw, %middle.block82 ]
  %.079.i47.ph = phi ptr [ %i.ah, %vector.memcheck69 ], [ %i.ah, %.lr.ph.i45.preheader ], [ %i.ax, %middle.block82 ]
  br label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.preheader86, %.lr.ph.i45
  %.010.i46 = phi ptr [ %i.bf, %.lr.ph.i45 ], [ %.010.i46.ph, %.lr.ph.i45.preheader86 ]
  %.079.i47 = phi ptr [ %i.be, %.lr.ph.i45 ], [ %.079.i47.ph, %.lr.ph.i45.preheader86 ]
  %i.be = getelementptr inbounds i8, ptr %.079.i47, i64 -4 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %.010.i46, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !65
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !65
  store i32 0, ptr %i.be, align 4, !tbaa !65
  %.not.i48 = icmp eq ptr %i.b, %i.be
  br i1 %.not.i48, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i45, !llvm.loop !377

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i, %.lr.ph.i45, %middle.block, %middle.block82, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit43, %bb.b, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.0 = phi i64 [ 0, %middle.block82 ], [ %i.af, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ 0, %bb.b ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit43 ], [ 0, %middle.block ], [ 0, %.lr.ph.i45 ], [ 0, %.lr.ph.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE13priv_in_rangeENS0_12vec_iteratorIPS3_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58, !noalias !384 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %.not = icmp ule ptr %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  %i.f = icmp ult ptr %i.b, %i.e
  %i.g = select i1 %.not, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE20priv_in_range_or_endENS0_12vec_iteratorIPS3_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58, !noalias !387 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %.not = icmp ule ptr %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.d
  %i.f = icmp ule ptr %i.b, %i.e
  %i.g = select i1 %.not, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE15steal_resourcesERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !78
  store ptr %i.a, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <2 x i64>, ptr %i.b, align 8, !tbaa !35
  store <2 x i64> %i.d, ptr %i.c, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE18protected_set_sizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2ENS0_18initial_capacity_tEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5ENS0_18initial_capacity_tEPS3_m) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !78
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5Ev) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5ERKS5_) align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5Em) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01315.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.016.i.prol, -1             ; 2 uses
  store i32 0, ptr %.01315.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !388

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.016.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01315.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01315.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01315.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !65
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.o, 3
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  %i.v = add nsw i64 %.016.i, -4                  ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !65
  %i.w = add i32 %i.o, 4
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  %.not.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.3, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %.lr.ph.i, !llvm.loop !5

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE14priv_raw_beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EmRKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01315.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.016.i.prol, -1             ; 2 uses
  store i32 0, ptr %.01315.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !389

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.016.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01315.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01315.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01315.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !65
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.o, 3
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  %i.v = add nsw i64 %.016.i, -4                  ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !65
  %i.w = add i32 %i.o, 4
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  %.not.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.3, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %.lr.ph.i, !llvm.loop !5

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EmNS0_14default_init_tE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01315.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.016.i.prol, -1             ; 2 uses
  store i32 0, ptr %.01315.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !390

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.016.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01315.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01315.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01315.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !65
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.o, 3
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  %i.v = add nsw i64 %.016.i, -4                  ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !65
  %i.w = add i32 %i.o, 4
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  %.not.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.3, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EmNS0_14default_init_tERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EmNS0_14default_init_tERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.016.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01315.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.016.i.prol, -1             ; 2 uses
  store i32 0, ptr %.01315.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.01315.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !391

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.016.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01315.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.016.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01315.i = phi ptr [ %i.x, %.lr.ph.i ], [ %.01315.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !65
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  store i32 0, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.o, 3
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  %i.v = add nsw i64 %.016.i, -4                  ; 2 uses
  store i32 0, ptr %i.u, align 4, !tbaa !65
  %i.w = add i32 %i.o, 4
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  %.not.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.3, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EET0_RT_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EmRKS3_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.017.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.017.i.prol, -1             ; 2 uses
  %i.k = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.k, ptr %.01416.i.prol, align 4, !tbaa !65
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !392

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.017.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %1, 4
  br i1 %i.o, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01416.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.p, ptr %.01416.i, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4
  %i.t = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.t, ptr %i.s, align 4, !tbaa !65
  %i.u = add i32 %i.q, 2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.w = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.w, ptr %i.v, align 4, !tbaa !65
  %i.x = add i32 %i.q, 3
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.z = add nsw i64 %.017.i, -4                  ; 2 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !65
  %i.ab = add i32 %i.q, 4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !7

_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EmRKS3_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EmRKS3_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.017.i.prol = phi i64 [ %i.j, %.lr.ph.i.prol ], [ %1, %bb.c ]
  %.01416.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = add nsw i64 %.017.i.prol, -1             ; 2 uses
  %i.k = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.k, ptr %.01416.i.prol, align 4, !tbaa !65
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %.01416.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !393

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.017.i.unr = phi i64 [ %1, %bb.c ], [ %i.j, %.lr.ph.i.prol ]
  %.01416.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.n, %.lr.ph.i.prol ]
  %i.o = icmp ult i64 %1, 4
  br i1 %i.o, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.017.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01416.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.01416.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.p, ptr %.01416.i, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.01416.i, i64 4
  %i.t = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.t, ptr %i.s, align 4, !tbaa !65
  %i.u = add i32 %i.q, 2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i, i64 8
  %i.w = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.w, ptr %i.v, align 4, !tbaa !65
  %i.x = add i32 %i.q, 3
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.01416.i, i64 12
  %i.z = add nsw i64 %.017.i, -4                  ; 2 uses
  %i.aa = load i32, ptr %2, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !65
  %i.ab = add i32 %i.q, 4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.01416.i, i64 16
  %.not.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit, label %.lr.ph.i, !llvm.loop !7

_ZN5boost9container26uninitialized_fill_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEES4_PS4_EET1_RT_RKT0_mS7_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5ERKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.f, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.h = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.g, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef null)
  %i.i = extractvalue { ptr, i32 } %i.h, 0        ; 4 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.k = lshr i64 %i.j, 2
  store ptr %i.i, ptr %0, align 8, !tbaa !78
  store i64 %i.k, ptr %i.e, align 8, !tbaa !35
  %.pre = load i64, ptr %i.b, align 8, !tbaa !80  ; 5 uses
  %.not17.i = icmp eq i64 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.m, %.lr.ph.i.prol ], [ %.pre, %.lr.ph.i.preheader ]
  %.0819.i.prol = phi ptr [ %i.q, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.r, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = add i64 %.020.i.prol, -1                 ; 2 uses
  %i.n = load i32, ptr %.0819.i.prol, align 4, !tbaa !65
  store i32 %i.n, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !394

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %.pre, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %.pre, 4
  br i1 %i.s, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.t, ptr %.01618.i, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !65
  store i32 %i.y, ptr %i.x, align 4, !tbaa !65
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !65
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !65
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.ag = add i64 %.020.i, -4                     ; 2 uses
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !65
  %i.ai = add i32 %i.u, 4
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.3, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container26uninitialized_copy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EOS6_) align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !78
  store ptr %i.a, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !35
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2ESt16initializer_listIS3_ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5ESt16initializer_listIS3_ERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %2, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.e, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.g = extractvalue { ptr, i32 } %i.f, 0        ; 4 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.i = lshr i64 %i.h, 2
  store ptr %i.g, ptr %0, align 8, !tbaa !78
  store i64 %i.i, ptr %i.c, align 8, !tbaa !35
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %bb.c, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.o, %.lr.ph.i.prol ], [ %2, %bb.c ]
  %.0919.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %1, %bb.c ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.n, %.lr.ph.i.prol ], [ %i.g, %bb.c ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %bb.c ]
  %i.j = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.j, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.o = add nsw i64 %.020.i.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !395

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %bb.c
  %.020.i.unr = phi i64 [ %2, %bb.c ], [ %i.o, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %1, %bb.c ], [ %i.m, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %i.g, %bb.c ], [ %i.n, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %2, 4
  br i1 %i.p, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.q = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.q, ptr %.01618.i, align 4, !tbaa !65
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !65
  store i32 %i.v, ptr %i.u, align 4, !tbaa !65
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.z = load i32, ptr %i.x, align 4, !tbaa !65
  store i32 %i.z, ptr %i.y, align 4, !tbaa !65
  %i.aa = add i32 %i.r, 3
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.r, 4
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.ah = add nsw i64 %.020.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SB_mSC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2ERKS6_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5ERKS6_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !82
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.f, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.c, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.h = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 1, i64 noundef 4, i64 noundef 4, i64 noundef %i.g, i64 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef null)
  %i.i = extractvalue { ptr, i32 } %i.h, 0        ; 4 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i, label %bb.c

_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.thread.i.i: ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i, %bb.b
  call void @_ZN5boost9container15throw_bad_allocEv() #23
  unreachable

bb.c:                                             ; preds = %_ZN5boost9container9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EE23priv_allocation_commandEjmRmRPS3_.exit.i.i.i.i.i
  %i.k = lshr i64 %i.j, 2
  store ptr %i.i, ptr %0, align 8, !tbaa !78
  store i64 %i.k, ptr %i.e, align 8, !tbaa !35
  %.pre = load i64, ptr %i.b, align 8, !tbaa !80  ; 5 uses
  %.not17.i = icmp eq i64 %.pre, 0
  br i1 %.not17.i, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !78     ; 2 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.r, %.lr.ph.i.prol ], [ %.pre, %.lr.ph.i.preheader ]
  %.0919.i.prol = phi ptr [ %i.p, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.q, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.m = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.m, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.020.i.prol, -1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !396

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi i64 [ %.pre, %.lr.ph.i.preheader ], [ %i.r, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.s = icmp ult i64 %.pre, 4
  br i1 %i.s, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.t = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.t, ptr %.01618.i, align 4, !tbaa !65
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !65
  store i32 %i.y, ptr %i.x, align 4, !tbaa !65
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !65
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !65
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !65
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !65
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.ak = add i64 %.020.i, -4                     ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.3, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i, !llvm.loop !397

_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC2EOS6_RKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvEC5EOS6_RKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !78
  store ptr %i.b, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !35
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80   ; 5 uses
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i.preheader

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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !398

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05.i.unr = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %storemerge4.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %i.h = icmp ult i64 %i.c, 4
  br i1 %i.h, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i

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
  br i1 %.not.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit, label %.lr.ph.i, !llvm.loop !10

_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82
  %.not.i1 = icmp eq i64 %i.t, 0
  br i1 %.not.i1, label %_ZN5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.a)
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2Em:bb.a
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE14priv_raw_beginEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmRKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EmRKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %1 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !94
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 65535
  br i1 %i.d, label %bb.c, label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc nuw nsw i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit

_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit: ; preds = %_ZN5boost9container32uninitialized_value_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl32disable_if_memzero_initializableIT0_S9_E4typeERT_mS9_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EmNS0_14default_init_tE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %1 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !94
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 65535
  br i1 %i.d, label %bb.c, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc nuw nsw i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit: ; preds = %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmNS0_14default_init_tERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EmNS0_14default_init_tERKS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = trunc i64 %1 to i16                      ; 2 uses
  store i16 %i.b, ptr %i.a, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  store i16 0, ptr %i.c, align 2, !tbaa !94
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 65535
  br i1 %i.d, label %bb.c, label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit: ; preds = %bb.b
  %i.e = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !92
  store i16 %i.b, ptr %i.c, align 2, !tbaa !93
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !65
  %i.g = trunc nuw nsw i64 %1 to i32
  %i.h = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %i.g
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  br label %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit

_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit: ; preds = %_ZN5boost9container34uninitialized_default_init_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_EET0_RT_mS7_.exit.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 comdat($_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEC5EmRKS3_) align 2 personality ptr @__gxx_personality_v0 {
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
  %i.l = load i32, ptr %2, align 4, !tbaa !65, !alias.scope !541
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.k, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.n, align 4, !tbaa !65
  %i.o = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.p = add <4 x i32> %vec.phi6, splat (i32 1)   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !537

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !542, !noalias !541
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
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !539

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
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j     ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.g, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %i.g, %i.l
  %bound118 = icmp ult ptr %i.i, %i.k
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ugt ptr %i.l, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound121 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %.lr.ph.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 65528                    ; 3 uses
  %i.m = and i64 %i.h, 7
  %i.n = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.g, i64 %i.n
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.q, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.r ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !558
  %wide.load26 = load <4 x i32>, ptr %i.s, align 4, !tbaa !65, !alias.scope !558
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load, ptr %next.gep25, align 4, !tbaa !65, !alias.scope !559, !noalias !560
  store <4 x i32> %wide.load26, ptr %i.t, align 4, !tbaa !65, !alias.scope !559, !noalias !560
  %i.u = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.v = add <4 x i32> %vec.phi24, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !561, !noalias !558
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader29

.lr.ph.i.preheader29:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %.0819.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %i.y = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader29, %.lr.ph.i.prol
  %i.z = phi i32 [ %i.ac, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader29 ]
  %.020.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader29 ]
  %.0819.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.0819.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ae, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader29 ]
  %i.aa = add nsw i64 %.020.i.prol, -1            ; 2 uses
  %i.ab = load i32, ptr %.0819.i.prol, align 4, !tbaa !65
  store i32 %i.ab, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ac = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %.0819.i.prol, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !556

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader29
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader29 ], [ %i.ac, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader29 ], [ %i.aa, %.lr.ph.i.prol ]
  %.0819.i.unr = phi ptr [ %.0819.i.ph, %.lr.ph.i.preheader29 ], [ %i.ad, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader29 ], [ %i.ae, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.y, 3
  br i1 %i.af, label %_ZN5boost9container26uninitialized_copy_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i32 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.at, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0819.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.0819.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.ah, ptr %.01618.i, align 4, !tbaa !65
  %i.ai = add i32 %i.ag, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ag, 2
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !65
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !65
  %i.aq = add i32 %i.ag, 3
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.at = add nsw i64 %.020.i, -4                 ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !65
  store i32 %i.au, ptr %i.as, align 4, !tbaa !65
  %i.av = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %.not.i.3 = icmp eq i64 %i.at, 0
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
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j     ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 %i.j     ; 2 uses
  %bound0 = icmp ult ptr %i.g, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.k, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound017 = icmp ult ptr %i.g, %i.l
  %bound118 = icmp ult ptr %i.i, %i.k
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx = or i1 %found.conflict, %found.conflict19
  %bound020 = icmp ugt ptr %i.l, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound121 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx23 = or i1 %conflict.rdx, %found.conflict22
  br i1 %conflict.rdx23, label %.lr.ph.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 65528                    ; 3 uses
  %i.m = and i64 %i.h, 7
  %i.n = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.o = getelementptr i8, ptr %i.i, i64 %i.n
  %i.p = getelementptr i8, ptr %i.g, i64 %i.n
  %i.q = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre7, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.q, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi24 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.r = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.r ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.g, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !577
  %wide.load26 = load <4 x i32>, ptr %i.s, align 4, !tbaa !65, !alias.scope !577
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load, ptr %next.gep25, align 4, !tbaa !65, !alias.scope !578, !noalias !579
  store <4 x i32> %wide.load26, ptr %i.t, align 4, !tbaa !65, !alias.scope !578, !noalias !579
  %i.u = add <4 x i32> %vec.phi, splat (i32 1)    ; 2 uses
  %i.v = add <4 x i32> %vec.phi24, splat (i32 1)  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !580, !noalias !577
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i.preheader29

.lr.ph.i.preheader29:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre7, %vector.memcheck ], [ %.pre7, %.lr.ph.i.preheader ], [ %i.x, %middle.block ] ; 2 uses
  %.020.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 4 uses
  %.0919.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %.01618.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.p, %middle.block ] ; 2 uses
  %i.y = add nsw i64 %.020.i.ph, -1
  %xtraiter = and i64 %.020.i.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader29, %.lr.ph.i.prol
  %i.z = phi i32 [ %i.ab, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader29 ]
  %.020.i.prol = phi i64 [ %i.ae, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader29 ]
  %.0919.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %.0919.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %.01618.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %.01618.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader29 ]
  %i.aa = load i32, ptr %.0919.i.prol, align 4, !tbaa !65
  store i32 %i.aa, ptr %.01618.i.prol, align 4, !tbaa !65
  %i.ab = add i32 %i.z, 1                         ; 3 uses
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.0919.i.prol, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01618.i.prol, i64 4 ; 2 uses
  %i.ae = add nsw i64 %.020.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !575

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader29
  %.unr = phi i32 [ %.ph, %.lr.ph.i.preheader29 ], [ %i.ab, %.lr.ph.i.prol ]
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader29 ], [ %i.ae, %.lr.ph.i.prol ]
  %.0919.i.unr = phi ptr [ %.0919.i.ph, %.lr.ph.i.preheader29 ], [ %i.ac, %.lr.ph.i.prol ]
  %.01618.i.unr = phi ptr [ %.01618.i.ph, %.lr.ph.i.preheader29 ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.y, 3
  br i1 %i.af, label %_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ag = phi i32 [ %i.au, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.020.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0919.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.0919.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01618.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01618.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = load i32, ptr %.0919.i, align 4, !tbaa !65
  store i32 %i.ah, ptr %.01618.i, align 4, !tbaa !65
  %i.ai = add i32 %i.ag, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %.0919.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !65
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !65
  %i.am = add i32 %i.ag, 2
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0919.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !65
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !65
  %i.aq = add i32 %i.ag, 3
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %.0919.i, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i, i64 12
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !65
  store i32 %i.at, ptr %i.as, align 4, !tbaa !65
  %i.au = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %.0919.i, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i, i64 16
  %i.ax = add nsw i64 %.020.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i64 %i.ax, 0
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
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignIPKS3_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE:bb.a
  %bound0 = icmp ugt ptr %i.am, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader94, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck78
  %n.vec80 = and i64 %i.aj, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec80, 2                     ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.j, i64 %i.an   ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next88, %vector.body81 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph79 ], [ %i.au, %vector.body81 ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.av, %vector.body81 ]
  %i.ar = shl i64 %index82, 2                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.j, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load86 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !65, !alias.scope !597
  %wide.load87 = load <4 x i32>, ptr %i.as, align 4, !tbaa !65, !alias.scope !597
  %i.at = getelementptr i8, ptr %next.gep85, i64 16
  store <4 x i32> %wide.load86, ptr %next.gep85, align 4, !tbaa !65
  store <4 x i32> %wide.load87, ptr %i.at, align 4, !tbaa !65
  %i.au = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.av = add <4 x i32> %vec.phi83, splat (i32 1) ; 2 uses
  %index.next88 = add nuw i64 %index82, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next88, %n.vec80
  br i1 %i.aw, label %middle.block89, label %vector.body81, !llvm.loop !585

middle.block89:                                   ; preds = %vector.body81
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !598, !noalias !597
  %cmp.n90 = icmp eq i64 %i.aj, %n.vec80
  br i1 %cmp.n90, label %.loopexit, label %.lr.ph.i.i18.preheader94

.lr.ph.i.i18.preheader94:                         ; preds = %vector.memcheck78, %.lr.ph.i.i18.preheader, %middle.block89
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck78 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.ax, %middle.block89 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck78 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.ao, %middle.block89 ]
  %.01517.i.i.ph = phi ptr [ %i.j, %vector.memcheck78 ], [ %i.j, %.lr.ph.i.i18.preheader ], [ %i.ap, %middle.block89 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader94, %.lr.ph.i.i18
  %i.ay = phi i32 [ %i.ba, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader94 ]
  %.018.i.i = phi ptr [ %i.bb, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader94 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.bc, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader94 ] ; 2 uses
  %i.az = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.az, ptr %.01517.i.i, align 4, !tbaa !65
  %i.ba = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bb, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !587

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block89, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.j, %bb.f ], [ %i.ap, %middle.block89 ], [ %i.bc, %.lr.ph.i.i18 ]
  %i.bd = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.be = ptrtoint ptr %i.j to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = trunc i64 %i.bg to i16
  store i16 %i.bh, ptr %i.af, align 8, !tbaa !95
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr %0, align 8, !tbaa !92    ; 9 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !97 ; 3 uses
  %i.bm = zext i16 %i.bl to i64                   ; 9 uses
  %i.bn = icmp samesign ugt i64 %i.d, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i16 %i.bl, 8
  %i.bo = sub i64 %i.b, %i.bj
  %diff.check58 = icmp ugt i64 %i.bo, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader97, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bm, 65528                 ; 3 uses
  %i.bp = shl nuw nsw i64 %n.vec62, 2             ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.bp     ; 2 uses
  %i.bs = and i64 %i.bm, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bt = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !65
  %wide.load68 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !65
  %i.bv = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !65
  store <4 x i32> %wide.load68, ptr %i.bv, align 4, !tbaa !65
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bw, label %middle.block70, label %vector.body63, !llvm.loop !588

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %n.vec62, %i.bm
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23.preheader97

.lr.ph.i.i23.preheader97:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph98 = phi ptr [ %i.bi, %.lr.ph.i.i23.preheader ], [ %i.bq, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.br, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bm, %.lr.ph.i.i23.preheader ], [ %i.bs, %middle.block70 ] ; 4 uses
  %i.bx = add nsw i64 %.068.i.i.ph, -1
  %xtraiter107 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader97, %.lr.ph.i.i23.prol
  %i.by = phi ptr [ %i.cc, %.lr.ph.i.i23.prol ], [ %.ph98, %.lr.ph.i.i23.preheader97 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.cb, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader97 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader97 ]
  %prol.iter109 = phi i64 [ %prol.iter109.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader97 ]
  %i.bz = add nsw i64 %.068.i.i.prol, -1          ; 2 uses
  %i.ca = load i32, ptr %.09.i.i.prol, align 4, !tbaa !65
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !589

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader97
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader97 ], [ %i.cb, %.lr.ph.i.i23.prol ]
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader97 ], [ %i.cc, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph98, %.lr.ph.i.i23.preheader97 ], [ %i.cc, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader97 ], [ %i.cb, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader97 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %i.cd = icmp ult i64 %i.bx, 7
  br i1 %i.cd, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.ce = phi ptr [ %i.dd, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.da, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cf = load i32, ptr %.09.i.i, align 4, !tbaa !65
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !65
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !65
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !65
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !65
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !65
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !65
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.da = add nsw i64 %.068.i.i, -8               ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !65
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %.not.i.i24.7 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i24.7, label %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i23, !llvm.loop !590

_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23, %middle.block70, %bb.h
  %.0.i = phi ptr [ %i.bi, %bb.h ], [ %i.bq, %middle.block70 ], [ %.lcssa99.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.dd, %.lr.ph.i.i23 ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.br, %middle.block70 ], [ %.lcssa100.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.dc, %.lr.ph.i.i23 ] ; 2 uses
  %i.de = sub nsw i64 %i.d, %i.bm                 ; 3 uses
  %xtraiter110 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol

.lr.ph.i14.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i14.i.prol
  %.020.i.i.prol = phi i64 [ %i.df, %.lr.ph.i14.i.prol ], [ %i.de, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.0819.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i14.i.prol ], [ %.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i14.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter112 = phi i64 [ %prol.iter112.next, %.lr.ph.i14.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.df = add nsw i64 %.020.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.dg = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !65
  store i32 %i.dg, ptr %.01618.i.i.prol, align 4, !tbaa !65
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol, !llvm.loop !591

.lr.ph.i14.i.prol.loopexit:                       ; preds = %.lr.ph.i14.i.prol, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.020.i.i.unr = phi i64 [ %i.de, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.df, %.lr.ph.i14.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.dj, %.lr.ph.i14.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.dk, %.lr.ph.i14.i.prol ]
  %i.dl = sub nsw i64 %i.bm, %i.d
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i
  %.020.i.i = phi i64 [ %i.ea, %.lr.ph.i14.i ], [ %.020.i.i.unr, %.lr.ph.i14.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.ed, %.lr.ph.i14.i ], [ %.0819.i.i.unr, %.lr.ph.i14.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.ee, %.lr.ph.i14.i ], [ %.01618.i.i.unr, %.lr.ph.i14.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.dn = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.dn, ptr %.01618.i.i, align 4, !tbaa !65
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !65
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !65
  %i.dt = add i32 %i.do, 2
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !65
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !65
  %i.dx = add i32 %i.do, 3
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ea = add nsw i64 %.020.i.i, -4               ; 2 uses
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !65
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !65
  %i.ec = add i32 %i.do, 4
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i15.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i, !llvm.loop !592

bb.i:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %2, %1
  br i1 %.not8.i.i, label %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.ef = sub i64 %i.b, %i.bj
  %diff.check = icmp ugt i64 %i.ef, -32
  %or.cond93 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond93, label %.lr.ph.i17.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.eg = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.eh = getelementptr i8, ptr %i.bi, i64 %i.eg  ; 2 uses
  %i.ei = and i64 %i.d, 7
  %i.ej = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ek = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.ek ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !65
  %wide.load54 = load <4 x i32>, ptr %i.el, align 4, !tbaa !65
  %i.em = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %wide.load54, ptr %i.em, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i17.i.preheader102

.lr.ph.i17.i.preheader102:                        ; preds = %.lr.ph.i17.i.preheader, %middle.block
  %.011.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i17.i.preheader ], [ %i.eh, %middle.block ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.d, %.lr.ph.i17.i.preheader ], [ %i.ei, %middle.block ] ; 4 uses
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i17.i.preheader ], [ %i.ej, %middle.block ] ; 2 uses
  %i.eo = add nsw i64 %.0610.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader102, %.lr.ph.i17.i.prol
  %.011.i.i.prol = phi ptr [ %i.es, %.lr.ph.i17.i.prol ], [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i17.i.prol ], [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ]
  %.079.i.i.prol = phi ptr [ %i.er, %.lr.ph.i17.i.prol ], [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.prol ], [ 0, %.lr.ph.i17.i.preheader102 ]
  %i.ep = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.eq = load i32, ptr %.079.i.i.prol, align 4, !tbaa !65
  store i32 %i.eq, ptr %.011.i.i.prol, align 4, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol, !llvm.loop !594

.lr.ph.i17.i.prol.loopexit:                       ; preds = %.lr.ph.i17.i.prol, %.lr.ph.i17.i.preheader102
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i17.i.preheader102 ], [ %i.es, %.lr.ph.i17.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.es, %.lr.ph.i17.i.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.er, %.lr.ph.i17.i.prol ]
  %i.et = icmp ult i64 %i.eo, 7
  br i1 %i.et, label %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.011.i.i = phi ptr [ %i.fs, %.lr.ph.i17.i ], [ %.011.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fp, %.lr.ph.i17.i ], [ %.0610.i.i.unr, %.lr.ph.i17.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.fr, %.lr.ph.i17.i ], [ %.079.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %i.eu = load i32, ptr %.079.i.i, align 4, !tbaa !65
  store i32 %i.eu, ptr %.011.i.i, align 4, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !65
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !65
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !65
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !65
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !65
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !65
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !65
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !65
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fp = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !65
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !65
  %i.fr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i18.i.7 = icmp eq i64 %i.fp, 0
  br i1 %.not.i18.i.7, label %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i17.i, !llvm.loop !595

_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %middle.block, %bb.i
  %.0.lcssa.i20.i = phi ptr [ %i.bi, %bb.i ], [ %i.eh, %middle.block ], [ %.lcssa103.unr, %.lr.ph.i17.i.prol.loopexit ], [ %i.fs, %.lr.ph.i17.i ] ; 2 uses
  %i.ft = sub nuw nsw i64 %i.bm, %i.d             ; 4 uses
  %.not3.i.i20 = icmp eq i64 %i.ft, 0
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter104 = and i64 %i.ft, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fu, %.lr.ph.i21.i.prol ], [ %i.ft, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fx, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fu = add nsw i64 %.05.i.i21.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !65
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !596

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.ft, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fx, %.lr.ph.i21.i.prol ]
  %i.fy = sub nsw i64 %i.d, %i.bm
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gh, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gj, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !65
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !65
  %i.gd = add i32 %i.ga, -2
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.ge, align 4, !tbaa !65
  %i.gf = add i32 %i.ga, -3
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gh = add nsw i64 %.05.i.i21, -4              ; 2 uses
  store i32 -2147483648, ptr %i.gg, align 4, !tbaa !65
  %i.gi = add i32 %i.ga, -4
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gh, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !13

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPKNS0_4test24movable_and_copyable_intEPS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.gk = trunc nuw i64 %i.d to i16
  store i16 %i.gk, ptr %i.bk, align 8, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS4_PS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEEaSEOS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.d, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %.not3.i.i.i.i.i = icmp eq i16 %i.b, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.b
  %i.c = zext i16 %i.b to i64                     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !92     ; 2 uses
  %xtraiter = and i64 %i.c, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.preheader.i.i.i.i ]
  %storemerge4.i.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i.i ]
  %i.e = add nsw i64 %.05.i.i.i.i.i.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i.prol, align 4, !tbaa !65
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.g = add i32 %i.f, -1
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !599

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i.i
  %.05.i.i.i.i.i.unr = phi i64 [ %i.c, %.lr.ph.i.preheader.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.preheader.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i16 %i.b, 4
  br i1 %i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %storemerge4.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i, align 4, !tbaa !65
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !65
  %i.m = add i32 %i.j, -2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.n, align 4, !tbaa !65
  %i.o = add i32 %i.j, -3
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 12
  %i.q = add nsw i64 %.05.i.i.i.i.i, -4           ; 2 uses
  store i32 -2147483648, ptr %i.p, align 4, !tbaa !65
  %i.r = add i32 %i.j, -4
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.b
  store i16 0, ptr %i.a, align 8, !tbaa !97
  %i.t = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_move_assignIS5_EEvONS1_IS3_T_S7_EEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_SA_E4typeELj0EEENSD_12is_differentISJ_S5_EENSD_5bool_ILb0EEESO_E4typeE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !600
  %i.w = zext i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_move_assignIS5_EEvONS1_IS3_T_S7_EEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_SA_E4typeELj0EEENSD_12is_differentISJ_S5_EENSD_5bool_ILb0EEESO_E4typeE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_move_assignIS5_EEvONS1_IS3_T_S7_EEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_SA_E4typeELj0EEENSD_12is_differentISJ_S5_EENSD_5bool_ILb0EEESO_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5clearEv.exit.i.i, %bb.c
  %i.y = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.y, ptr %0, align 8, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ab = load <2 x i16>, ptr %i.z, align 8, !tbaa !93
  store <2 x i16> %i.ab, ptr %i.a, align 8, !tbaa !93
  store ptr null, ptr %1, align 8, !tbaa !92
  store i16 0, ptr %i.aa, align 2, !tbaa !94
  store i16 0, ptr %i.z, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_move_assignIS5_EEvONS1_IS3_T_S7_EEPNS_11move_detail13disable_if_orIvNS0_3dtl10is_versionINS0_14real_allocatorIS3_SA_E4typeELj0EEENSD_12is_differentISJ_S5_EENSD_5bool_ILb0EEESO_E4typeE.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignESt16initializer_listIS3_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignIPKS3_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %i.a, ptr noundef null)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %2, i64 %1, ptr null, i64 0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !94
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = icmp ugt i64 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.a, 65535
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.a, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 7 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !92     ; 4 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !97   ; 3 uses
  %.not3.i.i = icmp eq i16 %i.k, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_destroy_allEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %xtraiter97 = and i64 %i.l, 3                   ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.m = add nsw i64 %.05.i.i.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !65
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !601

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader.i ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader.i ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i16 %i.k, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !65
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !65
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !65
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add nsw i64 %.05.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !65
  %i.z = add i32 %i.r, -4
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !13

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i16 0, ptr %i.j, align 8, !tbaa !97
  %i.ab = shl nuw nsw i64 %i.d, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ab) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.h, ptr %0, align 8, !tbaa !92
  %i.ac = trunc nuw i64 %i.a to i16
  store i16 %i.ac, ptr %i.b, align 2, !tbaa !93
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %bb.f
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check73 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check73, label %.lr.ph.i.i26.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i26.preheader
  %i.ae = getelementptr i8, ptr %1, i64 4
  %bound0 = icmp ugt ptr %i.ae, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i26.preheader87, label %vector.ph74

vector.ph74:                                      ; preds = %vector.memcheck
  %n.vec75 = and i64 %i.a, 65528                  ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec75, 2
  %i.ag = getelementptr i8, ptr %i.h, i64 %i.af   ; 2 uses
  %i.ah = sub i64 %2, %n.vec75
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.aj = load i32, ptr %1, align 4, !tbaa !65, !alias.scope !615
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph74
  %index77 = phi i64 [ 0, %vector.ph74 ], [ %index.next82, %vector.body76 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph74 ], [ %i.am, %vector.body76 ]
  %vec.phi78 = phi <4 x i32> [ zeroinitializer, %vector.ph74 ], [ %i.an, %vector.body76 ]
  %i.ak = shl i64 %index77, 2
  %next.gep79 = getelementptr i8, ptr %i.h, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep79, i64 16
  store <4 x i32> %broadcast.splat81, ptr %next.gep79, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat81, ptr %i.al, align 4, !tbaa !65
  %i.am = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.an = add <4 x i32> %vec.phi78, splat (i32 1) ; 2 uses
  %index.next82 = add nuw i64 %index77, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.ao, label %middle.block83, label %vector.body76, !llvm.loop !604

middle.block83:                                   ; preds = %vector.body76
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !616, !noalias !615
  %cmp.n84 = icmp eq i64 %i.a, %n.vec75
  br i1 %cmp.n84, label %.loopexit, label %.lr.ph.i.i26.preheader87

.lr.ph.i.i26.preheader87:                         ; preds = %vector.memcheck, %.lr.ph.i.i26.preheader, %middle.block83
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i26.preheader ], [ %i.ap, %middle.block83 ] ; 2 uses
  %.014.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i26.preheader ], [ %i.ag, %middle.block83 ] ; 2 uses
  %.sroa.2.013.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i26.preheader ], [ %i.ah, %middle.block83 ] ; 4 uses
  %i.aq = sub i64 %.sroa.2.013.i.i.ph, %4
  %xtraiter100 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol

.lr.ph.i.i26.prol:                                ; preds = %.lr.ph.i.i26.preheader87, %.lr.ph.i.i26.prol
  %i.ar = phi i32 [ %i.at, %.lr.ph.i.i26.prol ], [ %.ph, %.lr.ph.i.i26.preheader87 ]
  %.014.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i26.prol ], [ %.014.i.i.ph, %.lr.ph.i.i26.preheader87 ] ; 2 uses
  %.sroa.2.013.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i26.prol ], [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader87 ]
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i26.prol ], [ 0, %.lr.ph.i.i26.preheader87 ]
  %i.as = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.as, ptr %.014.i.i.prol, align 4, !tbaa !65
  %i.at = add i32 %i.ar, 1                        ; 3 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = add i64 %.sroa.2.013.i.i.prol, -1       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.014.i.i.prol, i64 4 ; 3 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol, !llvm.loop !606

.lr.ph.i.i26.prol.loopexit:                       ; preds = %.lr.ph.i.i26.prol, %.lr.ph.i.i26.preheader87
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i26.preheader87 ], [ %i.av, %.lr.ph.i.i26.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i26.preheader87 ], [ %i.at, %.lr.ph.i.i26.prol ]
  %.014.i.i.unr = phi ptr [ %.014.i.i.ph, %.lr.ph.i.i26.preheader87 ], [ %i.av, %.lr.ph.i.i26.prol ]
  %.sroa.2.013.i.i.unr = phi i64 [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader87 ], [ %i.au, %.lr.ph.i.i26.prol ]
  %i.aw = sub i64 %4, %.sroa.2.013.i.i.ph
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %.loopexit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26
  %i.ay = phi i32 [ %i.bj, %.lr.ph.i.i26 ], [ %.unr, %.lr.ph.i.i26.prol.loopexit ] ; 4 uses
  %.014.i.i = phi ptr [ %i.bl, %.lr.ph.i.i26 ], [ %.014.i.i.unr, %.lr.ph.i.i26.prol.loopexit ] ; 5 uses
  %.sroa.2.013.i.i = phi i64 [ %i.bk, %.lr.ph.i.i26 ], [ %.sroa.2.013.i.i.unr, %.lr.ph.i.i26.prol.loopexit ]
  %i.az = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.az, ptr %.014.i.i, align 4, !tbaa !65
  %i.ba = add i32 %i.ay, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bc = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !65
  %i.bd = add i32 %i.ay, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.bf = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !65
  %i.bg = add i32 %i.ay, 3
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 12
  %i.bi = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !65
  %i.bj = add i32 %i.ay, 4                        ; 2 uses
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bk = add i64 %.sroa.2.013.i.i, -4            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16 ; 2 uses
  %.not.i.i27.3 = icmp eq i64 %i.bk, %4
  br i1 %.not.i.i27.3, label %.loopexit, label %.lr.ph.i.i26, !llvm.loop !607

.loopexit:                                        ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26, %middle.block83, %bb.f
  %.0.lcssa.i.i = phi ptr [ %i.h, %bb.f ], [ %i.ag, %middle.block83 ], [ %.lcssa.unr, %.lr.ph.i.i26.prol.loopexit ], [ %i.bl, %.lr.ph.i.i26 ]
  %i.bm = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bn = ptrtoint ptr %i.h to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 2
  %i.bq = trunc i64 %i.bp to i16
  store i16 %i.bq, ptr %i.ad, align 8, !tbaa !95
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.br = load ptr, ptr %0, align 8, !tbaa !92    ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !97 ; 3 uses
  %i.bu = zext i16 %i.bt to i64                   ; 9 uses
  %i.bv = icmp samesign ugt i64 %i.a, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.h
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !65 ; 2 uses
  %min.iters.check59 = icmp ult i16 %i.bt, 8
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i32
  %n.vec61 = and i64 %i.bu, 65528                 ; 3 uses
  %i.bw = shl nuw nsw i64 %n.vec61, 2
  %i.bx = getelementptr i8, ptr %i.br, i64 %i.bw  ; 2 uses
  %i.by = and i64 %i.bu, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.bz = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.br, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat63, ptr %i.ca, align 4, !tbaa !65
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.cb, label %middle.block68, label %vector.body64, !llvm.loop !608

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %n.vec61, %i.bu
  br i1 %cmp.n69, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %.lr.ph.i.i32, %middle.block68
  %.ph90 = phi ptr [ %i.br, %.lr.ph.i.i32 ], [ %i.bx, %middle.block68 ]
  %.06.i.i.ph = phi i64 [ %i.bu, %.lr.ph.i.i32 ], [ %i.by, %middle.block68 ]
  br label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.preheader, %scalar.ph58
  %i.cc = phi ptr [ %i.ce, %scalar.ph58 ], [ %.ph90, %scalar.ph58.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.cd, %scalar.ph58 ], [ %.06.i.i.ph, %scalar.ph58.preheader ]
  %i.cd = add nsw i64 %.06.i.i, -1                ; 2 uses
  store i32 %.pre.i.i, ptr %i.cc, align 4, !tbaa !65
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i33, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph58, !llvm.loop !609

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %scalar.ph58, %middle.block68, %bb.h
  %.0.i = phi ptr [ %i.br, %bb.h ], [ %i.bx, %middle.block68 ], [ %i.ce, %scalar.ph58 ] ; 2 uses
  %i.cf = sub i64 %i.a, %i.bu                     ; 3 uses
  %xtraiter94 = and i64 %i.cf, 3                  ; 2 uses
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol

.lr.ph.i19.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i19.i.prol
  %.016.i.i.prol = phi i64 [ %i.cg, %.lr.ph.i19.i.prol ], [ %i.cf, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i19.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter96 = phi i64 [ %prol.iter96.next, %.lr.ph.i19.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.cg = add nsw i64 %.016.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  %i.ch = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.ch, ptr %.01315.i.i.prol, align 4, !tbaa !65
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter96.next = add i64 %prol.iter96, 1     ; 2 uses
  %prol.iter96.cmp.not = icmp eq i64 %prol.iter96.next, %xtraiter94
  br i1 %prol.iter96.cmp.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol, !llvm.loop !610

.lr.ph.i19.i.prol.loopexit:                       ; preds = %.lr.ph.i19.i.prol, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.016.i.i.unr = phi i64 [ %i.cf, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cg, %.lr.ph.i19.i.prol ]
  %.01315.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ck, %.lr.ph.i19.i.prol ]
  %i.cl = sub i64 %4, %2
  %i.cm = add i64 %i.cl, %i.bu
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i
  %.016.i.i = phi i64 [ %i.cy, %.lr.ph.i19.i ], [ %.016.i.i.unr, %.lr.ph.i19.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.db, %.lr.ph.i19.i ], [ %.01315.i.i.unr, %.lr.ph.i19.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  %i.co = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.co, ptr %.01315.i.i, align 4, !tbaa !65
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %i.cs = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !65
  %i.ct = add i32 %i.cp, 2
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.cv = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !65
  %i.cw = add i32 %i.cp, 3
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.cx = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.cy = add nsw i64 %.016.i.i, -4               ; 2 uses
  %i.cz = load i32, ptr %1, align 4, !tbaa !65
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !65
  %i.da = add i32 %i.cp, 4
  store i32 %i.da, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.db = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i20.i.3 = icmp eq i64 %i.cy, 0
  br i1 %.not.i20.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i, !llvm.loop !611

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.pre.i22.i = load i32, ptr %1, align 4, !tbaa !65 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %i.br, i64 %i.dc  ; 2 uses
  %i.de = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i22.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.df ; 2 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.br, %.lr.ph.preheader.i.i ], [ %i.dd, %middle.block ]
  %.046.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i ], [ %i.de, %middle.block ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader, %.lr.ph.i23.i
  %.07.i.i = phi ptr [ %i.dj, %.lr.ph.i23.i ], [ %.07.i.i.ph, %.lr.ph.i23.i.preheader ] ; 2 uses
  %.046.i.i = phi i64 [ %i.di, %.lr.ph.i23.i ], [ %.046.i.i.ph, %.lr.ph.i23.i.preheader ]
  %i.di = add nsw i64 %.046.i.i, -1               ; 2 uses
  store i32 %.pre.i22.i, ptr %.07.i.i, align 4, !tbaa !65
  %i.dj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4 ; 2 uses
  %.not.i24.i = icmp eq i64 %i.di, 0
  br i1 %.not.i24.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i, !llvm.loop !613

_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i23.i, %middle.block, %bb.i
  %.0.lcssa.i.i28 = phi ptr [ %i.br, %bb.i ], [ %i.dd, %middle.block ], [ %i.dj, %.lr.ph.i23.i ] ; 2 uses
  %i.dk = sub nuw nsw i64 %i.bu, %i.a             ; 4 uses
  %.not3.i.i29 = icmp eq i64 %i.dk, 0
  br i1 %.not3.i.i29, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.dl = add i64 %4, %i.bu
  %xtraiter = and i64 %i.dk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol

.lr.ph.i26.i.prol:                                ; preds = %.lr.ph.i26.i.preheader, %.lr.ph.i26.i.prol
  %.05.i.i30.prol = phi i64 [ %i.dm, %.lr.ph.i26.i.prol ], [ %i.dk, %.lr.ph.i26.i.preheader ]
  %storemerge4.i.i31.prol = phi ptr [ %i.dp, %.lr.ph.i26.i.prol ], [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i26.i.prol ], [ 0, %.lr.ph.i26.i.preheader ]
  %i.dm = add nsw i64 %.05.i.i30.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i31.prol, align 4, !tbaa !65
  %i.dn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.do = add i32 %i.dn, -1
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dp = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol, !llvm.loop !614

.lr.ph.i26.i.prol.loopexit:                       ; preds = %.lr.ph.i26.i.prol, %.lr.ph.i26.i.preheader
  %.05.i.i30.unr = phi i64 [ %i.dk, %.lr.ph.i26.i.preheader ], [ %i.dm, %.lr.ph.i26.i.prol ]
  %storemerge4.i.i31.unr = phi ptr [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ], [ %i.dp, %.lr.ph.i26.i.prol ]
  %i.dq = sub i64 %2, %i.dl
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i
  %.05.i.i30 = phi i64 [ %i.dz, %.lr.ph.i26.i ], [ %.05.i.i30.unr, %.lr.ph.i26.i.prol.loopexit ]
  %storemerge4.i.i31 = phi ptr [ %i.eb, %.lr.ph.i26.i ], [ %storemerge4.i.i31.unr, %.lr.ph.i26.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !65
  %i.ds = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.dt = add i32 %i.ds, -1
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  store i32 -2147483648, ptr %i.du, align 4, !tbaa !65
  %i.dv = add i32 %i.ds, -2
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 8
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !65
  %i.dx = add i32 %i.ds, -3
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 12
  %i.dz = add nsw i64 %.05.i.i30, -4              ; 2 uses
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !65
  %i.ea = add i32 %i.ds, -4
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.eb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 16
  %.not.i27.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i27.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i, !llvm.loop !13

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i, %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i, %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.ec = trunc nuw i64 %i.a to i16
  store i16 %i.ec, ptr %i.bs, align 8, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::new_allocator.29") align 1 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !619
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97, !noalias !619
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !74, !alias.scope !619
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !622
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97, !noalias !622
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !630
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97, !noalias !630
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !74, !alias.scope !629
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !635
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97, !noalias !635
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  store ptr %i.e, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !638
  store ptr %i.a, ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !644
  store ptr %i.a, ptr %0, align 8, !tbaa !74, !alias.scope !643
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5crendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !noalias !647
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6cbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  store ptr %i.a, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97
  %.not = icmp eq i16 %i.b, 0
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 2305843009213693951
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 8 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.lr.ph.i.preheader.i.i, label %bb.b

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = sub nuw i64 %i.c, %1                     ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.h = sub nsw i64 0, %i.e
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %xtraiter5 = and i64 %i.e, 3                    ; 2 uses
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.prol ], [ %i.e, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter7 = phi i64 [ %prol.iter7.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.j = add nsw i64 %.05.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter7.next = add i64 %prol.iter7, 1       ; 2 uses
  %prol.iter7.cmp.not = icmp eq i64 %prol.iter7.next, %xtraiter5
  br i1 %prol.iter7.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !648

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.preheader.i.i ], [ %i.j, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader.i.i ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %i.n = sub i64 %1, %i.c
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !65
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.r, align 4, !tbaa !65
  %i.s = add i32 %i.p, -2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !65
  %i.u = add i32 %i.p, -3
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.w = add nsw i64 %.05.i.i.i, -4               ; 2 uses
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !65
  %i.x = add i32 %i.p, -4
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.z = trunc nuw i64 %i.e to i16
  %i.aa = sub nuw i16 %i.b, %i.z
  store i16 %i.aa, ptr %i.a, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.c ; 3 uses
  %i.ad = sub nuw i64 %1, %i.c                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !94, !noalias !653
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub nsw i64 %i.ag, %i.c
  %.not.i.i = icmp ugt i64 %i.ad, %i.ah
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %.not14.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ai = add i64 %.016.i.i.i.i.i.i.prol, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.prol, align 4, !tbaa !65, !noalias !653
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.al = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !651

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %i.c, %1
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i, align 4, !tbaa !65, !noalias !653
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653 ; 4 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !65, !noalias !653
  %i.ar = add i32 %i.ao, 2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.as = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.as, align 4, !tbaa !65, !noalias !653
  %i.at = add i32 %i.ao, 3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 12
  %i.av = add i64 %.016.i.i.i.i.i.i, -4           ; 2 uses
  store i32 0, ptr %i.au, align 4, !tbaa !65, !noalias !653
  %i.aw = add i32 %i.ao, 4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !653
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !652

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.ay = trunc i64 %i.ad to i16
  %i.az = add i16 %i.b, %i.ay
  store i16 %i.az, ptr %i.a, align 8, !tbaa !95, !noalias !653
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.10") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ac, i64 noundef %i.ad)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i: ; preds = %bb.d, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6resizeEmNS0_14default_init_tE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  %i.c = zext i16 %i.b to i64                     ; 8 uses
  %i.d = icmp ult i64 %1, %i.c
  br i1 %i.d, label %.lr.ph.i.preheader.i.i, label %bb.b

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.e = sub nuw i64 %i.c, %1                     ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.h = sub nsw i64 0, %i.e
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %xtraiter5 = and i64 %i.e, 3                    ; 2 uses
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.j, %.lr.ph.i.i.i.prol ], [ %i.e, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.prol ], [ %i.i, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter7 = phi i64 [ %prol.iter7.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.j = add nsw i64 %.05.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !65
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter7.next = add i64 %prol.iter7, 1       ; 2 uses
  %prol.iter7.cmp.not = icmp eq i64 %prol.iter7.next, %xtraiter5
  br i1 %prol.iter7.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !654

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.preheader.i.i ], [ %i.j, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.preheader.i.i ], [ %i.m, %.lr.ph.i.i.i.prol ]
  %i.n = sub i64 %1, %i.c
  %i.o = icmp ugt i64 %i.n, -4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !65
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.r, align 4, !tbaa !65
  %i.s = add i32 %i.p, -2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !65
  %i.u = add i32 %i.p, -3
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.w = add nsw i64 %.05.i.i.i, -4               ; 2 uses
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !65
  %i.x = add i32 %i.p, -4
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.z = trunc nuw i64 %i.e to i16
  %i.aa = sub nuw i16 %i.b, %i.z
  store i16 %i.aa, ptr %i.a, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_14default_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.c ; 3 uses
  %i.ad = sub nuw i64 %1, %i.c                    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !94, !noalias !659
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub nsw i64 %i.ag, %i.c
  %.not.i.i = icmp ugt i64 %i.ad, %i.ah
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %.not14.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not14.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ai = add i64 %.016.i.i.i.i.i.i.prol, -1      ; 2 uses
  store i32 0, ptr %.01315.i.i.i.i.i.i.prol, align 4, !tbaa !65, !noalias !659
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.al = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !657

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %i.c, %1
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i.i.i.i.i.i, align 4, !tbaa !65, !noalias !659
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659 ; 4 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !65, !noalias !659
  %i.ar = add i32 %i.ao, 2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.as = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.as, align 4, !tbaa !65, !noalias !659
  %i.at = add i32 %i.ao, 3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 12
  %i.av = add i64 %.016.i.i.i.i.i.i, -4           ; 2 uses
  store i32 0, ptr %i.au, align 4, !tbaa !65, !noalias !659
  %i.aw = add i32 %i.ao, 4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !noalias !659
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !658

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.c
  %i.ay = trunc i64 %i.ad to i16
  %i.az = add i16 %i.b, %i.ay
  store i16 %i.az, ptr %i.a, align 8, !tbaa !95, !noalias !659
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.10") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ac, i64 noundef %i.ad)
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i: ; preds = %bb.d, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_14default_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeINS0_14default_init_tENS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6resizeEmRKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.boost::container::vec_iterator.10", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 6 uses
  %i.e = icmp ult i64 %1, %i.d
  br i1 %i.e, label %.lr.ph.i.preheader.i.i, label %bb.b

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.f = sub nuw i64 %i.d, %1                     ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.d
  %i.i = sub nsw i64 0, %i.f
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.prol ], [ %i.f, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.k = add nsw i64 %.05.i.i.i.prol, -1          ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !65
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !660

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.f, %.lr.ph.i.preheader.i.i ], [ %i.k, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.preheader.i.i ], [ %i.n, %.lr.ph.i.i.i.prol ]
  %i.o = sub i64 %1, %i.d
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.r = add i32 %i.q, -1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.s, align 4, !tbaa !65
  %i.t = add i32 %i.q, -2
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !65
  %i.v = add i32 %i.q, -3
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.x = add nsw i64 %.05.i.i.i, -4               ; 2 uses
  store i32 -2147483648, ptr %i.w, align 4, !tbaa !65
  %i.y = add i32 %i.q, -4
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %i.aa = trunc nuw i64 %i.f to i16
  %i.ab = sub nuw i16 %i.c, %i.aa
  store i16 %i.ab, ptr %i.b, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeIS3_NS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ac = load ptr, ptr %0, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.d
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !75
  %i.ae = sub nuw i64 %1, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.ae, ptr nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeIS3_NS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE11priv_resizeIS3_NS_11move_detail17integral_constantIjLj1EEEEEvmRKT_T0_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE19priv_destroy_last_nEm.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !94
  %i.c = zext i16 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !94
  %i.c = zext i16 %i.b to i64
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, 65535
  br i1 %i.e, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i: ; preds = %bb.b
  %i.f = shl nuw nsw i64 %1, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !92     ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !97   ; 4 uses
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.k, 2               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not16.i.i.i.i = icmp eq i16 %i.j, 0
  br i1 %.not16.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %i.m = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.n = lshr exact i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.01517.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.p = load i32, ptr %.018.i.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.p, ptr %.01517.i.i.i.i.prol, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i.i.prol, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !661

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %.01517.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 12
  br i1 %i.u, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01517.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.v = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !65
  store i32 %i.v, ptr %.01517.i.i.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !65
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !65
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !65
  store i32 0, ptr %i.y, align 4, !tbaa !65
  %i.ab = add i32 %i.w, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !65
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !65
  store i32 0, ptr %i.ac, align 4, !tbaa !65
  %i.af = add i32 %i.w, 3
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !65
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !65
  store i32 0, ptr %i.ag, align 4, !tbaa !65
  %i.aj = add i32 %i.w, 4
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq ptr %i.ak, %i.l
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, label %.lr.ph.i.i.i.i, !llvm.loop !14

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %.loopexit.i.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.not.i4.i = icmp eq ptr %i.h, null
  br i1 %.not.i4.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i
  %xtraiter4 = and i64 %i.k, 3                    ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.preheader ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.am = add nsw i64 %.05.i.i.i.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !65
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !662

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.05.i.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.prol ]
  %i.aq = icmp ult i16 %i.j, 4
  br i1 %i.aq, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !65
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !65
  %i.au = add i32 %i.ar, -2
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !65
  %i.aw = add i32 %i.ar, -3
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.ay = add nsw i64 %.05.i.i.i, -4              ; 2 uses
  store i32 -2147483648, ptr %i.ax, align 4, !tbaa !65
  %i.az = add i32 %i.ar, -4
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i
  %i.bb = load i16, ptr %i.a, align 2, !tbaa !94
  %i.bc = zext i16 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.bd) #25
  %.pre.i.i = load i16, ptr %i.i, align 8, !tbaa !95
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i, %.loopexit.i.i
  %i.be = phi i16 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i ], [ %.pre.i.i, %.loopexit.i.i ], [ %i.j, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i ]
  store ptr %i.g, ptr %0, align 8, !tbaa !92
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignEtRKi:bb.a
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignINS0_17constant_iteratorIiEEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull %2, i64 %i.a, ptr null, i64 0, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6assignINS0_17constant_iteratorIiEEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_tEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 16 uses
  %i.b = icmp ugt i64 %i.a, 65535
  br i1 %i.b, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit: ; preds = %bb.a
  %i.c = trunc nuw i64 %i.a to i16                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !101
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = icmp samesign ugt i64 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.h = icmp samesign ugt i64 %i.a, 16383
  br i1 %i.h, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = shl nuw nsw i64 %i.a, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 6 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.l, align 8, !tbaa !104
  %i.m = shl nuw nsw i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.m) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !100
  store i16 %i.c, ptr %i.d, align 2, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check81 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check81, label %.lr.ph.i.i.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph.preheader.i.i
  %n.vec83 = and i64 %i.a, 16376                  ; 4 uses
  %i.o = shl nuw nsw i64 %n.vec83, 2
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o     ; 2 uses
  %i.q = sub i64 %2, %n.vec83
  %broadcast.splatinsert84 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat85 = shufflevector <4 x i32> %broadcast.splatinsert84, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next89, %vector.body86 ] ; 2 uses
  %i.r = shl i64 %index87, 2
  %next.gep88 = getelementptr i8, ptr %i.j, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep88, i64 16
  store <4 x i32> %broadcast.splat85, ptr %next.gep88, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat85, ptr %i.s, align 4, !tbaa !63
  %index.next89 = add nuw i64 %index87, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.t, label %middle.block90, label %vector.body86, !llvm.loop !744

middle.block90:                                   ; preds = %vector.body86
  %cmp.n91 = icmp eq i64 %i.a, %n.vec83
  br i1 %cmp.n91, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block90
  %.014.i.i.ph = phi ptr [ %i.j, %.lr.ph.preheader.i.i ], [ %i.p, %middle.block90 ]
  %.sroa.2.013.i.i.ph = phi i64 [ %2, %.lr.ph.preheader.i.i ], [ %i.q, %middle.block90 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.014.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.2.013.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i.preheader ]
  store i32 %.pre.i.i, ptr %.014.i.i, align 4, !tbaa !63
  %i.u = add i64 %.sroa.2.013.i.i, -1             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, %4
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !745

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block90, %bb.g
  %.0.lcssa.i.i = phi ptr [ %i.j, %bb.g ], [ %i.p, %middle.block90 ], [ %i.v, %.lr.ph.i.i ]
  %i.w = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = trunc i64 %i.z to i16
  store i16 %i.aa, ptr %i.n, align 8, !tbaa !102
  br label %bb.k

bb.h:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !100   ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !104 ; 3 uses
  %i.ae = zext i16 %i.ad to i64                   ; 6 uses
  %i.af = icmp samesign ugt i64 %i.a, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not4.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.i
  %.pre.i.i25 = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check46 = icmp ult i16 %i.ad, 8
  br i1 %min.iters.check46, label %scalar.ph45.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i.i24
  %n.vec48 = and i64 %i.ae, 65528                 ; 3 uses
  %i.ag = shl nuw nsw i64 %n.vec48, 2
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.ag  ; 2 uses
  %i.ai = and i64 %i.ae, 7
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %.pre.i.i25, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph47
  %index52 = phi i64 [ 0, %vector.ph47 ], [ %index.next54, %vector.body51 ] ; 2 uses
  %i.aj = shl i64 %index52, 2
  %next.gep53 = getelementptr i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep53, i64 16
  store <4 x i32> %broadcast.splat50, ptr %next.gep53, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat50, ptr %i.ak, align 4, !tbaa !63
  %index.next54 = add nuw i64 %index52, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next54, %n.vec48
  br i1 %i.al, label %middle.block55, label %vector.body51, !llvm.loop !746

middle.block55:                                   ; preds = %vector.body51
  %cmp.n56 = icmp eq i64 %n.vec48, %i.ae
  br i1 %cmp.n56, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %.lr.ph.i.i24, %middle.block55
  %.ph = phi ptr [ %i.ab, %.lr.ph.i.i24 ], [ %i.ah, %middle.block55 ]
  %.06.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i24 ], [ %i.ai, %middle.block55 ]
  br label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.preheader, %scalar.ph45
  %i.am = phi ptr [ %i.ao, %scalar.ph45 ], [ %.ph, %scalar.ph45.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.an, %scalar.ph45 ], [ %.06.i.i.ph, %scalar.ph45.preheader ]
  %i.an = add nsw i64 %.06.i.i, -1                ; 2 uses
  store i32 %.pre.i.i25, ptr %i.am, align 4, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %.not.i.i26 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i26, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %scalar.ph45, !llvm.loop !747

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %scalar.ph45, %middle.block55, %bb.i
  %.0.i = phi ptr [ %i.ab, %bb.i ], [ %i.ah, %middle.block55 ], [ %i.ao, %scalar.ph45 ] ; 3 uses
  %i.ap = sub nsw i64 %i.a, %i.ae                 ; 5 uses
  %.pre.i19.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check60, label %.lr.ph.i20.i.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %n.vec62 = and i64 %i.ap, -8                    ; 3 uses
  %i.aq = and i64 %i.ap, 7
  %i.ar = shl i64 %n.vec62, 2
  %i.as = getelementptr i8, ptr %.0.i, i64 %i.ar
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %.pre.i19.i, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next75, %vector.body65 ] ; 2 uses
  %i.at = shl i64 %index66, 2
  %next.gep67 = getelementptr i8, ptr %.0.i, i64 %i.at ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep67) ]
  %i.au = getelementptr i8, ptr %next.gep67, i64 16
  store <4 x i32> %broadcast.splat64, ptr %next.gep67, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat64, ptr %i.au, align 4, !tbaa !63
  %index.next75 = add nuw i64 %index66, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next75, %n.vec62
  br i1 %i.av, label %middle.block76, label %vector.body65, !llvm.loop !748

middle.block76:                                   ; preds = %vector.body65
  %cmp.n77 = icmp eq i64 %i.ap, %n.vec62
  br i1 %cmp.n77, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %middle.block76
  %.016.i.i.ph = phi i64 [ %i.ap, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.aq, %middle.block76 ]
  %.01315.i.i.ph = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorIiEEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.as, %middle.block76 ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %.016.i.i = phi i64 [ %i.aw, %.lr.ph.i20.i ], [ %.016.i.i.ph, %.lr.ph.i20.i.preheader ]
  %.01315.i.i = phi ptr [ %i.ax, %.lr.ph.i20.i ], [ %.01315.i.i.ph, %.lr.ph.i20.i.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.016.i.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  store i32 %.pre.i19.i, ptr %.01315.i.i, align 4, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %.not.i21.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i21.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i20.i, !llvm.loop !749

bb.j:                                             ; preds = %bb.h
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.preheader.i23.i

.lr.ph.preheader.i23.i:                           ; preds = %bb.j
  %.pre.i24.i = load i32, ptr %1, align 4, !tbaa !63 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i25.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i23.i
  %n.vec = and i64 %i.a, 65528                    ; 3 uses
  %i.ay = shl nuw nsw i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.ab, i64 %i.ay
  %i.ba = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i24.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i25.i.preheader

.lr.ph.i25.i.preheader:                           ; preds = %.lr.ph.preheader.i23.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.ab, %.lr.ph.preheader.i23.i ], [ %i.az, %middle.block ]
  %.046.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i23.i ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %.lr.ph.i25.i.preheader, %.lr.ph.i25.i
  %.07.i.i = phi ptr [ %i.bf, %.lr.ph.i25.i ], [ %.07.i.i.ph, %.lr.ph.i25.i.preheader ] ; 2 uses
  %.046.i.i = phi i64 [ %i.be, %.lr.ph.i25.i ], [ %.046.i.i.ph, %.lr.ph.i25.i.preheader ]
  %i.be = add nsw i64 %.046.i.i, -1               ; 2 uses
  store i32 %.pre.i24.i, ptr %.07.i.i, align 4, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %.not.i26.i = icmp eq i64 %i.be, 0
  br i1 %.not.i26.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i25.i, !llvm.loop !751

_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i25.i, %.lr.ph.i20.i, %middle.block, %middle.block76, %bb.j
  store i16 %i.c, ptr %i.ac, align 8, !tbaa !102
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_4test25small_size_type_allocatorIiEENS0_17constant_iteratorIiEEPiEEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE13get_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE20get_stored_allocatorEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  tail call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE5beginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.25") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  tail call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  tail call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !89
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE3endEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.25") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !754
  tail call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104, !noalias !754
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !86, !alias.scope !754
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %0, align 8, !tbaa !86, !alias.scope !754
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4cendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.25") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  tail call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !86
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %0, align 8, !tbaa !86
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.41") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.26", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !757
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104, !noalias !757
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !89, !alias.scope !757
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %2, align 8, !tbaa !89, !alias.scope !757
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !766
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25, !noalias !767
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104, !noalias !766
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !86, !alias.scope !768, !noalias !767
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %2, align 8, !tbaa !86, !alias.scope !768, !noalias !767
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7crbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !775
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104, !noalias !775
  %i.d = sext i16 %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !86, !alias.scope !775
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.d
  store ptr %i.f, ptr %2, align 8, !tbaa !86, !alias.scope !775
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.41") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.26", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !778
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !783
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25, !noalias !784
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE5crendEv(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.42") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !noalias !787
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.a) #25
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6cbeginEv(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.25") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100
  tail call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE5emptyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq i16 %i.b, 0
  ret i1 %.not
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i16 @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 16383
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6resizeEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE11priv_resizeINS0_12value_init_tENS_11move_detail17integral_constantIjLj1EEEEEvtRKT_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost9container10value_initE)
  ret void
}
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6resizeEtNS0_14default_init_tE:bb.a

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %gepdiff11.i = add nsw i64 %gepdiff.i, %.neg.i  ; 2 uses
  %i.v = ashr exact i64 %gepdiff11.i, 2
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 4 %i.f, i64 %gepdiff11.i, i1 false), !noalias !793
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.i:                                             ; preds = %bb.e
  %.not11.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not11.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 4 %i.f, i64 %gepdiff.i, i1 false), !noalias !793
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i, %bb.d
  %i.z = load i16, ptr %i.a, align 8, !tbaa !102, !noalias !793
  %i.aa = add i16 %i.z, %i.g
  store i16 %i.aa, ptr %i.a, align 8, !tbaa !102, !noalias !793
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.f) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit.i

bb.k:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.f, i16 noundef zeroext %i.g)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit.i: ; preds = %bb.k, %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE11priv_resizeINS0_14default_init_tENS_11move_detail17integral_constantIjLj1EEEEEvtRKT_T0_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE11priv_resizeINS0_14default_init_tENS_11move_detail17integral_constantIjLj1EEEEEvtRKT_T0_.exit: ; preds = %bb.b, %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl34insert_default_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6resizeEtRKi(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE11priv_resizeIiNS_11move_detail17integral_constantIjLj1EEEEEvtRKT_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE11priv_resizeIiNS_11move_detail17integral_constantIjLj1EEEEEvtRKT_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.26", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104  ; 6 uses
  %i.c = icmp ult i16 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 %1, ptr %i.a, align 8, !tbaa !102
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !100    ; 4 uses
  %i.e = sext i16 %i.b to i64                     ; 2 uses
  %.idx10 = shl nsw i64 %i.e, 2                   ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %.idx10 ; 11 uses
  %i.g = sub nuw i16 %1, %i.b                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !101, !noalias !804
  %i.k = zext i16 %i.j to i32
  %i.l = zext i16 %i.b to i32
  %i.m = sub nsw i32 %i.k, %i.l
  %.not.i = icmp slt i32 %i.m, %i.h
  br i1 %.not.i, label %bb.m, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.n = zext i16 %i.b to i64                     ; 2 uses
  %.idx = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 9 uses
  %i.p = zext i16 %i.g to i64                     ; 13 uses
  %i.q = icmp eq i64 %i.n, %i.e
  %.not15.i.i.i.i.i = icmp eq i16 %1, %i.b        ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !63, !noalias !804 ; 2 uses
  %min.iters.check62 = icmp ult i16 %i.g, 8
  br i1 %min.iters.check62, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec64 = and i64 %i.p, 65528                  ; 3 uses
  %i.r = and i64 %i.p, 7
  %i.s = shl nuw nsw i64 %n.vec64, 2
  %i.t = getelementptr i8, ptr %i.o, i64 %i.s
  %broadcast.splatinsert65 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i, i64 0
  %broadcast.splat66 = shufflevector <4 x i32> %broadcast.splatinsert65, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph63
  %index68 = phi i64 [ 0, %vector.ph63 ], [ %index.next77, %vector.body67 ] ; 2 uses
  %i.u = shl i64 %index68, 2
  %next.gep69 = getelementptr i8, ptr %i.o, i64 %i.u ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep69) ]
  %i.v = getelementptr i8, ptr %next.gep69, i64 16
  store <4 x i32> %broadcast.splat66, ptr %next.gep69, align 4, !tbaa !63, !noalias !804
  store <4 x i32> %broadcast.splat66, ptr %i.v, align 4, !tbaa !63, !noalias !804
  %index.next77 = add nuw i64 %index68, 8         ; 2 uses
  %i.w = icmp eq i64 %index.next77, %n.vec64
  br i1 %i.w, label %middle.block78, label %vector.body67, !llvm.loop !796

middle.block78:                                   ; preds = %vector.body67
  %cmp.n79 = icmp eq i64 %n.vec64, %i.p
  br i1 %cmp.n79, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block78
  %.017.i.i.i.i.i.ph = phi i64 [ %i.p, %.lr.ph.preheader.i.i.i.i.i ], [ %i.r, %middle.block78 ]
  %.01416.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.preheader.i.i.i.i.i ], [ %i.t, %middle.block78 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.x = add nsw i64 %.017.i.i.i.i.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 4, !tbaa !63, !noalias !804
  %i.y = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !797

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %bb.g, !prof !40

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx10           ; 3 uses
  %i.z = ashr exact i64 %gepdiff, 2               ; 7 uses
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.p
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul nsw i64 %i.p, -4                    ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not13.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 %.neg
  %i.ab = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.aa, i64 %i.ab, i1 false), !noalias !804
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.ac = add nsw i64 %.neg, %.idx
  %.not.i.i10.i.i.i = icmp eq i64 %i.ac, %.idx10
  br i1 %.not.i.i10.i.i.i, label %.lr.ph.i.i11.i.i.i, label %bb.j, !prof !40

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %gepdiff12 = add nsw i64 %gepdiff, %.neg        ; 2 uses
  %i.ad = ashr exact i64 %gepdiff12, 2
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ae
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.f, i64 %gepdiff12, i1 false), !noalias !804
  br label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %.pre.i.i12.i.i.i = load i32, ptr %2, align 4, !tbaa !63, !noalias !804 ; 2 uses
  %min.iters.check = icmp ult i16 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i
  %n.vec = and i64 %i.p, 65528                    ; 3 uses
  %i.ag = and i64 %i.p, 7
  %i.ah = shl nuw nsw i64 %n.vec, 2
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !63, !noalias !804
  store <4 x i32> %broadcast.splat, ptr %i.ak, align 4, !tbaa !63, !noalias !804
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !798

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i, %middle.block
  %.07.i.i.i.i.i.ph = phi i64 [ %i.p, %.lr.ph.i.i11.i.i.i ], [ %i.ag, %middle.block ]
  %.046.i.i.i.i.i.ph = phi ptr [ %i.f, %.lr.ph.i.i11.i.i.i ], [ %i.ai, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i = phi i64 [ %i.am, %scalar.ph ], [ %.07.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i = phi ptr [ %i.an, %scalar.ph ], [ %.046.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.am = add nsw i64 %.07.i.i.i.i.i, -1          ; 2 uses
  store i32 %.pre.i.i12.i.i.i, ptr %.046.i.i.i.i.i, align 4, !tbaa !63, !noalias !804
  %i.an = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i, i64 4
  %.not.i35.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i35.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph, !llvm.loop !799

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not14.i.i.i, label %.lr.ph.i39.i.i.i.i, label %bb.l, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %i.f, i64 %gepdiff, i1 false), !noalias !804
  br label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %bb.l, %bb.k
  %.pre.i40.i.i.i.i = load i32, ptr %2, align 4, !tbaa !63, !noalias !804 ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.z, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i39.i.i.i.i
  %n.vec29 = and i64 %i.z, -8                     ; 3 uses
  %i.ap = and i64 %i.z, 7
  %i.aq = shl nsw i64 %n.vec29, 2
  %i.ar = getelementptr i8, ptr %i.f, i64 %i.aq
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph28
  %index33 = phi i64 [ 0, %vector.ph28 ], [ %index.next35, %vector.body32 ] ; 2 uses
  %i.as = shl i64 %index33, 2
  %next.gep34 = getelementptr i8, ptr %i.f, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> %broadcast.splat31, ptr %next.gep34, align 4, !tbaa !63, !noalias !804
  store <4 x i32> %broadcast.splat31, ptr %i.at, align 4, !tbaa !63, !noalias !804
  %index.next35 = add nuw i64 %index33, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next35, %n.vec29
  br i1 %i.au, label %middle.block36, label %vector.body32, !llvm.loop !800

middle.block36:                                   ; preds = %vector.body32
  %cmp.n37 = icmp eq i64 %i.z, %n.vec29
  br i1 %cmp.n37, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i, %middle.block36
  %.07.i41.i.i.i.i.ph = phi i64 [ %i.z, %.lr.ph.i39.i.i.i.i ], [ %i.ap, %middle.block36 ]
  %.046.i42.i.i.i.i.ph = phi ptr [ %i.f, %.lr.ph.i39.i.i.i.i ], [ %i.ar, %middle.block36 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i41.i.i.i.i = phi i64 [ %i.av, %scalar.ph26 ], [ %.07.i41.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i42.i.i.i.i = phi ptr [ %i.aw, %scalar.ph26 ], [ %.046.i42.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.av = add i64 %.07.i41.i.i.i.i, -1            ; 2 uses
  store i32 %.pre.i40.i.i.i.i, ptr %.046.i42.i.i.i.i, align 4, !tbaa !63, !noalias !804
  %i.aw = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i, i64 4
  %.not.i43.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i43.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, label %scalar.ph26, !llvm.loop !801

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i: ; preds = %scalar.ph26, %middle.block36
  %i.ax = sub nsw i64 %i.p, %i.z                  ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !63, !noalias !804 ; 2 uses
  %min.iters.check41 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check41, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i
  %n.vec43 = and i64 %i.ax, -8                    ; 3 uses
  %i.ay = and i64 %i.ax, 7
  %i.az = shl nsw i64 %n.vec43, 2
  %i.ba = getelementptr i8, ptr %i.o, i64 %i.az
  %broadcast.splatinsert44 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat45 = shufflevector <4 x i32> %broadcast.splatinsert44, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph42
  %index47 = phi i64 [ 0, %vector.ph42 ], [ %index.next56, %vector.body46 ] ; 2 uses
  %i.bb = shl i64 %index47, 2
  %next.gep48 = getelementptr i8, ptr %i.o, i64 %i.bb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep48) ]
  %i.bc = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> %broadcast.splat45, ptr %next.gep48, align 4, !tbaa !63, !noalias !804
  store <4 x i32> %broadcast.splat45, ptr %i.bc, align 4, !tbaa !63, !noalias !804
  %index.next56 = add nuw i64 %index47, 8         ; 2 uses
  %i.bd = icmp eq i64 %index.next56, %n.vec43
  br i1 %i.bd, label %middle.block57, label %vector.body46, !llvm.loop !802

middle.block57:                                   ; preds = %vector.body46
  %cmp.n58 = icmp eq i64 %i.ax, %n.vec43
  br i1 %cmp.n58, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, %middle.block57
  %.017.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i ], [ %i.ay, %middle.block57 ]
  %.01416.i.i.i.i.i.i.ph = phi ptr [ %i.o, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i ], [ %i.ba, %middle.block57 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.be = add nsw i64 %.017.i.i.i.i.i.i, -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i) ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i, align 4, !tbaa !63, !noalias !804
  %i.bf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i, i64 4
  %.not.i.i45.i.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i45.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !803

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %middle.block, %middle.block57, %middle.block78, %bb.f, %bb.e
  %i.bg = load i16, ptr %i.a, align 8, !tbaa !102, !noalias !804
  %i.bh = add i16 %i.bg, %i.g
  store i16 %i.bh, ptr %i.a, align 8, !tbaa !102, !noalias !804
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.26") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.f, i16 noundef zeroext %i.g, ptr nonnull %2)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i16 @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE8capacityEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101
  ret i16 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7reserveEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101
  %i.c = icmp ult i16 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i16 %1, 16383
  br i1 %i.d, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i, !prof !40

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i: ; preds = %bb.b
  %i.e = shl nuw i16 %1, 2
  %i.f = zext i16 %i.e to i64
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  %i.k = icmp ne i16 %i.j, 0
  %i.l = icmp ne ptr %i.h, null                   ; 2 uses
  %spec.select.i.i.i.i.i = and i1 %i.l, %i.k
  br i1 %spec.select.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i, !prof !43

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i
  %i.m = zext i16 %i.j to i64
  %.idx.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 4 %i.h, i64 %.idx.i, i1 false)
  br label %bb.d

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i
  br i1 %i.l, label %bb.d, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE23priv_move_to_new_bufferEtNS_11move_detail17integral_constantIjLj1EEE.exit

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i
  %i.n = load i16, ptr %i.a, align 2, !tbaa !101
  %i.o = zext i16 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.p) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE23priv_move_to_new_bufferEtNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE23priv_move_to_new_bufferEtNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i, %bb.d
  store ptr %i.g, ptr %0, align 8, !tbaa !100
  store i16 %1, ptr %i.a, align 2, !tbaa !93
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE23priv_move_to_new_bufferEtNS_11move_detail17integral_constantIjLj1EEE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE23priv_move_to_new_bufferEtNS_11move_detail17integral_constantIjLj1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i16 %1, 16383
  br i1 %i.a, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit: ; preds = %bb.a
  %i.b = shl nuw i16 %1, 2
  %i.c = zext i16 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i16, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %i.h = icmp ne i16 %i.g, 0
  %i.i = icmp ne ptr %i.e, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.i, %i.h
  br i1 %spec.select.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, !prof !43

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit
  %i.j = zext i16 %i.g to i64
  %.idx = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 4 %i.e, i64 %.idx, i1 false)
  br label %bb.c

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit
  br i1 %i.i, label %bb.c, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPiEEEEEEvSA_tSA_tT_.exit

bb.c:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = load i16, ptr %i.k, align 2, !tbaa !101
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.n) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPiEEEEEEvSA_tSA_tT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPiEEEEEEvSA_tSA_tT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.c
  store ptr %i.d, ptr %0, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %1, ptr %i.o, align 2, !tbaa !93
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE13shrink_to_fitEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101  ; 3 uses
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !104  ; 5 uses
  %.not7.i = icmp eq i16 %i.d, 0
  br i1 %.not7.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not8.i = icmp eq ptr %i.e, null
  br i1 %.not8.i, label %.sink.split.i, label %.sink.split.sink.split.i, !prof !40

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ult i16 %i.d, %i.b
  br i1 %i.f, label %bb.e, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE18priv_shrink_to_fitENS_11move_detail17integral_constantIjLj1EEE.exit

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i16 %i.d, 16383
  br i1 %i.g, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i.i, !prof !40

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i.i: ; preds = %bb.e
  %i.h = shl nuw i16 %i.d, 2
  %i.i = zext i16 %i.h to i64
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.l = load i16, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.m = icmp ne i16 %i.l, 0
  %i.n = icmp ne ptr %i.k, null                   ; 2 uses
  %spec.select.i.i.i.i.i.i = and i1 %i.n, %i.m
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i, !prof !43

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i.i
  %i.o = zext i16 %i.l to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 4 %i.k, i64 %.idx.i.i, i1 false)
  br label %bb.g

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_4test25small_size_type_allocatorIiEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEt.exit.i.i
  br i1 %i.n, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.thread.i.i
  %i.p = load i16, ptr %i.a, align 2, !tbaa !101
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.g, %bb.c
  %.sink17.i = phi i16 [ %i.p, %bb.g ], [ %i.b, %bb.c ]
  %.sink14.i = phi ptr [ %i.k, %bb.g ], [ %i.e, %bb.c ]
  %.sink13.ph.i = phi ptr [ %i.j, %bb.g ], [ null, %bb.c ]
  %i.q = zext i16 %.sink17.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink14.i, i64 noundef %i.r) #25
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i, %bb.c
  %.sink13.i = phi ptr [ null, %bb.c ], [ %i.j, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_4test25small_size_type_allocatorIiEEPiS5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIS5_EEEEEEvRT_T0_SD_SD_T1_mT2_.exit.i.i.i ], [ %.sink13.ph.i, %.sink.split.sink.split.i ]
  store ptr %.sink13.i, ptr %0, align 8, !tbaa !100
  store i16 %i.d, ptr %i.a, align 2, !tbaa !93
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEEOi:bb.a
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = and i64 %i.k, 262140
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.m = load i32, ptr %3, align 4, !tbaa !63, !noalias !820
  store i32 %i.m, ptr %i.h, align 4, !tbaa !63, !noalias !820
  %i.n = add nuw i16 %i.e, 1
  store i16 %i.n, ptr %i.d, align 8, !tbaa !104, !noalias !820
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !63, !noalias !820
  store i32 %i.p, ptr %i.h, align 4, !tbaa !63, !noalias !820
  %i.q = add nuw i16 %i.e, 1
  store i16 %i.q, ptr %i.d, align 8, !tbaa !104, !noalias !820
  %i.r = lshr i64 %i.k, 2
  %i.s = and i64 %i.r, 65535
  %i.t = add nuw nsw i64 %i.s, 4294967295
  %i.u = and i64 %i.t, 4294967295                 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.v = sub nsw i64 0, %i.u                      ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.v
  %i.x = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.v
  %i.y = shl nuw nsw i64 %i.u, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.x, i64 %i.y, i1 false), !noalias !820
  %.pre.pre.i.i = load ptr, ptr %4, align 8, !tbaa !87, !noalias !820
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %bb.e ], [ %i.a, %bb.d ]
  %i.z = load i32, ptr %3, align 4, !tbaa !63, !noalias !820
  store i32 %i.z, ptr %i.a, align 4, !tbaa !63, !noalias !820
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.c
  %i.aa = phi ptr [ %i.a, %bb.c ], [ %.pre.i.i, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i ]
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aa) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit

bb.f:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.a, i16 noundef zeroext 1, ptr nonnull align 4 dereferenceable(4) %3)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEEtRKi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, i16 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !87, !noalias !831 ; 14 uses
  %i.b = zext i16 %3 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !101, !noalias !831
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !104, !noalias !831 ; 2 uses
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %.not.i = icmp slt i32 %i.i, %i.b
  br i1 %.not.i, label %bb.k, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !100, !noalias !831 ; 2 uses
  %i.k = zext i16 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = zext i16 %3 to i64                       ; 13 uses
  %i.n = icmp eq ptr %i.l, %i.a
  %.not15.i.i.i.i.i = icmp eq i16 %3, 0           ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %.pre.i.i.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check52 = icmp ult i16 %3, 8
  br i1 %min.iters.check52, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec54 = and i64 %i.m, 65528                  ; 3 uses
  %i.o = and i64 %i.m, 7
  %i.p = shl nuw nsw i64 %n.vec54, 2
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph53
  %index58 = phi i64 [ 0, %vector.ph53 ], [ %index.next67, %vector.body57 ] ; 2 uses
  %i.r = shl i64 %index58, 2
  %next.gep59 = getelementptr i8, ptr %i.l, i64 %i.r ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59) ]
  %i.s = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %broadcast.splat56, ptr %next.gep59, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat56, ptr %i.s, align 4, !tbaa !63, !noalias !831
  %index.next67 = add nuw i64 %index58, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next67, %n.vec54
  br i1 %i.t, label %middle.block68, label %vector.body57, !llvm.loop !823

middle.block68:                                   ; preds = %vector.body57
  %cmp.n69 = icmp eq i64 %n.vec54, %i.m
  br i1 %cmp.n69, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block68
  %.017.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ %i.o, %middle.block68 ]
  %.01416.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ %i.q, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = add nsw i64 %.017.i.i.i.i.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !824

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.l to i64
  %i.x = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 7 uses
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.m
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sub nsw i64 0, %i.m
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not13.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.ac = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false), !noalias !831
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.not.i.i10.i.i.i = icmp eq ptr %i.ab, %i.a
  br i1 %.not.i.i10.i.i.i, label %.lr.ph.i.i11.i.i.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ad, %i.x                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ah, ptr align 4 %i.a, i64 %i.ae, i1 false), !noalias !831
  br label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %.pre.i.i12.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check = icmp ult i16 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i
  %n.vec = and i64 %i.m, 65528                    ; 3 uses
  %i.ai = and i64 %i.m, 7
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4, !tbaa !63, !noalias !831
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i, %middle.block
  %.07.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i.i11.i.i.i ], [ %i.ai, %middle.block ]
  %.046.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i11.i.i.i ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i = phi i64 [ %i.ao, %scalar.ph ], [ %.07.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i = phi ptr [ %i.ap, %scalar.ph ], [ %.046.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = add nsw i64 %.07.i.i.i.i.i, -1          ; 2 uses
  store i32 %.pre.i.i12.i.i.i, ptr %.046.i.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.ap = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i, i64 4
  %.not.i35.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i35.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph, !llvm.loop !826

bb.i:                                             ; preds = %bb.e
  %.not14.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i.i, label %.lr.ph.i39.i.i.i.i, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 4 %i.a, i64 %i.y, i1 false), !noalias !831
  br label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %bb.j, %bb.i
  %.pre.i40.i.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check17 = icmp ult i64 %i.z, 8
  br i1 %min.iters.check17, label %scalar.ph16.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph.i39.i.i.i.i
  %n.vec19 = and i64 %i.z, -8                     ; 3 uses
  %i.ar = and i64 %i.z, 7
  %i.as = shl nsw i64 %n.vec19, 2
  %i.at = getelementptr i8, ptr %i.a, i64 %i.as
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph18
  %index23 = phi i64 [ 0, %vector.ph18 ], [ %index.next25, %vector.body22 ] ; 2 uses
  %i.au = shl i64 %index23, 2
  %next.gep24 = getelementptr i8, ptr %i.a, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep24, i64 16
  store <4 x i32> %broadcast.splat21, ptr %next.gep24, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat21, ptr %i.av, align 4, !tbaa !63, !noalias !831
  %index.next25 = add nuw i64 %index23, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.aw, label %middle.block26, label %vector.body22, !llvm.loop !827

middle.block26:                                   ; preds = %vector.body22
  %cmp.n27 = icmp eq i64 %i.z, %n.vec19
  br i1 %cmp.n27, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, label %scalar.ph16.preheader

scalar.ph16.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i, %middle.block26
  %.07.i41.i.i.i.i.ph = phi i64 [ %i.z, %.lr.ph.i39.i.i.i.i ], [ %i.ar, %middle.block26 ]
  %.046.i42.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i39.i.i.i.i ], [ %i.at, %middle.block26 ]
  br label %scalar.ph16

scalar.ph16:                                      ; preds = %scalar.ph16.preheader, %scalar.ph16
  %.07.i41.i.i.i.i = phi i64 [ %i.ax, %scalar.ph16 ], [ %.07.i41.i.i.i.i.ph, %scalar.ph16.preheader ]
  %.046.i42.i.i.i.i = phi ptr [ %i.ay, %scalar.ph16 ], [ %.046.i42.i.i.i.i.ph, %scalar.ph16.preheader ] ; 2 uses
  %i.ax = add i64 %.07.i41.i.i.i.i, -1            ; 2 uses
  store i32 %.pre.i40.i.i.i.i, ptr %.046.i42.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i, i64 4
  %.not.i43.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i43.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, label %scalar.ph16, !llvm.loop !828

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i: ; preds = %scalar.ph16, %middle.block26
  %i.az = sub nsw i64 %i.m, %i.z                  ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check31 = icmp ult i64 %i.az, 8
  br i1 %min.iters.check31, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i
  %n.vec33 = and i64 %i.az, -8                    ; 3 uses
  %i.ba = and i64 %i.az, 7
  %i.bb = shl i64 %n.vec33, 2
  %i.bc = getelementptr i8, ptr %i.l, i64 %i.bb
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph32
  %index37 = phi i64 [ 0, %vector.ph32 ], [ %index.next46, %vector.body36 ] ; 2 uses
  %i.bd = shl i64 %index37, 2
  %next.gep38 = getelementptr i8, ptr %i.l, i64 %i.bd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep38) ]
  %i.be = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %broadcast.splat35, ptr %next.gep38, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat35, ptr %i.be, align 4, !tbaa !63, !noalias !831
  %index.next46 = add nuw i64 %index37, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next46, %n.vec33
  br i1 %i.bf, label %middle.block47, label %vector.body36, !llvm.loop !829

middle.block47:                                   ; preds = %vector.body36
  %cmp.n48 = icmp eq i64 %i.az, %n.vec33
  br i1 %cmp.n48, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i, %middle.block47
  %.017.i.i.i.i.i.i.ph = phi i64 [ %i.az, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i ], [ %i.ba, %middle.block47 ]
  %.01416.i.i.i.i.i.i.ph = phi ptr [ %i.l, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test25small_size_type_allocatorIiEEE17copy_n_and_updateIPiEEvRS5_T_m.exit44.i.i.i.i ], [ %i.bc, %middle.block47 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.017.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bg = add nsw i64 %.017.i.i.i.i.i.i, -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i) ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.01416.i.i.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.bh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i, i64 4
  %.not.i.i45.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i45.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !830

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %middle.block, %middle.block47, %middle.block68, %bb.d, %bb.c
  %i.bi = load i16, ptr %i.f, align 8, !tbaa !102, !noalias !831
  %i.bj = add i16 %i.bi, %3
  store i16 %i.bj, ptr %i.f, align 8, !tbaa !102, !noalias !831
  %i.bk = load ptr, ptr %2, align 8, !tbaa !87, !noalias !831
  tail call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bk) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.a, i16 noundef zeroext %3, ptr nonnull %4)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPiLb0EEERKSB_tT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEESt16initializer_listIiE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, ptr %3, i64 %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 3 uses
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.idx = shl nuw nsw i64 %4, 2                   ; 4 uses
  %i.a = icmp ugt i64 %4, 65535
  br i1 %i.a, label %bb.b, label %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.4) #23, !noalias !836
  unreachable

_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i: ; preds = %bb.a
  %i.b = trunc nuw i64 %4 to i16                  ; 2 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !87, !noalias !837 ; 11 uses
  %i.d = trunc nuw nsw i64 %4 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !101, !noalias !837
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !104, !noalias !837 ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = sub nsw i32 %i.g, %i.j
  %.not.i.i = icmp slt i32 %i.k, %i.d
  br i1 %.not.i.i, label %bb.p, label %bb.c, !prof !40

bb.c:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !100, !noalias !837 ; 4 uses
  %i.m = zext i16 %i.i to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.m ; 7 uses
  %i.o = icmp eq ptr %i.n, %i.c
  %.not.i.i.i.i.i.i.i = icmp eq i64 %4, 0         ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ne ptr %i.l, null
  %i.q = icmp ne ptr %3, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %3, i64 %.idx, i1 false), !noalias !837
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = ashr exact i64 %i.t, 2                   ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.u, %4
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = sub nsw i64 0, %4
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.v ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not11.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i, label %bb.j, !prof !49

bb.j:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.w, i64 %.idx, i1 false), !noalias !837
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i.i.i.i.i, label %bb.k, !prof !40

bb.k:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.s                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aa
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ab, ptr align 4 %i.c, i64 %i.y, i1 false), !noalias !837
  br label %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i.i.i.i.i

_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i.i.i.i.i: ; preds = %bb.k, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i.i
  %i.ac = icmp ne ptr %i.c, null
  %i.ad = icmp ne ptr %3, null
  %or.cond.i.i.i.i.i.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.l:                                             ; preds = %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %3, i64 %.idx, i1 false), !noalias !837
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.m:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, !prof !40

_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 4 %i.c, i64 %i.t, i1 false), !noalias !837
  %.not21.i.i.i.i = icmp eq ptr %3, null
  br i1 %.not21.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %3, i64 %i.t, i1 false), !noalias !837
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i

_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i: ; preds = %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i.i.i.i, %bb.m
  %.not12.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not12.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.t
  %i.ag = sub nuw nsw i64 %4, %i.u
  %i.ah = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.af, i64 %i.ah, i1 false), !noalias !837
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %bb.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_4test25small_size_type_allocatorIiEEPKiE17copy_n_and_updateIPiEEvRS5_T_m.exit40.i.i.i.i.i, %bb.l, %_ZN5boost9container13move_backwardIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ai = load i16, ptr %i.h, align 8, !tbaa !102, !noalias !837
  %i.aj = add i16 %i.ai, %i.b
  store i16 %i.aj, ptr %i.h, align 8, !tbaa !102, !noalias !837
  %i.ak = load ptr, ptr %5, align 8, !tbaa !87, !noalias !837
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ak) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_tEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit

bb.p:                                             ; preds = %_ZN5boost9container20vec_on_type_overflowImtE12throw_lengthEmPKc.exit.i
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS4_PKiEEEENS0_12vec_iteratorIPiLb0EEESD_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.c, i16 noundef zeroext %i.b, ptr %3)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_tEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertIPKiEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_tEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_PKiEEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  %i.c = add i16 %i.b, -1
  store i16 %i.c, ptr %i.a, align 8, !tbaa !104
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12priv_raw_endEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE5eraseENS0_12vec_iteratorIPiLb1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !87     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !104  ; 2 uses
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.h = icmp ne ptr %i.g, %i.f
  %i.i = icmp ne ptr %i.a, null
  %or.cond.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 4 %i.g, i64 %i.l, i1 false)
  %.pre = load i16, ptr %i.c, align 8, !tbaa !104
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit: ; preds = %bb.b, %bb.a
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  %bound0 = icmp ugt ptr %i.am, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader94, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck78
  %n.vec80 = and i64 %i.aj, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec80, 2                     ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.j, i64 %i.an   ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next88, %vector.body81 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph79 ], [ %i.au, %vector.body81 ]
  %vec.phi83 = phi <4 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.av, %vector.body81 ]
  %i.ar = shl i64 %index82, 2                     ; 2 uses
  %next.gep84 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  %next.gep85 = getelementptr i8, ptr %i.j, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load86 = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !65, !alias.scope !1616
  %wide.load87 = load <4 x i32>, ptr %i.as, align 4, !tbaa !65, !alias.scope !1616
  %i.at = getelementptr i8, ptr %next.gep85, i64 16
  store <4 x i32> %wide.load86, ptr %next.gep85, align 4, !tbaa !65
  store <4 x i32> %wide.load87, ptr %i.at, align 4, !tbaa !65
  %i.au = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.av = add <4 x i32> %vec.phi83, splat (i32 1) ; 2 uses
  %index.next88 = add nuw i64 %index82, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next88, %n.vec80
  br i1 %i.aw, label %middle.block89, label %vector.body81, !llvm.loop !1604

middle.block89:                                   ; preds = %vector.body81
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !1617, !noalias !1616
  %cmp.n90 = icmp eq i64 %i.aj, %n.vec80
  br i1 %cmp.n90, label %.loopexit, label %.lr.ph.i.i18.preheader94

.lr.ph.i.i18.preheader94:                         ; preds = %vector.memcheck78, %.lr.ph.i.i18.preheader, %middle.block89
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck78 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.ax, %middle.block89 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck78 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.ao, %middle.block89 ]
  %.01517.i.i.ph = phi ptr [ %i.j, %vector.memcheck78 ], [ %i.j, %.lr.ph.i.i18.preheader ], [ %i.ap, %middle.block89 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader94, %.lr.ph.i.i18
  %i.ay = phi i32 [ %i.ba, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader94 ]
  %.018.i.i = phi ptr [ %i.bb, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader94 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.bc, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader94 ] ; 2 uses
  %i.az = load i32, ptr %.018.i.i, align 4, !tbaa !65
  store i32 %i.az, ptr %.01517.i.i, align 4, !tbaa !65
  %i.ba = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bb, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !1606

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block89, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.j, %bb.f ], [ %i.ap, %middle.block89 ], [ %i.bc, %.lr.ph.i.i18 ]
  %i.bd = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.be = ptrtoint ptr %i.j to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = lshr exact i64 %i.bf, 2
  %i.bh = trunc i64 %i.bg to i16
  store i16 %i.bh, ptr %i.af, align 8, !tbaa !95
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr %0, align 8, !tbaa !92    ; 9 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !97 ; 3 uses
  %i.bm = zext i16 %i.bl to i64                   ; 9 uses
  %i.bn = icmp samesign ugt i64 %i.d, %i.bm
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i16 %i.bl, 8
  %i.bo = sub i64 %i.b, %i.bj
  %diff.check58 = icmp ugt i64 %i.bo, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader97, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bm, 65528                 ; 3 uses
  %i.bp = shl nuw nsw i64 %n.vec62, 2             ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 %i.bp     ; 2 uses
  %i.bs = and i64 %i.bm, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bt = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !65
  %wide.load68 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !65
  %i.bv = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !65
  store <4 x i32> %wide.load68, ptr %i.bv, align 4, !tbaa !65
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bw, label %middle.block70, label %vector.body63, !llvm.loop !1607

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %n.vec62, %i.bm
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader97

.lr.ph.i.i23.preheader97:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph98 = phi ptr [ %i.bi, %.lr.ph.i.i23.preheader ], [ %i.bq, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.br, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bm, %.lr.ph.i.i23.preheader ], [ %i.bs, %middle.block70 ] ; 4 uses
  %i.bx = add nsw i64 %.068.i.i.ph, -1
  %xtraiter107 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader97, %.lr.ph.i.i23.prol
  %i.by = phi ptr [ %i.cc, %.lr.ph.i.i23.prol ], [ %.ph98, %.lr.ph.i.i23.preheader97 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.cb, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader97 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader97 ]
  %prol.iter109 = phi i64 [ %prol.iter109.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader97 ]
  %i.bz = add nsw i64 %.068.i.i.prol, -1          ; 2 uses
  %i.ca = load i32, ptr %.09.i.i.prol, align 4, !tbaa !65
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %prol.iter109.next = add i64 %prol.iter109, 1   ; 2 uses
  %prol.iter109.cmp.not = icmp eq i64 %prol.iter109.next, %xtraiter107
  br i1 %prol.iter109.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !1608

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader97
  %.lcssa100.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader97 ], [ %i.cb, %.lr.ph.i.i23.prol ]
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader97 ], [ %i.cc, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph98, %.lr.ph.i.i23.preheader97 ], [ %i.cc, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader97 ], [ %i.cb, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader97 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %i.cd = icmp ult i64 %i.bx, 7
  br i1 %i.cd, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.ce = phi ptr [ %i.dd, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.dc, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.da, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cf = load i32, ptr %.09.i.i, align 4, !tbaa !65
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !65
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !65
  %i.cj = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !65
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !65
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !65
  %i.cp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !65
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !65
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !65
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.da = add nsw i64 %.068.i.i, -8               ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !65
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !65
  %i.dc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %.not.i.i24.7 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i24.7, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23, !llvm.loop !1609

_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23, %middle.block70, %bb.h
  %.0.i = phi ptr [ %i.bi, %bb.h ], [ %i.bq, %middle.block70 ], [ %.lcssa99.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.dd, %.lr.ph.i.i23 ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.br, %middle.block70 ], [ %.lcssa100.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.dc, %.lr.ph.i.i23 ] ; 2 uses
  %i.de = sub nsw i64 %i.d, %i.bm                 ; 3 uses
  %xtraiter110 = and i64 %i.de, 3                 ; 2 uses
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol

.lr.ph.i14.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %.lr.ph.i14.i.prol
  %.020.i.i.prol = phi i64 [ %i.df, %.lr.ph.i14.i.prol ], [ %i.de, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ]
  %.0819.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i14.i.prol ], [ %.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i14.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ] ; 3 uses
  %prol.iter112 = phi i64 [ %prol.iter112.next, %.lr.ph.i14.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ]
  %i.df = add nsw i64 %.020.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.dg = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !65
  store i32 %i.dg, ptr %.01618.i.i.prol, align 4, !tbaa !65
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dj = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter112.next = add i64 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i64 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol, !llvm.loop !1610

.lr.ph.i14.i.prol.loopexit:                       ; preds = %.lr.ph.i14.i.prol, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %.020.i.i.unr = phi i64 [ %i.de, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.df, %.lr.ph.i14.i.prol ]
  %.0819.i.i.unr = phi ptr [ %.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.dj, %.lr.ph.i14.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.dk, %.lr.ph.i14.i.prol ]
  %i.dl = sub nsw i64 %i.bm, %i.d
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i
  %.020.i.i = phi i64 [ %i.ea, %.lr.ph.i14.i ], [ %.020.i.i.unr, %.lr.ph.i14.i.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.ed, %.lr.ph.i14.i ], [ %.0819.i.i.unr, %.lr.ph.i14.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.ee, %.lr.ph.i14.i ], [ %.01618.i.i.unr, %.lr.ph.i14.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.dn = load i32, ptr %.0819.i.i, align 4, !tbaa !65
  store i32 %i.dn, ptr %.01618.i.i, align 4, !tbaa !65
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dq = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !65
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !65
  %i.dt = add i32 %i.do, 2
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !65
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !65
  %i.dx = add i32 %i.do, 3
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.dz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ea = add nsw i64 %.020.i.i, -4               ; 2 uses
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !65
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !65
  %i.ec = add i32 %i.do, 4
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i15.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i, !llvm.loop !1611

bb.i:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %2, %1
  br i1 %.not8.i.i, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.d, 8
  %i.ef = sub i64 %i.b, %i.bj
  %diff.check = icmp ugt i64 %i.ef, -32
  %or.cond93 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond93, label %.lr.ph.i17.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.eg = shl nsw i64 %n.vec, 2                   ; 2 uses
  %i.eh = getelementptr i8, ptr %i.bi, i64 %i.eg  ; 2 uses
  %i.ei = and i64 %i.d, 7
  %i.ej = getelementptr i8, ptr %1, i64 %i.eg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ek = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.ek ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !65
  %wide.load54 = load <4 x i32>, ptr %i.el, align 4, !tbaa !65
  %i.em = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !65
  store <4 x i32> %wide.load54, ptr %i.em, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !1612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i.preheader102

.lr.ph.i17.i.preheader102:                        ; preds = %.lr.ph.i17.i.preheader, %middle.block
  %.011.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i17.i.preheader ], [ %i.eh, %middle.block ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.d, %.lr.ph.i17.i.preheader ], [ %i.ei, %middle.block ] ; 4 uses
  %.079.i.i.ph = phi ptr [ %1, %.lr.ph.i17.i.preheader ], [ %i.ej, %middle.block ] ; 2 uses
  %i.eo = add nsw i64 %.0610.i.i.ph, -1
  %xtraiter = and i64 %.0610.i.i.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader102, %.lr.ph.i17.i.prol
  %.011.i.i.prol = phi ptr [ %i.es, %.lr.ph.i17.i.prol ], [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i17.i.prol ], [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ]
  %.079.i.i.prol = phi ptr [ %i.er, %.lr.ph.i17.i.prol ], [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i17.i.prol ], [ 0, %.lr.ph.i17.i.preheader102 ]
  %i.ep = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.eq = load i32, ptr %.079.i.i.prol, align 4, !tbaa !65
  store i32 %i.eq, ptr %.011.i.i.prol, align 4, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol, !llvm.loop !1613

.lr.ph.i17.i.prol.loopexit:                       ; preds = %.lr.ph.i17.i.prol, %.lr.ph.i17.i.preheader102
  %.lcssa103.unr = phi ptr [ poison, %.lr.ph.i17.i.preheader102 ], [ %i.es, %.lr.ph.i17.i.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.es, %.lr.ph.i17.i.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.ep, %.lr.ph.i17.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i17.i.preheader102 ], [ %i.er, %.lr.ph.i17.i.prol ]
  %i.et = icmp ult i64 %i.eo, 7
  br i1 %i.et, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.011.i.i = phi ptr [ %i.fs, %.lr.ph.i17.i ], [ %.011.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fp, %.lr.ph.i17.i ], [ %.0610.i.i.unr, %.lr.ph.i17.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.fr, %.lr.ph.i17.i ], [ %.079.i.i.unr, %.lr.ph.i17.i.prol.loopexit ] ; 9 uses
  %i.eu = load i32, ptr %.079.i.i, align 4, !tbaa !65
  store i32 %i.eu, ptr %.011.i.i, align 4, !tbaa !65
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !65
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !65
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !65
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !65
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !65
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !65
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !65
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !65
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !65
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !65
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.fo = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fp = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !65
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !65
  %i.fr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32 ; 2 uses
  %.not.i18.i.7 = icmp eq i64 %i.fp, 0
  br i1 %.not.i18.i.7, label %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i, label %.lr.ph.i17.i, !llvm.loop !1614

_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %middle.block, %bb.i
  %.0.lcssa.i20.i = phi ptr [ %i.bi, %bb.i ], [ %i.eh, %middle.block ], [ %.lcssa103.unr, %.lr.ph.i17.i.prol.loopexit ], [ %i.fs, %.lr.ph.i17.i ] ; 2 uses
  %i.ft = sub nuw nsw i64 %i.bm, %i.d             ; 4 uses
  %.not3.i.i20 = icmp eq i64 %i.ft, 0
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter104 = and i64 %i.ft, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fu, %.lr.ph.i21.i.prol ], [ %i.ft, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fx, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter106 = phi i64 [ %prol.iter106.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fu = add nsw i64 %.05.i.i21.prol, -1         ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !65
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter106.next = add i64 %prol.iter106, 1   ; 2 uses
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !1615

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.ft, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fx, %.lr.ph.i21.i.prol ]
  %i.fy = sub nsw i64 %i.d, %i.bm
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.gh, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gj, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !65
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.gc, align 4, !tbaa !65
  %i.gd = add i32 %i.ga, -2
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.ge, align 4, !tbaa !65
  %i.gf = add i32 %i.ga, -3
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.gh = add nsw i64 %.05.i.i21, -4              ; 2 uses
  store i32 -2147483648, ptr %i.gg, align 4, !tbaa !65
  %i.gi = add i32 %i.ga, -4
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.gh, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !13

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %i.gk = trunc nuw i64 %i.d to i16
  store i16 %i.gk, ptr %i.bk, align 8, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_10vector_optIvtEEE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %.015.lcssa.i.i.i = phi ptr [ %i.q, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEtNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 7 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %3, 2
  %i.ab = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa
  %bound0 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ab, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ac = and i64 %3, 7
  %i.ad = shl i64 %n.vec, 2
  %i.ae = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ad
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi12 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ag = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ag ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !65, !alias.scope !1625, !noalias !1626
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !65, !alias.scope !1625, !noalias !1626
  %i.ai = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.aj = add <4 x i32> %vec.phi12, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1621

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aj, %i.ai
  %i.al = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63, !alias.scope !1626
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader21

.lr.ph.i.i.i.i.preheader21:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ] ; 2 uses
  %.016.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ] ; 4 uses
  %.01315.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 2 uses
  %i.am = add i64 %.016.i.i.i.i.ph, -1
  %xtraiter = and i64 %.016.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader21, %.lr.ph.i.i.i.i.prol
  %i.an = phi i32 [ %i.ap, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader21 ]
  %.016.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.prol ], [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader21 ]
  %i.ao = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !65
  %i.ap = add i32 %i.an, 1                        ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1622

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader21
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader21 ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ], [ %i.ao, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader21 ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %i.ar = icmp ult i64 %i.am, 3
  br i1 %i.ar, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.as = phi i32 [ %i.ba, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.016.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !65
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !65
  %i.av = add i32 %i.as, 2
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.aw, align 4, !tbaa !65
  %i.ax = add i32 %i.as, 3
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ay = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.az = add i64 %.016.i.i.i.i, -4               ; 2 uses
  store i32 0, ptr %i.ay, align 4, !tbaa !65
  %i.ba = add i32 %i.as, 4                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bb = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1623

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bg, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bh, %.lr.ph.i20.i.i ], [ %i.bc, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bd = load i32, ptr %.018.i21.i.i, align 4, !tbaa !65
  store i32 %i.bd, ptr %.01517.i22.i.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !65
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bg, %i.u
end_hunk_8
