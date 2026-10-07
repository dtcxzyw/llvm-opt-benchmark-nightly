Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8AccessorERNS_11AssetWriterE:bb.a
  %i.xo = load i64, ptr %i.xn, align 8            ; 2 uses
  %i.xp = and i64 %i.xo, 2147483648
  %.not.i.i.i238 = icmp eq i64 %i.xp, 0
  %.sroa.5.14.insert.ext.i.i239 = select i1 %.not.i.i.i238, i64 141300438308749312, i64 132293239054008320
  %i.xq = and i64 %i.xo, 4294967295
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  store i32 10, ptr %i.xr, align 8
  %.sroa.6.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %i.xk, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i240, align 4
  %.sroa.65.0..sroa_idx.i241 = getelementptr inbounds nuw i8, ptr %i.xk, i64 40
  store ptr %i.wb, ptr %.sroa.65.0..sroa_idx.i241, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  store i64 %i.xq, ptr %i.xs, align 8
  %.sroa.5.0..sroa_idx.i.i242 = getelementptr inbounds nuw i8, ptr %i.xk, i64 56
  store i64 %.sroa.5.14.insert.ext.i.i239, ptr %.sroa.5.0..sroa_idx.i.i242, align 8
  %i.xt = or i64 ptrtoint (ptr @.str.96 to i64), 289637751035265024
  %i.xu = inttoptr i64 %i.xt to ptr
  %i.xv = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  store i32 6, ptr %i.xv, align 8
  %.sroa.6.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %i.uy, i64 68
  store i32 0, ptr %.sroa.6.0..sroa_idx.i249, align 4
  %.sroa.65.0..sroa_idx.i250 = getelementptr inbounds nuw i8, ptr %i.uy, i64 72
  store ptr %i.xu, ptr %.sroa.65.0..sroa_idx.i250, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  store i32 2, ptr %i.xw, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uy, i64 84
  store i32 16, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uy, i64 88
  store ptr %i.xg, ptr %.sroa.18.0..sroa_idx, align 8
  %i.xx = load ptr, ptr %i.ct, align 8, !nonnull !46, !align !49
  %i.xy = load i32, ptr %0, align 8               ; 3 uses
  %i.xz = load i32, ptr %i.cv, align 4            ; 6 uses
  %.not.i.i.i255 = icmp ult i32 %i.xy, %i.xz
  br i1 %.not.i.i.i255, label %.noexc.i.i183._crit_edge, label %bb.x

.noexc.i.i183._crit_edge:                         ; preds = %.noexc.i.i183
  %.pre469 = load ptr, ptr %i.dx, align 8
  br label %bb.y

bb.x:                                             ; preds = %.noexc.i.i183
  %.not14.i.i.i256 = icmp eq i32 %i.xz, 0
  %i.ya = add i32 %i.xz, 1
  %i.yb = lshr i32 %i.ya, 1
  %i.yc = add i32 %i.yb, %i.xz
  %i.yd = select i1 %.not14.i.i.i256, i32 16, i32 %i.yc ; 3 uses
  %i.ye = icmp ugt i32 %i.yd, %i.xz
  %.pre470 = load ptr, ptr %i.dx, align 8         ; 2 uses
  br i1 %i.ye, label %.noexc.i259, label %bb.y

.noexc.i259:                                      ; preds = %bb.x
  %i.yf = ptrtoint ptr %.pre470 to i64
  %i.yg = and i64 %i.yf, 281474976710655
  %i.yh = inttoptr i64 %i.yg to ptr
  %i.yi = zext i32 %i.xz to i64
  %i.yj = zext i32 %i.yd to i64
  %i.yk = shl nuw nsw i64 %i.yi, 5
  %i.yl = shl nuw nsw i64 %i.yj, 5
  %i.ym = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.xx, ptr noundef %i.yh, i64 noundef %i.yk, i64 noundef %i.yl)
  %i.yn = load ptr, ptr %i.dx, align 8
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = and i64 %i.yo, -281474976710656
  %i.yq = ptrtoint ptr %i.ym to i64
  %i.yr = or i64 %i.yp, %i.yq
  %i.ys = inttoptr i64 %i.yr to ptr               ; 2 uses
  store ptr %i.ys, ptr %i.dx, align 8
  store i32 %i.yd, ptr %i.cv, align 4
  %.pre.i.i.i260 = load i32, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i.i183._crit_edge, %.noexc.i259, %bb.x
  %i.yt = phi ptr [ %i.ys, %.noexc.i259 ], [ %.pre470, %bb.x ], [ %.pre469, %.noexc.i.i183._crit_edge ]
  %i.yu = phi i32 [ %.pre.i.i.i260, %.noexc.i259 ], [ %i.xy, %bb.x ], [ %i.xy, %.noexc.i.i183._crit_edge ]
  %i.yv = or i64 ptrtoint (ptr @.str.97 to i64), 289637751035265024
  %i.yw = inttoptr i64 %i.yv to ptr
  %i.yx = ptrtoint ptr %i.yt to i64
  %i.yy = and i64 %i.yx, 281474976710655
  %i.yz = inttoptr i64 %i.yy to ptr
  %i.za = zext i32 %i.yu to i64
  %i.zb = getelementptr inbounds nuw [32 x i8], ptr %i.yz, i64 %i.za ; 6 uses
  store i32 6, ptr %i.zb, align 8
  %.sroa.6.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %i.zb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i257, align 4
  %.sroa.65.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store ptr %i.yw, ptr %.sroa.65.0..sroa_idx.i258, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  store i32 3, ptr %i.zc, align 8
  %.sroa.18338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zb, i64 20
  store i32 16, ptr %.sroa.18338.0..sroa_idx, align 4
  %.sroa.24341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  store ptr %i.uu, ptr %.sroa.24341.0..sroa_idx, align 8
  %i.zd = load i32, ptr %0, align 8
  %i.ze = add i32 %i.zd, 1
  store i32 %i.ze, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEERS6_RS5_.exit124
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %.not.i = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = add i64 %3, 7
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, %i.c                       ; 2 uses
  %i.j = load i64, ptr %i.f, align 8
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8
  %..i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.c)
  %i.m = tail call noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %..i)
  br i1 %i.m, label %._crit_edge.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.d, align 8
  %.pre11.i = load ptr, ptr %.pre.i, align 8      ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre11.i, i64 8
  %.pre12.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.pre13.i = add i64 %.pre12.i, %i.c
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %.pre-phi.i = phi i64 [ %.pre13.i, %._crit_edge.i ], [ %i.i, %bb.c ]
  %i.n = phi i64 [ %.pre12.i, %._crit_edge.i ], [ %i.h, %bb.c ]
  %i.o = phi ptr [ %.pre11.i, %._crit_edge.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i64 %.pre-phi.i, ptr %i.q, align 8
  br label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add i64 %2, 7
  %i.t = and i64 %i.s, -8                         ; 5 uses
  %i.u = add i64 %3, 7
  %i.v = and i64 %i.u, -8                         ; 5 uses
  %.not = icmp ult i64 %i.t, %i.v
  br i1 %.not, label %bb.h, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = sub i64 0, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = icmp eq ptr %1, %i.ae
  %.pre = load i64, ptr %i.y, align 8             ; 2 uses
  br i1 %i.af, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ag = sub nuw i64 %i.v, %i.t
  %i.ah = add i64 %i.ab, %i.ag                    ; 2 uses
  %.not31.not = icmp ugt i64 %i.ah, %.pre
  br i1 %.not31.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ah, ptr %i.aa, align 8
  br label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

.thread:                                          ; preds = %bb.i, %bb.h
  %i.ai = add i64 %i.ab, %i.v                     ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %.pre
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !43

bb.k:                                             ; preds = %.thread
  %i.ak = load i64, ptr %0, align 8
  %..i37 = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.v)
  %i.al = tail call noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %..i37)
  br i1 %i.al, label %._crit_edge.i38, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

