Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN14MinimapModeDefC2ERKS_:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !154
  store i8 %i.n, ptr %i.m, align 1, !tbaa !154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !155
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8
  store i32 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !151
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !153  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !155 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !152
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i8, label %._crit_edge.i.i7

.noexc.i8:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i8
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !153
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !152
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !154
  br label %._crit_edge.i.i7

._crit_edge.i.i7:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.aa, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i7
  %i.af = load i8, ptr %i.y, align 1, !tbaa !154
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !154
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i7
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !155
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.am = load i16, ptr %i.al, align 8, !tbaa !167
  store i16 %i.am, ptr %i.ak, align 8, !tbaa !167
  ret void

bb.g:                                             ; preds = %.noexc.i8
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !153 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.f
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aq = load i64, ptr %i.f, align 8, !tbaa !154
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap8nextModeEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !148
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 88
  %.not = icmp ult i64 %i.h, %i.l
  %spec.store.select = select i1 %.not, i64 %i.h, i64 0 ; 2 uses
  store i64 %spec.store.select, ptr %i.f, align 8, !tbaa !148
  tail call void @_ZN7Minimap12setModeIndexEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %spec.store.select)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap6setPosEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(192) %0, i48 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.02.0.extract.trunc = trunc i48 %1 to i16 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i48 %1, 16
  %.sroa.3.0.extract.trunc = trunc i48 %.sroa.3.0.extract.shift to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i48 %1, 32
  %.sroa.4.0.extract.trunc = trunc nuw i48 %.sroa.4.0.extract.shift to i16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 94 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !51
  %i.g = icmp eq i16 %i.f, %.sroa.02.0.extract.trunc
  br i1 %i.g, label %bb.c, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.i = load i16, ptr %i.h, align 2, !tbaa !52
  %i.j = icmp eq i16 %i.i, %.sroa.3.0.extract.trunc
  br i1 %i.j, label %_ZNK4core8vector3dIsEneERKS1_.exit, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.l = load i16, ptr %i.k, align 2, !tbaa !53
  %.not = icmp eq i16 %i.l, %.sroa.4.0.extract.trunc
  br i1 %.not, label %.critedge, label %_ZNK4core8vector3dIsEneERKS1_.exit.thread

_ZNK4core8vector3dIsEneERKS1_.exit.thread:        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.c, %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.e, ptr noundef nonnull align 8 dereferenceable(6) %i.m, i64 6, i1 false), !tbaa.struct !211
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !157  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i16 %.sroa.02.0.extract.trunc, ptr %i.o, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 90
  store i16 %.sroa.3.0.extract.trunc, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  store i16 %.sroa.4.0.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !54
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  tail call void @_ZN9Semaphore4postEj(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 1)
  br label %bb.d

