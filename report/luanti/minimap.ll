Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN14MinimapModeDefC2ERKS_:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 2 uses
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
  store i64 %spec.store.select, ptr %i.f, align 8
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

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.pre21 = phi i16 [ 0, %.preheader ], [ %i.ar, %bb.d ] ; 2 uses
  %i.h = phi ptr [ %i.e, %.preheader ], [ %i.ap, %bb.d ]
  %i.i = add i16 %.01117, 1                       ; 2 uses
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = zext i16 %.pre21 to i32
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %.preheader, label %._crit_edge18, !llvm.loop !7

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.m = phi i32 [ %i.as, %bb.d ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.ap, %bb.d ], [ %i.e, %.lr.ph.preheader ]
  %i.o = phi i32 [ %i.ao, %bb.d ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.016 = phi i16 [ %i.an, %bb.d ], [ 0, %.lr.ph.preheader ]
  %i.p = mul nsw i32 %i.m, %i.o
  %i.q = add nsw i32 %i.p, %i.f
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 106
  %i.u = load i16, ptr %i.t, align 2, !tbaa !100  ; 2 uses
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 3
  %i.x = add nuw nsw i32 %i.w, 32
  %i.y = uitofp nneg i32 %i.x to float
  %i.z = fadd nsz float %i.y, 5.000000e-01
  %i.aa = call nsz noundef float @llvm.floor.f32(float %i.z)
  %i.ab = fptosi float %i.aa to i32
  %i.ac = call i32 @llvm.smax.i32(i32 %i.ab, i32 0)
  %3 = call i32 @llvm.umin.i32(i32 %i.ac, i32 255)
  %4 = shl nuw nsw i32 %3, 8
  %i.ad = load i32, ptr %2, align 4, !tbaa !212
  %i.ae = and i32 %i.ad, -65281
  %i.af = or disjoint i32 %i.ae, %4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ag = load i32, ptr %2, align 4, !tbaa !212
  %i.ah = and i32 %i.ag, -65281
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %i.af, %bb.b ], [ %i.ah, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !212
  %i.ai = xor i32 %i.o, -1
  %i.aj = add nsw i32 %i.m, %i.ai
  %i.ak = load ptr, ptr %1, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.f, i32 noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext false)
  %i.an = add i16 %.016, 1                        ; 2 uses
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 42
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !96 ; 2 uses
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = icmp slt i32 %i.ao, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !8
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
  %.pre4446 = phi i16 [ 0, %.preheader ], [ %i.dh, %bb.i ] ; 2 uses
  %i.i = phi ptr [ %i.f, %.preheader ], [ %i.df, %bb.i ]
  %i.j = add i16 %.040, 1                         ; 2 uses
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = zext i16 %.pre4446 to i32
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.preheader, label %._crit_edge41, !llvm.loop !338

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.n = phi i32 [ %i.di, %bb.i ], [ %i.h, %.lr.ph.preheader ]
  %i.o = phi ptr [ %i.df, %bb.i ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %i.p = phi i32 [ %i.de, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03139 = phi i16 [ %i.dd, %bb.i ], [ 0, %.lr.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 100
  %i.r = mul nsw i32 %i.n, %i.p
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %i.w = load i16, ptr %i.u, align 4, !tbaa !340
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
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !345, !range !93, !noundef !94
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 564
  br label %bb.i

bb.f:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 179
  %i.av = load i8, ptr %i.au, align 1, !tbaa !345, !range !93, !noundef !94
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 180
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 1400
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !372
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !373
  call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.az, i8 noundef zeroext %i.bb, ptr noundef nonnull %3)
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !157
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.bc = phi ptr [ %i.o, %bb.g ], [ %.pre43, %bb.h ], [ %i.o, %bb.e ]
  %.in = phi ptr [ %i.ax, %bb.g ], [ %3, %bb.h ], [ %i.at, %bb.e ]
  %i.bd = load i32, ptr %.in, align 4, !tbaa !196 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 1400
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !372
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1264
  %i.bh = lshr i32 %i.bd, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = load i32, ptr %i.bg, align 4, !tbaa !212 ; 3 uses
  %i.bk = lshr i32 %i.bj, 16
  %i.bl = and i32 %i.bk, 255
  %i.bm = mul nuw nsw i32 %i.bl, %i.bi
  %.lhs.trunc = trunc nuw i32 %i.bm to i16
  %i.bn = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.bn to i32
  %i.bo = shl nuw nsw i32 %.zext, 16
  %i.bp = lshr i32 %i.bd, 8
  %i.bq = and i32 %i.bp, 255
  %i.br = lshr i32 %i.bj, 8
  %i.bs = and i32 %i.br, 255
  %i.bt = mul nuw nsw i32 %i.bs, %i.bq
  %.lhs.trunc34 = trunc nuw i32 %i.bt to i16
  %i.bu = udiv i16 %.lhs.trunc34, 255
  %.zext35 = zext nneg i16 %i.bu to i32
  %i.bv = shl nuw nsw i32 %.zext35, 8
  %i.bw = and i32 %i.bv, 65280
  %i.bx = and i32 %i.bd, 255
  %i.by = and i32 %i.bj, 255
  %i.bz = mul nuw nsw i32 %i.by, %i.bx
  %.lhs.trunc36 = trunc nuw i32 %i.bz to i16
  %i.ca = udiv i16 %.lhs.trunc36, 255
  %.zext37 = zext nneg i16 %i.ca to i32
  %.masked38 = and i32 %i.bo, 16711680
  %.masked = or i32 %i.bw, %.zext37
  %i.cb = or disjoint i32 %.masked, %.masked38
  %i.cc = or disjoint i32 %i.cb, -268435456
  store i32 %i.cc, ptr %3, align 4, !tbaa !212
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 42
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !96
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 %i.p, -1                        ; 2 uses
  %i.ch = add nsw i32 %i.cf, %i.cg
  %i.ci = load ptr, ptr %1, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.g, i32 noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cm = load i16, ptr %i.cl, align 4, !tbaa !101
  %i.cn = zext i16 %i.cm to i32                   ; 3 uses
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 42
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !96
  %i.cr = zext i16 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, %i.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ct = shl nuw i32 %i.cn, 16
end_hunk_0
begin_hunk_1_@_ZN7Minimap14getMinimapMaskEv:bb.a
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
  %.08 = load ptr, ptr %.08.in, align 8, !tbaa !374
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
  br label %bb.ah

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
  switch i32 %i.ad, label %bb.l [
    i32 3, label %bb.j
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZN7Minimap31blitMinimapPixelsToImageSurfaceEPN5video6IImageES2_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.q, ptr noundef %i.v)
  br label %bb.l

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

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %.pre21.i = phi i16 [ 0, %.preheader.i ], [ %i.bt, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.preheader.i ], [ %i.br, %bb.i ]
  %i.ak = add i16 %.01117.i, 1                    ; 2 uses
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = zext i16 %.pre21.i to i32
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.preheader.i, label %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %i.ao = phi i32 [ %i.bu, %bb.i ], [ %i.ai, %.lr.ph.preheader.i ] ; 2 uses
  %i.ap = phi ptr [ %i.br, %bb.i ], [ %i.ag, %.lr.ph.preheader.i ]
  %i.aq = phi i32 [ %i.bq, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.016.i = phi i16 [ %i.bp, %bb.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = add nsw i32 %i.ar, %i.ah
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 106
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.ay, 32
  %i.ba = uitofp nneg i32 %i.az to float
  %i.bb = fadd nsz float %i.ba, 5.000000e-01
  %i.bc = call nsz noundef float @llvm.floor.f32(float %i.bb)
  %i.bd = fptosi float %i.bc to i32
  %i.be = call i32 @llvm.smax.i32(i32 %i.bd, i32 0)
  %9 = call i32 @llvm.umin.i32(i32 %i.be, i32 255)
  %10 = shl nuw nsw i32 %9, 8
  %i.bf = load i32, ptr %1, align 4, !tbaa !212
  %i.bg = and i32 %i.bf, -65281
  %i.bh = or disjoint i32 %i.bg, %10
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bi = load i32, ptr %1, align 4, !tbaa !212
  %i.bj = and i32 %i.bi, -65281
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.i = phi i32 [ %i.bh, %bb.g ], [ %i.bj, %bb.h ]
  store i32 %storemerge.i, ptr %1, align 4, !tbaa !212
  %i.bk = xor i32 %i.aq, -1
  %i.bl = add nsw i32 %i.ao, %i.bk
  %i.bm = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(41) %i.q, i32 noundef %i.ah, i32 noundef %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false), !inline_history !377
  %i.bp = add i16 %.016.i, 1                      ; 2 uses
  %i.bq = sext i16 %i.bp to i32                   ; 2 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 42
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !96 ; 2 uses
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = icmp slt i32 %i.bq, %i.bu
  br i1 %i.bv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !144 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef null) ; 6 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !384
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(112) %i.cc, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 592
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef ptr %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(8) %i.cg, ptr noundef %i.cj, i1 noundef zeroext true, i1 noundef zeroext false) ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 -16777216, ptr %4, align 4, !tbaa !212
  %i.cp = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load <2 x i32>, ptr %i.co, align 4, !tbaa !196
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 42
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 88
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !385
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !386
  %i.da = zext i16 %i.cz to i32
  %i.db = zext i16 %i.cv to i32
  %i.dc = insertelement <2 x i32> poison, i32 %i.db, i64 0
  %i.dd = shufflevector <2 x i32> %i.dc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.de = sub nsw <2 x i32> %i.dd, %i.cs
  %i.df = ashr <2 x i32> %i.de, splat (i32 1)     ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 92
  %i.dh = load i16, ptr %i.dg, align 4, !tbaa !387
  %i.di = insertelement <2 x i16> poison, i16 %i.cx, i64 0
  %i.dj = insertelement <2 x i16> %i.di, i16 %i.dh, i64 1
  %i.dk = sext <2 x i16> %i.dj to <2 x i32>
  %i.dl = insertelement <2 x i32> poison, i32 %i.da, i64 0
  %i.dm = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dn = sdiv <2 x i32> %i.dk, %i.dm             ; 2 uses
  %i.do = sub nsw <2 x i32> %i.df, %i.dn
  %i.dp = add nsw <2 x i32> %i.df, %i.dn
  %i.dq = shufflevector <2 x i32> %i.do, <2 x i32> %i.dp, <2 x i32> <i32 0, i32 3>
  store <2 x i32> %i.dq, ptr %5, align 8, !tbaa !196
  %i.dr = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(41) %i.cn, ptr noundef nonnull %i.q, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.du = load ptr, ptr %i.cn, align 8, !tbaa !20
  %i.dv = getelementptr i8, ptr %i.du, i64 -24
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds i8, ptr %i.cn, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !161
  %i.ea = add nsw i32 %i.dz, -1                   ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !161
  %.not.i43 = icmp eq i32 %i.ea, 0
  br i1 %.not.i43, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit

bb.k:                                             ; preds = %bb.j
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(12) %i.dx) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.j, %bb.k
  %i.ee = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(112) %i.cc)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, %bb.e, %bb.d
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef %i.ab)
  %i.ek = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %i.q, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !161
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !161
  %.not.i44 = icmp eq i32 %i.eq, 0
  br i1 %.not.i44, label %bb.m, label %_ZNK17IReferenceCounted4dropEv.exit45