._crit_edge.i38:                                  ; preds = %bb.k
  %.pre.i39 = load ptr, ptr %i.w, align 8
  %.pre11.i40 = load ptr, ptr %.pre.i39, align 8  ; 2 uses
  %.phi.trans.insert.i41 = getelementptr inbounds nuw i8, ptr %.pre11.i40, i64 8
  %.pre12.i42 = load i64, ptr %.phi.trans.insert.i41, align 8 ; 2 uses
  %.pre13.i43 = add i64 %.pre12.i42, %i.v
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i38, %.thread
  %.pre-phi.i35 = phi i64 [ %.pre13.i43, %._crit_edge.i38 ], [ %i.ai, %.thread ]
  %i.am = phi i64 [ %.pre12.i42, %._crit_edge.i38 ], [ %i.ab, %.thread ]
  %i.an = phi ptr [ %.pre11.i40, %._crit_edge.i38 ], [ %i.y, %.thread ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am ; 3 uses
  store i64 %.pre-phi.i35, ptr %i.ap, align 8
  %.not33 = icmp eq i64 %i.t, 0
  br i1 %.not33, label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %1, i64 %i.t, i1 false)
  br label %_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit

_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE6MallocEm.exit: ; preds = %bb.k, %bb.j, %bb.e, %bb.d, %bb.b, %bb.m, %bb.l, %bb.g, %bb.f
  %.2 = phi ptr [ null, %bb.d ], [ %1, %bb.j ], [ null, %bb.f ], [ %1, %bb.g ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ], [ %i.r, %bb.e ], [ null, %bb.b ], [ null, %bb.k ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.c, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = add i64 %1, 24                           ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.thread, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit

_ZN9rapidjson12CrtAllocator6MallocEm.exit:        ; preds = %bb.c
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #40 ; 5 uses
  %.not9.not = icmp eq ptr %i.h, null
  br i1 %.not9.not, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.l, ptr %i.m, align 8
  store ptr %i.h, ptr %i.k, align 8
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.thread

_ZN9rapidjson12CrtAllocator6MallocEm.exit.thread: ; preds = %bb.c, %_ZN9rapidjson12CrtAllocator6MallocEm.exit, %bb.d
  %.not912 = phi i1 [ true, %bb.d ], [ false, %_ZN9rapidjson12CrtAllocator6MallocEm.exit ], [ false, %bb.c ]
  ret i1 %.not912
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF28LazyDictINS_9AnimationEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5glTF28LazyDictINS_9AnimationEED2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28LazyDictINS_9AnimationEE16AttachToDocumentERN9rapidjson15GenericDocumentINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEES8_EE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef %i.d, ptr noundef nonnull @.str.75, ptr noundef null) ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %.thread, label %.thread16

.thread16:                                        ; preds = %bb.a, %bb.c
  %.121 = phi ptr [ %i.f, %bb.c ], [ @.str.76, %bb.a ]
  %.1920 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %.1920, ptr noundef %i.h, ptr noundef %.121, ptr noundef null)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.i, ptr %i.j, align 8
  br label %.thread

.thread:                                          ; preds = %bb.b, %.thread16, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5glTF28LazyDictINS_9AnimationEE18DetachFromDocumentEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF28LazyDictINS_9AnimationEE12WriteObjectsERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(232) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i32, ptr %0, align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 6 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not14.i.i.i = icmp eq i32 %i.m, 0
  %i.n = add i32 %i.m, 1
  %i.o = lshr i32 %i.n, 1
  %i.p = add i32 %i.o, %i.m
  %i.q = select i1 %.not14.i.i.i, i32 16, i32 %i.p ; 3 uses
  %i.r = icmp ugt i32 %i.q, %i.m
  br i1 %i.r, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.u, 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.m to i64
  %i.y = zext i32 %i.q to i64
  %i.z = shl nuw nsw i64 %i.x, 5
  %i.aa = shl nuw nsw i64 %i.y, 5
  %i.ab = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.w, i64 noundef %i.z, i64 noundef %i.aa)
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, -281474976710656
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = inttoptr i64 %i.ag to ptr
  store ptr %i.ah, ptr %i.s, align 8
  store i32 %i.q, ptr %i.l, align 4
  %.pre.i.i.i = load i32, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i, %bb.d, %bb.c
  %i.ai = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.aj = or i64 ptrtoint (ptr @.str.75 to i64), 289637751035265024
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = zext i32 %i.ai to i64
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.aq ; 5 uses
  store i32 10, ptr %i.ar, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ak, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.as, i8 0, i64 14, i1 false)
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  store i16 3, ptr %.sroa.684.0..sroa_idx, align 2
  %i.at = load i32, ptr %0, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %0, align 8
  %i.av = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef null) ; 9 uses
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = tail call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef %i.aw, ptr noundef nonnull @.str.75, ptr noundef null) ; 0 uses
  %i.ay = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.az = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #39, !noalias !332
  %i.ba = trunc i64 %i.az to i32
  %i.bb = load ptr, ptr %i.i, align 8
  %i.bc = load i32, ptr %i.av, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 6 uses
  %.not.i.i.i55 = icmp ult i32 %i.bc, %i.be
  br i1 %.not.i.i.i55, label %bb.g, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE:bb.a
  %i.fk = and i64 %i.fj, 68719476720
  %i.fl = invoke noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef null, i64 noundef 0, i64 noundef %i.fk)
          to label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 unwind label %bb.o

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134: ; preds = %bb.m
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = or i64 %i.fm, 1125899906842624
  %i.fo = inttoptr i64 %i.fn to ptr               ; 2 uses
  %.pre388 = load ptr, ptr %i.fa, align 8
  %.pre389 = load ptr, ptr %i.ez, align 8         ; 2 uses
  %i.fp = icmp eq ptr %.pre388, %.pre389
  br i1 %i.fp, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134
  %.ph = phi ptr [ %i.fc, %bb.l ], [ %.pre389, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 ]
  %.sroa.13217.0360.ph = phi ptr [ inttoptr (i64 1125899906842624 to ptr), %bb.l ], [ %i.fo, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.ad, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134
  %.sroa.0214.0.lcssa = phi i32 [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 ], [ %i.in, %bb.ad ]
  %.sroa.9215.0.lcssa = phi i32 [ %i.fh, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 ], [ %.sroa.9215.2, %bb.ad ]
  %.sroa.13217.0.lcssa = phi ptr [ %i.fo, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit134 ], [ %.sroa.13217.2, %bb.ad ]
  %.not.i.i.i135 = icmp ult i32 %.sroa.0259.2, 15
  br i1 %.not.i.i.i135, label %bb.af, label %.noexc.i139

.noexc.i139:                                      ; preds = %._crit_edge
  %i.fq = load ptr, ptr %i.k, align 8, !nonnull !46, !align !49
  %i.fr = invoke noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef %i.eu, i64 noundef 512, i64 noundef 768)
          to label %.noexc141 unwind label %bb.o