.critedge:                                        ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.t = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #33 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNK4core8vector3dIsEneERKS1_.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7Minimap8setAngleEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((100, 104)) %0, float noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %1, ptr %i.a, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.video::SColor", align 4     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 -268435456, ptr %2, align 4, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.d = load i16, ptr %i.c, align 2, !tbaa !96   ; 2 uses
  %.not19 = icmp eq i16 %i.d, 0
  br i1 %.not19, label %._crit_edge18, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.pre = phi i16 [ %.pre21, %._crit_edge ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.h, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = phi i32 [ %i.j, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.01117 = phi i16 [ %i.i, %._crit_edge ], [ 0, %bb.a ]
  %.not20 = icmp eq i16 %.pre, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = zext i16 %.pre to i32
  br label %.lr.ph

._crit_edge18:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.pre21 = phi i16 [ 0, %.preheader ], [ %i.am, %bb.c ] ; 2 uses
  %i.h = phi ptr [ %i.e, %.preheader ], [ %i.ak, %bb.c ]
  %i.i = add i16 %.01117, 1                       ; 2 uses
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = zext i16 %.pre21 to i32
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %.preheader, label %._crit_edge18, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.m = phi i32 [ %i.an, %bb.c ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.ak, %bb.c ], [ %i.e, %.lr.ph.preheader ]
  %i.o = phi i32 [ %i.aj, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.016 = phi i16 [ %i.ai, %bb.c ], [ 0, %.lr.ph.preheader ]
  %i.p = mul nsw i32 %i.m, %i.o
  %i.q = add nsw i32 %i.p, %i.f
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 106
  %i.u = load i16, ptr %i.t, align 2, !tbaa !100  ; 2 uses
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 3
  %i.x = add nuw nsw i32 %i.w, 32
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = call nsz noundef float @llvm.floor.f32(float %i.z)
  %i.ab = fptosi float %i.aa to i32
  %i.ac = call noundef i32 @llvm.smin.i32(i32 %i.ab, i32 255)
  %3 = shl nuw nsw i32 %i.ac, 8
  %4 = and i32 %3, 65280
  %5 = load i32, ptr %2, align 4, !tbaa !212
  %6 = and i32 %5, -65281
  %7 = or disjoint i32 %6, %4
  br label %bb.c

8:                                                ; preds = %.lr.ph
  %9 = load i32, ptr %2, align 4, !tbaa !212
  %10 = and i32 %9, -65281
  br label %bb.c

bb.c:                                             ; preds = %8, %bb.b
  %storemerge = phi i32 [ %7, %bb.b ], [ %10, %8 ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !212
  %i.ad = xor i32 %i.o, -1
  %i.ae = add nsw i32 %i.m, %i.ad
  %i.af = load ptr, ptr %1, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.f, i32 noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false)
  %i.ai = add i16 %.016, 1                        ; 2 uses
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 42
  %i.am = load i16, ptr %i.al, align 2, !tbaa !96 ; 2 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp slt i32 %i.aj, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap31blitMinimapPixelsToImageSurfaceEPN5video6IImageES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 7 uses
  %4 = alloca %"class.video::SColor", align 4     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 0, ptr %3, align 4, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.d = load i16, ptr %i.c, align 2, !tbaa !96   ; 2 uses
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge41, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.pre44 = phi i16 [ %i.d, %.preheader.lr.ph ], [ %.pre4446, %._crit_edge ] ; 2 uses
  %i.f = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.i, %._crit_edge ] ; 2 uses
  %i.g = phi i32 [ 0, %.preheader.lr.ph ], [ %i.k, %._crit_edge ] ; 3 uses
  %.040 = phi i16 [ 0, %.preheader.lr.ph ], [ %i.j, %._crit_edge ]
  %.not42 = icmp eq i16 %.pre44, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = zext i16 %.pre44 to i32
  br label %.lr.ph

._crit_edge41:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.pre4446 = phi i16 [ 0, %.preheader ], [ %i.dc, %bb.i ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.preheader ], [ %i.da, %bb.i ]
  %i.j = add i16 %.040, 1                         ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = zext i16 %.pre4446 to i32
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.preheader, label %._crit_edge41, !llvm.loop !340

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.n = phi i32 [ %i.dd, %bb.i ], [ %i.h, %.lr.ph.preheader ]
  %i.o = phi ptr [ %i.da, %bb.i ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.p = phi i32 [ %i.cz, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03139 = phi i16 [ %i.cy, %bb.i ], [ 0, %.lr.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.r = mul nsw i32 %i.n, %i.p
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.w = load i16, ptr %i.u, align 4, !tbaa !342
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !215
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !216 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 2080
  %i.ag = icmp ugt i64 %i.af, %i.x
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw [2080 x i8], ptr %i.ab, i64 %i.x ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.al, %bb.c ], [ %i.ah, %bb.b ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 536
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !155
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 563
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !347, !range !93, !noundef !94
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 564
  br label %bb.i

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 179
  %i.av = load i8, ptr %i.au, align 1, !tbaa !347, !range !93, !noundef !94
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 180
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 1400
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !374
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !375
  call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.az, i8 noundef zeroext %i.bb, ptr noundef nonnull %3)
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !157
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.bc = phi ptr [ %i.o, %bb.g ], [ %.pre43, %bb.h ], [ %i.o, %bb.e ]
  %.in = phi ptr [ %i.ax, %bb.g ], [ %3, %bb.h ], [ %i.at, %bb.e ]
  %5 = load i32, ptr %.in, align 4, !tbaa !196    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 1400
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !374
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1264
  %i.bg = lshr i32 %5, 16
  %i.bh = and i32 %i.bg, 255
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !212 ; 3 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = and i32 %i.bj, 255
  %i.bl = mul nuw nsw i32 %i.bk, %i.bh
  %.lhs.trunc = trunc nuw i32 %i.bl to i16
  %i.bm = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.bm to i32
  %6 = shl nuw nsw i32 %.zext, 16
  %i.bn = lshr i32 %5, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = lshr i32 %i.bi, 8
  %i.bq = and i32 %i.bp, 255
  %i.br = mul nuw nsw i32 %i.bq, %i.bo
  %.lhs.trunc34 = trunc nuw i32 %i.br to i16
  %i.bs = udiv i16 %.lhs.trunc34, 255
  %.zext35 = zext nneg i16 %i.bs to i32
  %7 = shl nuw nsw i32 %.zext35, 8
  %8 = and i32 %7, 65280
  %i.bt = and i32 %5, 255
  %i.bu = and i32 %i.bi, 255
  %i.bv = mul nuw nsw i32 %i.bu, %i.bt
  %.lhs.trunc36 = trunc nuw i32 %i.bv to i16
  %i.bw = udiv i16 %.lhs.trunc36, 255
  %.zext37 = zext nneg i16 %i.bw to i32
  %.masked38 = and i32 %6, 16711680
  %.masked = or i32 %8, %.zext37
  %9 = or disjoint i32 %.masked, %.masked38
  %i.bx = or disjoint i32 %9, -268435456
  store i32 %i.bx, ptr %3, align 4, !tbaa !212
  %i.by = getelementptr inbounds nuw i8, ptr %i.bc, i64 42
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !96
  %i.ca = zext i16 %i.bz to i32
  %i.cb = xor i32 %i.p, -1                        ; 2 uses
  %i.cc = add nsw i32 %i.ca, %i.cb
  %i.cd = load ptr, ptr %1, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.g, i32 noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !101
  %i.ci = zext i16 %i.ch to i32                   ; 3 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 42
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !96
  %i.cm = zext i16 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, %i.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.co = shl nuw i32 %i.ci, 16
  %i.cp = shl nuw nsw i32 %i.ci, 8
  %i.cq = and i32 %i.cp, 65280
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = and i32 %i.ci, 255
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = or i32 %i.ct, -16777216
  store i32 %i.cu, ptr %4, align 4, !tbaa !212
  %i.cv = load ptr, ptr %2, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %i.g, i32 noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.cy = add i16 %.03139, 1                      ; 2 uses
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 42
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !96 ; 2 uses
  %i.dd = zext i16 %i.dc to i32                   ; 2 uses
  %i.de = icmp slt i32 %i.cz, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge, !llvm.loop !341
}

declare void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288), i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.core::vector2d", align 4    ; 6 uses
  %3 = alloca %"class.core::dimension2d", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.core::vector2d", align 4    ; 6 uses
  %6 = alloca %"class.core::dimension2d", align 4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2097253
  %i.f = load i8, ptr %i.e, align 1, !tbaa !158, !range !93, !noundef !94
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2097256
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %.not11 = icmp eq ptr %i.i, null
  br i1 %.not11, label %.noexc.i, label %bb.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !144  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 22, ptr %i.b, align 8, !tbaa !152
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %1, align 8, !tbaa !153
  %i.o = load i64, ptr %i.b, align 8, !tbaa !152  ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.n, ptr noundef nonnull align 1 dereferenceable(22) @.str.7, i64 22, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !155
  %i.q = load ptr, ptr %1, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 0, ptr %2, align 4, !tbaa !227
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 512, ptr %3, align 4, !tbaa !230
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 512, ptr %i.x, align 4, !tbaa !231
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 608
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.v, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !157 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2097256
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ae = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #30
  %.pre33.pre = load ptr, ptr %i.c, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pre33 = phi ptr [ %.pre33.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.i

bb.e:                                             ; preds = %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn12 = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.an = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.e
  %.pn12.pn = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %.pn12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn12, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.s

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ap = phi ptr [ %.pre33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2097256
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 2097264
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !207
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.noexc.i20, label %bb.q

.noexc.i20:                                       ; preds = %bb.j
  %i.at = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 23, ptr %i.a, align 8, !tbaa !152
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.m   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.ax, ptr %4, align 8, !tbaa !153
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ax, ptr noundef nonnull align 1 dereferenceable(23) @.str.8, i64 23, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !155
  %i.ba = load ptr, ptr %4, align 8, !tbaa !153
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef null)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i32 0, ptr %5, align 4, !tbaa !227
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 512, ptr %6, align 4, !tbaa !230
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 512, ptr %i.bh, align 4, !tbaa !231
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 608
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !157 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2097264
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !207
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bo = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.l
  %i.bq = load i64, ptr %i.aw, align 8, !tbaa !154
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #30
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %.pre = phi ptr [ %.pre.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.bm, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.q

bb.m:                                             ; preds = %.noexc.i20
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.n:                                             ; preds = %.noexc21
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.aw
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.p
  %i.bx = load i64, ptr %i.aw, align 8, !tbaa !154
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.j
  %i.bz = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.d, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2097264
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.08.in = phi ptr [ %i.aq, %bb.i ], [ %i.ca, %bb.q ]
  %.08 = load ptr, ptr %.08.in, align 8, !tbaa !376
  ret ptr %.08

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn12.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7Minimap17getMinimapTextureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.video::SColor", align 4     ; 7 uses
  %2 = alloca %"class.core::dimension2d", align 4 ; 7 uses
  %3 = alloca %"class.core::dimension2d", align 4 ; 5 uses
  %4 = alloca %"class.video::SColor", align 4     ; 4 uses
  %5 = alloca %"class.core::vector2d", align 8    ; 4 uses
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %7 = alloca %"class.core::string", align 8      ; 21 uses
  %8 = alloca %"class.core::string", align 8      ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2097252
  %i.d = load i8, ptr %i.c, align 4, !tbaa !92, !range !93, !noundef !94
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !95
  %.not = icmp eq i32 %i.f, 3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2097272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208
  br label %bb.ag

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.j = load i16, ptr %i.i, align 2, !tbaa !96
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !230
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !231
  %i.m = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 10 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 600
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 512, ptr %3, align 4, !tbaa !230
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 512, ptr %i.x, align 4, !tbaa !231
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 600
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !95
  switch i32 %i.ad, label %bb.k [
    i32 3, label %bb.i
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZN7Minimap31blitMinimapPixelsToImageSurfaceEPN5video6IImageES2_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.q, ptr noundef %i.v)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i32 -268435456, ptr %1, align 4, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 42
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !96 ; 2 uses
  %.not19.i = icmp eq i16 %i.af, 0
  br i1 %.not19.i, label %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %._crit_edge.i
  %.pre.i = phi i16 [ %.pre21.i, %._crit_edge.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %._crit_edge.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ah = phi i32 [ %i.al, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %.01117.i = phi i16 [ %i.ak, %._crit_edge.i ], [ 0, %bb.f ]
  %.not20.i = icmp eq i16 %.pre.i, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ai = zext i16 %.pre.i to i32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.preheader.i
  %.pre21.i = phi i16 [ 0, %.preheader.i ], [ %i.bo, %bb.h ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.preheader.i ], [ %i.bm, %bb.h ]
  %i.ak = add i16 %.01117.i, 1                    ; 2 uses
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = zext i16 %.pre21.i to i32
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.preheader.i, label %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.ao = phi i32 [ %i.bp, %bb.h ], [ %i.ai, %.lr.ph.preheader.i ] ; 2 uses
  %i.ap = phi ptr [ %i.bm, %bb.h ], [ %i.ag, %.lr.ph.preheader.i ]
  %i.aq = phi i32 [ %i.bl, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.016.i = phi i16 [ %i.bk, %bb.h ], [ 0, %.lr.ph.preheader.i ]
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = add nsw i32 %i.ar, %i.ah
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 106
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i, label %14, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.ay, 32
  %i.ba = uitofp nneg i32 %i.az to float
  %i.bb = fadd nsz float %i.ba, 5.000000e-01
  %i.bc = call nsz noundef float @llvm.floor.f32(float %i.bb)
  %i.bd = fptosi float %i.bc to i32
  %i.be = call noundef i32 @llvm.smin.i32(i32 %i.bd, i32 255)
  %9 = shl nuw nsw i32 %i.be, 8
  %10 = and i32 %9, 65280
  %11 = load i32, ptr %1, align 4, !tbaa !212
  %12 = and i32 %11, -65281
  %13 = or disjoint i32 %12, %10
  br label %bb.h

14:                                               ; preds = %.lr.ph.i
  %15 = load i32, ptr %1, align 4, !tbaa !212
  %16 = and i32 %15, -65281
  br label %bb.h

bb.h:                                             ; preds = %14, %bb.g
  %storemerge.i = phi i32 [ %13, %bb.g ], [ %16, %14 ]
  store i32 %storemerge.i, ptr %1, align 4, !tbaa !212
  %i.bf = xor i32 %i.aq, -1
  %i.bg = add nsw i32 %i.ao, %i.bf
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(41) %i.q, i32 noundef %i.ah, i32 noundef %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false), !inline_history !379
  %i.bk = add i16 %.016.i, 1                      ; 2 uses
  %i.bl = sext i16 %i.bk to i32                   ; 2 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 42
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !96 ; 2 uses
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = icmp slt i32 %i.bl, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !144 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef null) ; 6 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 96
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !386
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(112) %i.bx, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 592
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i32 noundef %i.ca, ptr noundef nonnull align 4 dereferenceable(8) %i.cb, ptr noundef %i.ce, i1 noundef zeroext true, i1 noundef zeroext false) ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 -16777216, ptr %4, align 4, !tbaa !212
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load <2 x i32>, ptr %i.cj, align 4, !tbaa !196
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 42
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !96
  %i.cr = zext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !387
  %i.cu = sext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !388
  %i.cx = zext i16 %i.cw to i32
  %i.cy = insertelement <2 x i32> poison, i32 %i.cr, i64 0
  %i.cz = shufflevector <2 x i32> %i.cy, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.da = sub nsw <2 x i32> %i.cz, %i.cn
  %i.db = ashr <2 x i32> %i.da, splat (i32 1)     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 92
  %i.dd = load i16, ptr %i.dc, align 4, !tbaa !389
  %i.de = sext i16 %i.dd to i32
  %i.df = insertelement <2 x i32> poison, i32 %i.cu, i64 0
  %i.dg = insertelement <2 x i32> %i.df, i32 %i.de, i64 1
  %i.dh = insertelement <2 x i32> poison, i32 %i.cx, i64 0
  %i.di = shufflevector <2 x i32> %i.dh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dj = sdiv <2 x i32> %i.dg, %i.di             ; 2 uses
  %i.dk = sub nsw <2 x i32> %i.db, %i.dj
  %i.dl = add nsw <2 x i32> %i.db, %i.dj
  %i.dm = shufflevector <2 x i32> %i.dk, <2 x i32> %i.dl, <2 x i32> <i32 0, i32 3>
  store <2 x i32> %i.dm, ptr %5, align 8, !tbaa !196
  %i.dn = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(41) %i.ci, ptr noundef nonnull %i.q, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.dq = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.ci, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !161
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !161
  %.not.i43 = icmp eq i32 %i.dw, 0
  br i1 %.not.i43, label %bb.j, label %_ZNK17IReferenceCounted4dropEv.exit

bb.j:                                             ; preds = %bb.i
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(12) %i.dt) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.i, %bb.j
  %i.ea = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(112) %i.bx)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, %bb.e, %bb.d
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef %i.ab)
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.q, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !161
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !161
  %.not.i44 = icmp eq i32 %i.em, 0
  br i1 %.not.i44, label %bb.l, label %_ZNK17IReferenceCounted4dropEv.exit45

bb.l:                                             ; preds = %bb.k
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(12) %i.ej) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit45