bb.m:                                             ; preds = %bb.l
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(12) %i.en) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit45

_ZNK17IReferenceCounted4dropEv.exit45:            ; preds = %bb.l, %bb.m
  %i.eu = call noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %_ZNK17IReferenceCounted4dropEv.exit45, %bb.o
  %indvars.iv94 = phi i32 [ 0, %_ZNK17IReferenceCounted4dropEv.exit45 ], [ %indvars.iv.next95, %bb.o ] ; 3 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.o
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2097272
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !208 ; 2 uses
  %.not39 = icmp eq ptr %i.ex, null
  br i1 %.not39, label %bb.t, label %bb.s

bb.o:                                             ; preds = %bb.r
  %indvars.iv.next95 = add nuw nsw i32 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i32 %indvars.iv.next95, 512
  br i1 %exitcond97.not, label %bb.n, label %.preheader, !llvm.loop !375

bb.p:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i32 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(41) %i.eu, i32 noundef %indvars.iv, i32 noundef %indvars.iv94)
  %.not42 = icmp ult i32 %i.fb, 16777216
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 0, ptr %6, align 4, !tbaa !212
  %i.fc = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(41) %i.ab, i32 noundef %indvars.iv, i32 noundef %indvars.iv94, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !376

bb.s:                                             ; preds = %bb.n
  %i.ff = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 192
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull %i.ex)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !157
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.fj = phi ptr [ %.pre, %bb.s ], [ %i.ev, %bb.n ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 2097280
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !209 ; 2 uses
  %.not40 = icmp eq ptr %i.fl, null
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_1
begin_hunk_2_@_ZN7Minimap11drawMinimapEN4core4rectIiEE:bb.a
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %i.lp = load i32, ptr %i.e, align 8, !tbaa !409
  %i.lq = sub nsw i32 %i.lp, %i.la
  %i.lr = sitofp nsz i32 %i.lq to float
  %i.ls = fmul nnan nsz float %i.lr, 2.500000e-02
  %i.lt = fptosi float %i.ls to i32
  %i.lu = fneg nsz float %sin
  %i.lv = sitofp nsz i32 %i.lt to float
  %i.lw = sitofp <2 x i32> %i.kz to <2 x float>
  %i.lx = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %cos, i64 1
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mb = insertelement <2 x float> poison, float %cos, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %sin, i64 1
  br label %bb.aa

._crit_edge:                                      ; preds = %bb.ac, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph, %bb.ac
  %.sroa.0115.0137 = phi ptr [ %i.lj, %.lr.ph ], [ %i.nf, %bb.ac ] ; 2 uses
  %i.md = load <2 x float>, ptr %.sroa.0115.0137, align 4, !tbaa !195 ; 3 uses
  %i.me = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 2097253
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !158, !range !93, !noundef !94
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.mi = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mj = fmul nsz <2 x float> %i.mi, %i.ly
  %i.mk = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.mc, <2 x float> %i.mj)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mm = phi <2 x float> [ %i.ml, %bb.ab ], [ %i.md, %bb.aa ]
  %i.mn = fadd nsz <2 x float> %i.mm, splat (float 5.000000e-01)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.mo = load <2 x i32>, ptr %i.e, align 8, !tbaa !196
  %i.mp = load <2 x i32>, ptr %4, align 8, !tbaa !196
  %i.mq = sub nsw <2 x i32> %i.mo, %i.mp
  %i.mr = sitofp <2 x i32> %i.mq to <2 x float>
  %i.ms = fmul nsz <2 x float> %i.mn, %i.mr
  %i.mt = fadd nsz <2 x float> %i.ms, %i.lw
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.mv = fsub nsz <4 x float> %i.mu, %i.ma
  %i.mw = fadd nsz <4 x float> %i.mu, %i.ma
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.my = fptosi <4 x float> %i.mx to <4 x i32>
  store <4 x i32> %i.my, ptr %17, align 16, !tbaa !196
  %i.mz = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.me, i64 2097320
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !392
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(8) %i.mz, ptr noundef %i.nb, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %16, ptr noundef nonnull %17, ptr noundef nonnull @_ZZN7Minimap11drawMinimapEN4core4rectIiEEE1c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0115.0137, i64 8 ; 2 uses
  %.not135 = icmp eq ptr %i.nf, %i.ll
  br i1 %.not135, label %._crit_edge, label %bb.aa

