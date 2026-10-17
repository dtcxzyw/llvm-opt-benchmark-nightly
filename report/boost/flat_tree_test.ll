Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC2ERKSE_:bb.a

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !6383, !noalias !6380
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ai, %middle.block ]
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.ak, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.al = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6379

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !463
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC2EOSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC5EOSE_) align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !419
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !419
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !465
  store ptr %i.d, ptr %i.b, align 8, !tbaa !465
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC2ERKSE_RKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC5ERKSE_RKSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !464    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i, !prof !339

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container4test24movable_and_copyable_intEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !464
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !463
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !465
  %i.m = load ptr, ptr %1, align 8, !tbaa !419    ; 9 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_RKS4_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.q = add i64 %i.o, -4
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = and i64 %i.r, -4
  %i.v = add i64 %i.u, 4                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %i.i, %i.x
  %bound114 = icmp ult ptr %i.m, %i.w
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  %bound016 = icmp ugt ptr %i.x, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound117 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18
  br i1 %conflict.rdx19, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ab, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.m, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !343, !alias.scope !6390
  %wide.load22 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !343, !alias.scope !6390
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343, !alias.scope !6391, !noalias !6392
  store <4 x i32> %wide.load22, ptr %i.ae, align 4, !tbaa !343, !alias.scope !6391, !noalias !6392
  %i.af = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ag = add <4 x i32> %vec.phi20, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !6388

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !6393, !noalias !6390
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_RKS4_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ai, %middle.block ]
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.ak, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.al = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_RKS4_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6389

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2ERKS5_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EEC2EmRKS4_.exit.i ], [ %i.z, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !463
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC2EOSE_RKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat($_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataC5EOSE_RKSB_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !419
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !419
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !465
  store ptr %i.d, ptr %i.b, align 8, !tbaa !465
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ESt6vectorIS4_SaIS4_EEE4DataaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !464    ; 15 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !465
  %i.j = load ptr, ptr %0, align 8, !tbaa !464    ; 13 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 6 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !339

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 10 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.p = add i64 %i.d, -4
  %i.q = sub i64 %i.p, %i.e                       ; 3 uses
  %i.r = lshr i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.q, 124
  br i1 %min.iters.check86, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = and i64 %i.q, -4
  %i.u = add i64 %i.t, 4                          ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.u       ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u     ; 2 uses
  %bound0 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.v, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound088 = icmp ult ptr %2, %i.w
  %bound189 = icmp ult ptr %i.c, %i.v
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %found.conflict, %found.conflict90
  %bound091 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound192 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx, %found.conflict93
  br i1 %conflict.rdx94, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %vector.memcheck87
  %n.vec96 = and i64 %i.s, 9223372036854775800    ; 3 uses
  %i.x = shl i64 %n.vec96, 2                      ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  %i.aa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next104, %vector.body97 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aa, %vector.ph95 ], [ %i.ae, %vector.body97 ]
  %vec.phi99 = phi <4 x i32> [ zeroinitializer, %vector.ph95 ], [ %i.af, %vector.body97 ]
  %i.ab = shl i64 %index98, 2                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %2, i64 %i.ab ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load102 = load <4 x i32>, ptr %next.gep101, align 4, !tbaa !343, !alias.scope !6406
  %wide.load103 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !343, !alias.scope !6406
  %i.ad = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %wide.load102, ptr %next.gep100, align 4, !tbaa !343, !alias.scope !6407, !noalias !6408
  store <4 x i32> %wide.load103, ptr %i.ad, align 4, !tbaa !343, !alias.scope !6407, !noalias !6408
  %i.ae = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.af = add <4 x i32> %vec.phi99, splat (i32 1) ; 2 uses
  %index.next104 = add nuw i64 %index98, 8        ; 2 uses
  %i.ag = icmp eq i64 %index.next104, %n.vec96
  br i1 %i.ag, label %middle.block105, label %vector.body97, !llvm.loop !6398

middle.block105:                                  ; preds = %vector.body97
  %bin.rdx = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !6409, !noalias !6406
  %cmp.n106 = icmp eq i64 %i.s, %n.vec96
  br i1 %cmp.n106, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck87, %.lr.ph.i.i.i.i.preheader.i, %middle.block105
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck87 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ah, %middle.block105 ]
  %.013.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck87 ], [ %2, %.lr.ph.i.i.i.i.preheader.i ], [ %i.y, %middle.block105 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck87 ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block105 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ai = phi i32 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aj, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.ak = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6399

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block105
  %i.an = load ptr, ptr %0, align 8, !tbaa !464   ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %i.an, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !343
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.as, %i.ap
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !465
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aw) #24
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !464
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !465
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.f:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !463 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.bb, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = icmp sgt i64 %i.g, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 8
  %i.bd = sub i64 %i.e, %i.l
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i26.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.g, 9223372036854775800      ; 3 uses
  %i.be = and i64 %i.g, 7
  %i.bf = shl i64 %n.vec, 2                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.j, i64 %i.bf   ; 2 uses
  %i.bh = getelementptr i8, ptr %i.c, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bi ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.c, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !343
  %wide.load53 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !343
  %i.bk = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !343
  store <4 x i32> %wide.load53, ptr %i.bk, align 4, !tbaa !343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !6400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, label %.lr.ph.i.i.i.i.i26.preheader114

