Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeBuilder?download=true
inline.NumInlined: 2648
inline.NumDeleted: 1082
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EE13insert_unsafeERS6_:bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = icmp eq i64 %i.ac, %i.i
  br i1 %i.ad, label %bb.d, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !385
  %i.ag = icmp eq i64 %i.af, %i.k
  br i1 %i.ag, label %bb.e, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !386
  %i.aj = icmp eq i64 %i.ai, %i.m
  br i1 %i.aj, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit: ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !387
  %i.am = icmp eq i64 %i.al, %i.o
  br i1 %i.am, label %bb.f, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.f:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !206
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !204
  br label %.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit
  %i.aq = icmp eq i32 %i.z, %i.p
  br i1 %i.aq, label %bb.g, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread

bb.g:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = icmp eq i64 %i.as, %i.r
  br i1 %i.at, label %bb.h, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !385
  %i.aw = icmp eq i64 %i.av, %i.t
  br i1 %i.aw, label %bb.i, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !386
  %i.az = icmp eq i64 %i.ay, %i.v
  br i1 %i.az, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26: ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !387
  %i.bc = icmp eq i64 %i.bb, %i.x
  br i1 %i.bc, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread: ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread, %bb.g, %bb.h, %bb.i, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26
  %i.bd = add i64 %.02031, 1                      ; 3 uses
  %i.be = add i64 %i.bd, %.02132
  %.not = icmp ugt i64 %i.bd, %i.c
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !389

.thread:                                          ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread, %bb.f
  %spec.select = phi ptr [ %i.y, %bb.f ], [ %i.y, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26 ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit26.thread ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(66) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %1, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !206
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = mul i64 %spec.select, 48
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !173
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !205
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.b
  %.07.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !206
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !206
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !25
  %i.o = add nuw i64 %.07.i.i, 2                  ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.o, %spec.select
  br i1 %exitcond.not.i.i.1, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !208

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !205
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, %bb.a
  %i.p = phi ptr [ %i.i, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ], [ null, %bb.a ]
  %i.q = phi i64 [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre21 = load ptr, ptr %1, align 8, !tbaa !390
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre22 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit
  %i.v = phi i64 [ %spec.select, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %.pre22, %._crit_edge.loopexit ]
  %i.w = phi ptr [ %i.p, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %.pre21, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %i.bd, %._crit_edge.loopexit ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !390    ; 3 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !390
  store ptr %i.x, ptr %1, align 8, !tbaa !390
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.v, ptr %i.a, align 8, !tbaa !137
  store i64 %.lcssa, ptr %i.y, align 8, !tbaa !137
  %.not.i14 = icmp eq ptr %i.x, null
  br i1 %.not.i14, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.x) #35
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.z = phi i64 [ %i.q, %.lr.ph ], [ %i.bd, %bb.j ]
  %.01118 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.j ] ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !173
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01118 ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !21
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.e, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !24
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !24
  %i.ai = icmp eq i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !385
  %i.al = load i64, ptr %i.s, align 8, !tbaa !385
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !386
  %i.ap = load i64, ptr %i.t, align 8, !tbaa !386
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !387
  %i.at = load i64, ptr %i.u, align 8, !tbaa !387
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit
  %i.av = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EE13insert_unsafeERS6_(ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread
  %i.aw = load ptr, ptr %0, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.aw, i64 %.01118 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.av, ptr noundef nonnull align 8 dereferenceable(44) %i.ax, i64 40, i1 false), !tbaa.struct !206
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !391
  %.pre20 = load i64, ptr %i.a, align 8, !tbaa !205
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %.not.i15 = icmp eq ptr %i.bc, null
  br i1 %.not.i15, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit16, label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit
  %i.bd = phi i64 [ %.pre20, %bb.h ], [ %i.z, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder11ConstantKeyEEclERKS2_S5_.exit ] ; 3 uses
  %i.be = add nuw i64 %.01118, 1                  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  br i1 %i.bf, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !393

bb.k:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.bc) #35
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit16

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder11ConstantKeyESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_15ConstantKeyHashESt8equal_toIS3_EED2Ev.exit16: ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE13insert_unsafeERS6_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !264
  %i.c = add i64 %i.b, -1                         ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = tail call noundef i64 @_ZN4Luau9hashRangeEPKcm(ptr noundef %i.d, i64 noundef %i.f)
  %.02136 = and i64 %i.g, %i.c                    ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !162    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !9
  %.pre.i.i.fr = freeze ptr %.pre.i.i             ; 2 uses
  %.not7.i.i = icmp eq ptr %.pre.i.i.fr, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %.not7.i.i, label %.split.us, label %.split39