bb.ad:                                            ; preds = %._crit_edge, %bb.b, %bb.a
  ret void

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn51.pn = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ]
  resume { ptr, i32 } %.pn51.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7Minimap19updateActiveMarkersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !414
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4core8vector2dIfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !585
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %.sroa.0.0.copyload.i = load i48, ptr %i.j, align 4 ; 3 uses
  %.sroa.2.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i = trunc i48 %.sroa.2.0.extract.shift.i to i16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.0.0.copyload.i, 32
  %i.k = sitofp nsz i16 %.sroa.2.0.extract.trunc.i to float
  %i.l = trunc i48 %.sroa.0.0.copyload.i to i16
  %i.m = insertelement <2 x i16> poison, i16 %i.l, i64 0
  %i.n = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.o = insertelement <2 x i16> %i.m, i16 %i.n, i64 1
  %i.p = sitofp <2 x i16> %i.o to <2 x float>
  %i.q = fmul nnan nsz float %i.k, 1.000000e+01
  %i.r = fmul nnan nsz <2 x float> %i.p, splat (float 1.000000e+01)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load <2 x i16>, ptr %i.v, align 8, !tbaa !54
  %i.x = lshr <2 x i16> %i.w, splat (i16 1)       ; 2 uses
  %i.y = load i16, ptr %i.u, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 90
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !52
  %i.ab = extractelement <2 x i16> %i.x, i64 0
  %.neg74 = sub i16 %i.ab, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 92
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !53
  %i.ae = shufflevector <2 x i16> %i.x, <2 x i16> poison, <2 x i32> <i32 1, i32 1>
  %i.af = insertelement <2 x i16> poison, i16 %i.y, i64 0
  %i.ag = insertelement <2 x i16> %i.af, i16 %i.ad, i64 1
  %i.ah = sub <2 x i16> %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !240 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !240 ; 2 uses
  %.not7376 = icmp eq ptr %i.aj, %i.al
  br i1 %.not7376, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit
  %.sroa.061.077 = phi ptr [ %i.aj, %.lr.ph ], [ %i.dq, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.061.077, align 8, !tbaa !203
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !243 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call { <2 x float>, float } %i.ar(ptr noundef nonnull align 8 dereferenceable(218) %i.ao) ; 2 uses
  %.fca.0.extract10 = extractvalue { <2 x float>, float } %i.as, 0 ; 2 uses
  %.fca.1.extract11 = extractvalue { <2 x float>, float } %i.as, 1
  %.sroa.057.4.vec.extract = extractelement <2 x float> %.fca.0.extract10, i64 1
  %i.at = fadd nsz float %i.q, %.sroa.057.4.vec.extract ; 2 uses
  %i.au = fcmp nsz ogt float %i.at, 0.000000e+00
  %i.av = select nsz i1 %i.au, float 5.000000e+00, float -5.000000e+00
  %i.aw = fadd nsz float %i.at, %i.av
  %i.ax = fdiv nsz float %i.aw, 1.000000e+01
  %i.ay = fptosi float %i.ax to i16
  %i.az = add i16 %.neg74, %i.ay                  ; 2 uses
  %i.ba = insertelement <2 x float> %.fca.0.extract10, float %.fca.1.extract11, i64 1
  %i.bb = fadd nsz <2 x float> %i.r, %i.ba        ; 2 uses
  %i.bc = fcmp nsz ogt <2 x float> %i.bb, zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.be = fadd nsz <2 x float> %i.bb, %i.bd
  %i.bf = fdiv nsz <2 x float> %i.be, splat (float 1.000000e+01)
  %i.bg = fptosi <2 x float> %i.bf to <2 x i16>
  %i.bh = add <2 x i16> %i.ah, %i.bg              ; 4 uses
  %i.bi = extractelement <2 x i16> %i.bh, i64 0   ; 2 uses
  %i.bj = icmp slt i16 %i.bi, 0
  br i1 %i.bj, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !157 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 42
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !96 ; 3 uses
  %i.bn = icmp ugt i16 %i.bi, %i.bm
  %i.bo = icmp slt i16 %i.az, 0
  %or.cond = or i1 %i.bo, %i.bn
  br i1 %or.cond, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = zext i16 %i.bm to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !97
  %i.bs = icmp ugt i16 %i.az, %i.br
  %i.bt = extractelement <2 x i16> %i.bh, i64 1
  %i.bu = sext i16 %i.bt to i32
  %i.bv = icmp ugt i32 %i.bu, %i.bp
  %or.cond72 = or i1 %i.bv, %i.bs
  br i1 %or.cond72, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = uitofp nneg <2 x i16> %i.bh to <2 x float>
  %i.bx = sitofp nsz <2 x i16> %i.bh to <2 x float>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  %i.bz = uitofp i16 %i.bm to float
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fdiv nsz <2 x float> %i.by, %i.cb
  %i.cd = fmul nsz <2 x float> %i.cc, splat (float 5.120000e+02)
  %i.ce = fptosi <2 x float> %i.cd to <2 x i16>   ; 3 uses
  %i.cf = extractelement <2 x i16> %i.ce, i64 0
  %1 = sext i16 %i.cf to i32
  %i.cg = extractelement <2 x i16> %i.ce, i64 1
  %i.ch = sext i16 %i.cg to i32
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i32 noundef %1, i32 noundef %i.ch)
  %.not = icmp ult i32 %i.cl, 16777216
  br i1 %.not, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cm = sitofp <2 x i16> %i.ce to <2 x float>
  %i.cn = fmul nnan nsz <2 x float> %i.cm, <float 1.000000e+00, float f0x3B000000> ; 2 uses
  %i.co = fmul nnan nsz <2 x float> %i.cn, <float f0x3B000000, float poison>
  %i.cp = fsub nsz <2 x float> <float poison, float 1.000000e+00>, %i.cn
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> %i.cp, <2 x i32> <i32 0, i32 3>
  %i.cr = fadd nsz <2 x float> %i.cq, splat (float -5.000000e-01) ; 2 uses
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !414 ; 6 uses
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !164
  %.not.i = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store <2 x float> %i.cr, ptr %i.cs, align 4, !tbaa !195
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cu, ptr %i.d, align 8, !tbaa !414
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !163 ; 5 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.i, label %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i, %i.da ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.da
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %i.de = select i1 %i.dc, i64 1152921504606846975, i64 %i.dd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.de, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #35 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cy
  store <2 x float> %i.cr, ptr %i.dh, align 4, !tbaa !195
  %.not10.i.i.i.i.i = icmp eq ptr %i.cv, %i.cs
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %i.dg, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.cv, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.di = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !587, !noalias !586
  store i64 %i.di, ptr %.012.i.i.i.i.i, align 4, !alias.scope !586, !noalias !587
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, %i.cs
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !413

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dg, %_ZNKSt6vectorIN4core8vector2dIfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  %i.dm = load ptr, ptr %i.am, align 8, !tbaa !164
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.do) #30
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  store ptr %i.dg, ptr %i.b, align 8, !tbaa !163
  store ptr %i.dl, ptr %i.d, align 8, !tbaa !414
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dp, ptr %i.am, align 8, !tbaa !164
  br label %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit

_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE12emplace_backIJffEEERS2_DpOT_.exit: ; preds = %bb.e, %bb.g, %_ZNSt6vectorIN4core8vector2dIfEESaIS2_EE17_M_realloc_insertIJffEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.b, %bb.c, %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.061.077, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.dq, %i.al
  br i1 %.not73, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN7Minimap9addMarkerEPN5scene10ISceneNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #35, !noalias !598 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !243, !noalias !598
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.a to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !201
  br label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !200  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
          to label %.noexc7 unwind label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit5

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #35
          to label %.noexc8 unwind label %_ZNSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EED2Ev.exit5 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !203
  %.not10.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.j, -8
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.j, -8
  %i.ab = sub i64 %i.aa, %i.k
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ad
  %scevgep14 = getelementptr i8, ptr %i.i, i64 %i.ad
  %bound0 = icmp ult ptr %i.t, %scevgep14
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.i, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ah ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.i, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ai = getelementptr i8, ptr %next.gep15, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !203, !alias.scope !601, !noalias !599
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !203, !alias.scope !601, !noalias !599
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !203, !alias.scope !602, !noalias !601
  store <2 x i64> %wide.load16, ptr %i.aj, align 8, !tbaa !203, !alias.scope !602, !noalias !601
  %i.ak = getelementptr i8, ptr %next.gep15, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !203, !alias.scope !601, !noalias !599
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !203, !alias.scope !601, !noalias !599
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader18