.lr.ph.i.i.i.i.i26.preheader114:                  ; preds = %.lr.ph.i.i.i.i.i26.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.be, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bg, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.preheader114, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i26.preheader114 ] ; 2 uses
  %i.bm = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.bm, ptr %.0811.i.i.i.i.i, align 4, !tbaa !343
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4 ; 2 uses
  %i.bp = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bq = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !6401

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26, %middle.block
  %.lcssa = phi ptr [ %i.bg, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i26 ] ; 2 uses
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.g ]
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.g ]
  %.not4.i.i27 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.az
  br i1 %.not4.i.i27, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.br = sub i64 %.pre-phi, %i.l
  %i.bs = getelementptr inbounds i8, ptr %i.j, i64 %i.br
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.bv, %.lr.ph.i.i28 ], [ %i.bs, %.lr.ph.i.i28.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.sroa.01.05.i.i, align 4, !tbaa !343
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 4 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bv, %i.az
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i28, !llvm.loop !6402

bb.h:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb ; 2 uses
  %i.bx = ashr exact i64 %i.bb, 2                 ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i31.preheader, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i31.preheader:                     ; preds = %bb.h
  %min.iters.check59 = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.e, %i.l
  %diff.check61 = icmp ugt i64 %i.bz, -32
  %or.cond109 = or i1 %min.iters.check59, %diff.check61
  br i1 %or.cond109, label %.lr.ph.i.i.i.i.i31.preheader112, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i31.preheader
  %n.vec63 = and i64 %i.bx, 9223372036854775800   ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec63, 2                     ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.c, i64 %i.cb
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.ce = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.c, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !343
  %wide.load69 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !343
  %i.cg = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 4, !tbaa !343
  store <4 x i32> %wide.load69, ptr %i.cg, align 4, !tbaa !343
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.ch, label %middle.block71, label %vector.body64, !llvm.loop !6403

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.bx, %n.vec63
  br i1 %cmp.n72, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i31.preheader112

.lr.ph.i.i.i.i.i31.preheader112:                  ; preds = %.lr.ph.i.i.i.i.i31.preheader, %middle.block71
  %.012.i.i.i.i.i32.ph = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.ca, %middle.block71 ]
  %.0811.i.i.i.i.i33.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.cc, %middle.block71 ]
  %.0910.i.i.i.i.i34.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i31.preheader ], [ %i.cd, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i31

.lr.ph.i.i.i.i.i31:                               ; preds = %.lr.ph.i.i.i.i.i31.preheader112, %.lr.ph.i.i.i.i.i31
  %.012.i.i.i.i.i32 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i31 ], [ %.012.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %.0811.i.i.i.i.i33 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i31 ], [ %.0811.i.i.i.i.i33.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %.0910.i.i.i.i.i34 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i31 ], [ %.0910.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i31.preheader112 ] ; 2 uses
  %i.ci = load i32, ptr %.0910.i.i.i.i.i34, align 4, !tbaa !343
  store i32 %i.ci, ptr %.0811.i.i.i.i.i33, align 4, !tbaa !343
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33, i64 4
  %i.cl = add nsw i64 %.012.i.i.i.i.i32, -1
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i32, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i31, label %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, !llvm.loop !6404