.split.us:                                        ; preds = %bb.a, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us
  %.02138.us = phi i64 [ %.021.us, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us ], [ %.02136, %bb.a ] ; 2 uses
  %.02037.us = phi i64 [ %i.s, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.02138.us ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.split41.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.us

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.us: ; preds = %.split.us
  %.pre.i.i27.us = load ptr, ptr %1, align 8, !tbaa !9 ; 2 uses
  %.not7.i.i28.us = icmp eq ptr %.pre.i.i27.us, null
  br i1 %.not7.i.i28.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.us
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = load i64, ptr %i.e, align 8, !tbaa !14
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.us: ; preds = %bb.b
  %bcmp.i.i30.us = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %.pre.i.i27.us, i64 %i.o)
  %i.r = icmp eq i32 %bcmp.i.i30.us, 0
  br i1 %i.r, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us: ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.us, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.us, %bb.b
  %i.s = add i64 %.02037.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, %.02138.us
  %.021.us = and i64 %i.t, %i.c
  %.not.us = icmp ugt i64 %i.s, %i.c
  br i1 %.not.us, label %.thread, label %.split.us, !llvm.loop !394

.split39:                                         ; preds = %bb.a, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread
  %.02138 = phi i64 [ %.021, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread ], [ %.02136, %bb.a ] ; 2 uses
  %.02037 = phi i64 [ %i.ak, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.02138 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !9    ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.thread, label %bb.c

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.thread: ; preds = %.split39
  %.pre.i.i2755 = load ptr, ptr %1, align 8, !tbaa !9
  br label %.split32

bb.c:                                             ; preds = %.split39
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = load i64, ptr %i.j, align 8, !tbaa !14
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit: ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.pre.i.i.fr, i64 %i.x)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %.split41.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

.split41.us:                                      ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit, %.split.us
  %.us-phi = phi ptr [ %i.k, %.split.us ], [ %i.u, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.us-phi, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !266
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !263
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !263
  br label %.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread: ; preds = %bb.c, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit
  %.pre.i.i27 = load ptr, ptr %1, align 8, !tbaa !9 ; 3 uses
  %.not7.i.i28 = icmp eq ptr %.pre.i.i27, null
  br i1 %.not7.i.i28, label %.split32, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = load i64, ptr %i.e, align 8, !tbaa !14
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread

.split32:                                         ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread
  %.pre.i.i2758 = phi ptr [ %.pre.i.i2755, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.thread ], [ %.pre.i.i27, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread ]
  %i.ai = icmp eq ptr %i.v, %.pre.i.i2758
  br i1 %i.ai, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31: ; preds = %bb.d
  %bcmp.i.i30 = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.pre.i.i27, i64 %i.af)
  %i.aj = icmp eq i32 %bcmp.i.i30, 0
  br i1 %i.aj, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread: ; preds = %bb.d, %.split32, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31
  %i.ak = add i64 %.02037, 1                      ; 3 uses
  %i.al = add i64 %i.ak, %.02138
  %.021 = and i64 %i.al, %i.c
  %.not = icmp ugt i64 %i.ak, %i.c
  br i1 %.not, label %.thread, label %.split39, !llvm.loop !394