.noexc141:                                        ; preds = %.noexc.i139
  %i.fs = and i64 %.sroa.42.5.in, -281474976710656
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = or i64 %i.fs, %i.ft
  %i.fv = inttoptr i64 %i.fu to ptr
  %.pre395 = and i64 %i.ft, 281474976710655
  %.pre397 = inttoptr i64 %.pre395 to ptr
  br label %bb.af

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit.thread
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.o:                                             ; preds = %.noexc.i139, %bb.m
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ad
  %i.fy = phi ptr [ %i.is, %bb.ad ], [ %.ph, %.lr.ph.preheader ]
  %i.fz = phi i64 [ %i.iq, %bb.ad ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.067361 = phi i32 [ %i.in, %bb.ad ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.13217.0360 = phi ptr [ %.sroa.13217.2, %bb.ad ], [ %.sroa.13217.0360.ph, %.lr.ph.preheader ] ; 3 uses
  %.sroa.9215.0359 = phi i32 [ %.sroa.9215.2, %bb.ad ], [ %i.fh, %.lr.ph.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i16 3, ptr %i.ah, align 2
  %i.ga = getelementptr inbounds nuw [72 x i8], ptr %i.fy, i64 %i.fz
  invoke fastcc void @_ZN5glTF212_GLOBAL__N_110WriteAttrsERNS_11AssetWriterERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISG_EEPKcb(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull @.str.191, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %.lr.ph
  %i.gb = load ptr, ptr %i.ez, align 8
  %i.gc = getelementptr inbounds nuw [72 x i8], ptr %i.gb, i64 %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  invoke fastcc void @_ZN5glTF212_GLOBAL__N_110WriteAttrsERNS_11AssetWriterERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISG_EEPKcb(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, ptr noundef nonnull @.str.192, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.ge = load ptr, ptr %i.ez, align 8
  %i.gf = getelementptr inbounds nuw [72 x i8], ptr %i.ge, i64 %i.fz
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  invoke fastcc void @_ZN5glTF212_GLOBAL__N_110WriteAttrsERNS_11AssetWriterERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISG_EEPKcb(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.gg, ptr noundef nonnull @.str.193, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.gh = load ptr, ptr %i.k, align 8, !nonnull !46, !align !49 ; 6 uses
  %.not.i143 = icmp ult i32 %.067361, %.sroa.9215.0359
  br i1 %.not.i143, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gi = icmp eq i32 %.sroa.9215.0359, 0         ; 2 uses
  %i.gj = add i32 %.sroa.9215.0359, 1
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = add i32 %i.gk, %.sroa.9215.0359
  %i.gm = select i1 %i.gi, i32 16, i32 %i.gl      ; 3 uses
  %i.gn = icmp ugt i32 %i.gm, %.sroa.9215.0359
  br i1 %i.gn, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.go = ptrtoint ptr %.sroa.13217.0360 to i64   ; 2 uses
  %i.gp = and i64 %i.go, 281474976710655          ; 2 uses
  %i.gq = inttoptr i64 %i.gp to ptr               ; 3 uses
  %i.gr = zext i32 %i.gm to i64
  %i.gs = shl nuw nsw i64 %i.gr, 4                ; 7 uses
  %i.gt = icmp eq i64 %i.gp, 0
  br i1 %i.gt, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  %i.gz = add i64 %i.gy, %i.gs                    ; 2 uses
  %i.ha = load i64, ptr %i.gw, align 8
  %i.hb = icmp ugt i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.v, label %bb.w, !prof !43

bb.v:                                             ; preds = %bb.u
  %i.hc = load i64, ptr %i.gh, align 8
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.hc, i64 %i.gs)
  %i.hd = invoke noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 noundef %..i.i)
          to label %.noexc182 unwind label %bb.ae

.noexc182:                                        ; preds = %bb.v
  br i1 %i.hd, label %._crit_edge.i.i181, label %.noexc144

._crit_edge.i.i181:                               ; preds = %.noexc182
  %.pre.i.i = load ptr, ptr %i.gu, align 8
  %.pre11.i.i = load ptr, ptr %.pre.i.i, align 8  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre11.i.i, i64 8
  %.pre12.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %.pre13.i.i = add i64 %.pre12.i.i, %i.gs
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i181, %bb.u
  %.pre-phi.i.i = phi i64 [ %.pre13.i.i, %._crit_edge.i.i181 ], [ %i.gz, %bb.u ]
  %i.he = phi i64 [ %.pre12.i.i, %._crit_edge.i.i181 ], [ %i.gy, %bb.u ]
  %i.hf = phi ptr [ %.pre11.i.i, %._crit_edge.i.i181 ], [ %i.gw, %bb.u ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.he
  store i64 %.pre-phi.i.i, ptr %i.hh, align 8
  br label %.noexc144

bb.x:                                             ; preds = %bb.t
  %i.hj = zext i32 %.sroa.9215.0359 to i64
  %i.hk = shl nuw nsw i64 %i.hj, 4                ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load ptr, ptr %i.hm, align 8            ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8            ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hq
  %i.hs = sub nsw i64 0, %i.hk
  %i.ht = getelementptr inbounds i8, ptr %i.hr, i64 %i.hs
  %i.hu = icmp eq ptr %i.ht, %i.gq
  %.pre.i180 = load i64, ptr %i.hn, align 8       ; 2 uses
  br i1 %i.hu, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.hv = sub nuw nsw i64 %i.gs, %i.hk
  %i.hw = add i64 %i.hq, %i.hv                    ; 2 uses
  %.not31.not.i = icmp ugt i64 %i.hw, %.pre.i180
  br i1 %.not31.not.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.hw, ptr %i.hp, align 8
  br label %.noexc144

.thread.i:                                        ; preds = %bb.y, %bb.x
  %i.hx = add i64 %i.hq, %i.gs                    ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %.pre.i180
  br i1 %i.hy, label %bb.aa, label %bb.ab, !prof !43

bb.aa:                                            ; preds = %.thread.i
  %i.hz = load i64, ptr %i.gh, align 8
  %..i37.i = tail call i64 @llvm.umax.i64(i64 %i.hz, i64 %i.gs)
  %i.ia = invoke noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 noundef %..i37.i)
          to label %.noexc183 unwind label %bb.ae

.noexc183:                                        ; preds = %bb.aa
  br i1 %i.ia, label %._crit_edge.i38.i, label %.noexc144

._crit_edge.i38.i:                                ; preds = %.noexc183
  %.pre.i39.i = load ptr, ptr %i.hl, align 8
  %.pre11.i40.i = load ptr, ptr %.pre.i39.i, align 8 ; 2 uses
  %.phi.trans.insert.i41.i = getelementptr inbounds nuw i8, ptr %.pre11.i40.i, i64 8
  %.pre12.i42.i = load i64, ptr %.phi.trans.insert.i41.i, align 8 ; 2 uses
  %.pre13.i43.i = add i64 %.pre12.i42.i, %i.gs
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i38.i, %.thread.i
  %.pre-phi.i35.i = phi i64 [ %.pre13.i43.i, %._crit_edge.i38.i ], [ %i.hx, %.thread.i ]
  %i.ib = phi i64 [ %.pre12.i42.i, %._crit_edge.i38.i ], [ %i.hq, %.thread.i ]
  %i.ic = phi ptr [ %.pre11.i40.i, %._crit_edge.i38.i ], [ %i.hn, %.thread.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ib ; 3 uses
  store i64 %.pre-phi.i35.i, ptr %i.ie, align 8
  br i1 %i.gi, label %.noexc144, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %i.gq, i64 %i.hk, i1 false)
  br label %.noexc144

.noexc144:                                        ; preds = %bb.ac, %bb.ab, %.noexc183, %bb.z, %bb.w, %.noexc182
  %.2.i = phi ptr [ null, %.noexc182 ], [ %i.gq, %bb.z ], [ null, %.noexc183 ], [ %i.hi, %bb.w ], [ %i.if, %bb.ab ], [ %i.if, %bb.ac ]
  %i.ig = and i64 %i.go, -281474976710656
  %i.ih = ptrtoint ptr %.2.i to i64
  %i.ii = or i64 %i.ig, %i.ih
  %i.ij = inttoptr i64 %i.ii to ptr
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc144, %bb.s, %bb.r
  %.sroa.9215.2 = phi i32 [ %.sroa.9215.0359, %bb.r ], [ %i.gm, %.noexc144 ], [ %.sroa.9215.0359, %bb.s ] ; 2 uses
  %.sroa.13217.2 = phi ptr [ %.sroa.13217.0360, %bb.r ], [ %i.ij, %.noexc144 ], [ %.sroa.13217.0360, %bb.s ] ; 3 uses
  %i.ik = ptrtoint ptr %.sroa.13217.2 to i64
  %i.il = and i64 %i.ik, 281474976710655
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = add i32 %.067361, 1                     ; 3 uses
  %i.io = zext i32 %.067361 to i64
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.iq = zext i32 %i.in to i64                   ; 2 uses
  %i.ir = load ptr, ptr %i.fa, align 8
  %i.is = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = sdiv exact i64 %i.iv, 72
  %i.ix = icmp ugt i64 %i.iw, %i.iq
  br i1 %i.ix, label %.lr.ph, label %._crit_edge, !llvm.loop !431

bb.ae:                                            ; preds = %bb.aa, %bb.v, %bb.q, %bb.p, %.lr.ph
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.aj

bb.af:                                            ; preds = %.noexc141, %._crit_edge
  %.pre-phi398 = phi ptr [ %.pre397, %.noexc141 ], [ %i.eu, %._crit_edge ]
  %.sroa.42.9 = phi ptr [ %i.fv, %.noexc141 ], [ %.sroa.42.5, %._crit_edge ]
  %.sroa.30.9 = phi i32 [ 24, %.noexc141 ], [ 16, %._crit_edge ]
  %i.iz = zext nneg i32 %i.ey to i64
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %.pre-phi398, i64 %i.iz ; 6 uses
  store i32 7, ptr %i.ja, align 8
  %.sroa.6.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i137, align 4
  %.sroa.65.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store ptr %i.aj, ptr %.sroa.65.0..sroa_idx.i138, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store i32 %.sroa.0214.0.lcssa, ptr %i.jb, align 8
  %.sroa.9215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store i32 %.sroa.9215.0.lcssa, ptr %.sroa.9215.0..sroa_idx, align 4
  %.sroa.13217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store ptr %.sroa.13217.0.lcssa, ptr %.sroa.13217.0..sroa_idx, align 8
  %i.jc = add nuw nsw i32 %.sroa.0259.2, 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.k
  %.sroa.42.3 = phi ptr [ %.sroa.42.5, %bb.k ], [ %.sroa.42.9, %bb.af ]
  %.sroa.30.3 = phi i32 [ 16, %bb.k ], [ %.sroa.30.9, %bb.af ]
  %.sroa.0259.3 = phi i32 [ %i.ey, %bb.k ], [ %i.jc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  %i.jd = load ptr, ptr %i.k, align 8, !nonnull !46, !align !49
  %.not.i145 = icmp ugt i32 %.sroa.9321.0365, %indvars386
  br i1 %.not.i145, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.je = icmp eq i32 %.sroa.9321.0365, 0
  %i.jf = add i32 %.sroa.9321.0365, 1
  %i.jg = lshr i32 %i.jf, 1
  %i.jh = add i32 %i.jg, %.sroa.9321.0365
  %i.ji = select i1 %i.je, i32 16, i32 %i.jh      ; 3 uses
  %i.jj = icmp ugt i32 %i.ji, %.sroa.9321.0365
  br i1 %i.jj, label %.noexc147, label %bb.ai

.noexc147:                                        ; preds = %bb.ah
  %i.jk = ptrtoint ptr %.sroa.13323.0364 to i64   ; 2 uses
  %i.jl = and i64 %i.jk, 281474976710655
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = zext i32 %.sroa.9321.0365 to i64
  %i.jo = shl nuw nsw i64 %i.jn, 4
  %i.jp = zext i32 %i.ji to i64
  %i.jq = shl nuw nsw i64 %i.jp, 4
  %i.jr = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef %i.jm, i64 noundef %i.jo, i64 noundef %i.jq)
  %i.js = and i64 %i.jk, -281474976710656
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = or i64 %i.js, %i.jt
  %i.jv = inttoptr i64 %i.ju to ptr
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc147, %bb.ah, %bb.ag
  %.sroa.13323.2 = phi ptr [ %.sroa.13323.0364, %bb.ag ], [ %i.jv, %.noexc147 ], [ %.sroa.13323.0364, %bb.ah ] ; 3 uses
  %.sroa.9321.2 = phi i32 [ %.sroa.9321.0365, %bb.ag ], [ %i.ji, %.noexc147 ], [ %.sroa.9321.0365, %bb.ah ] ; 2 uses
  %i.jw = ptrtoint ptr %.sroa.13323.2 to i64
  %i.jx = and i64 %i.jw, 281474976710655
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = add nuw i64 %.068367, 1                 ; 3 uses
  %i.ka = and i64 %.068367, 4294967295
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.ka ; 3 uses
  store i32 %.sroa.0259.3, ptr %i.kb, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 %.sroa.30.3, ptr %.sroa.30.0..sroa_idx, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr %.sroa.42.3, ptr %.sroa.42.0..sroa_idx, align 8
  %i.kc = load ptr, ptr %i.c, align 8
  %i.kd = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = sdiv exact i64 %i.kg, 264
  %i.ki = icmp ult i64 %i.jz, %i.kh
  br i1 %i.ki, label %bb.c, label %._crit_edge369.loopexit, !llvm.loop !432

bb.aj:                                            ; preds = %bb.o, %bb.ae, %bb.n
  %.pn81.pn = phi { ptr, i32 } [ %i.fw, %bb.n ], [ %i.iy, %bb.ae ], [ %i.fx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.be

bb.ak:                                            ; preds = %.noexc.i, %bb.b, %._crit_edge369
  %i.kj = phi i32 [ %.pre.i.i.i, %.noexc.i ], [ %i.al, %bb.b ], [ %i.al, %._crit_edge369 ]
  %i.kk = or i64 ptrtoint (ptr @.str.200 to i64), 289637751035265024
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = and i64 %i.ko, 281474976710655
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = zext i32 %i.kj to i64
  %i.ks = getelementptr inbounds nuw [32 x i8], ptr %i.kq, i64 %i.kr ; 6 uses
  store i32 10, ptr %i.ks, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kl, ptr %.sroa.65.0..sroa_idx.i, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store i32 %.sroa.0320.0.lcssa, ptr %i.kt, align 8
  %.sroa.9321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ks, i64 20
  store i32 %.sroa.9321.0.lcssa, ptr %.sroa.9321.0..sroa_idx, align 4
  %.sroa.13323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  store ptr %.sroa.13323.0.lcssa, ptr %.sroa.13323.0..sroa_idx, align 8
  %i.ku = load i32, ptr %0, align 8
  %i.kv = add i32 %i.ku, 1
  store i32 %i.kv, ptr %0, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 3 uses
  %i.ky = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.kz = load ptr, ptr %i.kw, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ky, %i.kz
  br i1 %.not, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.la = ptrtoint ptr %i.kz to i64
  %i.lb = ptrtoint ptr %i.ky to i64
  %i.lc = sub i64 %i.lb, %i.la                    ; 2 uses
  %i.ld = lshr exact i64 %i.lc, 5
  %i.le = trunc i64 %i.ld to i32                  ; 3 uses
  %.not336 = icmp eq i32 %i.le, 0
  br i1 %.not336, label %.lr.ph377, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150: ; preds = %bb.al
  %i.lf = load ptr, ptr %i.k, align 8, !nonnull !46, !align !49
  %i.lg = lshr exact i64 %i.lc, 1
  %i.lh = and i64 %i.lg, 68719476720
  %i.li = tail call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr noundef null, i64 noundef 0, i64 noundef %i.lh)
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = or i64 %i.lj, 1125899906842624
  %i.ll = inttoptr i64 %i.lk to ptr               ; 2 uses
  %.pre390 = load ptr, ptr %i.kx, align 8
  %.pre391 = load ptr, ptr %i.kw, align 8         ; 2 uses
  %i.lm = icmp eq ptr %.pre390, %.pre391
  br i1 %i.lm, label %.noexc.i155, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.al, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150
  %.sroa.13.1456 = phi ptr [ %i.ll, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150 ], [ inttoptr (i64 1125899906842624 to ptr), %bb.al ]
  %i.ln = phi ptr [ %.pre391, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150 ], [ %i.kz, %bb.al ]
  %i.lo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %6, i64 13
  br label %bb.am

.noexc.i155:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150
  %.sroa.0186.0.lcssa = phi i32 [ 0, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150 ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.9.0.lcssa = phi i32 [ %i.le, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150 ], [ %.sroa.9.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.13.0.lcssa = phi ptr [ %i.ll, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE7ReserveEjRS5_.exit150 ], [ %.sroa.13.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.lt = load ptr, ptr %i.k, align 8, !nonnull !46, !align !49
  %i.lu = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.lt, ptr noundef null, i64 noundef 0, i64 noundef 512)
  %i.lv = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lw = or i64 %i.lv, 844424930131968
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = or i64 ptrtoint (ptr @.str.201 to i64), 289637751035265024
  %i.lz = inttoptr i64 %i.ly to ptr
  %i.ma = and i64 %i.lv, 281474976710655
  %i.mb = inttoptr i64 %i.ma to ptr               ; 6 uses
  store i32 11, ptr %i.mb, align 8
  %.sroa.6.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i153, align 4
  %.sroa.65.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.lz, ptr %.sroa.65.0..sroa_idx.i154, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store i32 %.sroa.0186.0.lcssa, ptr %i.mc, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  store i32 %.sroa.9.0.lcssa, ptr %.sroa.9.0..sroa_idx, align 4
end_hunk_1
begin_hunk_2_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseObjectILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27._crit_edge: ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27thread-pre-split, %bb.e
  %.lcssa81 = phi ptr [ %.sroa.0.0.i.i, %bb.e ], [ %.sroa.0.0.i.i41, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27thread-pre-split ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %.lcssa81 to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  store i32 4, ptr %i.q, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ah, ptr %i.ai, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27thread-pre-split
  %.087 = phi i32 [ %i.be, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27thread-pre-split ], [ 0, %bb.e ]
  tail call void @_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseStringILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext true)
  %i.aj = load i32, ptr %i.q, align 8
  %.not45 = icmp eq i32 %i.aj, 0
  br i1 %.not45, label %bb.g, label %.loopexit, !prof !50

bb.g:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i28 = load ptr, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i30, %bb.g
  %i.ak = phi ptr [ %.sroa.0.0.copyload.i.i28, %bb.g ], [ %i.am, %.critedge.i.i30 ] ; 6 uses
  %i.al = load i8, ptr %i.ak, align 1
  switch i8 %i.al, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit31 [
    i8 32, label %.critedge.i.i30
    i8 13, label %.critedge.i.i30
    i8 10, label %.critedge.i.i30
    i8 9, label %.critedge.i.i30
  ]

.critedge.i.i30:                                  ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  br label %bb.h, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit31: ; preds = %bb.h
  store ptr %i.ak, ptr %1, align 8
  %i.an = load i32, ptr %i.q, align 8
  %.not46 = icmp eq i32 %i.an, 0
  br i1 %.not46, label %bb.i, label %.loopexit, !prof !50

bb.i:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit31
  %i.ao = load i8, ptr %i.ak, align 1
  %i.ap = icmp eq i8 %i.ao, 58
  br i1 %i.ap, label %bb.j, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit, !prof !50

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ak to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  store i32 5, ptr %i.q, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.au, ptr %i.av, align 8
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  store ptr %i.aw, ptr %1, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.i34, %bb.j
  %.sroa.0.0.i.i33 = phi ptr [ %i.aw, %bb.j ], [ %i.ay, %.critedge.i.i34 ] ; 3 uses
  %i.ax = load i8, ptr %.sroa.0.0.i.i33, align 1
  switch i8 %i.ax, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit35 [
    i8 32, label %.critedge.i.i34
    i8 13, label %.critedge.i.i34
    i8 10, label %.critedge.i.i34
    i8 9, label %.critedge.i.i34
  ]

.critedge.i.i34:                                  ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i33, i64 1
  br label %bb.k, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit35: ; preds = %bb.k
  store ptr %.sroa.0.0.i.i33, ptr %1, align 8
  %i.az = load i32, ptr %i.q, align 8
  %.not47 = icmp eq i32 %i.az, 0
  br i1 %.not47, label %bb.l, label %.loopexit, !prof !50

bb.l:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit35
  tail call void @_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE10ParseValueILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.ba = load i32, ptr %i.q, align 8
  %.not48 = icmp eq i32 %i.ba, 0
  br i1 %.not48, label %bb.m, label %.loopexit, !prof !50

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i36 = load ptr, ptr %1, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i.i38, %bb.m
  %.sroa.0.0.i.i37 = phi ptr [ %.sroa.0.0.copyload.i.i36, %bb.m ], [ %i.bc, %.critedge.i.i38 ] ; 7 uses
  %i.bb = load i8, ptr %.sroa.0.0.i.i37, align 1
  switch i8 %i.bb, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit39 [
    i8 32, label %.critedge.i.i38
    i8 13, label %.critedge.i.i38
    i8 10, label %.critedge.i.i38
    i8 9, label %.critedge.i.i38
  ]

.critedge.i.i38:                                  ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 1
  br label %bb.n, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit39: ; preds = %bb.n
  store ptr %.sroa.0.0.i.i37, ptr %1, align 8
  %i.bd = load i32, ptr %i.q, align 8
  %.not49 = icmp eq i32 %i.bd, 0
  br i1 %.not49, label %bb.o, label %.loopexit, !prof !50

bb.o:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit39
  %i.be = add i32 %.087, 1                        ; 5 uses
  %i.bf = load i8, ptr %.sroa.0.0.i.i37, align 1
  switch i8 %i.bf, label %bb.w [
    i8 44, label %bb.p
    i8 125, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 1 ; 2 uses
  store ptr %i.bg, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.i42, %bb.p
  %.sroa.0.0.i.i41 = phi ptr [ %i.bg, %bb.p ], [ %i.bi, %.critedge.i.i42 ] ; 5 uses
  %i.bh = load i8, ptr %.sroa.0.0.i.i41, align 1
  switch i8 %i.bh, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit43 [
    i8 32, label %.critedge.i.i42
    i8 13, label %.critedge.i.i42
    i8 10, label %.critedge.i.i42
    i8 9, label %.critedge.i.i42
  ]

.critedge.i.i42:                                  ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i41, i64 1
  br label %bb.q, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit43: ; preds = %bb.q
  store ptr %.sroa.0.0.i.i41, ptr %1, align 8
  %i.bj = load i32, ptr %i.q, align 8
  %.not50 = icmp eq i32 %i.bj, 0
  br i1 %.not50, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27thread-pre-split, label %.loopexit, !prof !50, !llvm.loop !518

bb.r:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i37, i64 1
  store ptr %i.bk, ptr %1, align 8
  %i.bl = zext i32 %i.be to i64                   ; 2 uses
  %.neg.i.i = mul nsw i64 %i.bl, -32
  %i.bm = load ptr, ptr %i.e, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.neg.i.i ; 7 uses
  store ptr %i.bn, ptr %i.e, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 -2
  store i16 3, ptr %i.bq, align 2
  %.not.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = shl nuw nsw i64 %i.bl, 5                ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = add i64 %i.bw, %i.br                    ; 2 uses
  %i.by = load i64, ptr %i.bu, align 8
  %i.bz = icmp ugt i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.t, label %bb.u, !prof !43

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr %i.bp, align 8
  %..i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.br)
  %i.cb = tail call noundef zeroext i1 @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE8AddChunkEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %..i.i.i.i.i)
  br i1 %i.cb, label %._crit_edge.i.i.i.i.i, label %_ZN9rapidjson6MallocINS_13GenericMemberINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EEPT_RT0_m.exit.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.t
  %.pre.i.i.i.i.i = load ptr, ptr %i.bs, align 8
  %.pre11.i.i.i.i.i = load ptr, ptr %.pre.i.i.i.i.i, align 8 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i.i.i, i64 8
  %.pre12.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8 ; 2 uses
  %.pre13.i.i.i.i.i = add i64 %.pre12.i.i.i.i.i, %i.br
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.s
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre13.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bx, %bb.s ]
  %i.cc = phi i64 [ %.pre12.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bw, %bb.s ]
  %i.cd = phi ptr [ %.pre11.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bu, %bb.s ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cc
  store i64 %.pre-phi.i.i.i.i.i, ptr %i.cf, align 8
  br label %_ZN9rapidjson6MallocINS_13GenericMemberINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EEPT_RT0_m.exit.i.i

_ZN9rapidjson6MallocINS_13GenericMemberINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EEPT_RT0_m.exit.i.i: ; preds = %bb.u, %bb.t
  %.2.i.i.i.i = phi ptr [ null, %bb.t ], [ %i.cg, %bb.u ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, -281474976710656
  %i.cl = ptrtoint ptr %.2.i.i.i.i to i64
  %i.cm = or i64 %i.ck, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr %i.cn, ptr %i.ch, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2.i.i.i.i, ptr nonnull align 8 %i.bn, i64 %i.br, i1 false)
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E9EndObjectEj.exit

bb.v:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, -281474976710656
  %i.cs = inttoptr i64 %i.cr to ptr
  store ptr %i.cs, ptr %i.co, align 8
  br label %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E9EndObjectEj.exit

_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E9EndObjectEj.exit: ; preds = %_ZN9rapidjson6MallocINS_13GenericMemberINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EEPT_RT0_m.exit.i.i, %bb.v
  %i.ct = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.cu = getelementptr inbounds i8, ptr %i.bn, i64 -12
  store i32 %i.be, ptr %i.cu, align 4
  store i32 %i.be, ptr %i.ct, align 8
  br label %.loopexit

bb.w:                                             ; preds = %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = ptrtoint ptr %.sroa.0.0.i.i37 to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  store i32 6, ptr %i.q, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cz, ptr %i.da, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit31, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit35, %bb.l, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit39, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit43, %bb.w, %_ZN9rapidjson15GenericDocumentINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEES4_E9EndObjectEj.exit, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit27._crit_edge, %bb.f, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE10ParseArrayILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.b, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp slt i64 %i.i, 16
  br i1 %i.j, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorIS2_EEEEEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.f, %bb.a ], [ %.pre.i, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  store i16 4, ptr %i.n, align 2
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i, %bb.c ], [ %i.p, %.critedge.i.i ] ; 5 uses
  %i.o = load i8, ptr %.sroa.0.0.i.i, align 1
  switch i8 %i.o, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit [
    i8 32, label %.critedge.i.i
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 9, label %.critedge.i.i
  ]

.critedge.i.i:                                    ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  br label %bb.d, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit: ; preds = %bb.d
  store ptr %.sroa.0.0.i.i, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %.loopexit, !prof !50

bb.e:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit
  %i.s = load i8, ptr %.sroa.0.0.i.i, align 1
  %i.t = icmp eq i8 %i.s, 93
  br i1 %i.t, label %bb.f, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit19, !prof !50

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  store ptr %i.u, ptr %1, align 8
  %i.v = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -2
  store i16 4, ptr %i.w, align 2
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = and i64 %i.z, -281474976710656
  %i.ab = inttoptr i64 %i.aa to ptr
  store ptr %i.ab, ptr %i.x, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 -12
  store i32 0, ptr %i.ad, align 4
  store i32 0, ptr %i.ac, align 8
  br label %.loopexit

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit19: ; preds = %bb.e, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit27
  %.0 = phi i32 [ %i.ai, %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit27 ], [ 0, %bb.e ]
  tail call void @_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE10ParseValueILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.ae = load i32, ptr %i.q, align 8
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %bb.g, label %.loopexit, !prof !50

bb.g:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit19
  %.sroa.0.0.copyload.i.i20 = load ptr, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i22, %bb.g
  %i.af = phi ptr [ %.sroa.0.0.copyload.i.i20, %bb.g ], [ %i.ah, %.critedge.i.i22 ] ; 7 uses
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit23 [
    i8 32, label %.critedge.i.i22
    i8 13, label %.critedge.i.i22
    i8 10, label %.critedge.i.i22
    i8 9, label %.critedge.i.i22
  ]

.critedge.i.i22:                                  ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.h, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit23: ; preds = %bb.h
  %i.ai = add i32 %.0, 1                          ; 5 uses
  store ptr %i.af, ptr %1, align 8
  %i.aj = load i32, ptr %i.q, align 8
  %.not29 = icmp eq i32 %i.aj, 0
  br i1 %.not29, label %bb.i, label %.loopexit, !prof !50

bb.i:                                             ; preds = %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit23
  %i.ak = load i8, ptr %i.af, align 1
  switch i8 %i.ak, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit [
    i8 44, label %bb.j
    i8 93, label %bb.l
  ], !prof !521

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  store ptr %i.al, ptr %1, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.i26, %bb.j
  %.sroa.0.0.i.i25 = phi ptr [ %i.al, %bb.j ], [ %i.an, %.critedge.i.i26 ] ; 3 uses
  %i.am = load i8, ptr %.sroa.0.0.i.i25, align 1
  switch i8 %i.am, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit27 [
    i8 32, label %.critedge.i.i26
    i8 13, label %.critedge.i.i26
    i8 10, label %.critedge.i.i26
    i8 9, label %.critedge.i.i26
  ]

.critedge.i.i26:                                  ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i25, i64 1
  br label %bb.k, !llvm.loop !17

_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj1ENS_25GenericInsituStringStreamIS2_EEEEvRT0_.exit27: ; preds = %bb.k
  store ptr %.sroa.0.0.i.i25, ptr %1, align 8
  %i.ao = load i32, ptr %i.q, align 8
  %.not30 = icmp eq i32 %i.ao, 0
  br i1 %.not30, label %_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE7ConsumeINS_25GenericInsituStringStreamIS2_EEEEbRT_NS8_2ChE.exit19, label %.loopexit, !prof !50, !llvm.loop !520

bb.l:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ap, ptr %1, align 8
  %i.aq = zext i32 %i.ai to i64                   ; 2 uses
  %.neg.i.i = mul nsw i64 %i.aq, -16
  %i.ar = load ptr, ptr %i.e, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.neg.i.i ; 7 uses
  store ptr %i.as, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 -2
  store i16 4, ptr %i.av, align 2
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = shl nuw nsw i64 %i.aq, 4                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2INS_19MemoryPoolAllocatorIS3_EEEERKNS0_IS2_T_EERS3_b:bb.a

bb.h:                                             ; preds = %bb.f
  store i16 3077, ptr %i.bk, align 2
  store i32 %i.bh, ptr %0, align 8
  %i.bo = add i32 %i.bh, 1                        ; 2 uses
  %.not.i.i33 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i33, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = zext i32 %i.bo to i64
  %i.bq = tail call noalias ptr @malloc(i64 noundef %i.bp) #40
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i:      ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.bq, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, -281474976710656
  %i.bv = ptrtoint ptr %.0.i.i to i64
  %i.bw = or i64 %i.bu, %i.bv
  %i.bx = inttoptr i64 %i.bw to ptr
  store ptr %i.bx, ptr %i.br, align 8
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE12SetStringRawENS_16GenericStringRefIcEERS3_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE12SetStringRawENS_16GenericStringRefIcEERS3_.exit: ; preds = %bb.g, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i
  %.0.i34 = phi ptr [ %0, %bb.g ], [ %.0.i.i, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i ] ; 2 uses
  %i.by = zext i32 %i.bh to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i34, ptr nonnull align 1 %i.bi, i64 %i.by, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i34, i64 %i.by
  store i8 0, ptr %i.bz, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.b, ptr %i.ca, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE12SetStringRawENS_16GenericStringRefIcEERS3_.exit, %bb.j, %._crit_edge, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE13DoCopyMembersINS_19MemoryPoolAllocatorIS3_EEEEvRKNS0_IS2_T_EERS3_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E15AddCurrentErrorENS_17ValidateErrorCodeEb(ptr noundef nonnull align 8 dereferenceable(220) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rapidjson::GenericStringRef", align 8 ; 5 uses
  %4 = alloca %"class.rapidjson::GenericPointer", align 8 ; 6 uses
  %5 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = load atomic i8, ptr @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v) #34
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1s, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v, align 8
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v, i64 8), align 8
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v) #34
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v, align 8
  store ptr %i.f, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEvE1v, i64 8), align 8
  store i32 %i.h, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i2.i = icmp eq ptr %i.j, null
  br i1 %.not.i2.i, label %bb.d, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AddErrorCodeERNS2_IS4_S6_EENS_17ValidateErrorCodeE.exit

bb.d:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i
  %i.k = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.k, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AddErrorCodeERNS2_IS4_S6_EENS_17ValidateErrorCodeE.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AddErrorCodeERNS2_IS4_S6_EENS_17ValidateErrorCodeE.exit: ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i, %bb.d
  %i.m = phi ptr [ %i.k, %bb.d ], [ %i.j, %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E18GetErrorCodeStringEv.exit.i ]
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEE9AddMemberINS_17ValidateErrorCodeEEENS_8internal9DisableIfINS7_15RemoveSfinaeTagIPFRNS7_9SfinaeTagENS7_6OrExprINS7_9IsPointerIT_EENS7_14IsGenericValueISE_EEEEEE4TypeERS4_E4TypeENS_16GenericStringRefIcEESE_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %3, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E24AddErrorInstanceLocationERNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i1 noundef zeroext %2)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 52, i1 false)
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E22AddErrorSchemaLocationERNS2_IS4_S6_EENS_14GenericPointerIS8_S6_EE(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AddErrorCodeERNS2_IS4_S6_EENS_17ValidateErrorCodeE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void @free(ptr noundef %i.s) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 1) #35
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE23GetValidateErrorKeywordENS_17ValidateErrorCodeE(i32 noundef %1)
  %i.w = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i7, label %bb.i, label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