_ZNK17IReferenceCounted4dropEv.exit45:            ; preds = %bb.k, %bb.l
  %i.eq = call noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %_ZNK17IReferenceCounted4dropEv.exit45, %bb.n
  %indvars.iv94 = phi i32 [ 0, %_ZNK17IReferenceCounted4dropEv.exit45 ], [ %indvars.iv.next95, %bb.n ] ; 3 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.n
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2097272
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !208 ; 2 uses
  %.not39 = icmp eq ptr %i.et, null
  br i1 %.not39, label %bb.s, label %bb.r

bb.n:                                             ; preds = %bb.q
  %indvars.iv.next95 = add nuw nsw i32 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i32 %indvars.iv.next95, 512
  br i1 %exitcond97.not, label %bb.m, label %.preheader, !llvm.loop !377

bb.o:                                             ; preds = %.preheader, %bb.q
  %indvars.iv = phi i32 [ 0, %.preheader ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = call i32 %i.ew(ptr noundef nonnull align 8 dereferenceable(41) %i.eq, i32 noundef %indvars.iv, i32 noundef %indvars.iv94)
  %.not42 = icmp ult i32 %i.ex, 16777216
  br i1 %.not42, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 0, ptr %6, align 4, !tbaa !212
  %i.ey = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(41) %i.ab, i32 noundef %indvars.iv, i32 noundef %indvars.iv94, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.n, label %bb.o, !llvm.loop !378

bb.r:                                             ; preds = %bb.m
  %i.fb = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 192
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.fb, ptr noundef nonnull %i.et)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !157
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %i.ff = phi ptr [ %.pre, %bb.r ], [ %i.er, %bb.m ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2097280
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !209 ; 2 uses
  %.not40 = icmp eq ptr %i.fh, null
  br i1 %.not40, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 192
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull %i.fh)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.fm = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.fn, ptr %7, align 8, !tbaa !151
end_hunk_0