.lr.ph.i.i.i.i.preheader18:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader18, %.lr.ph.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_default_appendEm:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %.013.i.i.i31, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ay, align 4, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <2 x float> zeroinitializer, ptr %i.az, align 4, !tbaa !195
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 36
  store i16 0, ptr %i.ba, align 4, !tbaa !693
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bb, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bc, align 4, !tbaa !212
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 68
  store <2 x float> zeroinitializer, ptr %i.bd, align 4, !tbaa !195
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i16 0, ptr %i.be, align 4, !tbaa !693
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bf, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bg, align 4, !tbaa !212
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store <2 x float> zeroinitializer, ptr %i.bh, align 4, !tbaa !195
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 116
  store i16 0, ptr %i.bi, align 4, !tbaa !693
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(38) %i.bj, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bk, align 4, !tbaa !212
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 148
  store <2 x float> zeroinitializer, ptr %i.bl, align 4, !tbaa !195
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 156
  store i16 0, ptr %i.bm, align 4, !tbaa !693
  %i.bn = add i64 %.01012.i.i.i32, -4             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !685

_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !285, !alias.scope !694
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !690

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !275
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #30
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !190
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !189
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !275
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5video9S3DVertexEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !194    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 1                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 4611686018427387904
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 4611686018427387903        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 0, ptr %i.b, align 2, !tbaa !54
  %i.p = getelementptr i8, ptr %i.b, i64 2        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 1       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !193
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #34
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 4611686018427387903) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i16 0, ptr %i.y, align 2, !tbaa !54
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 2
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !54
  br label %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.x, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !283
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !283
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPtmtET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit36, %bb.a
  ret void
}