bb.i:                                             ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  %i.x = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.x, ptr %i.i, align 8
  br label %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit

_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit: ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit, %bb.i
  %i.z = phi ptr [ %i.x, %bb.i ], [ %i.w, %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit ]
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEC2INS_19MemoryPoolAllocatorIS3_EEEERKNS0_IS2_T_EERS3_b(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i1 noundef zeroext false)
  invoke void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E8AddErrorERNS2_IS4_S6_EESE_(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.k:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E12AddErrorCodeERNS2_IS4_S6_EENS_17ValidateErrorCodeE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %4) #34
  br label %bb.m

bb.l:                                             ; preds = %_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E17GetStateAllocatorEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.aa, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E24AddErrorInstanceLocationERNS2_IS4_S6_EEb(ptr noundef nonnull align 8 dereferenceable(220) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 8 uses
  %4 = alloca %"class.rapidjson::GenericStringBuffer", align 8 ; 12 uses
  %5 = alloca %"class.rapidjson::GenericPointer", align 8 ; 18 uses
  %6 = alloca %"class.rapidjson::GenericPointer", align 8 ; 21 uses
  %7 = alloca %"class.rapidjson::GenericValue.406", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i64 256, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !noalias !639 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !noalias !639 ; 3 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %5, i8 0, i64 52, i1 false), !alias.scope !639
  br label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %5, i8 0, i64 52, i1 false), !alias.scope !639
  invoke void @_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E5ParseEPKcm(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef %i.f, i64 noundef %i.j)
          to label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit unwind label %bb.af