_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i31, %middle.block71, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.bw, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.az, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.01214.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.bw, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %i.cn = load i32, ptr %.01214.i.i.i.i, align 4, !tbaa !343
  store i32 %i.cn, ptr %.015.i.i.i.i, align 4, !tbaa !343
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6405

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i28, %.lr.ph.i.i.i.i, %_ZSt4copyIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit
end_hunk_0
begin_hunk_1_@_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC2ERKSF_:bb.a
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ai = phi i32 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aj, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !343
  %i.an = add i32 %i.ai, 2                        ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6453

_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !467
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC2EOSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat($_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC5EOSF_) align 2 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !349
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !349
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !469
  store ptr %i.d, ptr %i.b, align 8, !tbaa !469
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC2ERKSF_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC5ERKSF_RKSC_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !467  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !468    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEE8allocateEmPKv.exit.i.i.i.i, !prof !339

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt15__new_allocatorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23
  br label %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i

_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZNSt15__new_allocatorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEE8allocateEmPKv.exit.i.i.i.i ] ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !468
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !467
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !469
  %i.m = load ptr, ptr %1, align 8, !tbaa !349    ; 10 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !349  ; 3 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_RKS7_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.m to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.q = add i64 %i.o, -8
  %i.r = sub i64 %i.q, %i.p                       ; 3 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = and i64 %i.r, -8
  %i.v = add i64 %i.u, 8                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v     ; 2 uses
  %bound0 = icmp ult ptr %i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %i.i, %i.x
  %bound114 = icmp ult ptr %i.m, %i.w
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  %bound016 = icmp ugt ptr %i.x, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound117 = icmp ult ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx19 = or i1 %conflict.rdx, %found.conflict18
  br i1 %conflict.rdx19, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.m, i64 %i.y
  %i.ab = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ab, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi20 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.ac = shl i64 %index, 3                       ; 3 uses
  %i.ad = or disjoint i64 %i.ac, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ac
  %next.gep21 = getelementptr i8, ptr %i.i, i64 %i.ad
  %next.gep22 = getelementptr i8, ptr %i.m, i64 %i.ac
  %next.gep23 = getelementptr i8, ptr %i.m, i64 %i.ad
  %wide.vec = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !343, !alias.scope !6464
  %wide.vec25 = load <4 x i32>, ptr %next.gep23, align 4, !tbaa !343, !alias.scope !6464
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343, !alias.scope !6465, !noalias !6466
  store <4 x i32> %wide.vec25, ptr %next.gep21, align 4, !tbaa !343, !alias.scope !6465, !noalias !6466
  %i.ae = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.af = add <2 x i32> %vec.phi20, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !6462

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !6467, !noalias !6464
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_RKS7_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.i, %middle.block
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ah, %middle.block ]
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.i.i.preheader.i ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ai = phi i32 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aj, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !343
  %i.an = add i32 %i.ai, 2                        ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_RKS7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6463