.thread:                                          ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31, %.split32, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.us, %.split41.us
  %spec.select = phi ptr [ %.us-phi, %.split41.us ], [ %i.k, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.us ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread.us ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31.thread ], [ %i.u, %.split32 ], [ %i.u, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit31 ]
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE4findERS6_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !263
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !9      ; 4 uses
  %.not.i.i = icmp eq ptr %i.e, null
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %.not7.i.i = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not7.i.i
  br i1 %or.cond.i.i, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

.split:                                           ; preds = %bb.b
  %i.k = icmp eq ptr %i.e, %.pre.i.i
  br i1 %i.k, label %.thread, label %.split._ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread_crit_edge

.split._ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread_crit_edge: ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit: ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %.pre.i.i, i64 %i.g)
  %i.l = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.l, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread: ; preds = %.split._ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread_crit_edge, %bb.c, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit
  %i.m = phi i64 [ %.pre, %.split._ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !264
  %i.p = add i64 %i.o, -1                         ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = tail call noundef i64 @_ZN4Luau9hashRangeEPKcm(ptr noundef %i.e, i64 noundef %i.m)
  %.01941 = and i64 %i.r, %i.p                    ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !162    ; 2 uses
  %.pre.i.i25 = load ptr, ptr %1, align 8, !tbaa !9
  %.pre.i.i25.fr = freeze ptr %.pre.i.i25         ; 2 uses
  %.not7.i.i26 = icmp eq ptr %.pre.i.i25.fr, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not7.i.i26, label %.split36.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.split

.split36.us:                                      ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us
end_hunk_0
begin_hunk_1_@_ZNK4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE4findERS6_:bb.a
_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.us: ; preds = %.split36.us
  %.pre.i.i31.us = load ptr, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %.not7.i.i32.us = icmp eq ptr %.pre.i.i31.us, null
  br i1 %.not7.i.i32.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.us
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !14
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.us, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.us: ; preds = %bb.d
  %bcmp.i.i34.us = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.pre.i.i31.us, i64 %i.y)
  %i.ab = icmp eq i32 %bcmp.i.i34.us, 0
  br i1 %i.ab, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us: ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.us, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.us, %bb.d
  %i.ac = add i64 %.01842.us, 1                   ; 3 uses
  %i.ad = add i64 %i.ac, %.01943.us
  %.019.us = and i64 %i.ad, %i.p
  %.not.us = icmp ugt i64 %i.ac, %i.p
  br i1 %.not.us, label %.thread, label %.split36.us, !llvm.loop !395

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.split: ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread
  %.01943 = phi i64 [ %.019, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread ], [ %.01941, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread ] ; 2 uses
  %.01842 = phi i64 [ %i.ar, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread ], [ 0, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.01943 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 4 uses
  %.not.i.i24 = icmp eq ptr %i.af, null
  br i1 %.not.i.i24, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.thread, label %bb.e

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.thread: ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.split
  %.pre.i.i3155 = load ptr, ptr %i.d, align 8, !tbaa !9
  br label %.split37

bb.e:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.split
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !14 ; 2 uses
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !14
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29: ; preds = %bb.e
  %bcmp.i.i28 = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %.pre.i.i25.fr, i64 %i.ah)
  %i.ak = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.ak, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread: ; preds = %bb.e, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29
  %.pre.i.i31 = load ptr, ptr %i.d, align 8, !tbaa !9 ; 3 uses
  %.not7.i.i32 = icmp eq ptr %.pre.i.i31, null
  br i1 %.not7.i.i32, label %.split37, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !14
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread

.split37:                                         ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread
  %.pre.i.i3158 = phi ptr [ %.pre.i.i3155, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread.thread ], [ %.pre.i.i31, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29.thread ]
  %i.ap = icmp eq ptr %i.af, %.pre.i.i3158
  br i1 %i.ap, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35: ; preds = %bb.f
  %bcmp.i.i34 = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %.pre.i.i31, i64 %i.am)
  %i.aq = icmp eq i32 %bcmp.i.i34, 0
  br i1 %i.aq, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread: ; preds = %bb.f, %.split37, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35
  %i.ar = add i64 %.01842, 1                      ; 3 uses
  %i.as = add i64 %i.ar, %.01943
  %.019 = and i64 %i.as, %i.p
  %.not = icmp ugt i64 %i.ar, %i.p
  br i1 %.not, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread.split, !llvm.loop !395

.thread:                                          ; preds = %.split37, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.us, %.split36.us, %.split, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit, %bb.a
  %.4 = phi ptr [ null, %.split ], [ null, %bb.a ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit ], [ %i.u, %.split36.us ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.us ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread.us ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35 ], [ %i.ae, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit29 ], [ null, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit35.thread ], [ null, %.split37 ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Luau::detail::DenseHashTable.62", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !264  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %1, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !266
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = mul i64 %spec.select, 24
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38 ; 4 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !162
  store i64 %spec.select, ptr %i.g, align 8, !tbaa !264
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.b
  %.07.i.i = phi i64 [ 0, %bb.b ], [ %i.o, %.lr.ph.i.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !266
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.07.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !266
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.n, align 8, !tbaa !25
  %i.o = add nuw i64 %.07.i.i, 2                  ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.o, %spec.select
  br i1 %exitcond.not.i.i.1, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !396

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !264
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit, %bb.a
  %i.p = phi ptr [ %i.i, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ], [ null, %bb.a ]
  %i.q = phi i64 [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre18 = load ptr, ptr %1, align 8, !tbaa !397
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre19 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !137
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit
  %i.s = phi i64 [ %spec.select, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %.pre19, %._crit_edge.loopexit ]
  %i.t = phi ptr [ %i.p, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %.pre18, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ 0, %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EEC2ERS6_m.exit ], [ %i.ao, %._crit_edge.loopexit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !397    ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !397
  store ptr %i.u, ptr %1, align 8, !tbaa !397
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.s, ptr %i.a, align 8, !tbaa !137
  store i64 %.lcssa, ptr %i.v, align 8, !tbaa !137
  %.not.i11 = icmp eq ptr %i.u, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.u) #35
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.w = phi i64 [ %i.q, %.lr.ph ], [ %i.ao, %bb.i ] ; 2 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.i ] ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.015 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !9 ; 3 uses
  %.not7.i.i = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not7.i.i
  br i1 %or.cond.i.i, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !14
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

.split:                                           ; preds = %bb.d
  %i.ae = icmp eq ptr %i.z, %.pre.i.i
  br i1 %i.ae, label %bb.i, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit: ; preds = %bb.e
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.z, ptr nonnull %.pre.i.i, i64 %i.ab)
  %i.af = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.af, label %bb.i, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread: ; preds = %bb.e, %.split, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit
  %i.ag = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EE13insert_unsafeERS6_(ptr noundef nonnull align 8 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.015 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.ai, i64 16, i1 false), !tbaa.struct !266
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !310
  %.pre17 = load i64, ptr %i.a, align 8, !tbaa !264
  br label %bb.i

bb.g:                                             ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %1, align 8, !tbaa !162   ; 2 uses
  %.not.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i12, label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit13, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.an) #35
  br label %_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit13

_ZN4Luau6detail14DenseHashTableINS_15BytecodeBuilder9StringRefESt4pairIS3_jES4_IKS3_jENS0_16ItemInterfaceMapIS3_jEENS2_13StringRefHashESt8equal_toIS3_EED2Ev.exit13: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.am