_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  br i1 %2, label %8, label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit._crit_edge

8:                                                ; preds = %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit._crit_edge, label %bb.d

bb.d:                                             ; preds = %8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = add i64 %i.l, -1
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %6, i8 0, i64 24, i1 false)
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 0, ptr %i.s, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit

_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit._crit_edge: ; preds = %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit, %8
  %9 = phi i64 [ 0, %8 ], [ %i.l, %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %6, i8 0, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 %9, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  store i64 %i.aa, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = load i32, ptr %i.ab, align 8
  store i32 %i.ac, ptr %i.v, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not10.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit._crit_edge
  %i.af = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #37
          to label %bb.f unwind label %bb.ag      ; 2 uses

bb.f:                                             ; preds = %bb.e
  store ptr %i.af, ptr %6, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.y, align 8             ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %.idx.i = shl i64 %i.ah, 4                      ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i
  %.not3033.i = icmp eq i64 %i.ah, 0              ; 3 uses
  br i1 %.not3033.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.al = add i64 %.idx.i, -16                    ; 2 uses
  %i.am = lshr exact i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.am, 1
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.035.i.prol = phi i64 [ %i.ar, %.lr.ph.i.prol ], [ %i.ah, %.lr.ph.i.preheader ]
  %.02834.i.prol = phi ptr [ %i.as, %.lr.ph.i.prol ], [ %i.aj, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.02834.i.prol, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = add i64 %.035.i.prol, %i.aq             ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02834.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !638

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.035.i.unr = phi i64 [ %i.ah, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.02834.i.unr = phi ptr [ %i.aj, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %i.at = icmp ult i64 %i.al, 112
  br i1 %i.at, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cc, %.lr.ph.i ] ; 3 uses
  store i64 %i.ah, ptr %i.x, align 8
  %i.au = add i64 %.0.lcssa.i, %.idx.i            ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = call noalias ptr @malloc(i64 noundef %i.au) #40
  br label %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i

_ZN9rapidjson12CrtAllocator6MallocEm.exit.i:      ; preds = %bb.g, %._crit_edge.i
  %.0.i.i26 = phi ptr [ %i.av, %bb.g ], [ null, %._crit_edge.i ] ; 3 uses
  store ptr %.0.i.i26, ptr %i.u, align 8
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i26, i64 %i.ah ; 2 uses
  store ptr %i.aw, ptr %i.t, align 8
  br i1 %.not3033.i, label %bb.i, label %bb.h

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.035.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %.035.i.unr, %.lr.ph.i.prol.loopexit ]
  %.02834.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.02834.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02834.i, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = add i64 %.035.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.02834.i, i64 24
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = zext i32 %i.bc to i64
  %i.be = add i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.02834.i, i64 40
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add i64 %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.02834.i, i64 56
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add i64 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.02834.i, i64 72
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add i64 %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.02834.i, i64 88
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.02834.i, i64 104
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = zext i32 %i.bw to i64
  %i.by = add i64 %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.02834.i, i64 120
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add i64 %i.by, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.02834.i, i64 128 ; 2 uses
  %.not30.i.7 = icmp eq ptr %i.cd, %i.ak
  br i1 %.not30.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !25

bb.h:                                             ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i.i26, ptr align 8 %i.aj, i64 %.idx.i, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN9rapidjson12CrtAllocator6MallocEm.exit.i
  %.not32.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not32.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = load ptr, ptr %i.ad, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.ce, i64 %.0.lcssa.i, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not3033.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.k, %.lr.ph38.i
  %.02736.i = phi i64 [ %i.cq, %.lr.ph38.i ], [ 0, %bb.k ] ; 3 uses
  %i.cf = load ptr, ptr %i.ai, align 8
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.02736.i
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.ad, align 8
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = load ptr, ptr %i.t, align 8
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.u, align 8
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %.02736.i
  store ptr %i.cn, ptr %i.cp, align 8
  %i.cq = add nuw i64 %.02736.i, 1                ; 2 uses
  %i.cr = load i64, ptr %i.y, align 8
  %i.cs = icmp ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph38.i, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit, !llvm.loop !26

bb.l:                                             ; preds = %_ZNK9rapidjson22GenericSchemaValidatorINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES6_EENS_17BaseReaderHandlerIS4_vEES6_E25GetInvalidDocumentPointerEv.exit._crit_edge
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  store ptr %i.cu, ptr %i.u, align 8
  store ptr null, ptr %i.t, align 8
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit: ; preds = %.lr.ph38.i, %bb.l, %bb.k, %bb.d
  %i.cv = invoke noundef zeroext i1 @_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E9StringifyILb1ENS_19GenericStringBufferIS3_S5_EEEEbRT0_(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit unwind label %bb.ah ; 0 uses

_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit: ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_EC2ERKS8_.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void @free(ptr noundef %i.cz) #34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E20StringifyUriFragmentINS_19GenericStringBufferIS3_S5_EEEEbRT_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 1) #35
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp slt i64 %i.dj, 1
  br i1 %i.dk, label %bb.p, label %bb.q, !prof !43

bb.p:                                             ; preds = %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 noundef 1)
          to label %.noexc15 unwind label %bb.aj

.noexc15:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.df, align 8
  br label %bb.q
end_hunk_3