_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2ERKS8_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEC2EmRKS7_.exit.i ], [ %i.z, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !467
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC2EOSF_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat($_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataC5EOSF_RKSC_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !349
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !349
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !469
  store ptr %i.d, ptr %i.b, align 8, !tbaa !469
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container3dtl9flat_treeINS1_4pairINS0_4test24movable_and_copyable_intES5_EENS1_9select1stIS5_EESt4lessIS5_ESt6vectorIS6_SaIS6_EEE4DataaSERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !467  ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !468    ; 23 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !469
  %i.j = load ptr, ptr %0, align 8, !tbaa !468    ; 19 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !339

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 11 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e                       ; 3 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check108 = icmp ult i64 %i.q, 168
  br i1 %min.iters.check108, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = and i64 %i.q, -8
  %i.u = add i64 %i.t, 8                          ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 %i.u       ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u     ; 2 uses
  %bound0110 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1111 = icmp ugt ptr %i.v, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0113 = icmp ult ptr %2, %i.w
  %bound1114 = icmp ult ptr %i.c, %i.v
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict112, %found.conflict115
  %bound0116 = icmp ugt ptr %i.w, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1117 = icmp ult ptr %i.c, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  br i1 %conflict.rdx119, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck109
  %n.vec121 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.x = shl i64 %n.vec121, 3                     ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  %i.aa = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, i64 0
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next137, %vector.body122 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.aa, %vector.ph120 ], [ %i.ad, %vector.body122 ]
  %vec.phi124 = phi <2 x i32> [ zeroinitializer, %vector.ph120 ], [ %i.ae, %vector.body122 ]
  %i.ab = shl i64 %index123, 3                    ; 3 uses
  %i.ac = or disjoint i64 %i.ab, 16               ; 2 uses
  %next.gep125 = getelementptr i8, ptr %2, i64 %i.ab
  %next.gep126 = getelementptr i8, ptr %2, i64 %i.ac
  %next.gep127 = getelementptr i8, ptr %i.c, i64 %i.ab
  %next.gep128 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.vec129 = load <4 x i32>, ptr %next.gep127, align 4, !tbaa !343, !alias.scope !6485
  %wide.vec132 = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !343, !alias.scope !6485
  store <4 x i32> %wide.vec129, ptr %next.gep125, align 4, !tbaa !343, !alias.scope !6486, !noalias !6487
  store <4 x i32> %wide.vec132, ptr %next.gep126, align 4, !tbaa !343, !alias.scope !6486, !noalias !6487
  %i.ad = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ae = add <2 x i32> %vec.phi124, splat (i32 2) ; 2 uses
  %index.next137 = add nuw i64 %index123, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next137, %n.vec121
  br i1 %i.af, label %middle.block138, label %vector.body122, !llvm.loop !6472

middle.block138:                                  ; preds = %vector.body122
  %bin.rdx = add <2 x i32> %i.ae, %i.ad
  %i.ag = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !alias.scope !6488, !noalias !6485
  %cmp.n139 = icmp eq i64 %i.s, %n.vec121
  br i1 %cmp.n139, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck109, %.lr.ph.i.i.i.i.preheader.i, %middle.block138
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %vector.memcheck109 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %.lr.ph.i.i.i.i.preheader.i ], [ %i.ag, %middle.block138 ]
  %.013.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck109 ], [ %2, %.lr.ph.i.i.i.i.preheader.i ], [ %i.y, %middle.block138 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck109 ], [ %i.c, %.lr.ph.i.i.i.i.preheader.i ], [ %i.z, %middle.block138 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ah = phi i32 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.013.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ai = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.ai, ptr %.013.i.i.i.i.i, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !343
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !343
  %i.am = add i32 %i.ah, 2                        ; 2 uses
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !6473

_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block138
  %i.ap = load ptr, ptr %0, align 8, !tbaa !468   ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !467 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEEvT_S8_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = ptrtoaddr ptr %i.ap to i64
  %reass.sub = sub i64 %i.as, %i.at
  %i.au = add i64 %reass.sub, 17179869176
  %sh.diff.i.i = lshr i64 %i.au, 2
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %tr.sh.diff.i.not.i = and i32 %tr.sh.diff.i.i, -2
  %i.av = xor i32 %tr.sh.diff.i.not.i, -2
  %i.aw = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %_ZSt8_DestroyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEEvT_S8_.exit

_ZSt8_DestroyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEEvT_S8_.exit: ; preds = %_ZNSt6vectorIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEPS6_mT_SG_.exit, %.lr.ph.preheader.i.i
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEEvT_S8_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !469
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.ap to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.ba) #24
  br label %_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EEEvT_S8_.exit, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !468
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !469
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !467 ; 4 uses
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = sub i64 %i.be, %i.l                     ; 4 uses
  %.not24 = icmp ult i64 %i.bf, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp sgt i64 %i.g, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i25.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit

.lr.ph.i.i.i.i.i25.preheader:                     ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.g, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i25.preheader144, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i25.preheader
  %i.bh = getelementptr i8, ptr %i.j, i64 %i.f
  %bound0 = icmp ult ptr %i.j, %i.b
  %bound1 = icmp ult ptr %i.c, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i25.preheader144, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 9223372036854775804      ; 3 uses
  %i.bi = and i64 %i.g, 3
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.j, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr i8, ptr %i.c, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bm
  %next.gep52 = getelementptr i8, ptr %i.j, i64 %i.bn
  %next.gep53 = getelementptr i8, ptr %i.c, i64 %i.bm
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.bn
  %wide.vec = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !343, !alias.scope !6489
  %wide.vec56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !343, !alias.scope !6489
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343, !alias.scope !6490, !noalias !6489
  store <4 x i32> %wide.vec56, ptr %next.gep52, align 4, !tbaa !343, !alias.scope !6490, !noalias !6489
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !6477

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, label %.lr.ph.i.i.i.i.i25.preheader144

.lr.ph.i.i.i.i.i25.preheader144:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i25.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.bi, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.bk, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i25.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25.preheader144, %.lr.ph.i.i.i.i.i25
  %.012.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i25 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader144 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i25 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader144 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i25 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i25.preheader144 ] ; 3 uses
  %i.bp = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.bp, ptr %.0811.i.i.i.i.i, align 4, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !343
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bw = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i25, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit, !llvm.loop !6478

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit: ; preds = %.lr.ph.i.i.i.i.i25, %middle.block, %bb.g
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.bk, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i25 ] ; 2 uses
  %.not4.i.i26 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bd
  br i1 %.not4.i.i26, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_.exit, label %.lr.ph.preheader.i.i27

.lr.ph.preheader.i.i27:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEENS1_IPS8_SD_EEET0_T_SI_SH_.exit
  %i.bx = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %reass.sub.i29 = add i64 %i.be, 17179869176
  %i.by = sub i64 %reass.sub.i29, %i.bx
  %sh.diff.i.i30 = lshr i64 %i.by, 2
  %tr.sh.diff.i.i31 = trunc i64 %sh.diff.i.i30 to i32
  %tr.sh.diff.i.not.i32 = and i32 %tr.sh.diff.i.i31, -2
  %i.bz = xor i32 %tr.sh.diff.i.not.i32, -2
  %i.ca = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i28, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_.exit

bb.h:                                             ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bf ; 2 uses
  %i.cc = ashr exact i64 %i.bf, 3                 ; 7 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i34.preheader, label %_ZSt4copyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.i.i34.preheader:                     ; preds = %bb.h
  %min.iters.check68 = icmp ult i64 %i.cc, 6
  br i1 %min.iters.check68, label %.lr.ph.i.i.i.i.i34.preheader143, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph.i.i.i.i.i34.preheader
  %i.ce = getelementptr i8, ptr %i.c, i64 %i.bf
  %bound070 = icmp ult ptr %i.j, %i.ce
  %bound171 = icmp ult ptr %i.c, %i.bd
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %.lr.ph.i.i.i.i.i34.preheader143, label %vector.ph73