declare extern_weak void @_ZTH11errorstream() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { builtin nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !46}
!5 = distinct !{!5, !46}
!6 = distinct !{null}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!24 = !{!"_ZTSSt18_Rb_tree_node_base", !21, i64 0, !23, i64 8, !23, i64 16, !23, i64 24}
!25 = !{!"long", !15, i64 0}
!26 = !{!"_ZTSSt15_Rb_tree_header", !24, i64 0, !25, i64 32}
!27 = !{!26, !23, i64 16}
!28 = !{!"p1 _ZTS19QueuedMinimapUpdate", !22, i64 0}
!29 = !{!"any p2 pointer", !22, i64 0}
!30 = !{!"p2 _ZTS19QueuedMinimapUpdate", !29, i64 0}
!31 = !{!"_ZTSSt15_Deque_iteratorI19QueuedMinimapUpdateRS0_PS0_E", !28, i64 0, !28, i64 8, !28, i64 16, !30, i64 24}
!32 = !{!31, !28, i64 0}
!33 = !{!31, !30, i64 24}
!34 = !{!31, !28, i64 16}
!35 = !{!"short", !15, i64 0}
!36 = !{!"_ZTSN4core8vector3dIsEE", !35, i64 0, !35, i64 2, !35, i64 4}
!37 = !{!"p1 _ZTS15MinimapMapblock", !22, i64 0}
!38 = !{!"_ZTSSt4pairIKN4core8vector3dIsEEP15MinimapMapblockE", !36, i64 0, !37, i64 8}
!39 = !{!38, !37, i64 8}
!40 = !{!26, !23, i64 8}
!41 = !{!"_ZTSNSt11_Deque_baseI19QueuedMinimapUpdateSaIS0_EE16_Deque_impl_dataE", !30, i64 0, !25, i64 8, !31, i64 16, !31, i64 48}
!42 = !{!41, !30, i64 0}
!43 = !{!41, !30, i64 40}
!44 = !{!41, !30, i64 72}
!45 = !{!28, !28, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!41, !25, i64 8}
!48 = !{ptr @_ZN12UpdateThreadD2Ev}
!49 = !{!"_ZTS19QueuedMinimapUpdate", !36, i64 0, !37, i64 8}
!50 = !{!49, !37, i64 8}
!51 = !{!36, !35, i64 0}
!52 = !{!36, !35, i64 2}
!53 = !{!36, !35, i64 4}
!54 = !{!35, !35, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 4, i64 2, !54, i64 8, i64 8, !55}
!57 = !{!41, !28, i64 48}
!58 = !{!41, !28, i64 16}
!59 = !{!41, !28, i64 32}
!60 = !{!41, !28, i64 24}
!61 = !{!31, !28, i64 8}
!62 = !{!23, !23, i64 0}
!63 = !{!26, !25, i64 32}
!64 = !{!"p1 omnipotent char", !22, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !65, i64 0, !25, i64 8, !15, i64 16}
!67 = !{!"bool", !15, i64 0}
!68 = !{!"_ZTSSt13__atomic_baseIbE", !67, i64 0}
!69 = !{!"_ZTSSt6atomicIbE", !68, i64 0}
!70 = !{!"_ZTSSt12__mutex_base", !15, i64 0}
!71 = !{!"_ZTSSt5mutex", !70, i64 0}
!72 = !{!"p1 _ZTSSt6thread", !22, i64 0}
!73 = !{!"_ZTS6Thread", !66, i64 8, !22, i64 40, !67, i64 48, !69, i64 49, !69, i64 50, !71, i64 56, !71, i64 96, !72, i64 136}
!74 = !{!"_ZTS9Semaphore", !15, i64 0}
!75 = !{!"_ZTS12UpdateThread", !73, i64 0, !74, i64 144}
!76 = !{!"p1 _ZTS11MinimapData", !22, i64 0}
!77 = !{!"_ZTSNSt11_Deque_baseI19QueuedMinimapUpdateSaIS0_EE11_Deque_implE", !41, i64 0}
!78 = !{!"_ZTSSt11_Deque_baseI19QueuedMinimapUpdateSaIS0_EE", !77, i64 0}
!79 = !{!"_ZTSSt5dequeI19QueuedMinimapUpdateSaIS0_EE", !78, i64 0}
!80 = !{!"_ZTSSt4lessIN4core8vector3dIsEEE"}
!81 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4core8vector3dIsEEEE", !80, i64 0}
!82 = !{!"_ZTSNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !81, i64 0, !26, i64 8}
!83 = !{!"_ZTSSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_P15MinimapMapblockESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !82, i64 0}
!84 = !{!"_ZTSSt3mapIN4core8vector3dIsEEP15MinimapMapblockSt4lessIS2_ESaISt4pairIKS2_S4_EEE", !83, i64 0}
!85 = !{!"_ZTS19MinimapUpdateThread", !75, i64 0, !76, i64 176, !71, i64 184, !79, i64 224, !84, i64 304}
!86 = !{!85, !76, i64 176}
!87 = !{!"_ZTS11MinimapType", !15, i64 0}
!88 = !{!"_ZTS14MinimapModeDef", !87, i64 0, !66, i64 8, !35, i64 40, !35, i64 42, !66, i64 48, !35, i64 80}
!89 = !{!"p1 _ZTSN5video6IImageE", !22, i64 0}
!90 = !{!"p1 _ZTSN5video8ITextureE", !22, i64 0}
!91 = !{!"_ZTS11MinimapData", !88, i64 0, !36, i64 88, !36, i64 94, !15, i64 100, !67, i64 2097252, !67, i64 2097253, !89, i64 2097256, !89, i64 2097264, !90, i64 2097272, !90, i64 2097280, !67, i64 2097288, !90, i64 2097296, !90, i64 2097304, !90, i64 2097312, !90, i64 2097320}
!92 = !{!91, !67, i64 2097252}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!91, !87, i64 0}
!96 = !{!91, !35, i64 42}
!97 = !{!91, !35, i64 40}
!98 = !{!"_ZTS7MapNode", !35, i64 0, !15, i64 2, !15, i64 3}
!99 = !{!"_ZTS12MinimapPixel", !98, i64 0, !35, i64 4, !35, i64 6}
!100 = !{!99, !35, i64 6}
!101 = !{!99, !35, i64 4}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!"p1 _ZTSN5video12IVideoDriverE", !22, i64 0}
!104 = !{!"p1 _ZTS6Client", !22, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EP11MinimapDataLb0EE", !76, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJP11MinimapDataSt14default_deleteIS0_EEE", !105, i64 0}
!107 = !{!"_ZTSSt5tupleIJP11MinimapDataSt14default_deleteIS0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implI11MinimapDataSt14default_deleteIS0_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataI11MinimapDataSt14default_deleteIS0_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrI11MinimapDataSt14default_deleteIS0_EE", !109, i64 0}
!111 = !{!"p1 _ZTS14ITextureSource", !22, i64 0}
!112 = !{!"p1 _ZTS13IShaderSource", !22, i64 0}
!113 = !{!"p1 _ZTS14NodeDefManager", !22, i64 0}
!114 = !{!"p1 _ZTS19MinimapUpdateThread", !22, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EP19MinimapUpdateThreadLb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP19MinimapUpdateThreadSt14default_deleteIS0_EEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJP19MinimapUpdateThreadSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implI19MinimapUpdateThreadSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI19MinimapUpdateThreadSt14default_deleteIS0_ELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI19MinimapUpdateThreadSt14default_deleteIS0_EE", !119, i64 0}
!121 = !{!"p1 _ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !22, i64 0}
!122 = !{!"_ZTS7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE", !121, i64 0}
!123 = !{!"p1 _ZTS14MinimapModeDef", !22, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseI14MinimapModeDefSaIS0_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseI14MinimapModeDefSaIS0_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseI14MinimapModeDefSaIS0_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorI14MinimapModeDefSaIS0_EE", !126, i64 0}
!128 = !{!"float", !15, i64 0}
!129 = !{!"p1 _ZTSSt10unique_ptrI13MinimapMarkerSt14default_deleteIS0_EE", !22, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !130, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorISt10unique_ptrI13MinimapMarkerSt14default_deleteIS1_EESaIS4_EE", !132, i64 0}
!134 = !{!"p1 _ZTSN4core8vector2dIfEE", !22, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN4core8vector2dIfEESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN4core8vector2dIfEESaIS2_EE", !137, i64 0}
!139 = !{!"_ZTS7Minimap", !103, i64 0, !104, i64 8, !110, i64 16, !111, i64 24, !112, i64 32, !113, i64 40, !120, i64 48, !122, i64 56, !127, i64 64, !25, i64 88, !35, i64 96, !128, i64 100, !71, i64 104, !133, i64 144, !138, i64 168}
!140 = !{!139, !104, i64 8}
!141 = !{!"p1 _ZTS15RenderingEngine", !22, i64 0}
!142 = !{!"_ZTSN5video6SColorE", !16, i64 0}
!143 = !{!139, !103, i64 0}
!144 = !{!139, !111, i64 24}
!145 = !{!139, !112, i64 32}
!146 = !{!139, !113, i64 40}
!147 = !{!139, !128, i64 100}
!148 = !{!139, !25, i64 88}
end_hunk_3