bb.i:                                             ; preds = %.split, %bb.f, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit
  %i.ao = phi i64 [ %i.w, %.split ], [ %.pre17, %bb.f ], [ %i.w, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder9StringRefEEclERKS2_S5_.exit ] ; 3 uses
  %i.ap = add nuw i64 %.015, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  br i1 %i.aq, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !398
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_15BytecodeBuilder10TableShapeESt4pairIS3_iES4_IKS3_iENS0_16ItemInterfaceMapIS3_iEENS2_14TableShapeHashESt8equal_toIS3_EE4findERS6_(ptr noundef nonnull align 8 dereferenceable(290) %0, ptr noundef nonnull align 4 dereferenceable(261) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = zext i32 %i.f to i64                     ; 6 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 4 dereferenceable(261) %1, ptr nonnull readonly align 4 dereferenceable(261) %i.d, i64 %i.k)
  %i.l = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.l, label %bb.d, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.n = load i8, ptr %i.m, align 4, !tbaa !18, !range !19, !noundef !20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.p = load i8, ptr %i.o, align 4, !tbaa !18, !range !19, !noundef !20
  %i.q = icmp eq i8 %i.n, %i.p                    ; 2 uses
  %i.r = trunc nuw i8 %i.n to i1                  ; 2 uses
  %brmerge.not.i.i = and i1 %i.q, %i.r
  br i1 %brmerge.not.i.i, label %.split, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit

.split:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %bcmp7.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.s, ptr nonnull readonly %i.t, i64 %i.k)
  %i.u = icmp eq i32 %bcmp7.i.i, 0
  br i1 %i.u, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit: ; preds = %bb.d
  %.not.i.i = xor i1 %i.r, true
  %.mux.i.i = and i1 %i.q, %.not.i.i
  br i1 %.mux.i.i, label %.thread, label %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread: ; preds = %bb.b, %bb.c, %.split, %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !210
  %i.x = add i64 %i.w, -1                         ; 3 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt8equal_toIN4Luau15BytecodeBuilder10TableShapeEEclERKS2_S5_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.z = load i8, ptr %i.y, align 4, !tbaa !18, !range !19, !noundef !20
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  br i1 %i.aa, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.ac = icmp ult i32 %i.f, 4
  br i1 %i.ac, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.j, 4294967292
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter62 = and i64 %i.j, 1
  %i.ad = icmp eq i32 %i.f, 1
  br i1 %i.ad, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter67 = and i64 %i.j, 4294967294
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.014.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.av, %.lr.ph.split.us.i ] ; 4 uses
  %.01213.us.i = phi i32 [ -2128831035, %.lr.ph.split.us.i.preheader.new ], [ %i.au, %.lr.ph.split.us.i ]
  %niter68 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter68.next.1, %.lr.ph.split.us.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.us.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = xor i32 %i.af, %.01213.us.i
  %i.ah = mul i32 %i.ag, 16777619
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014.us.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !25
  %i.ak = xor i32 %i.ah, %i.aj
  %i.al = mul i32 %i.ak, 16777619
  %i.am = or disjoint i64 %.014.us.i, 1           ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = xor i32 %i.ao, %i.al
  %i.aq = mul i32 %i.ap, 16777619
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.am
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25
  %i.at = xor i32 %i.aq, %i.as
  %i.au = mul i32 %i.at, 16777619                 ; 3 uses
  %i.av = add nuw nsw i64 %.014.us.i, 2           ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !26

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.014.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.bp, %.lr.ph.split.i ] ; 5 uses
  %.01213.i = phi i32 [ -2128831035, %.lr.ph.split.i.preheader.new ], [ %i.bo, %.lr.ph.split.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.3, %.lr.ph.split.i ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ay = xor i32 %i.ax, %.01213.i
  %i.az = mul i32 %i.ay, 16777619
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bd = xor i32 %i.bc, %i.az
  %i.be = mul i32 %i.bd, 16777619
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !25
  %i.bi = xor i32 %i.bh, %i.be
  %i.bj = mul i32 %i.bi, 16777619
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !25
  %i.bn = xor i32 %i.bm, %i.bj
  %i.bo = mul i32 %i.bn, 16777619                 ; 3 uses
  %i.bp = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit58.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !26

_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod64.not, label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.014.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.av, %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01213.us.i.epil.init = phi i32 [ -2128831035, %.lr.ph.split.us.i.preheader ], [ %i.au, %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.us.i.epil.init
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.bs = xor i32 %i.br, %.01213.us.i.epil.init
  %i.bt = mul i32 %i.bs, 16777619
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.014.us.i.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.bw = xor i32 %i.bt, %i.bv
  %i.bx = mul i32 %i.bw, 16777619
  br label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit

_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit58.unr-lcssa: ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit58.unr-lcssa, %.lr.ph.split.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.bp, %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit58.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ -2128831035, %.lr.ph.split.i.preheader ], [ %i.bo, %_ZNK4Luau15BytecodeBuilder14TableShapeHashclERKNS0_10TableShapeE.exit.loopexit58.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.cc, %.lr.ph.split.i.epil ], [ %.014.i.epil.init, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %.01213.i.epil = phi i32 [ %i.cb, %.lr.ph.split.i.epil ], [ %.01213.i.epil.init, %.lr.ph.split.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.i.epil ], [ 0, %.lr.ph.split.i.epil.preheader ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.014.i.epil
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25
  %i.ca = xor i32 %i.bz, %.01213.i.epil
  %i.cb = mul i32 %i.ca, 16777619                 ; 2 uses
  %i.cc = add nuw nsw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_RT0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.aj, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.n = getelementptr inbounds [40 x i8], ptr %0, i64 %.08 ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !299  ; 2 uses
  store i32 %i.o, ptr %3, align 8, !tbaa !299
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !157  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !141  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.w, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.q, ptr %i.h, align 8, !tbaa !157
  %i.x = load i64, ptr %i.r, align 8, !tbaa !142
  store i64 %i.x, ptr %i.i, align 8, !tbaa !142
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !141
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = phi ptr [ %i.i, %bb.d ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.z = phi i64 [ %i.u, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.r, ptr %i.p, align 8, !tbaa !157
  store i64 0, ptr %i.aa, align 8, !tbaa !141
  store i8 0, ptr %i.r, align 8, !tbaa !142
  store i32 %i.o, ptr %4, align 8, !tbaa !299
  store ptr %i.l, ptr %i.k, align 8, !tbaa !140
  %i.ab = icmp eq ptr %i.y, %i.i
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.e:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.ac = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ad, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  store ptr %i.y, ptr %i.k, align 8, !tbaa !157
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !142
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !142
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit10

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit10: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  store i64 %i.z, ptr %i.m, align 8, !tbaa !141
  store ptr %i.i, ptr %i.h, align 8, !tbaa !157
  store i64 0, ptr %i.j, align 8, !tbaa !141
  store i8 0, ptr %i.i, align 8, !tbaa !142
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_less_iterEEvT_T0_SI_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit10
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.l
  br i1 %i.ag, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !142
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.not = icmp eq i64 %.08, 0
  %i.aj = add nsw i64 %.08, -1
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.am = load i64, ptr %i.i, align 8, !tbaa !142
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !488

bb.g:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit10
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.l
  br i1 %i.aq, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.g
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !142
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit16

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !157 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.i
  br i1 %i.au, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit16
  %i.av = load i64, ptr %i.i, align 8, !tbaa !142
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit19

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit19: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ao

.loopexit:                                        ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_SH_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.88", align 8     ; 8 uses
  %5 = alloca %"struct.std::pair.88", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = load i32, ptr %2, align 8, !tbaa !299
  store i32 %i.a, ptr %4, align 8, !tbaa !299
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !140
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !141  ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !157
  %i.l = load i64, ptr %i.f, align 8, !tbaa !142
  store i64 %i.l, ptr %i.d, align 8, !tbaa !142
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !141
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store i64 %i.m, ptr %i.o, align 8, !tbaa !141
  store ptr %i.f, ptr %i.c, align 8, !tbaa !157
  store i64 0, ptr %i.n, align 8, !tbaa !141
  store i8 0, ptr %i.f, align 8, !tbaa !142
  %i.p = load i32, ptr %0, align 4, !tbaa !25
  store i32 %i.p, ptr %2, align 8, !tbaa !299
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !141  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i.i = icmp eq ptr %0, %2
  br i1 %.not21.i.i, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit, label %bb.d, !prof !224

bb.d:                                             ; preds = %bb.c
  switch i64 %i.v, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.r, align 1, !tbaa !142
  store i8 %i.x, ptr %i.f, align 8, !tbaa !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.y = load i64, ptr %i.u, align 8, !tbaa !141  ; 2 uses
  store i64 %i.y, ptr %i.n, align 8, !tbaa !141
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !142
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !157
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  store ptr %i.r, ptr %i.c, align 8, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !141
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !141
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !142
  store i64 %i.ac, ptr %i.f, align 8, !tbaa !142
  store ptr %i.s, ptr %i.q, align 8, !tbaa !157
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g
  %i.ad = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.r, %bb.c ], [ %i.s, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ae, align 8, !tbaa !141
  store i8 0, ptr %i.ad, align 1, !tbaa !142
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = ptrtoint ptr %0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 40
  %i.aj = load i32, ptr %4, align 8, !tbaa !299
  store i32 %i.aj, ptr %5, align 8, !tbaa !299
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !140
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

bb.h:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !141 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.aq, i1 false)
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !157
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !142
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !142
  %.pre17 = load i64, ptr %i.o, align 8, !tbaa !141
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit3

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit3: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.as = phi i64 [ %i.ao, %bb.h ], [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ]
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.as, ptr %i.at, align 8, !tbaa !141
  store ptr %i.d, ptr %i.b, align 8, !tbaa !157
  store i64 0, ptr %i.o, align 8, !tbaa !141
  store i8 0, ptr %i.d, align 8, !tbaa !142
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_less_iterEEvT_T0_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull align 8 %5)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit3
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !157 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.al
  br i1 %i.av, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !142
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.d
  br i1 %i.az, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !142
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit6: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret void

bb.j:                                             ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit3
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !157 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.al
  br i1 %i.be, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.j
  %i.bf = load i64, ptr %i.al, align 8, !tbaa !142
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  br i1 %i.bi, label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !142
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #34
  br label %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit12

_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit12: ; preds = %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %i.bc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_less_iterEEvT_T0_SI_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef align 8 %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %5 = alloca %"struct.std::pair.88", align 8     ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit
  %.050 = phi i64 [ %i.z, %_ZNSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSEOS6_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.050, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !299  ; 4 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !299  ; 3 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !141  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !141  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.n) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !157
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !157
  %i.v = tail call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.w = sub i64 %i.n, %i.p
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %.0.i.i.i.i.fr = freeze i32 %.0.i.i.i.i
  %i.x = icmp slt i32 %.0.i.i.i.i.fr, 0
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread: ; preds = %.lr.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread
  %i.y = phi i32 [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit ], [ %i.i, %bb.b ]
  %i.z = phi i64 [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread ], [ %i.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit ], [ %i.e, %bb.b ] ; 5 uses
  %i.aa = getelementptr inbounds [40 x i8], ptr %0, i64 %i.z ; 6 uses
  %i.ab = getelementptr inbounds [40 x i8], ptr %0, i64 %.050 ; 6 uses
  store i32 %i.y, ptr %i.ab, align 8, !tbaa !299
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !157 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !157 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 4 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai                ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48
  br i1 %i.aj, label %bb.d, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread48
  br i1 %i.aj, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

end_hunk_2