vector.ph73:                                      ; preds = %vector.memcheck69
  %n.vec74 = and i64 %i.cc, 9223372036854775804   ; 3 uses
  %i.cf = and i64 %i.cc, 3
  %i.cg = shl i64 %n.vec74, 3                     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.j, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.c, i64 %i.cg
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph73
  %index76 = phi i64 [ 0, %vector.ph73 ], [ %index.next89, %vector.body75 ] ; 2 uses
  %i.cj = shl i64 %index76, 3                     ; 3 uses
  %i.ck = or disjoint i64 %i.cj, 16               ; 2 uses
  %next.gep77 = getelementptr i8, ptr %i.j, i64 %i.cj
  %next.gep78 = getelementptr i8, ptr %i.j, i64 %i.ck
  %next.gep79 = getelementptr i8, ptr %i.c, i64 %i.cj
  %next.gep80 = getelementptr i8, ptr %i.c, i64 %i.ck
  %wide.vec81 = load <4 x i32>, ptr %next.gep79, align 4, !tbaa !343, !alias.scope !6491
  %wide.vec84 = load <4 x i32>, ptr %next.gep80, align 4, !tbaa !343, !alias.scope !6491
  store <4 x i32> %wide.vec81, ptr %next.gep77, align 4, !tbaa !343, !alias.scope !6492, !noalias !6491
  store <4 x i32> %wide.vec84, ptr %next.gep78, align 4, !tbaa !343, !alias.scope !6492, !noalias !6491
  %index.next89 = add nuw i64 %index76, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next89, %n.vec74
  br i1 %i.cl, label %middle.block90, label %vector.body75, !llvm.loop !6482

middle.block90:                                   ; preds = %vector.body75
  %cmp.n91 = icmp eq i64 %i.cc, %n.vec74
  br i1 %cmp.n91, label %_ZSt4copyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i34.preheader143

.lr.ph.i.i.i.i.i34.preheader143:                  ; preds = %vector.memcheck69, %.lr.ph.i.i.i.i.i34.preheader, %middle.block90
  %.012.i.i.i.i.i35.ph = phi i64 [ %i.cc, %vector.memcheck69 ], [ %i.cc, %.lr.ph.i.i.i.i.i34.preheader ], [ %i.cf, %middle.block90 ]
  %.0811.i.i.i.i.i36.ph = phi ptr [ %i.j, %vector.memcheck69 ], [ %i.j, %.lr.ph.i.i.i.i.i34.preheader ], [ %i.ch, %middle.block90 ]
  %.0910.i.i.i.i.i37.ph = phi ptr [ %i.c, %vector.memcheck69 ], [ %i.c, %.lr.ph.i.i.i.i.i34.preheader ], [ %i.ci, %middle.block90 ]
  br label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %.lr.ph.i.i.i.i.i34.preheader143, %.lr.ph.i.i.i.i.i34
  %.012.i.i.i.i.i35 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i34 ], [ %.012.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i34.preheader143 ] ; 2 uses
  %.0811.i.i.i.i.i36 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i34 ], [ %.0811.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i34.preheader143 ] ; 3 uses
  %.0910.i.i.i.i.i37 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i34 ], [ %.0910.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i34.preheader143 ] ; 3 uses
  %i.cm = load i32, ptr %.0910.i.i.i.i.i37, align 4, !tbaa !343
  store i32 %i.cm, ptr %.0811.i.i.i.i.i36, align 4, !tbaa !343
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i37, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i36, i64 4
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !343
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !343
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i37, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i36, i64 8
  %i.cs = add nsw i64 %.012.i.i.i.i.i35, -1
  %i.ct = icmp samesign ugt i64 %.012.i.i.i.i.i35, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i34, label %_ZSt4copyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_ET0_T_S9_S8_.exit, !llvm.loop !6483

_ZSt4copyIPN5boost9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i34, %middle.block90, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.cb, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5boost9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EESt6vectorIS8_SaIS8_EEEEEvT_SE_.exit, label %.lr.ph.i.i.i.i

end_hunk_1
