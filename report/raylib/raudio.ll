Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_spatializer_set_direction:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %2, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.d = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.preheader.i.i
  %i.f = atomicrmw volatile xchg ptr %i.c, i32 1 acquire, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %ma_atomic_vec3f_set.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.loopexit.i.i
  %i.h = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.j = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.lr.ph.i.i, label %.loopexit.i.i

ma_atomic_vec3f_set.exit:                         ; preds = %.loopexit.i.i, %bb.b
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.b, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %3, ptr %.sroa.24.0..sroa_idx.i, align 4
  store atomic volatile i32 0, ptr %i.c release, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %ma_atomic_vec3f_set.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_spatializer_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %.not25.i.i = icmp eq ptr %i.h, null
  %i.i = zext i32 %i.b to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = and i64 %i.j, 8589934584
  %i.l = select i1 %.not25.i.i, i64 0, i64 %i.k
  %i.m = zext i32 %i.e to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 4
  %i.p = and i64 %i.o, 34359738360
  %i.q = shl nuw nsw i64 %i.m, 3
  %i.r = add nuw nsw i64 %i.p, %i.q
  %i.s = add nuw nsw i64 %i.r, %i.l               ; 2 uses
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %1, align 8
  %i.w = tail call ptr %i.u(i64 noundef %i.s, ptr noundef %i.v) #61, !inline_history !29
  br label %ma_malloc.exit

bb.g:                                             ; preds = %bb.d
  %i.x = tail call noalias noundef ptr @malloc(i64 noundef %i.s) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.f, %bb.g
  %.0.i20 = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 4 uses
  %i.y = icmp eq ptr %.0.i20, null
  br i1 %i.y, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %ma_malloc.exit
  %i.z = tail call i32 @ma_spatializer_init_preallocated(ptr noundef nonnull %0, ptr noundef nonnull %.0.i20, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.z, 0
  br i1 %.not19, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %1, align 8
  tail call void %i.ab(ptr noundef nonnull %.0.i20, ptr noundef %i.ac) #61, !inline_history !30
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %.0.i20) #61
  br label %ma_free.exit

bb.m:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i32 1, ptr %i.ad, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.e, %bb.a, %bb.c, %bb.b, %bb.l, %bb.k, %bb.j, %ma_malloc.exit, %bb.m
  %.013 = phi i32 [ 0, %bb.m ], [ %i.z, %bb.k ], [ -2, %bb.a ], [ -4, %ma_malloc.exit ], [ -4, %bb.e ], [ %i.z, %bb.l ], [ %i.z, %bb.j ], [ -2, %bb.b ], [ -2, %bb.c ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_spatializer_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %ma_gainer_uninit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %ma_gainer_uninit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.h, null
  br i1 %.not9.i.i, label %ma_gainer_uninit.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8
  tail call void %i.h(ptr noundef nonnull %i.e, ptr noundef %i.i) #61, !inline_history !659
  br label %ma_gainer_uninit.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #61
  br label %ma_gainer_uninit.exit

ma_gainer_uninit.exit:                            ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %ma_free.exit, label %bb.h

bb.h:                                             ; preds = %ma_gainer_uninit.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ma_free.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i6 = icmp eq ptr %1, null
  br i1 %.not.i6, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.p, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %1, align 8
  tail call void %i.p(ptr noundef nonnull %i.m, ptr noundef %i.q) #61, !inline_history !30
  br label %ma_free.exit

bb.l:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.m) #61
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.a, %ma_gainer_uninit.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @ma_spatializer_process_pcm_frames(ptr nofree noundef %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef readonly captures(address) %3, i64 noundef %4) local_unnamed_addr #36 {
bb.a:
  %5 = alloca %struct.ma_vec3f, align 8           ; 10 uses
  %6 = alloca %struct.ma_vec3f, align 8           ; 7 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load atomic i32, ptr %i.g seq_cst, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %ma_spatializer_listener_is_enabled.exit, label %bb.i

ma_spatializer_listener_is_enabled.exit:          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i32, ptr %i.j, align 8
  %.not253 = icmp eq i32 %i.k, 0
  br i1 %.not253, label %bb.g, label %bb.c

bb.c:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.l = load i32, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %2, %3
  br i1 %i.p, label %ma_copy_pcm_frames.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.l, 2
  %i.r = zext i32 %i.q to i64
  %i.s = mul i64 %4, %i.r                         ; 2 uses
  %.not.i7.i = icmp eq i64 %i.s, 0
  br i1 %.not.i7.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %bb.e ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.s, %bb.e ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.v, %.lr.ph.i ], [ %3, %bb.e ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.t = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @ma_channel_map_apply_f32(ptr noundef %2, ptr noundef %i.f, i32 noundef %i.n, ptr noundef %3, ptr noundef %i.d, i32 noundef %i.l, i64 noundef %4)
  br label %ma_copy_pcm_frames.exit

bb.g:                                             ; preds = %ma_spatializer_listener_is_enabled.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = shl i32 %i.x, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = mul i64 %4, %i.z                        ; 2 uses
  %.not.i13.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i13.i, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254

.lr.ph.i254:                                      ; preds = %bb.g, %ma_zero_memory_default.exit.i.i
  %.0.i15.i = phi ptr [ %i.ac, %ma_zero_memory_default.exit.i.i ], [ %2, %bb.g ] ; 3 uses
  %.08.i14.i = phi i64 [ %i.ab, %ma_zero_memory_default.exit.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  %spec.store.select.i.i255 = tail call i64 @llvm.umin.i64(i64 %.08.i14.i, i64 4294967295) ; 3 uses
  %.not.i = icmp eq ptr %.0.i15.i, null
  br i1 %.not.i, label %ma_zero_memory_default.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i254
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i15.i, i8 0, i64 %spec.store.select.i.i255, i1 false)
  br label %ma_zero_memory_default.exit.i.i

ma_zero_memory_default.exit.i.i:                  ; preds = %bb.h, %.lr.ph.i254
  %i.ab = sub nuw i64 %.08.i14.i, %spec.store.select.i.i255 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i15.i, i64 %spec.store.select.i.i255
  %.not.i.i256 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i256, label %ma_copy_pcm_frames.exit, label %.lr.ph.i254

ma_copy_pcm_frames.exit:                          ; preds = %.lr.ph.i, %ma_zero_memory_default.exit.i.i, %bb.g, %bb.e, %bb.d, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 1.000000e+00, ptr %i.ad, align 8
  br label %bb.an

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 6 uses
  %i.ag = load i32, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ai = load atomic volatile i32, ptr %i.ah seq_cst, align 4
  %i.aj = bitcast i32 %i.ai to float              ; 15 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load atomic volatile i32, ptr %i.ak seq_cst, align 8
  %i.am = bitcast i32 %i.al to float              ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = load atomic volatile i32, ptr %i.an seq_cst, align 4
  %i.ap = bitcast i32 %i.ao to float              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ar = load atomic volatile i32, ptr %i.aq seq_cst, align 4
  %i.as = bitcast i32 %i.ar to float              ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 5 uses
  %i.av = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.ax = atomicrmw volatile xchg ptr %i.au, i32 1 acquire, align 4
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %ma_spatializer_get_positioning.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i, %.loopexit.i.i.i
  %i.az = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.bb = load atomic volatile i32, ptr %i.au monotonic, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

ma_spatializer_get_positioning.exit:              ; preds = %.loopexit.i.i.i, %bb.i
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.at, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 8
  store atomic volatile i32 0, ptr %i.au release, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load float, ptr %i.bd, align 8          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bg = load atomic i32, ptr %i.bf seq_cst, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %ma_spatializer_get_positioning.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.bk = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.loopexit388, label %.preheader.i.i.i262

.loopexit.i.i.i263:                               ; preds = %.lr.ph.i.i.i271, %.preheader.i.i.i262
  %i.bm = atomicrmw volatile xchg ptr %i.bj, i32 1 acquire, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.loopexit388, label %.preheader.i.i.i262

.preheader.i.i.i262:                              ; preds = %bb.j, %.loopexit.i.i.i263
  %i.bo = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.lr.ph.i.i.i271:                                  ; preds = %.preheader.i.i.i262, %.lr.ph.i.i.i271
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.bq = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph.i.i.i271, label %.loopexit.i.i.i263

.loopexit388:                                     ; preds = %.loopexit.i.i.i263, %bb.j
  %.sroa.03.0.copyload.i.i265 = load <2 x float>, ptr %i.bi, align 8 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.24.0.copyload.i.i267 = load float, ptr %.sroa.24.0..sroa_idx.i.i266, align 8 ; 2 uses
  store atomic volatile i32 0, ptr %i.bj release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i265, ptr %5, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.24.0.copyload.i.i267, ptr %.sroa.4108.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 5 uses
  %i.bu = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.loopexit.i.i.i273:                               ; preds = %.lr.ph.i.i.i281, %.preheader.i.i.i272
  %i.bw = atomicrmw volatile xchg ptr %i.bt, i32 1 acquire, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %ma_spatializer_get_direction.exit, label %.preheader.i.i.i272

.preheader.i.i.i272:                              ; preds = %.loopexit388, %.loopexit.i.i.i273
  %i.by = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

.lr.ph.i.i.i281:                                  ; preds = %.preheader.i.i.i272, %.lr.ph.i.i.i281
  tail call void asm sideeffect "rep; nop", "~{dirflag},~{fpsr},~{flags}"() #61, !srcloc !32
  %i.ca = load atomic volatile i32, ptr %i.bt monotonic, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i.i.i281, label %.loopexit.i.i.i273

ma_spatializer_get_direction.exit:                ; preds = %.loopexit.i.i.i273, %.loopexit388
  %.sroa.03.0.copyload.i.i275 = load <2 x float>, ptr %i.bs, align 8
  %.sroa.24.0..sroa_idx.i.i276 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.24.0.copyload.i.i277 = load float, ptr %.sroa.24.0..sroa_idx.i.i276, align 8
  store atomic volatile i32 0, ptr %i.bt release, align 4
  store <2 x float> %.sroa.03.0.copyload.i.i275, ptr %6, align 8
end_hunk_0
begin_hunk_1_@ma_channel_map_get_spatial_channel_count:bb.a

ma_is_spatial_channel_position.exit.thread14:     ; preds = %bb.d, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_channel_map_get_channel.exit, %ma_is_spatial_channel_position.exit
  br label %bb.e

bb.e:                                             ; preds = %ma_is_spatial_channel_position.exit.thread, %ma_is_spatial_channel_position.exit, %ma_is_spatial_channel_position.exit.thread14
  %i.w = phi i32 [ %.0720, %ma_is_spatial_channel_position.exit.thread14 ], [ %i.v, %ma_is_spatial_channel_position.exit ], [ %i.s, %ma_is_spatial_channel_position.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %ma_channel_map_get_channel.exit

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %bb.c ], [ %i.w, %bb.e ]
  ret i32 %.07.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @ma_channel_map_find_channel_position(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not17 = icmp eq i32 %0, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ma_channel_map_get_channel.exit.us, label %ma_channel_map_get_channel.exit.preheader

ma_channel_map_get_channel.exit.preheader:        ; preds = %.lr.ph
  %wide.trip.count = zext i32 %0 to i64
  br label %ma_channel_map_get_channel.exit

ma_channel_map_get_channel.exit.us:               ; preds = %.lr.ph, %bb.d
  %.016.us = phi i32 [ %i.d, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.b = tail call fastcc zeroext i8 @ma_channel_map_init_standard_channel(i32 noundef 0, i32 noundef %0, i32 noundef %.016.us)
  %i.c = icmp eq i8 %i.b, %2
  br i1 %i.c, label %.split.us, label %bb.d

bb.d:                                             ; preds = %ma_channel_map_get_channel.exit.us
  %i.d = add nuw i32 %.016.us, 1                  ; 2 uses
  %exitcond23.not = icmp eq i32 %i.d, %0
  br i1 %exitcond23.not, label %.loopexit, label %ma_channel_map_get_channel.exit.us

ma_channel_map_get_channel.exit:                  ; preds = %ma_channel_map_get_channel.exit.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %ma_channel_map_get_channel.exit.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, %2
  br i1 %i.g, label %.split.us.loopexit18, label %bb.f

.split.us.loopexit18:                             ; preds = %ma_channel_map_get_channel.exit
  %i.h = trunc nuw i64 %indvars.iv to i32
  br label %.split.us

.split.us:                                        ; preds = %ma_channel_map_get_channel.exit.us, %.split.us.loopexit18
  %.us-phi = phi i32 [ %i.h, %.split.us.loopexit18 ], [ %.016.us, %ma_channel_map_get_channel.exit.us ]
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.split.us
  store i32 %.us-phi, ptr %3, align 4
  br label %.loopexit

bb.f:                                             ; preds = %ma_channel_map_get_channel.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %ma_channel_map_get_channel.exit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c, %.split.us, %bb.e
  %.012 = phi i32 [ 1, %.split.us ], [ 1, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -4, 1) i32 @ma_channel_converter_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %struct.ma_channel_converter_heap_layout, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.a = call fastcc i32 @ma_channel_converter_get_heap_layout(ptr noundef readonly %0, ptr noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %ma_channel_converter_get_heap_size.exit

ma_channel_converter_get_heap_size.exit:          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  br label %ma_free.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  %.not18 = icmp eq i64 %i.b, 0
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i20 = icmp eq ptr %1, null                ; 2 uses
  br i1 %.not.i20, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.d, null
  br i1 %.not8.i, label %ma_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %1, align 8
  %i.f = tail call ptr %i.d(i64 noundef %i.b, ptr noundef %i.e) #61, !inline_history !29
  br label %ma_malloc.exit

bb.f:                                             ; preds = %bb.c
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef %i.b) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i21 = phi ptr [ %i.f, %bb.e ], [ %i.g, %bb.f ] ; 4 uses
  %i.h = icmp eq ptr %.0.i21, null
  br i1 %i.h, label %ma_free.exit, label %bb.g

bb.g:                                             ; preds = %ma_malloc.exit
  %i.i = tail call i32 @ma_channel_converter_init_preallocated(ptr noundef %0, ptr noundef nonnull %.0.i21, ptr noundef %2) ; 4 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %bb.l, label %bb.h

.thread:                                          ; preds = %bb.b
  %i.j = tail call i32 @ma_channel_converter_init_preallocated(ptr noundef %0, ptr noundef null, ptr noundef %2) ; 2 uses
  %.not1930 = icmp eq i32 %i.j, 0
  br i1 %.not1930, label %bb.l, label %ma_free.exit

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i20, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = load ptr, ptr %1, align 8
  tail call void %i.l(ptr noundef nonnull %.0.i21, ptr noundef %i.m) #61, !inline_history !30
  br label %ma_free.exit

bb.k:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.0.i21) #61
  br label %ma_free.exit

bb.l:                                             ; preds = %.thread, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 1, ptr %i.n, align 8
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %.thread, %bb.d, %bb.k, %bb.j, %bb.i, %ma_channel_converter_get_heap_size.exit, %ma_malloc.exit, %bb.l
  %.013 = phi i32 [ 0, %bb.l ], [ %i.a, %ma_channel_converter_get_heap_size.exit ], [ %i.i, %bb.j ], [ -4, %ma_malloc.exit ], [ -4, %bb.d ], [ %i.i, %bb.k ], [ %i.i, %bb.i ], [ %i.j, %.thread ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define hidden void @ma_channel_converter_uninit(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8
  tail call void %i.h(ptr noundef nonnull %i.e, ptr noundef %i.i) #61, !inline_history !30
  br label %ma_free.exit

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #61
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -3, 1) i32 @ma_channel_converter_process_pcm_frames(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %ma_zero_memory_64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = mul i32 %i.i, %i.f
  %i.k = zext i32 %i.j to i64
  %i.l = mul i64 %3, %i.k                         ; 2 uses
  %.not.i107 = icmp eq i64 %i.l, 0
  br i1 %.not.i107, label %ma_zero_memory_64.exit, label %ma_zero_memory_default.exit.i

ma_zero_memory_default.exit.i:                    ; preds = %bb.c, %ma_zero_memory_default.exit.i
  %.0.i109 = phi ptr [ %i.n, %ma_zero_memory_default.exit.i ], [ %1, %bb.c ] ; 2 uses
  %.08.i108 = phi i64 [ %i.m, %ma_zero_memory_default.exit.i ], [ %i.l, %bb.c ] ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %.08.i108, i64 4294967295) ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i109, i8 0, i64 %spec.store.select.i, i1 false)
  %i.m = sub nuw i64 %.08.i108, %spec.store.select.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i109, i64 %spec.store.select.i
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %ma_zero_memory_64.exit, label %ma_zero_memory_default.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8
  switch i32 %i.p, label %bb.bf [
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.j
    i32 4, label %bb.v
  ]

bb.e:                                             ; preds = %bb.d
  %.val = load i32, ptr %0, align 8
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val31 = load i32, ptr %i.q, align 8
  %i.r = zext i32 %.val to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %i.u = mul i32 %i.t, %.val31
  %i.v = zext i32 %i.u to i64
  %i.w = mul i64 %3, %i.v                         ; 2 uses
  %.not.i1.i = icmp eq i64 %i.w, 0
  br i1 %.not.i1.i, label %ma_zero_memory_64.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.0.i4.i = phi ptr [ %i.y, %.lr.ph.i ], [ %1, %bb.e ] ; 2 uses
  %.011.i3.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %.012.i2.i = phi ptr [ %i.z, %.lr.ph.i ], [ %2, %bb.e ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i3.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i4.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i2.i, i64 %spec.store.select.i.i, i1 false)
  %i.x = sub nuw i64 %.011.i3.i, %spec.store.select.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 %spec.store.select.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i2.i, i64 %spec.store.select.i.i
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %ma_zero_memory_64.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %0, align 8
  switch i32 %i.aa, label %ma_zero_memory_64.exit [
    i32 1, label %.preheader106.i
    i32 2, label %.preheader108.i
    i32 3, label %.preheader111.i
    i32 4, label %.preheader114.i
    i32 5, label %.preheader117.i
  ]

.preheader117.i:                                  ; preds = %bb.f
  %.not.i32 = icmp eq i64 %3, 0
  br i1 %.not.i32, label %ma_zero_memory_64.exit, label %.preheader116.lr.ph.i

.preheader116.lr.ph.i:                            ; preds = %.preheader117.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader116.i

.preheader114.i:                                  ; preds = %bb.f
  %.not154.i = icmp eq i64 %3, 0
  br i1 %.not154.i, label %ma_zero_memory_64.exit, label %.preheader113.lr.ph.i

.preheader113.lr.ph.i:                            ; preds = %.preheader114.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader113.i

.preheader111.i:                                  ; preds = %bb.f
  %.not156.i = icmp eq i64 %3, 0
  br i1 %.not156.i, label %ma_zero_memory_64.exit, label %.preheader110.lr.ph.i

.preheader110.lr.ph.i:                            ; preds = %.preheader111.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader110.i

.preheader108.i:                                  ; preds = %bb.f
  %.not158.i = icmp eq i64 %3, 0
  br i1 %.not158.i, label %ma_zero_memory_64.exit, label %.preheader107.lr.ph.i

.preheader107.lr.ph.i:                            ; preds = %.preheader108.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader107.i

.preheader106.i:                                  ; preds = %bb.f
  %.not160.i = icmp eq i64 %3, 0
  br i1 %.not160.i, label %ma_zero_memory_64.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader106.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge150.i, %.preheader.lr.ph.i
  %.091152.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.bh, %._crit_edge150.i ] ; 3 uses
  %i.ah = load i32, ptr %i.af, align 4            ; 3 uses
  %.not161.i = icmp eq i32 %i.ah, 0
  br i1 %.not161.i, label %._crit_edge150.i, label %.lr.ph149.i

.lr.ph149.i:                                      ; preds = %.preheader.i
  %i.ai = zext i32 %i.ah to i64                   ; 4 uses
  %i.aj = mul i64 %.091152.i, %i.ai
  %i.ak = getelementptr i8, ptr %2, i64 %i.aj     ; 2 uses
  %min.iters.check370 = icmp ult i32 %i.ah, 8
  br i1 %min.iters.check370, label %scalar.ph369.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph149.i
  %n.vec372 = and i64 %i.ai, 4294967288           ; 3 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next379, %vector.body373 ] ; 2 uses
  %vec.phi375 = phi <4 x i32> [ zeroinitializer, %vector.ph371 ], [ %i.ar, %vector.body373 ]
  %vec.phi376 = phi <4 x i32> [ zeroinitializer, %vector.ph371 ], [ %i.as, %vector.body373 ]
  %i.al = getelementptr i8, ptr %i.ak, i64 %index374 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %wide.load377 = load <4 x i8>, ptr %i.al, align 1
  %wide.load378 = load <4 x i8>, ptr %i.am, align 1
  %i.an = zext <4 x i8> %wide.load377 to <4 x i32>
  %i.ao = zext <4 x i8> %wide.load378 to <4 x i32>
  %i.ap = add <4 x i32> %vec.phi375, splat (i32 -128)
  %i.aq = add <4 x i32> %vec.phi376, splat (i32 -128)
  %i.ar = add <4 x i32> %i.ap, %i.an              ; 2 uses
  %i.as = add <4 x i32> %i.aq, %i.ao              ; 2 uses
  %index.next379 = add nuw i64 %index374, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next379, %n.vec372
  br i1 %i.at, label %middle.block380, label %vector.body373, !llvm.loop !718

middle.block380:                                  ; preds = %vector.body373
  %bin.rdx381 = add <4 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx381) ; 2 uses
  %cmp.n382 = icmp eq i64 %n.vec372, %i.ai
  br i1 %cmp.n382, label %._crit_edge150.i, label %scalar.ph369.preheader

scalar.ph369.preheader:                           ; preds = %.lr.ph149.i, %middle.block380
  %indvars.iv190.i.ph = phi i64 [ 0, %.lr.ph149.i ], [ %n.vec372, %middle.block380 ]
  %.089148.i.ph = phi i32 [ 0, %.lr.ph149.i ], [ %i.au, %middle.block380 ]
  br label %scalar.ph369

scalar.ph369:                                     ; preds = %scalar.ph369.preheader, %scalar.ph369
  %indvars.iv190.i = phi i64 [ %indvars.iv.next191.i, %scalar.ph369 ], [ %indvars.iv190.i.ph, %scalar.ph369.preheader ] ; 2 uses
  %.089148.i = phi i32 [ %i.az, %scalar.ph369 ], [ %.089148.i.ph, %scalar.ph369.preheader ]
  %i.av = getelementptr i8, ptr %i.ak, i64 %indvars.iv190.i
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add i32 %.089148.i, -128
  %i.az = add i32 %i.ay, %i.ax                    ; 2 uses
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next191.i, %i.ai
  br i1 %exitcond194.not.i, label %._crit_edge150.i, label %scalar.ph369, !llvm.loop !719

._crit_edge150.i:                                 ; preds = %scalar.ph369, %middle.block380, %.preheader.i
  %.089.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.au, %middle.block380 ], [ %i.az, %scalar.ph369 ]
  %i.ba = load i32, ptr %i.ag, align 8
  %i.bb = udiv i32 %.089.lcssa.i, %i.ba
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 -128)
  %i.bd = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 127)
  %i.be = trunc nsw i32 %i.bd to i8
  %i.bf = xor i8 %i.be, -128
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.091152.i
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.091152.i, 1               ; 2 uses
  %exitcond195.not.i = icmp eq i64 %i.bh, %3
  br i1 %exitcond195.not.i, label %ma_zero_memory_64.exit, label %.preheader.i

.preheader107.i:                                  ; preds = %._crit_edge143.i, %.preheader107.lr.ph.i
  %.192146.i = phi i64 [ 0, %.preheader107.lr.ph.i ], [ %i.cb, %._crit_edge143.i ] ; 3 uses
  %i.bi = load i32, ptr %i.ae, align 4            ; 4 uses
  %.not159.i = icmp eq i32 %i.bi, 0
  br i1 %.not159.i, label %._crit_edge143.i, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %.preheader107.i
  %i.bj = zext i32 %i.bi to i64                   ; 4 uses
  %i.bk = mul i64 %.192146.i, %i.bj
end_hunk_1
begin_hunk_2_@drwav_bytes_to_s32:bb.a
bb.a:
  %i.a = load i32, ptr %0, align 1
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @drwav_bytes_to_u64(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @drwav_bytes_to_s64(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 1
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @drwav_guid_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not.1 = icmp eq i8 %i.d, %i.f
  br i1 %.not.1, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %.not.2 = icmp eq i8 %i.h, %i.j
  br i1 %.not.2, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %.not.3 = icmp eq i8 %i.l, %i.n
  br i1 %.not.3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %.not.4 = icmp eq i8 %i.p, %i.r
  br i1 %.not.4, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.v = load i8, ptr %i.u, align 1
  %.not.5 = icmp eq i8 %i.t, %i.v
  br i1 %.not.5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.x = load i8, ptr %i.w, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.z = load i8, ptr %i.y, align 1
  %.not.6 = icmp eq i8 %i.x, %i.z
  br i1 %.not.6, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ad = load i8, ptr %i.ac, align 1
  %.not.7 = icmp eq i8 %i.ab, %i.ad
  br i1 %.not.7, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i8, ptr %i.ag, align 1
  %.not.8 = icmp eq i8 %i.af, %i.ah
  br i1 %.not.8, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.al = load i8, ptr %i.ak, align 1
  %.not.9 = icmp eq i8 %i.aj, %i.al
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ap = load i8, ptr %i.ao, align 1
  %.not.10 = icmp eq i8 %i.an, %i.ap
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.at = load i8, ptr %i.as, align 1
  %.not.11 = icmp eq i8 %i.ar, %i.at
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.12 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bb = load i8, ptr %i.ba, align 1
  %.not.13 = icmp eq i8 %i.az, %i.bb
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bf = load i8, ptr %i.be, align 1
  %.not.14 = icmp eq i8 %i.bd, %i.bf
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.bj = load i8, ptr %i.bi, align 1
  %.not.15 = icmp eq i8 %i.bh, %i.bj
  %spec.select = zext i1 %.not.15 to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.i ], [ 0, %bb.b ], [ %spec.select, %bb.p ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.o ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.f ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.m ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @drwav_fourcc_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %1, align 1
  %i.d = sext i8 %i.c to i32
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i32
  %i.l = icmp eq i32 %i.h, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sext i8 %i.x to i32
  %i.z = icmp eq i32 %i.v, %i.y
  %i.aa = zext i1 %i.z to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.aa, %bb.d ]
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define hidden void @stb_vorbis_close(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %setup_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vorbis_deinit(ptr noundef %0)
  %i.b = getelementptr i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.b, align 8
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %setup_free.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #61
  br label %setup_free.exit

setup_free.exit:                                  ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vorbis_deinit(ptr nofree noundef nonnull readonly %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 34 uses
  %.val120 = load ptr, ptr %i.a, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.val120, null
  br i1 %.not.i, label %bb.b, label %setup_free.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @free(ptr noundef %i.c) #61
  %.val118.pre248.pre = load ptr, ptr %i.a, align 8
  br label %setup_free.exit

setup_free.exit:                                  ; preds = %bb.a, %bb.b
  %.val118.pre248 = phi ptr [ %.val120, %bb.a ], [ %.val118.pre248.pre, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %setup_free.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = icmp eq ptr %.val118.pre248, null
  br i1 %i.h, label %.lr.ph.split, label %setup_free.exit124

.lr.ph.split:                                     ; preds = %.lr.ph, %setup_free.exit122
  %i.i = phi i32 [ %i.m, %setup_free.exit122 ], [ %i.e, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %setup_free.exit122 ], [ 0, %.lr.ph ] ; 2 uses
  %.val119 = load ptr, ptr %i.a, align 8
  %.not.i121 = icmp eq ptr %.val119, null
  br i1 %.not.i121, label %bb.c, label %setup_free.exit122

bb.c:                                             ; preds = %.lr.ph.split
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @free(ptr noundef %i.l) #61
  %.pre = load i32, ptr %i.d, align 8
  br label %setup_free.exit122

setup_free.exit122:                               ; preds = %.lr.ph.split, %bb.c
  %i.m = phi i32 [ %i.i, %.lr.ph.split ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph.split, label %._crit_edge.loopexit, !llvm.loop !1021

._crit_edge.loopexit:                             ; preds = %setup_free.exit122
  %.val118.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %setup_free.exit
  %.val118 = phi ptr [ %.val118.pre248, %setup_free.exit ], [ %.val118.pre, %._crit_edge.loopexit ]
  %.not.i123 = icmp eq ptr %.val118, null
  br i1 %.not.i123, label %bb.d, label %setup_free.exit124

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @free(ptr noundef %i.q) #61
  br label %setup_free.exit124

setup_free.exit124:                               ; preds = %.lr.ph, %._crit_edge, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %.loopexit, label %.preheader207

.preheader207:                                    ; preds = %setup_free.exit124
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph213, label %.loopexit

.lr.ph213:                                        ; preds = %.preheader207
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph213, %setup_free.exit130
  %indvars.iv233 = phi i64 [ 0, %.lr.ph213 ], [ %indvars.iv.next234, %setup_free.exit130 ] ; 2 uses
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv233 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not97 = icmp eq ptr %i.aa, null
  %.val115.pr.pre254 = load ptr, ptr %i.a, align 8 ; 3 uses
  br i1 %.not97, label %setup_free.exit128, label %.preheader206

.preheader206:                                    ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 13 ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ad = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2120 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %.preheader206
  %i.aj = icmp eq ptr %.val115.pr.pre254, null
  br i1 %i.aj, label %.lr.ph210.split, label %setup_free.exit130

.lr.ph210.split:                                  ; preds = %.lr.ph210, %setup_free.exit126
  %i.ak = phi i8 [ %i.ap, %setup_free.exit126 ], [ %i.ad, %.lr.ph210 ]
  %i.al = phi ptr [ %i.aq, %setup_free.exit126 ], [ %i.ac, %.lr.ph210 ]
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %setup_free.exit126 ], [ 0, %.lr.ph210 ] ; 2 uses
  %.val117 = load ptr, ptr %i.a, align 8
  %.not.i125 = icmp eq ptr %.val117, null
  br i1 %.not.i125, label %bb.f, label %setup_free.exit126

bb.f:                                             ; preds = %.lr.ph210.split
  %i.am = load ptr, ptr %i.z, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv230
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void @free(ptr noundef %i.ao) #61
  %.pre250 = load ptr, ptr %i.w, align 8
  %.pre251 = load i8, ptr %i.ab, align 1
  br label %setup_free.exit126

setup_free.exit126:                               ; preds = %.lr.ph210.split, %bb.f
  %i.ap = phi i8 [ %i.ak, %.lr.ph210.split ], [ %.pre251, %bb.f ] ; 2 uses
  %i.aq = phi ptr [ %i.al, %.lr.ph210.split ], [ %.pre250, %bb.f ] ; 2 uses
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.ar = zext i8 %i.ap to i64
  %i.as = getelementptr inbounds nuw [2120 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = icmp slt i64 %indvars.iv.next231, %i.av
  br i1 %i.aw, label %.lr.ph210.split, label %._crit_edge211.loopexit, !llvm.loop !1022

._crit_edge211.loopexit:                          ; preds = %setup_free.exit126
  %.val116.pre = load ptr, ptr %i.a, align 8
  br label %._crit_edge211

._crit_edge211:                                   ; preds = %._crit_edge211.loopexit, %.preheader206
  %.val116 = phi ptr [ %.val115.pr.pre254, %.preheader206 ], [ %.val116.pre, %._crit_edge211.loopexit ]
  %.not.i127 = icmp eq ptr %.val116, null
  br i1 %.not.i127, label %bb.g, label %setup_free.exit130

bb.g:                                             ; preds = %._crit_edge211
  %i.ax = load ptr, ptr %i.z, align 8
  tail call void @free(ptr noundef %i.ax) #61
  %.val115.pr.pre = load ptr, ptr %i.a, align 8
  br label %setup_free.exit128

setup_free.exit128:                               ; preds = %bb.g, %bb.e
  %.val115.pr = phi ptr [ %.val115.pr.pre, %bb.g ], [ %.val115.pr.pre254, %bb.e ]
  %.not.i129 = icmp eq ptr %.val115.pr, null
  br i1 %.not.i129, label %bb.h, label %setup_free.exit130

bb.h:                                             ; preds = %setup_free.exit128
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @free(ptr noundef %i.az) #61
  br label %setup_free.exit130

setup_free.exit130:                               ; preds = %.lr.ph210, %._crit_edge211, %setup_free.exit128, %bb.h
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.ba = load i32, ptr %i.t, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next234, %i.bb
  br i1 %i.bc, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %setup_free.exit130, %.preheader207, %setup_free.exit124
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.not93 = icmp eq ptr %i.be, null
  %.val108.pr.pre258 = load ptr, ptr %i.a, align 8 ; 4 uses
  br i1 %.not93, label %setup_free.exit142, label %.preheader205

.preheader205:                                    ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %.preheader205
  %i.bi = icmp eq ptr %.val108.pr.pre258, null
  br i1 %i.bi, label %.lr.ph215.split, label %setup_free.exit146

.lr.ph215.split:                                  ; preds = %.lr.ph215, %setup_free.exit140
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %setup_free.exit140 ], [ 0, %.lr.ph215 ] ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw [2120 x i8], ptr %i.bj, i64 %indvars.iv236 ; 5 uses
  %.val114 = load ptr, ptr %i.a, align 8
  %.not.i131 = icmp eq ptr %.val114, null
  br i1 %.not.i131, label %setup_free.exit132, label %setup_free.exit140

setup_free.exit132:                               ; preds = %.lr.ph215.split
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @free(ptr noundef %i.bm) #61
  %.val113.pr = load ptr, ptr %i.a, align 8
  %.not.i133 = icmp eq ptr %.val113.pr, null
  br i1 %.not.i133, label %setup_free.exit134, label %setup_free.exit140

setup_free.exit134:                               ; preds = %setup_free.exit132
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
end_hunk_2
begin_hunk_3_@stb_vorbis_get_frame_float:bb.a
bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr %i.ad, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.021
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @stb_vorbis_seek_start(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load i8, ptr %i.d, align 4
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.f, align 4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i32, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not31.i = icmp eq ptr %i.k, null
  br i1 %.not31.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.h to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not33.i = icmp ult ptr %i.o, %i.q
  br i1 %.not33.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.j, align 8
  store i32 1, ptr %i.i, align 8
  br label %set_file_offset.exit

bb.f:                                             ; preds = %bb.d
  store ptr %i.o, ptr %i.j, align 8
  br label %set_file_offset.exit

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = add i32 %i.s, %i.h                       ; 2 uses
  %i.u = icmp ult i32 %i.t, %i.h
  %i.v = icmp slt i32 %i.h, 0
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.i, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = zext i32 %i.t to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i64 [ 2147483647, %bb.h ], [ %i.w, %bb.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @fseek(ptr noundef %i.y, i64 noundef %.0.i, i32 noundef 0)
  %.not32.i = icmp eq i32 %i.z, 0
  br i1 %.not32.i, label %set_file_offset.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  %i.ab = load i32, ptr %i.r, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call i32 @fseek(ptr noundef %i.aa, i64 noundef %i.ac, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit

set_file_offset.exit:                             ; preds = %bb.e, %bb.f, %bb.j, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1765
  store i8 1, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1768
  store i32 -1, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.ah = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b) ; 2 uses
  %.not.i8 = icmp eq i32 %i.ah, 0
  br i1 %.not.i8, label %vorbis_pump_first_frame.exit, label %bb.l

bb.l:                                             ; preds = %set_file_offset.exit
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = load i32, ptr %i.b, align 4
  %i.al = tail call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) ; 0 uses
  br label %vorbis_pump_first_frame.exit

vorbis_pump_first_frame.exit:                     ; preds = %set_file_offset.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.m

bb.m:                                             ; preds = %vorbis_pump_first_frame.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.ah, %vorbis_pump_first_frame.exit ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @set_file_offset(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i8, ptr %i.a, align 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not31 = icmp eq ptr %i.e, null
  br i1 %.not31, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not33 = icmp ult ptr %i.i, %i.k
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.d, align 8
  store i32 1, ptr %i.c, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.d, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = add i32 %i.m, %1                         ; 2 uses
  %i.o = icmp ult i32 %i.n, %1
  %i.p = icmp slt i32 %1, 0
  %or.cond = or i1 %i.p, %i.o
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.c, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = zext i32 %i.n to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ 2147483647, %bb.g ], [ %i.q, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 @fseek(ptr noundef %i.s, i64 noundef %.0, i32 noundef 0)
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = load i32, ptr %i.l, align 8
  %i.w = zext i32 %i.v to i64
  %i.x = tail call i32 @fseek(ptr noundef %i.u, i64 noundef %i.w, i32 noundef 2) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.a, %bb.j, %bb.e, %bb.d
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, -1) i32 @stb_vorbis_stream_length_in_samples(ptr nofree noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [6 x i8], align 1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 7 uses
  %i.e = load i8, ptr %i.d, align 4
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 2, ptr %i.f, align 4
  br label %bb.bl

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.d, label %bb.bk

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  br label %stb_vorbis_get_file_offset.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 @ftell(ptr noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 8
  %i.v = trunc i64 %i.s to i32
  %i.w = sub i32 %i.v, %i.u
  br label %stb_vorbis_get_file_offset.exit

stb_vorbis_get_file_offset.exit:                  ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.w, %bb.f ], [ %i.p, %bb.e ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp ugt i32 %i.y, 65535
  br i1 %i.z, label %bb.g, label %stb_vorbis_get_file_offset.exit._crit_edge

stb_vorbis_get_file_offset.exit._crit_edge:       ; preds = %stb_vorbis_get_file_offset.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.g:                                             ; preds = %stb_vorbis_get_file_offset.exit
  %i.aa = add i32 %i.y, -65536
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load i32, ptr %i.ab, align 8
  %spec.select113 = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ac)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %stb_vorbis_get_file_offset.exit._crit_edge
  %.041 = phi i32 [ %spec.select113, %bb.g ], [ %.pre, %stb_vorbis_get_file_offset.exit._crit_edge ] ; 4 uses
  %i.ad = load i8, ptr %i.d, align 4
  %.not.i53 = icmp eq i8 %i.ad, 0
  br i1 %.not.i53, label %bb.i, label %set_file_offset.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.i, align 8
  %.not31.i = icmp eq ptr %i.af, null
  br i1 %.not31.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i32 %.041 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not33.i = icmp ult ptr %i.aj, %i.al
  br i1 %.not33.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %i.i, align 8
  store i32 1, ptr %i.ae, align 8
  br label %set_file_offset.exit

bb.l:                                             ; preds = %bb.j
  store ptr %i.aj, ptr %i.i, align 8
  br label %set_file_offset.exit

bb.m:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = add i32 %i.an, %.041                    ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %.041
  %i.aq = icmp slt i32 %.041, 0
  %or.cond.i = or i1 %i.aq, %i.ap
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.ae, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.ao to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i54 = phi i64 [ 2147483647, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 @fseek(ptr noundef %i.at, i64 noundef %.0.i54, i32 noundef 0)
  %.not32.i = icmp eq i32 %i.au, 0
  br i1 %.not32.i, label %set_file_offset.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 1, ptr %i.ae, align 8
  %i.av = load ptr, ptr %i.as, align 8
  %i.aw = load i32, ptr %i.am, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call i32 @fseek(ptr noundef %i.av, i64 noundef %i.ax, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit

set_file_offset.exit:                             ; preds = %bb.h, %bb.k, %bb.l, %bb.p, %bb.q
  %i.az = call fastcc i32 @vorbis_find_page(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not48 = icmp eq i32 %i.az, 0
  br i1 %.not48, label %bb.r, label %bb.s

bb.r:                                             ; preds = %set_file_offset.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 36, ptr %i.ba, align 4
  store i32 -1, ptr %i.g, align 4
  br label %bb.ba

bb.s:                                             ; preds = %set_file_offset.exit
  %i.bb = load i8, ptr %i.d, align 4
  %.not.i55 = icmp eq i8 %i.bb, 0
  br i1 %.not.i55, label %bb.t, label %stb_vorbis_get_file_offset.exit58

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not7.i57 = icmp eq ptr %i.bc, null
  br i1 %.not7.i57, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32
  br label %stb_vorbis_get_file_offset.exit58

bb.v:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call i64 @ftell(ptr noundef %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bl to i32
  %i.bp = sub i32 %i.bo, %i.bn
  br label %stb_vorbis_get_file_offset.exit58

stb_vorbis_get_file_offset.exit58:                ; preds = %bb.s, %bb.u, %bb.v
  %.0.i56 = phi i32 [ %i.bp, %bb.v ], [ %i.bi, %bb.u ], [ 0, %bb.s ] ; 2 uses
  %i.bq = load i32, ptr %i.b, align 4
  %.not4989 = icmp eq i32 %i.bq, 0
  br i1 %.not4989, label %.lr.ph, label %set_file_offset.exit66._crit_edge

.lr.ph:                                           ; preds = %stb_vorbis_get_file_offset.exit58
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %stb_vorbis_get_file_offset.exit70
  %.04090 = phi i32 [ %.0.i56, %.lr.ph ], [ %.0.i68, %stb_vorbis_get_file_offset.exit70 ]
  %i.bw = load i32, ptr %i.a, align 4             ; 4 uses
  %i.bx = load i8, ptr %i.d, align 4
  %.not.i59 = icmp eq i8 %i.bx, 0
  br i1 %.not.i59, label %bb.x, label %set_file_offset.exit66

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.br, align 8
  %i.by = load ptr, ptr %i.i, align 8
  %.not31.i61 = icmp eq ptr %i.by, null
  br i1 %.not31.i61, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_3
begin_hunk_4_@getn:bb.a
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @get32(ptr nofree noundef captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11.i = icmp ult ptr %i.b, %i.d
  br i1 %.not11.i, label %get8.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.e, align 8
  br label %get8.exit

get8.exit.thread:                                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  %i.h = zext i8 %i.g to i32
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @fgetc(ptr noundef %i.j)   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.m, align 8
  br label %get8.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i32 %i.k, 255
  br label %get8.exit

get8.exit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.1.i.ph = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %bb.i, label %get8.exit._crit_edge

get8.exit._crit_edge:                             ; preds = %get8.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.g:                                             ; preds = %get8.exit._crit_edge, %get8.exit.thread
  %i.o = phi ptr [ %i.d, %get8.exit.thread ], [ %.pre, %get8.exit._crit_edge ] ; 2 uses
  %i.p = phi i32 [ %i.h, %get8.exit.thread ], [ %.1.i.ph, %get8.exit._crit_edge ] ; 2 uses
  %i.q = phi ptr [ %i.f, %get8.exit.thread ], [ %.pr, %get8.exit._crit_edge ] ; 3 uses
  %.not11.i8 = icmp ult ptr %i.q, %i.o
  br i1 %.not11.i8, label %get8.exit10.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.r, align 8
  br label %get8.exit10

get8.exit10.thread:                               ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.s, ptr %i.a, align 8
  %i.t = load i8, ptr %i.q, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = add nuw nsw i32 %i.v, %i.p
  br label %bb.l

bb.i:                                             ; preds = %get8.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @fgetc(ptr noundef %i.y)   ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.ab, align 8
  br label %get8.exit10

bb.k:                                             ; preds = %bb.i
  %i.ac = shl i32 %i.z, 8
  %i.ad = and i32 %i.ac, 65280
  %i.ae = or disjoint i32 %i.ad, %.1.i.ph
  br label %get8.exit10

get8.exit10:                                      ; preds = %bb.h, %bb.j, %bb.k
  %.1.i9.ph = phi i32 [ %i.ae, %bb.k ], [ %.1.i.ph, %bb.j ], [ %i.p, %bb.h ] ; 3 uses
  %.pr21 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not.i11 = icmp eq ptr %.pr21, null
  br i1 %.not.i11, label %bb.n, label %get8.exit10._crit_edge

get8.exit10._crit_edge:                           ; preds = %get8.exit10
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8
  br label %bb.l

bb.l:                                             ; preds = %get8.exit10._crit_edge, %get8.exit10.thread
  %i.af = phi ptr [ %i.o, %get8.exit10.thread ], [ %.pre29, %get8.exit10._crit_edge ] ; 2 uses
  %i.ag = phi i32 [ %i.w, %get8.exit10.thread ], [ %.1.i9.ph, %get8.exit10._crit_edge ] ; 2 uses
  %i.ah = phi ptr [ %i.s, %get8.exit10.thread ], [ %.pr21, %get8.exit10._crit_edge ] ; 3 uses
  %.not11.i12 = icmp ult ptr %i.ah, %i.af
  br i1 %.not11.i12, label %get8.exit14.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.ai, align 8
  br label %get8.exit14

get8.exit14.thread:                               ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = load i8, ptr %i.ah, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 16
  %i.an = add nuw nsw i32 %i.am, %i.ag
  br label %bb.q

bb.n:                                             ; preds = %get8.exit10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @fgetc(ptr noundef %i.ap) ; 2 uses
  %i.ar = icmp eq i32 %i.aq, -1
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.as, align 8
  br label %get8.exit14

bb.p:                                             ; preds = %bb.n
  %i.at = shl i32 %i.aq, 16
  %i.au = and i32 %i.at, 16711680
  %i.av = or disjoint i32 %i.au, %.1.i9.ph
  br label %get8.exit14

get8.exit14:                                      ; preds = %bb.m, %bb.o, %bb.p
  %.ph24 = phi i32 [ %i.av, %bb.p ], [ %.1.i9.ph, %bb.o ], [ %i.ag, %bb.m ] ; 3 uses
  %.pr25 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %.pr25, null
  br i1 %.not.i15, label %bb.t, label %get8.exit14._crit_edge

get8.exit14._crit_edge:                           ; preds = %get8.exit14
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre31 = load ptr, ptr %.phi.trans.insert30, align 8
  br label %bb.q

bb.q:                                             ; preds = %get8.exit14._crit_edge, %get8.exit14.thread
  %i.aw = phi ptr [ %i.af, %get8.exit14.thread ], [ %.pre31, %get8.exit14._crit_edge ]
  %i.ax = phi i32 [ %i.an, %get8.exit14.thread ], [ %.ph24, %get8.exit14._crit_edge ] ; 2 uses
  %i.ay = phi ptr [ %i.aj, %get8.exit14.thread ], [ %.pr25, %get8.exit14._crit_edge ] ; 3 uses
  %.not11.i16 = icmp ult ptr %i.ay, %i.aw
  br i1 %.not11.i16, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.az, align 8
  br label %get8.exit18

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %i.a, align 8
  %i.bb = load i8, ptr %i.ay, align 1
  br label %get8.exit18

bb.t:                                             ; preds = %get8.exit14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i32 @fgetc(ptr noundef %i.bd) ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 1, ptr %i.bg, align 8
  br label %get8.exit18

bb.v:                                             ; preds = %bb.t
  %i.bh = trunc i32 %i.be to i8
  br label %get8.exit18

get8.exit18:                                      ; preds = %bb.r, %bb.s, %bb.u, %bb.v
  %i.bi = phi i32 [ %i.ax, %bb.r ], [ %i.ax, %bb.s ], [ %.ph24, %bb.u ], [ %.ph24, %bb.v ]
  %.1.i17 = phi i8 [ 0, %bb.r ], [ %i.bb, %bb.s ], [ 0, %bb.u ], [ %i.bh, %bb.v ]
  %i.bj = zext i8 %.1.i17 to i32
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = add nuw nsw i32 %i.bk, %i.bi
  ret i32 %i.bl
}

; Function Attrs: nofree nounwind uwtable
define hidden float @stb_vorbis_stream_length_in_seconds(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @stb_vorbis_stream_length_in_samples(ptr noundef %0)
  %i.b = uitofp i32 %i.a to float
  %i.c = load i32, ptr %0, align 8
  %i.d = uitofp i32 %i.c to float
  %i.e = fdiv float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: nounwind uwtable
define hidden ptr @stb_vorbis_open_file_section(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.stb_vorbis, align 8         ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %5, i8 0, i64 1904, i1 false)
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %vorbis_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, -8                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 148
  store i32 %i.g, ptr %i.h, align 4
  br label %vorbis_init.exit

vorbis_init.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 156 ; 2 uses
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 1808
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %0, ptr %i.o, align 8
  %i.p = tail call i64 @ftell(ptr noundef %0)
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i32 %4, ptr %i.s, align 8
  store i32 %1, ptr %i.n, align 4
  %i.t = call fastcc i32 @start_decoder(ptr noundef %5)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %vorbis_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %vorbis_init.exit
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, 1904
  store i32 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1904                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.ab, %i.ad
  br i1 %i.ae, label %vorbis_alloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af
  store i32 %i.ab, ptr %i.z, align 8
  br label %vorbis_alloc.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = call noalias dereferenceable_or_null(1904) ptr @malloc(i64 noundef 1904) #74
  br label %vorbis_alloc.exit

vorbis_alloc.exit:                                ; preds = %bb.e, %bb.f
  %.1.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.ag, %bb.e ] ; 5 uses
  %.not13 = icmp eq ptr %.1.i.i, null
  br i1 %.not13, label %vorbis_alloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %vorbis_alloc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1904) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(1904) %5, i64 1904, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.ai = call fastcc i32 @vorbis_decode_packet(ptr noundef nonnull %.1.i.i, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %.not.i15 = icmp eq i32 %i.ai, 0
  br i1 %.not.i15, label %vorbis_pump_first_frame.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load i32, ptr %i.a, align 4
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = load i32, ptr %i.b, align 4
  %i.am = call fastcc i32 @vorbis_finish_frame(ptr noundef nonnull %.1.i.i, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.al) ; 0 uses
  br label %vorbis_pump_first_frame.exit

vorbis_pump_first_frame.exit:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.k

vorbis_alloc.exit.thread:                         ; preds = %bb.d, %vorbis_alloc.exit, %vorbis_init.exit
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vorbis_alloc.exit.thread
  %i.an = load i32, ptr %i.j, align 4
  store i32 %i.an, ptr %2, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %vorbis_alloc.exit.thread
  call fastcc void @vorbis_deinit(ptr noundef %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vorbis_pump_first_frame.exit
  %.0 = phi ptr [ %.1.i.i, %vorbis_pump_first_frame.exit ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @stb_vorbis_open_file(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @ftell(ptr noundef %0)     ; 2 uses
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.c = tail call i64 @ftell(ptr noundef %0)
  %i.d = and i64 %i.a, 4294967295
  %i.e = sub i64 %i.c, %i.a
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.d, i32 noundef 0) ; 0 uses
  %i.h = tail call ptr @stb_vorbis_open_file_section(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.f)
  ret ptr %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define hidden ptr @stb_vorbis_open_filename(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.170) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 2 uses
  %i.c = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.d = tail call i64 @ftell(ptr noundef nonnull %i.a)
  %i.e = and i64 %i.b, 4294967295
  %i.f = sub i64 %i.d, %i.b
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.e, i32 noundef 0) ; 0 uses
  %i.i = tail call ptr @stb_vorbis_open_file_section(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %1, ptr noundef readonly %2, i32 noundef %i.g)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 6, ptr %1, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @stb_vorbis_open_memory(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.stb_vorbis, align 8         ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 10, ptr %2, align 4
  br label %bb.o

bb.d:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@WaveCopy:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %i.r, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @WaveCrop(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = icmp slt i32 %1, %2
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  %.not = icmp ugt i32 %2, %i.c
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw nsw i32 %2, %1                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = mul i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = mul i32 %i.g, %i.i
  %i.k = lshr i32 %i.j, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #74 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i32, ptr %i.e, align 4
  %i.q = load i32, ptr %i.h, align 8
  %i.r = mul i32 %i.q, %i.p                       ; 2 uses
  %i.s = mul i32 %i.r, %1
  %i.t = lshr i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = mul i32 %i.r, %i.d
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.v, i64 %i.y, i1 false)
  tail call void @free(ptr noundef %i.o) #61
  store ptr %i.m, ptr %i.n, align 8
  store i32 %i.d, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.280) #61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @LoadWaveSamples(ptr nofree noundef readonly byval(%struct.Wave) align 8 captures(none) %0) local_unnamed_addr #49 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = mul i32 %i.c, %i.a                       ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #74 ; 6 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 5 uses
  switch i32 %i.i, label %._crit_edge [
    i32 8, label %.lr.ph.split.us.preheader
    i32 16, label %.lr.ph.split.us13.preheader
    i32 32, label %.lr.ph.split.us15.preheader
  ]

.lr.ph.split.us13.preheader:                      ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.split.us13.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us13.preheader
  %n.vec = and i64 %i.e, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %wide.load = load <4 x i16>, ptr %i.l, align 2
  %wide.load29 = load <4 x i16>, ptr %i.m, align 2
  %i.n = sitofp <4 x i16> %wide.load to <4 x float>
  %i.o = sitofp <4 x i16> %wide.load29 to <4 x float>
  %i.p = fmul nnan <4 x float> %i.n, splat (float f0x38000000)
  %i.q = fmul nnan <4 x float> %i.o, splat (float f0x38000000)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %i.p, ptr %i.r, align 4
  store <4 x float> %i.q, ptr %i.s, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us13.preheader43

.lr.ph.split.us13.preheader43:                    ; preds = %.lr.ph.split.us13.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.us13.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us13

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check31 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check31, label %.lr.ph.split.us.preheader42, label %vector.ph32

vector.ph32:                                      ; preds = %.lr.ph.split.us.preheader
  %n.vec33 = and i64 %i.e, 4294967288             ; 3 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %index35 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %wide.load36 = load <4 x i8>, ptr %i.u, align 1
  %wide.load37 = load <4 x i8>, ptr %i.v, align 1
  %i.w = zext <4 x i8> %wide.load36 to <4 x i32>
  %i.x = zext <4 x i8> %wide.load37 to <4 x i32>
  %i.y = add nsw <4 x i32> %i.w, splat (i32 -128)
  %i.z = add nsw <4 x i32> %i.x, splat (i32 -128)
  %i.aa = sitofp <4 x i32> %i.y to <4 x float>
  %i.ab = sitofp <4 x i32> %i.z to <4 x float>
  %i.ac = fmul nnan <4 x float> %i.aa, splat (float 7.812500e-03)
  %i.ad = fmul nnan <4 x float> %i.ab, splat (float 7.812500e-03)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> %i.ac, ptr %i.ae, align 4
  store <4 x float> %i.ad, ptr %i.af, align 4
  %index.next38 = add nuw i64 %index35, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ag, label %middle.block39, label %vector.body34, !llvm.loop !1156

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %n.vec33, %i.e
  br i1 %cmp.n40, label %._crit_edge, label %.lr.ph.split.us.preheader42

.lr.ph.split.us.preheader42:                      ; preds = %.lr.ph.split.us.preheader, %middle.block39
  %indvars.iv22.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec33, %middle.block39 ]
  br label %.lr.ph.split.us

.lr.ph.split.us15.preheader:                      ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %i.k, i64 %i.f, i1 false)
  br label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader42, %.lr.ph.split.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph.split.us ], [ %indvars.iv22.ph, %.lr.ph.split.us.preheader42 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv22
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -128
  %i.al = sitofp i32 %i.ak to float
  %i.am = fmul nnan float %i.al, 7.812500e-03
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv22
  store float %i.am, ptr %i.an, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, %i.e
  br i1 %exitcond26.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1157

.lr.ph.split.us13:                                ; preds = %.lr.ph.split.us13.preheader43, %.lr.ph.split.us13
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us13 ], [ %indvars.iv.ph, %.lr.ph.split.us13.preheader43 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = sitofp i16 %i.ap to float
  %i.ar = fmul nnan float %i.aq, f0x38000000
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.ar, ptr %i.as, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us13, !llvm.loop !1158

._crit_edge:                                      ; preds = %.lr.ph.split.us13, %.lr.ph.split.us, %middle.block, %middle.block39, %.lr.ph, %.lr.ph.split.us15.preheader, %bb.a
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadWaveSamples(ptr noundef captures(none) %0) local_unnamed_addr #43 {
bb.a:
  tail call void @free(ptr noundef %0) #61
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadMusicStream(ptr dead_on_unwind noalias nofree writable sret(%struct.Music) align 8 captures(none) initializes((0, 56)) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.AudioStream, align 8        ; 4 uses
  %3 = alloca %struct.AudioStream, align 8        ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.c = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.235) #61
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(408) ptr @calloc(i64 noundef 1, i64 noundef 408) #80 ; 15 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.170) ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %drwav_fopen.exit.i.i

drwav_fopen.exit.i.i:                             ; preds = %bb.c
  %i.h = icmp eq ptr %i.d, null
  br i1 %i.h, label %.sink.split.i.i.i, label %bb.d

bb.d:                                             ; preds = %drwav_fopen.exit.i.i
  store ptr @drwav__on_read_stdio, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @drwav__on_seek_stdio, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @drwav__on_tell_stdio, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i.i.i.i, align 8
  %.sroa.6.0..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i.i.i.i, align 8
  %.sroa.7.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i.i.i.i, align 8
  %i.l = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %i.d, ptr noundef readonly null, ptr noundef null, i32 noundef 0)
  %.not.not15.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.not15.i.i.i, label %.sink.split.i.i.i, label %drwav_init_file.exit

.sink.split.i.i.i:                                ; preds = %bb.d, %drwav_fopen.exit.i.i
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.i

drwav_init_file.exit:                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 122
  %i.q = load i16, ptr %i.p, align 2              ; 2 uses
  %i.r = icmp eq i16 %i.q, 24
  %narrow = select i1 %i.r, i16 16, i16 %i.q      ; 3 uses
  %spec.store.select = zext i16 %narrow to i32    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.v = load i16, ptr %i.u, align 8              ; 2 uses
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = icmp eq i16 %narrow, 8
  %i.y = icmp eq i16 %narrow, 16
  %i.z = select i1 %i.y, i32 2, i32 5
  %i.aa = select i1 %i.x, i32 1, i32 %i.z
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1169
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1169 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %drwav_init_file.exit
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1169
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 4)
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1169
  %i.ag = mul i32 %spec.store.select.i, %i.af
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1169
  %i.ai = udiv i32 %i.ah, 30
  %i.aj = mul i32 %i.ag, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %drwav_init_file.exit
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.ac, %drwav_init_file.exit ]
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 %i.ab)
  %i.al = shl i32 %spec.select.i, 1
  %i.am = tail call ptr @LoadAudioBuffer(i32 noundef %i.aa, i32 noundef %i.w, i32 noundef %i.t, i32 noundef %i.al, i32 noundef 1), !noalias !1169 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 358
  store i8 1, ptr %i.an, align 2, !noalias !1169
  %i.ao = icmp eq i16 %i.v, 1
  %i.ap = select i1 %i.ao, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.t, i32 noundef %spec.store.select, ptr noundef nonnull %i.ap) #61, !noalias !1169
  br label %LoadAudioStream.exit

bb.h:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1169
  br label %LoadAudioStream.exit

LoadAudioStream.exit:                             ; preds = %bb.g, %bb.h
  store ptr %i.am, ptr %0, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.t, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %spec.store.select, ptr %.sroa.693.0..sroa_idx, align 4
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %.sroa.794.0..sroa_idx, align 8
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.895.0..sroa_idx, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.au, align 4
  br label %.thread102

bb.i:                                             ; preds = %.sink.split.i.i.i, %bb.b, %bb.c
  tail call void @free(ptr noundef %i.d) #61
  br label %.thread

bb.j:                                             ; preds = %bb.a
  %i.av = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.238) #61
  br i1 %i.av, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call noalias ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.170) ; 6 uses
  %.not.i56 = icmp eq ptr %i.aw, null
  br i1 %.not.i56, label %.thread, label %stb_vorbis_open_filename.exit

stb_vorbis_open_filename.exit:                    ; preds = %bb.k
  %i.ax = tail call i64 @ftell(ptr noundef nonnull %i.aw) ; 2 uses
  %i.ay = tail call i32 @fseek(ptr noundef nonnull %i.aw, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.az = tail call i64 @ftell(ptr noundef nonnull %i.aw)
  %i.ba = and i64 %i.ax, 4294967295
  %i.bb = sub i64 %i.az, %i.ax
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = tail call i32 @fseek(ptr noundef nonnull %i.aw, i64 noundef %i.ba, i32 noundef 0) ; 0 uses
  %i.be = tail call ptr @stb_vorbis_open_file_section(ptr noundef nonnull %i.aw, i32 noundef 1, ptr noundef null, ptr noundef readonly null, i32 noundef %i.bc) ; 4 uses
  %.not54.not = icmp eq ptr %i.be, null
  br i1 %.not54.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %stb_vorbis_open_filename.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !1170 ; 3 uses
  %i.bj = load i32, ptr %i.be, align 8, !noalias !1170 ; 3 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1171
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1171 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1171
  %spec.store.select.i59 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 4)
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1171
  %i.bp = mul i32 %spec.store.select.i59, %i.bo
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1171
  %i.br = udiv i32 %i.bq, 30
  %i.bs = mul i32 %i.bp, %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bt = phi i32 [ %i.bs, %bb.m ], [ %i.bl, %bb.l ]
  %spec.select.i57 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.bk)
  %i.bu = shl i32 %spec.select.i57, 1
  %i.bv = tail call ptr @LoadAudioBuffer(i32 noundef 2, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bu, i32 noundef 1), !noalias !1171 ; 3 uses
  %.not.i58 = icmp eq ptr %i.bv, null
  br i1 %.not.i58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 358
  store i8 1, ptr %i.bw, align 2, !noalias !1171
  %i.bx = icmp eq i32 %i.bi, 1
  %i.by = select i1 %i.bx, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.bj, i32 noundef 16, ptr noundef nonnull %i.by) #61, !noalias !1171
  br label %LoadAudioStream.exit60

bb.p:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1171
  br label %LoadAudioStream.exit60

LoadAudioStream.exit60:                           ; preds = %bb.o, %bb.p
  store ptr %i.bv, ptr %0, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 16, ptr %.sroa.682.0..sroa_idx, align 4
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bi, ptr %.sroa.783.0..sroa_idx, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.884.0..sroa_idx, align 4
  %4 = load ptr, ptr %i.bg, align 8
  %i.bz = tail call i32 @stb_vorbis_stream_length_in_samples(ptr noundef %4)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.cb, align 4
  br label %.thread102

bb.q:                                             ; preds = %bb.j
  %i.cc = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.241) #61
  br i1 %i.cc, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.cd = tail call noalias dereferenceable_or_null(32376) ptr @calloc(i64 noundef 1, i64 noundef 32376) #80 ; 9 uses
  %i.ce = tail call i32 @drmp3_init_file(ptr noundef %i.cd, ptr noundef %1, ptr noundef null)
  %.not53.not = icmp eq i32 %i.ce, 0
  br i1 %.not53.not, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cd, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 22932
  %i.ci = load i32, ptr %i.ch, align 4            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 22928
  %i.ck = load i32, ptr %i.cj, align 8            ; 3 uses
  %i.cl = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1172
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1172 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1172
  %spec.store.select.i63 = tail call i32 @llvm.smin.i32(i32 %i.co, i32 4)
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1172
  %i.cq = mul i32 %spec.store.select.i63, %i.cp
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1172
  %i.cs = udiv i32 %i.cr, 30
  %i.ct = mul i32 %i.cq, %i.cs
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cu = phi i32 [ %i.ct, %bb.t ], [ %i.cm, %bb.s ]
  %spec.select.i61 = tail call i32 @llvm.umax.i32(i32 %i.cu, i32 %i.cl)
  %i.cv = shl i32 %spec.select.i61, 1
  %i.cw = tail call ptr @LoadAudioBuffer(i32 noundef 5, i32 noundef %i.ck, i32 noundef %i.ci, i32 noundef %i.cv, i32 noundef 1), !noalias !1172 ; 3 uses
  %.not.i62 = icmp eq ptr %i.cw, null
  br i1 %.not.i62, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 358
  store i8 1, ptr %i.cx, align 2, !noalias !1172
  %i.cy = icmp eq i32 %i.ck, 1
  %i.cz = select i1 %i.cy, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.ci, i32 noundef 32, ptr noundef nonnull %i.cz) #61, !noalias !1172
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1172
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.cw, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ci, ptr %.sroa.575.0..sroa_idx, align 8
  %.sroa.676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %.sroa.676.0..sroa_idx, align 4
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ck, ptr %.sroa.777.0..sroa_idx, align 8
  %.sroa.878.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.878.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 32296
  %i.db = load i64, ptr %i.da, align 8            ; 3 uses
  %.not.i65 = icmp eq i64 %i.db, -1
  br i1 %.not.i65, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 32284
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %.not14.i = icmp ult i64 %i.db, %i.de
  %i.df = select i1 %.not14.i, i64 0, i64 %i.de
  %spec.select21.i = sub nuw i64 %i.db, %i.df     ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32288
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %.not15.i = icmp ult i64 %spec.select21.i, %i.di
  %i.dj = select i1 %.not15.i, i64 0, i64 %i.di
  %spec.select22.i = sub nuw i64 %spec.select21.i, %i.dj
  br label %drmp3_get_pcm_frame_count.exit

bb.z:                                             ; preds = %bb.x
  %i.dk = call i32 @drmp3_get_mp3_and_pcm_frame_count(ptr noundef nonnull %i.cd, ptr noundef null, ptr noundef nonnull %i.a)
  %.not13.i = icmp eq i32 %i.dk, 0
  %i.dl = load i64, ptr %i.a, align 8
  %spec.select.i67 = select i1 %.not13.i, i64 0, i64 %i.dl
  br label %drmp3_get_pcm_frame_count.exit

drmp3_get_pcm_frame_count.exit:                   ; preds = %bb.y, %bb.z
  %.0.i66 = phi i64 [ %spec.select22.i, %bb.y ], [ %spec.select.i67, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.dm = trunc i64 %.0.i66 to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.dm, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.do, align 4
  br label %.thread102

bb.aa:                                            ; preds = %bb.r
  tail call void @free(ptr noundef %i.cd) #61
  br label %.thread

bb.ab:                                            ; preds = %bb.q
  %i.dp = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.244) #61
  br i1 %i.dp, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.dq = tail call ptr @qoaplay_open(ptr noundef %1) ; 5 uses
  %.not52.not = icmp eq ptr %i.dq, null
  br i1 %.not52.not, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 5, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.dq, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4            ; 3 uses
  %i.dv = load i32, ptr %i.dq, align 8            ; 3 uses
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1173
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1173 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1173
  %spec.store.select.i70 = tail call i32 @llvm.smin.i32(i32 %i.dz, i32 4)
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1173
  %i.eb = mul i32 %spec.store.select.i70, %i.ea
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1173
  %i.ed = udiv i32 %i.ec, 30
  %i.ee = mul i32 %i.eb, %i.ed
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ef = phi i32 [ %i.ee, %bb.ae ], [ %i.dx, %bb.ad ]
  %spec.select.i68 = tail call i32 @llvm.umax.i32(i32 %i.ef, i32 %i.dw)
  %i.eg = shl i32 %spec.select.i68, 1
  %i.eh = tail call ptr @LoadAudioBuffer(i32 noundef 5, i32 noundef %i.dv, i32 noundef %i.du, i32 noundef %i.eg, i32 noundef 1), !noalias !1173 ; 3 uses
  %.not.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i69, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 358
  store i8 1, ptr %i.ei, align 2, !noalias !1173
  %i.ej = icmp eq i32 %i.dv, 1
  %i.ek = select i1 %i.ej, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.du, i32 noundef 32, ptr noundef nonnull %i.ek) #61, !noalias !1173
  br label %LoadAudioStream.exit71

bb.ah:                                            ; preds = %bb.af
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1173
  br label %LoadAudioStream.exit71

LoadAudioStream.exit71:                           ; preds = %bb.ag, %bb.ah
  store ptr %i.eh, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.du, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dv, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.em = load i32, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.em, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.eo, align 4
  br label %.thread102

bb.ai:                                            ; preds = %bb.ab
  %i.ep = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.281) #61
  br i1 %i.ep, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  store ptr null, ptr %i.b, align 8
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.er = call i32 @jar_xm_create_context_from_file(ptr noundef nonnull %i.b, i32 noundef %i.eq, ptr noundef %1)
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i72 = icmp eq ptr %i.et, null
  br i1 %.not.i72, label %.thread105, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void @free(ptr noundef %i.eu) #61
  br label %.thread105

bb.am:                                            ; preds = %bb.ai
  %i.ev = tail call zeroext i1 @IsFileExtension(ptr noundef %1, ptr noundef nonnull @.str.282) #61
  br i1 %i.ev, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.ew = tail call noalias dereferenceable_or_null(7072) ptr @calloc(i64 noundef 1, i64 noundef 7072) #80 ; 6 uses
  %i.ex = tail call zeroext i1 @jar_mod_init(ptr noundef %i.ew) ; 0 uses
  %i.ey = tail call i64 @jar_mod_load_file(ptr noundef %i.ew, ptr noundef %1)
  %.not.not = icmp eq i64 %i.ey, 0
  br i1 %.not.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 7, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ew, ptr %i.fa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #61
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  call void @LoadAudioStream(ptr dead_on_unwind nonnull writable sret(%struct.AudioStream) align 8 %3, i32 noundef %i.fb, i32 noundef 16, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #61
  %i.fc = tail call i64 @jar_mod_max_samples(ptr noundef %i.ew)
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fd, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.ff, align 4
  br label %.thread102

bb.ap:                                            ; preds = %bb.an
  tail call void @jar_mod_unload(ptr noundef %i.ew)
  tail call void @free(ptr noundef %i.ew) #61
  br label %.thread

.critedge:                                        ; preds = %bb.am
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.283, ptr noundef %1) #61
  br label %.thread

.thread105:                                       ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.thread

bb.aq:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 6, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.fh, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 409
  store i8 0, ptr %i.fj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #61
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  call void @LoadAudioStream(ptr dead_on_unwind nonnull writable sret(%struct.AudioStream) align 8 %2, i32 noundef %i.fk, i32 noundef 32, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #61
  %i.fl = tail call i64 @jar_xm_get_remaining_samples(ptr noundef %i.fh)
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.fo, align 4
  tail call void @jar_xm_reset(ptr noundef %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.thread102

.thread:                                          ; preds = %bb.k, %stb_vorbis_open_filename.exit, %bb.ac, %bb.aa, %bb.ap, %bb.i, %.thread105, %.critedge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.284, ptr noundef %1) #61
  br label %bb.ar

.thread102:                                       ; preds = %LoadAudioStream.exit71, %drmp3_get_pcm_frame_count.exit, %LoadAudioStream.exit60, %LoadAudioStream.exit, %bb.ao, %bb.aq
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.285, ptr noundef %1) #61
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fq = load i32, ptr %i.fp, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.286, i32 noundef %i.fq) #61
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fs = load i32, ptr %i.fr, align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.287, i32 noundef %i.fs) #61
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load i32, ptr %i.ft, align 8            ; 3 uses
  %i.fv = icmp eq i32 %i.fu, 1
  %i.fw = icmp eq i32 %i.fu, 2
  %i.fx = select i1 %i.fw, ptr @.str.290, ptr @.str.291
  %i.fy = select i1 %i.fv, ptr @.str.289, ptr %i.fx
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.288, i32 noundef %i.fu, ptr noundef nonnull %i.fy) #61
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %6 = load i32, ptr %5, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.292, i32 noundef %6) #61
  br label %bb.ar

bb.ar:                                            ; preds = %.thread102, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadAudioStream(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.AudioStream) align 8 captures(none) initializes((0, 32)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.d, align 8
  %i.e = icmp eq i32 %2, 8
  %i.f = icmp eq i32 %2, 16
  %i.g = select i1 %i.f, i32 2, i32 5
  %i.h = select i1 %i.e, i32 1, i32 %i.g
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.l, i32 4)
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8
  %i.n = mul i32 %spec.store.select, %i.m
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.p = udiv i32 %i.o, 30
  %i.q = mul i32 %i.n, %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %i.q, %bb.b ], [ %i.j, %bb.a ]
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %i.i)
  %i.s = shl i32 %spec.select, 1
  %i.t = tail call ptr @LoadAudioBuffer(i32 noundef %i.h, i32 noundef %3, i32 noundef %1, i32 noundef %i.s, i32 noundef 1) ; 3 uses
  store ptr %i.t, ptr %0, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 358
  store i8 1, ptr %i.u, align 2
  %i.v = icmp eq i32 %3, 1
  %i.w = select i1 %i.v, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.w) #61
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @LoadMusicStreamFromMemory(ptr dead_on_unwind noalias nofree writable sret(%struct.Music) align 8 captures(none) initializes((0, 56)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.AudioStream, align 8        ; 4 uses
  %5 = alloca %struct.AudioStream, align 8        ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.235) #73
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.236) #73
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noalias dereferenceable_or_null(408) ptr @calloc(i64 noundef 1, i64 noundef 408) #80 ; 19 uses
  %i.h = icmp eq ptr %2, null
  %i.i = icmp eq i32 %3, 0
  %or.cond.i.i = or i1 %i.h, %i.i
  %i.j = icmp eq ptr %i.g, null
  %or.cond19.i.i = or i1 %or.cond.i.i, %i.j
  br i1 %or.cond19.i.i, label %drwav_init_memory.exit.thread, label %drwav_init_memory.exit

drwav_init_memory.exit:                           ; preds = %bb.c
  %i.k = sext i32 %3 to i64
  store ptr @drwav__on_read_memory, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @drwav__on_seek_memory, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @drwav__on_tell_memory, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.g, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @drwav__malloc_default, ptr %.sroa.5.0..sroa_idx36.i.i.i, align 8
  %.sroa.6.0..sroa_idx37.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @drwav__realloc_default, ptr %.sroa.6.0..sroa_idx37.i.i.i, align 8
  %.sroa.7.0..sroa_idx38.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @drwav__free_default, ptr %.sroa.7.0..sroa_idx38.i.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i64 %i.k, ptr %i.p, align 8
  %i.q = tail call fastcc i32 @drwav_init__internal(ptr noundef nonnull %i.g, ptr noundef null, ptr noundef null, i32 noundef 0)
  %.not90.not = icmp eq i32 %i.q, 0
  br i1 %.not90.not, label %drwav_init_memory.exit.thread, label %bb.d

bb.d:                                             ; preds = %drwav_init_memory.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 122
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %i.v = icmp eq i16 %i.u, 24
  %narrow = select i1 %i.v, i16 16, i16 %i.u      ; 3 uses
  %spec.store.select = zext i16 %narrow to i32    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.z = load i16, ptr %i.y, align 8              ; 2 uses
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = icmp eq i16 %narrow, 8
  %i.ac = icmp eq i16 %narrow, 16
  %i.ad = select i1 %i.ac, i32 2, i32 5
  %i.ae = select i1 %i.ab, i32 1, i32 %i.ad
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1184
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1184 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1184
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 4)
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1184
  %i.ak = mul i32 %spec.store.select.i, %i.aj
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1184
  %i.am = udiv i32 %i.al, 30
  %i.an = mul i32 %i.ak, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = phi i32 [ %i.an, %bb.e ], [ %i.ag, %bb.d ]
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.af)
  %i.ap = shl i32 %spec.select.i, 1
  %i.aq = tail call ptr @LoadAudioBuffer(i32 noundef %i.ae, i32 noundef %i.aa, i32 noundef %i.x, i32 noundef %i.ap, i32 noundef 1), !noalias !1184 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 358
  store i8 1, ptr %i.ar, align 2, !noalias !1184
  %i.as = icmp eq i16 %i.z, 1
  %i.at = select i1 %i.as, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.x, i32 noundef %spec.store.select, ptr noundef nonnull %i.at) #61, !noalias !1184
  br label %LoadAudioStream.exit

bb.h:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1184
  br label %LoadAudioStream.exit

LoadAudioStream.exit:                             ; preds = %bb.g, %bb.h
  store ptr %i.aq, ptr %0, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.x, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %spec.store.select, ptr %.sroa.6129.0..sroa_idx, align 4
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aa, ptr %.sroa.7130.0..sroa_idx, align 8
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.8131.0..sroa_idx, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.ay, align 4
  br label %.thread146

drwav_init_memory.exit.thread:                    ; preds = %bb.c, %drwav_init_memory.exit
  %i.az = tail call i32 @drwav_uninit(ptr noundef %i.g) ; 0 uses
  tail call void @free(ptr noundef %i.g) #61
  br label %.thread143

bb.i:                                             ; preds = %bb.b
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.238) #73
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.239) #73
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.be = tail call ptr @stb_vorbis_open_memory(ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null) ; 4 uses
  %.not89.not = icmp eq ptr %i.be, null
  br i1 %.not89.not, label %.thread143, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !1185 ; 3 uses
  %i.bj = load i32, ptr %i.be, align 8, !noalias !1185 ; 3 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1186
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1186 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1186
  %spec.store.select.i93 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 4)
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1186
  %i.bp = mul i32 %spec.store.select.i93, %i.bo
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1186
  %i.br = udiv i32 %i.bq, 30
  %i.bs = mul i32 %i.bp, %i.br
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bt = phi i32 [ %i.bs, %bb.m ], [ %i.bl, %bb.l ]
  %spec.select.i91 = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.bk)
  %i.bu = shl i32 %spec.select.i91, 1
  %i.bv = tail call ptr @LoadAudioBuffer(i32 noundef 2, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bu, i32 noundef 1), !noalias !1186 ; 3 uses
  %.not.i92 = icmp eq ptr %i.bv, null
  br i1 %.not.i92, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 358
  store i8 1, ptr %i.bw, align 2, !noalias !1186
  %i.bx = icmp eq i32 %i.bi, 1
  %i.by = select i1 %i.bx, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.bj, i32 noundef 16, ptr noundef nonnull %i.by) #61, !noalias !1186
  br label %LoadAudioStream.exit94

bb.p:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1186
  br label %LoadAudioStream.exit94

LoadAudioStream.exit94:                           ; preds = %bb.o, %bb.p
  store ptr %i.bv, ptr %0, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 16, ptr %.sroa.6118.0..sroa_idx, align 4
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.bi, ptr %.sroa.7119.0..sroa_idx, align 8
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.8120.0..sroa_idx, align 4
  %6 = load ptr, ptr %i.bg, align 8
  %i.bz = tail call i32 @stb_vorbis_stream_length_in_samples(ptr noundef %6)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.cb, align 4
  br label %.thread146

bb.q:                                             ; preds = %bb.j
  %i.cc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.241) #73
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.242) #73
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = tail call noalias dereferenceable_or_null(32376) ptr @calloc(i64 noundef 1, i64 noundef 32376) #80 ; 19 uses
  %i.ch = sext i32 %3 to i64
  %i.ci = icmp eq ptr %i.cg, null
  br i1 %i.ci, label %drmp3_uninit.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp eq ptr %2, null
  %i.ck = icmp eq i32 %3, 0
  %or.cond.i.i95 = or i1 %i.cj, %i.ck
  br i1 %or.cond.i.i95, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 32352
  store ptr %2, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 32360 ; 2 uses
  store i64 %i.ch, ptr %i.cm, align 8
  %i.cn = tail call fastcc i32 @drmp3_init_internal(ptr noundef %i.cg, ptr noundef nonnull @drmp3__on_read_memory, ptr noundef nonnull @drmp3__on_seek_memory, ptr noundef nonnull @drmp3__on_tell_memory, ptr noundef null, ptr noundef nonnull %i.cg, ptr noundef null, ptr noundef readonly null)
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 32256
  %i.cq = load i64, ptr %i.cp, align 8
  store i64 %i.cq, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 4, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cg, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 22932
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 22928
  %i.cw = load i32, ptr %i.cv, align 8            ; 3 uses
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1187
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1187 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1187
  %spec.store.select.i99 = tail call i32 @llvm.smin.i32(i32 %i.da, i32 4)
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1187
  %i.dc = mul i32 %spec.store.select.i99, %i.db
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1187
  %i.de = udiv i32 %i.dd, 30
  %i.df = mul i32 %i.dc, %i.de
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dg = phi i32 [ %i.df, %bb.w ], [ %i.cy, %bb.v ]
  %spec.select.i97 = tail call i32 @llvm.umax.i32(i32 %i.dg, i32 %i.cx)
  %i.dh = shl i32 %spec.select.i97, 1
  %i.di = tail call ptr @LoadAudioBuffer(i32 noundef 5, i32 noundef %i.cw, i32 noundef %i.cu, i32 noundef %i.dh, i32 noundef 1), !noalias !1187 ; 3 uses
  %.not.i98 = icmp eq ptr %i.di, null
  br i1 %.not.i98, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 358
  store i8 1, ptr %i.dj, align 2, !noalias !1187
  %i.dk = icmp eq i32 %i.cw, 1
  %i.dl = select i1 %i.dk, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.cu, i32 noundef 32, ptr noundef nonnull %i.dl) #61, !noalias !1187
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1187
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store ptr %i.di, ptr %0, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cu, ptr %.sroa.5111.0..sroa_idx, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %.sroa.6112.0..sroa_idx, align 4
  %.sroa.7113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.cw, ptr %.sroa.7113.0..sroa_idx, align 8
  %.sroa.8114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.8114.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 32296
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %.not.i101 = icmp eq i64 %i.dn, -1
  br i1 %.not.i101, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 32284
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %.not14.i = icmp ult i64 %i.dn, %i.dq
  %i.dr = select i1 %.not14.i, i64 0, i64 %i.dq
  %spec.select21.i = sub nuw i64 %i.dn, %i.dr     ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cg, i64 32288
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %.not15.i = icmp ult i64 %spec.select21.i, %i.du
  %i.dv = select i1 %.not15.i, i64 0, i64 %i.du
  %spec.select22.i = sub nuw i64 %spec.select21.i, %i.dv
  br label %drmp3_get_pcm_frame_count.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dw = call i32 @drmp3_get_mp3_and_pcm_frame_count(ptr noundef nonnull %i.cg, ptr noundef null, ptr noundef nonnull %i.a)
  %.not13.i = icmp eq i32 %i.dw, 0
  %i.dx = load i64, ptr %i.a, align 8
  %spec.select.i102 = select i1 %.not13.i, i64 0, i64 %i.dx
  br label %drmp3_get_pcm_frame_count.exit

drmp3_get_pcm_frame_count.exit:                   ; preds = %bb.ab, %bb.ac
  %.0.i = phi i64 [ %spec.select22.i, %bb.ab ], [ %spec.select.i102, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.dy = trunc i64 %.0.i to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.ea, align 4
  br label %.thread146

bb.ad:                                            ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cg, i64 22936
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.eb = icmp eq ptr %.pre, @drmp3__on_read_stdio
  br i1 %i.eb, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cg, i64 22960 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i103 = icmp eq ptr %i.ed, null
  br i1 %.not.i103, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = tail call i32 @fclose(ptr noundef nonnull %i.ed) ; 0 uses
  store ptr null, ptr %i.ec, align 8
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.af, %bb.ae, %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cg, i64 32336
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 22976
  %i.ei = icmp eq ptr %i.eg, null
  br i1 %i.ei, label %drmp3_uninit.exit, label %bb.ag

bb.ag:                                            ; preds = %.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cg, i64 23000
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i, label %drmp3_uninit.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %i.eh, align 8
  tail call void %i.ek(ptr noundef nonnull %i.eg, ptr noundef %i.el) #61, !inline_history !16
  br label %drmp3_uninit.exit

drmp3_uninit.exit:                                ; preds = %bb.s, %.thread, %bb.ag, %bb.ah
  tail call void @free(ptr noundef %i.cg) #61
  br label %.thread143

bb.ai:                                            ; preds = %bb.r
  %i.em = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.244) #73
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.245) #73
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.eq = icmp ne ptr %2, null
  %i.er = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.eq, %i.er
  br i1 %or.cond, label %bb.al, label %.thread143

bb.al:                                            ; preds = %bb.ak
  %i.es = tail call ptr @qoaplay_open_memory(ptr noundef nonnull %2, i32 noundef %3) ; 5 uses
  %.not.not = icmp eq ptr %i.es, null
  br i1 %.not.not, label %.thread143, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 5, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.es, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = load i32, ptr %i.ev, align 4            ; 3 uses
  %i.ex = load i32, ptr %i.es, align 8            ; 3 uses
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2672), align 8, !noalias !1188
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4880), align 8, !noalias !1188 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2140), align 4, !noalias !1188
  %spec.store.select.i106 = tail call i32 @llvm.smin.i32(i32 %i.fb, i32 4)
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 2144), align 8, !noalias !1188
  %i.fd = mul i32 %spec.store.select.i106, %i.fc
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4, !noalias !1188
  %i.ff = udiv i32 %i.fe, 30
  %i.fg = mul i32 %i.fd, %i.ff
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fh = phi i32 [ %i.fg, %bb.an ], [ %i.ez, %bb.am ]
  %spec.select.i104 = tail call i32 @llvm.umax.i32(i32 %i.fh, i32 %i.ey)
  %i.fi = shl i32 %spec.select.i104, 1
  %i.fj = tail call ptr @LoadAudioBuffer(i32 noundef 5, i32 noundef %i.ex, i32 noundef %i.ew, i32 noundef %i.fi, i32 noundef 1), !noalias !1188 ; 3 uses
  %.not.i105 = icmp eq ptr %i.fj, null
  br i1 %.not.i105, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 358
  store i8 1, ptr %i.fk, align 2, !noalias !1188
  %i.fl = icmp eq i32 %i.ex, 1
  %i.fm = select i1 %i.fl, ptr @.str.289, ptr @.str.290
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.298, i32 noundef %i.ew, i32 noundef 32, ptr noundef nonnull %i.fm) #61, !noalias !1188
  br label %LoadAudioStream.exit107

bb.aq:                                            ; preds = %bb.ao
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.299) #61, !noalias !1188
  br label %LoadAudioStream.exit107

LoadAudioStream.exit107:                          ; preds = %bb.ap, %bb.aq
  store ptr %i.fj, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ew, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ex, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.fo, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.fq, align 4
  br label %.thread146

bb.ar:                                            ; preds = %bb.aj
  %i.fr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.281) #73
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ft = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.293) #73
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  store ptr null, ptr %i.b, align 8
  %i.fv = sext i32 %3 to i64
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  %i.fx = call i32 @jar_xm_create_context_safe(ptr noundef nonnull %i.b, ptr noundef %2, i64 noundef %i.fv, i32 noundef %i.fw)
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fz = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i108 = icmp eq ptr %i.fz, null
  br i1 %.not.i108, label %.thread149, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void @free(ptr noundef %i.ga) #61
  br label %.thread149

bb.aw:                                            ; preds = %bb.as
  %i.gb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.282) #73
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.294) #73
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gf = tail call noalias dereferenceable_or_null(7072) ptr @malloc(i64 noundef 7072) #74 ; 8 uses
  %i.gg = tail call zeroext i1 @jar_mod_init(ptr noundef %i.gf) ; 0 uses
  %i.gh = sext i32 %3 to i64                      ; 2 uses
  %i.gi = tail call noalias ptr @malloc(i64 noundef %i.gh) #74 ; 3 uses
  %i.gj = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.gj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ay
  %i.gk = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %2, i64 %i.gk, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.ay
  %i.gl = icmp ne i32 %3, 0
  %i.gm = icmp slt i32 %3, 33554432
  %or.cond3 = and i1 %i.gl, %i.gm
  br i1 %or.cond3, label %bb.az, label %.thread139

bb.az:                                            ; preds = %._crit_edge
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 7056
  store i64 %i.gh, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 7048
  store ptr %i.gi, ptr %i.go, align 8
  %i.gp = tail call fastcc zeroext i1 @jar_mod_load(ptr noundef %i.gf, ptr noundef %i.gi, i32 noundef %3)
  %spec.select = and i1 %i.gj, %i.gp
  br i1 %spec.select, label %bb.ba, label %.thread139

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 7, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gf, ptr %i.gr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #61
  %i.gs = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  call void @LoadAudioStream(ptr dead_on_unwind nonnull writable sret(%struct.AudioStream) align 8 %5, i32 noundef %i.gs, i32 noundef 16, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #61
  %i.gt = tail call i64 @jar_mod_max_samples(ptr noundef nonnull %i.gf)
  %i.gu = trunc i64 %i.gt to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gu, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.gw, align 4
  br label %.thread146

.thread139:                                       ; preds = %._crit_edge, %bb.az
  tail call void @jar_mod_unload(ptr noundef %i.gf)
  tail call void @free(ptr noundef %i.gf) #61
  br label %.thread143

.critedge:                                        ; preds = %bb.ax
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.295) #61
  br label %.thread143

.thread149:                                       ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.thread143

bb.bb:                                            ; preds = %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 6, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 409
  store i8 0, ptr %i.ha, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #61
  %i.hb = load i32, ptr getelementptr inbounds nuw (i8, ptr @AUDIO, i64 1036), align 4
  call void @LoadAudioStream(ptr dead_on_unwind nonnull writable sret(%struct.AudioStream) align 8 %4, i32 noundef %i.hb, i32 noundef 32, i32 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  %i.hc = tail call i64 @jar_xm_get_remaining_samples(ptr noundef %i.gy)
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.hd, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.hf, align 4
  tail call void @jar_xm_reset(ptr noundef %i.gy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %.thread146

.thread143:                                       ; preds = %bb.ak, %bb.k, %bb.al, %drmp3_uninit.exit, %.thread139, %drwav_init_memory.exit.thread, %.thread149, %.critedge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.296) #61
  br label %bb.bc

.thread146:                                       ; preds = %LoadAudioStream.exit107, %drmp3_get_pcm_frame_count.exit, %LoadAudioStream.exit94, %LoadAudioStream.exit, %bb.ba, %bb.bb
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.297) #61
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hh = load i32, ptr %i.hg, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.286, i32 noundef %i.hh) #61
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hj = load i32, ptr %i.hi, align 4
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.287, i32 noundef %i.hj) #61
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hl = load i32, ptr %i.hk, align 8            ; 3 uses
  %i.hm = icmp eq i32 %i.hl, 1
  %i.hn = icmp eq i32 %i.hl, 2
  %i.ho = select i1 %i.hn, ptr @.str.290, ptr @.str.291
  %i.hp = select i1 %i.hm, ptr @.str.289, ptr %i.ho
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.288, i32 noundef %i.hl, ptr noundef nonnull %i.hp) #61
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %8 = load i32, ptr %7, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.292, i32 noundef %8) #61
  br label %bb.bc

bb.bc:                                            ; preds = %.thread146, %.thread143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsMusicValid(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <5 x i32>, ptr %i.d, align 8
  %i.f = shufflevector <5 x i32> %i.e, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.fr = freeze <4 x i32> %i.f
  %i.g = icmp eq <4 x i32> %.fr, zeroinitializer
  %i.h = bitcast <4 x i1> %i.g to i4
  %i.i = icmp eq i4 %i.h, 0
  %op.rdx = select i1 %i.i, i1 %i.c, i1 false
  ret i1 %op.rdx
}

; Function Attrs: nounwind uwtable
define void @UnloadMusicStream(ptr nofree noundef readonly byval(%struct.Music) align 8 captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i.i.i.i, label %IsMusicStreamPlaying.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 356
  %i.c = load i8, ptr %i.b, align 4, !range !66, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %IsMusicStreamPlaying.exit, label %IsMusicStreamPlaying.exit.thread

IsMusicStreamPlaying.exit.thread:                 ; preds = %bb.a, %bb.b
  %i.e = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br label %bb.d

IsMusicStreamPlaying.exit:                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 357
  %i.g = load i8, ptr %i.f, align 1, !range !66, !noundef !53
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @AUDIO, i64 4800)) #61 ; 0 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %IsMusicStreamPlaying.exit
  tail call void @StopMusicStream(ptr noundef nonnull byval(%struct.Music) align 8 %0)
  br label %bb.d

bb.d:                                             ; preds = %IsMusicStreamPlaying.exit.thread, %bb.c, %IsMusicStreamPlaying.exit
  tail call void @UnloadAudioBuffer(ptr noundef %.sroa.0.0.copyload)
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.300) #61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 24 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %stb_vorbis_close.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8
  switch i32 %i.m, label %stb_vorbis_close.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.o
    i32 6, label %jar_xm_free_context.exit
    i32 7, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @drwav_uninit(ptr noundef nonnull %i.k) ; 0 uses
  br label %stb_vorbis_close.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @vorbis_deinit(ptr noundef nonnull %i.k)
  %i.o = getelementptr i8, ptr %i.k, i64 128
  %.val.i = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.h, label %stb_vorbis_close.exit

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 22936
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, @drmp3__on_read_stdio
  br i1 %i.r, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 22960 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.t) ; 0 uses
  store ptr null, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32336
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 22976
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %drmp3_uninit.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 23000
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i2, label %drmp3_uninit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.x, align 8
  tail call void %i.aa(ptr noundef nonnull %i.w, ptr noundef %i.ab) #61, !inline_history !16
  br label %drmp3_uninit.exit

drmp3_uninit.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

bb.o:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i3 = icmp eq ptr %i.ad, null
  br i1 %.not.i3, label %qoaplay_close.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @fclose(ptr noundef nonnull %i.ad) ; 0 uses
  br label %qoaplay_close.exit

qoaplay_close.exit:                               ; preds = %bb.o, %bb.p
  tail call void @free(ptr noundef nonnull %i.k) #61
  br label %stb_vorbis_close.exit

jar_xm_free_context.exit:                         ; preds = %bb.e
  %i.af = load ptr, ptr %i.k, align 8
  tail call void @free(ptr noundef %i.af) #61
  br label %stb_vorbis_close.exit

bb.q:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 7048
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not8.i = icmp eq ptr %i.ah, null
  br i1 %.not8.i, label %vector.ph, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.ah) #61
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 4730
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @periodtable, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.aj, align 16 ; 6 uses
  %i.ak = sext <8 x i16> %wide.load to <8 x i32>
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %wide.load14 = load <8 x i16>, ptr %i.al, align 2
  %i.am = sext <8 x i16> %wide.load14 to <8 x i32>
  %i.an = sub nsw <8 x i32> %i.ak, %i.am
  %i.ao = sdiv <8 x i32> %i.an, splat (i32 -8)
  %i.ap = trunc nsw <8 x i32> %i.ao to <8 x i16>  ; 6 uses
  %i.aq = shl nuw nsw i64 %index, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %i.as = add <8 x i16> %wide.load, %i.ap
  %i.at = shl nsw <8 x i16> %i.ap, splat (i16 1)
  %i.au = mul nsw <8 x i16> %i.ap, splat (i16 3)
  %i.av = shl nsw <8 x i16> %i.ap, splat (i16 2)
  %i.aw = mul <8 x i16> %i.ap, splat (i16 5)
  %i.ax = shufflevector <8 x i16> %wide.load, <8 x i16> %i.as, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ay = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.az = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = add <16 x i16> %i.ay, %i.az
  %i.bb = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = add <16 x i16> %i.bb, %i.bc
  %i.be = shufflevector <8 x i16> %i.ap, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = mul <16 x i16> %i.be, <i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7>
  %i.bg = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bh = add <16 x i16> %i.bf, %i.bg
  %i.bi = shufflevector <16 x i16> %i.ax, <16 x i16> %i.ba, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bj = shufflevector <16 x i16> %i.bd, <16 x i16> %i.bh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i16> %i.bi, <32 x i16> %i.bj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.ar, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, 136
  br i1 %i.bk, label %.preheader.i.i.i, label %vector.body, !llvm.loop !1189

.preheader.i.i.i:                                 ; preds = %vector.body
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 6906
  store <8 x i16> splat (i16 11), ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 6922
end_hunk_5
begin_hunk_6_@ma_context_get_device_info__alsa:bb.a
  %i.g = call i32 @ma_context_enumerate_devices__alsa(ptr noundef %0, ptr noundef nonnull @ma_context_get_device_info_enum_callback__alsa, ptr noundef nonnull %4) ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 8
  %.not77 = icmp eq i32 %i.h, 0
  br i1 %.not77, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @ma_strcmp(ptr noundef %3, ptr noundef nonnull @.str.493)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i32 1, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call fastcc i32 @ma_context_open_pcm__alsa(ptr noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %i.a) ; 2 uses
  %.not78 = icmp eq i32 %i.l, 0
  br i1 %.not78, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i64 %i.n() #61                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.r, null
  br i1 %.not8.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = call ptr %i.r(i64 noundef %i.o, ptr noundef %i.s) #61, !inline_history !68 ; 16 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not8.i = icmp eq i64 %i.o, 0
  br i1 %.not8.i, label %ma_calloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.o, i1 false)
  br label %ma_calloc.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = call i32 %i.v(ptr noundef %i.w) #61      ; 0 uses
  br label %bb.v

ma_calloc.exit:                                   ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load ptr, ptr %i.a, align 8             ; 12 uses
  %i.ab = call i32 %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.t) #61 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %.preheader88

.preheader88:                                     ; preds = %ma_calloc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 488
  br label %bb.m

bb.k:                                             ; preds = %ma_calloc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.ak, null
  br i1 %.not9.i, label %ma_context_get_log.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.p, align 8
  call void %i.ak(ptr noundef nonnull %i.t, ptr noundef %i.al) #61, !inline_history !30
  br label %ma_context_get_log.exit

ma_context_get_log.exit:                          ; preds = %bb.k, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i32 %i.an(ptr noundef %i.aa) #61   ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.501) ; 0 uses
  %i.as = sub nsw i32 0, %i.ab
  %i.at = call fastcc i32 @ma_result_from_errno(i32 noundef %i.as)
  br label %bb.v

bb.m:                                             ; preds = %.preheader88, %bb.s
  %indvars.iv = phi i64 [ 0, %.preheader88 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @g_maFormatPriorities, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4            ; 3 uses
  %i.aw = load ptr, ptr %i.y, align 8
  %i.ax = call i32 %i.aw(ptr noundef %i.aa, ptr noundef nonnull %i.t) #61 ; 0 uses
  %i.ay = load ptr, ptr %i.ad, align 8
  %i.az = zext i32 %i.av to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_convert_ma_format_to_alsa_format.ALSAFormats, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4            ; 3 uses
  %i.bc = call i32 %i.ay(ptr noundef %i.aa, ptr noundef nonnull %i.t, i32 noundef %i.bb) #61
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.be = load ptr, ptr %i.ae, align 8
  %i.bf = call i32 %i.be(ptr noundef %i.aa, ptr noundef nonnull %i.t, i32 noundef %i.bb) #61 ; 0 uses
  %i.bg = load ptr, ptr %i.af, align 8
  %i.bh = call i32 %i.bg(ptr noundef nonnull %i.t, ptr noundef nonnull %i.b) #61 ; 0 uses
  %i.bi = load ptr, ptr %i.ag, align 8
  %i.bj = call i32 %i.bi(ptr noundef nonnull %i.t, ptr noundef nonnull %i.c) #61 ; 0 uses
  %i.bk = load i32, ptr %i.b, align 4             ; 3 uses
  %i.bl = icmp ugt i32 %i.bk, 254
  %i.bm = load i32, ptr %i.c, align 4             ; 3 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %or.cond82 = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond82, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = call i32 @llvm.umax.i32(i32 %i.bk, i32 1) ; 3 uses
  store i32 %i.bo, ptr %i.b, align 4
  %i.bp = call i32 @llvm.umin.i32(i32 %i.bm, i32 254) ; 2 uses
  store i32 %i.bp, ptr %i.c, align 4
  %i.bq = icmp samesign ult i32 %i.bk, 2
  %i.br = icmp ugt i32 %i.bm, 253
  %or.cond = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not8089 = icmp samesign ugt i32 %i.bo, %i.bp
  br i1 %.not8089, label %.sink.split, label %.lr.ph

bb.p:                                             ; preds = %bb.o
  call fastcc void @ma_context_iterate_rates_and_add_native_data_format__alsa(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.t, i32 noundef %i.av, i32 noundef 0, ptr noundef %3)
  br label %.sink.split

.lr.ph:                                           ; preds = %.preheader, %bb.r
  %.06890 = phi i32 [ %i.cb, %bb.r ], [ %i.bo, %.preheader ] ; 4 uses
  %i.bs = load ptr, ptr %i.y, align 8
  %i.bt = call i32 %i.bs(ptr noundef %i.aa, ptr noundef nonnull %i.t) #61 ; 0 uses
  %i.bu = load ptr, ptr %i.ae, align 8
  %i.bv = call i32 %i.bu(ptr noundef %i.aa, ptr noundef nonnull %i.t, i32 noundef %i.bb) #61 ; 0 uses
  %i.bw = load ptr, ptr %i.ah, align 8
  %i.bx = call i32 %i.bw(ptr noundef %i.aa, ptr noundef nonnull %i.t, i32 noundef %.06890) #61
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.ai, align 8
  %i.ca = call i32 %i.bz(ptr noundef %i.aa, ptr noundef nonnull %i.t, i32 noundef %.06890) #61 ; 0 uses
  call fastcc void @ma_context_iterate_rates_and_add_native_data_format__alsa(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef %i.t, i32 noundef %i.av, i32 noundef %.06890, ptr noundef %3)
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.cb = add i32 %.06890, 1                      ; 2 uses
  %i.cc = load i32, ptr %i.c, align 4
  %.not80 = icmp ugt i32 %i.cb, %i.cc
  br i1 %.not80, label %.sink.split, label %.lr.ph

.sink.split:                                      ; preds = %bb.r, %bb.n, %bb.p, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.t, label %bb.m

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not9.i85 = icmp eq ptr %i.ce, null
  br i1 %.not9.i85, label %ma_free.exit86, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr %i.p, align 8
  call void %i.ce(ptr noundef nonnull %i.t, ptr noundef %i.cf) #61, !inline_history !30
  br label %ma_free.exit86

ma_free.exit86:                                   ; preds = %bb.t, %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call i32 %i.ch(ptr noundef %i.aa) #61   ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.b, %bb.a, %ma_free.exit86, %ma_context_get_log.exit, %bb.j
  %.070 = phi i32 [ %i.g, %bb.a ], [ -204, %bb.b ], [ -4, %bb.j ], [ %i.at, %ma_context_get_log.exit ], [ 0, %ma_free.exit86 ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #61
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define internal range(i32 -401, 1) i32 @ma_device_init__alsa(ptr noundef initializes((3424, 3480)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.b = load i32, ptr %1, align 8                ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 4, label %bb.f
    i32 2, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call fastcc i32 @ma_device_init_by_type__alsa(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3, i32 noundef 2) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %thread-pre-split, label %bb.f

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i32, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.d = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ]
  switch i32 %i.d, label %bb.e [
    i32 1, label %bb.d
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.e = tail call fastcc i32 @ma_device_init_by_type__alsa(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1) ; 2 uses
  %.not23.not = icmp eq i32 %i.e, 0
  br i1 %.not23.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %.3 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.e ], [ %i.e, %bb.d ], [ -201, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ma_device_uninit__alsa(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %ma_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.c) #61 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3468
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @close(i32 noundef %i.i) #61 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %ma_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.q, null
  br i1 %.not9.i, label %ma_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8
  tail call void %i.q(ptr noundef nonnull %i.l, ptr noundef %i.r) #61, !inline_history !30
  br label %ma_free.exit

ma_free.exit:                                     ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.s, null
  br i1 %.not13, label %ma_free.exit15, label %bb.e

bb.e:                                             ; preds = %ma_free.exit
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.s) #61 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3464
  %i.y = load i32, ptr %i.x, align 8
  %i.z = tail call i32 @close(i32 noundef %i.y) #61 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 288
  %i.ae = icmp eq ptr %i.ab, null
  br i1 %i.ae, label %ma_free.exit15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 312
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not9.i14 = icmp eq ptr %i.ag, null
  br i1 %.not9.i14, label %ma_free.exit15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ad, align 8
  tail call void %i.ag(ptr noundef nonnull %i.ab, ptr noundef %i.ah) #61, !inline_history !30
  br label %ma_free.exit15

ma_free.exit15:                                   ; preds = %bb.g, %bb.f, %bb.e, %ma_free.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -51, 1) i32 @ma_device_start__alsa(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, -2
  %switch = icmp eq i32 %i.c, 2
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 776
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.f(ptr noundef %i.h) #61 ; 5 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %ma_device_get_context.exit.i, label %thread-pre-split

ma_device_get_context.exit.i:                     ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.sink.split, label %ma_device_get_log.exit

ma_device_get_log.exit:                           ; preds = %ma_device_get_context.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %ma_device_get_log.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 3 uses
  %i.q = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.p) #61 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not21.i = icmp eq i32 %i.s, 0
  br i1 %.not21.i, label %.sink.split.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %i.t = phi i32 [ %i.y, %bb.e ], [ %i.s, %bb.c ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.v(ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull @.str.534) #61, !inline_history !31
  %.pre.i = load i32, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.y = phi i32 [ %i.t, %.lr.ph.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %.sink.split.sink.split

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i32, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.a
  %i.ab = phi i32 [ %.pr, %thread-pre-split ], [ %i.b, %bb.a ]
  switch i32 %i.ab, label %bb.k [
    i32 1, label %bb.g
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 776
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 %i.ae(ptr noundef %i.ag) #61 ; 5 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %ma_device_get_context.exit.i18, label %bb.k

ma_device_get_context.exit.i18:                   ; preds = %bb.g
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.sink.split, label %ma_device_get_log.exit20

ma_device_get_log.exit20:                         ; preds = %ma_device_get_context.exit.i18
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.am = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.sink.split, label %bb.h
end_hunk_6
begin_hunk_7_@ma_context_open_pcm__alsa:bb.a

.critedge49:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.n, %bb.p, %bb.r, %.thread56
  %i.bj = load ptr, ptr %i.a, align 8
  store ptr %i.bj, ptr %5, align 8
  br label %bb.af

ma_context_get_log.exit52:                        ; preds = %bb.l, %bb.r, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i32 (ptr, i32, ptr, ...) @ma_log_postf(ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull @.str.511) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %ma_context_get_log.exit52, %.critedge49
  %.241 = phi i32 [ 0, %.critedge49 ], [ -401, %ma_context_get_log.exit52 ], [ %i.bi, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.241
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ma_context_iterate_rates_and_add_native_data_format__alsa(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i32 %i.e(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #61 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i32 %i.h(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #61 ; 0 uses
  %i.j = load i32, ptr %i.a, align 4
  %i.k = call i32 @llvm.umax.i32(i32 %i.j, i32 8000)
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 384000) ; 3 uses
  store i32 %i.l, ptr %i.a, align 4
  %i.m = load i32, ptr %i.b, align 4
  %i.n = call i32 @llvm.umax.i32(i32 %i.m, i32 8000)
  %i.o = call i32 @llvm.umin.i32(i32 %i.n, i32 384000) ; 2 uses
  store i32 %i.o, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 516 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 520 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ma_context_test_rate_and_add_native_data_format__alsa.exit
  %i.s = phi i32 [ %i.l, %bb.a ], [ %i.aj, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 2 uses
  %i.t = phi i32 [ %i.o, %bb.a ], [ %i.ak, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 3 uses
  %i.u = phi i32 [ %i.l, %bb.a ], [ %i.al, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %ma_context_test_rate_and_add_native_data_format__alsa.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @g_maStandardSampleRatePriorities, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4              ; 4 uses
  %.not35 = icmp ult i32 %i.w, %i.u
  %.not36 = icmp ugt i32 %i.w, %i.t
  %or.cond = select i1 %.not35, i1 true, i1 %.not36
  br i1 %or.cond, label %ma_context_test_rate_and_add_native_data_format__alsa.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.p, align 4
  %i.y = icmp ult i32 %i.x, 64
  br i1 %i.y, label %bb.d, label %ma_context_test_rate_and_add_native_data_format__alsa.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.q, align 8
  %i.aa = call i32 %i.z(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.w, i32 noundef 0) #61, !inline_history !1207
  %i.ab = icmp eq i32 %i.aa, 0
  %.pre = load i32, ptr %i.a, align 4             ; 4 uses
  %.pre59 = load i32, ptr %i.b, align 4           ; 2 uses
  br i1 %i.ab, label %bb.e, label %ma_context_test_rate_and_add_native_data_format__alsa.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.p, align 4             ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ad ; 4 uses
  store i32 %3, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 %4, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.w, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4
  %i.ai = add i32 %i.ac, 1
  store i32 %i.ai, ptr %i.p, align 4
  br label %ma_context_test_rate_and_add_native_data_format__alsa.exit

ma_context_test_rate_and_add_native_data_format__alsa.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.aj = phi i32 [ %.pre, %bb.e ], [ %.pre, %bb.d ], [ %i.s, %bb.c ], [ %i.s, %bb.b ] ; 4 uses
  %i.ak = phi i32 [ %.pre59, %bb.e ], [ %.pre59, %bb.d ], [ %i.t, %bb.c ], [ %i.t, %bb.b ]
  %i.al = phi i32 [ %.pre, %bb.e ], [ %.pre, %bb.d ], [ %i.u, %bb.c ], [ %i.u, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.f, label %bb.b

bb.f:                                             ; preds = %ma_context_test_rate_and_add_native_data_format__alsa.exit
  switch i32 %i.aj, label %bb.g [
    i32 48000, label %ma_is_standard_sample_rate.exit39
    i32 44100, label %ma_is_standard_sample_rate.exit39
    i32 32000, label %ma_is_standard_sample_rate.exit39
    i32 24000, label %ma_is_standard_sample_rate.exit39
    i32 22050, label %ma_is_standard_sample_rate.exit39
    i32 88200, label %ma_is_standard_sample_rate.exit39
    i32 96000, label %ma_is_standard_sample_rate.exit39
    i32 176400, label %ma_is_standard_sample_rate.exit39
    i32 192000, label %ma_is_standard_sample_rate.exit39
    i32 16000, label %ma_is_standard_sample_rate.exit39
    i32 11025, label %ma_is_standard_sample_rate.exit39
    i32 8000, label %ma_is_standard_sample_rate.exit39
    i32 352800, label %ma_is_standard_sample_rate.exit39
    i32 384000, label %ma_is_standard_sample_rate.exit39
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.p, align 4
  %i.an = icmp ult i32 %i.am, 64
  br i1 %i.an, label %bb.h, label %ma_is_standard_sample_rate.exit39

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.q, align 8
  %i.ap = call i32 %i.ao(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.aj, i32 noundef 0) #61, !inline_history !1207
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.i, label %ma_is_standard_sample_rate.exit39

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.p, align 4             ; 2 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.as ; 4 uses
  store i32 %3, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %4, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.aj, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.aw, align 4
  %i.ax = add i32 %i.ar, 1
  store i32 %i.ax, ptr %i.p, align 4
  br label %ma_is_standard_sample_rate.exit39

ma_is_standard_sample_rate.exit39:                ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.i, %bb.h, %bb.g
  %i.ay = load i32, ptr %i.b, align 4             ; 5 uses
  switch i32 %i.ay, label %bb.j [
    i32 48000, label %ma_is_standard_sample_rate.exit
    i32 44100, label %ma_is_standard_sample_rate.exit
    i32 32000, label %ma_is_standard_sample_rate.exit
    i32 24000, label %ma_is_standard_sample_rate.exit
    i32 22050, label %ma_is_standard_sample_rate.exit
    i32 88200, label %ma_is_standard_sample_rate.exit
    i32 96000, label %ma_is_standard_sample_rate.exit
  ]

bb.j:                                             ; preds = %ma_is_standard_sample_rate.exit39
  switch i32 %i.ay, label %bb.k [
    i32 176400, label %ma_is_standard_sample_rate.exit
    i32 192000, label %ma_is_standard_sample_rate.exit
    i32 16000, label %ma_is_standard_sample_rate.exit
    i32 11025, label %ma_is_standard_sample_rate.exit
    i32 8000, label %ma_is_standard_sample_rate.exit
    i32 352800, label %ma_is_standard_sample_rate.exit
    i32 384000, label %ma_is_standard_sample_rate.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.a, align 4
  %.not34 = icmp eq i32 %i.ay, %i.az
  br i1 %.not34, label %ma_is_standard_sample_rate.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i32, ptr %i.p, align 4
  %i.bb = icmp ult i32 %i.ba, 64
  br i1 %i.bb, label %bb.m, label %ma_is_standard_sample_rate.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.q, align 8
  %i.bd = call i32 %i.bc(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.ay, i32 noundef 0) #61, !inline_history !1207
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %ma_is_standard_sample_rate.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %i.p, align 4             ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.bg ; 4 uses
  store i32 %3, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %4, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.ay, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bk, align 4
  %i.bl = add i32 %i.bf, 1
  store i32 %i.bl, ptr %i.p, align 4
  br label %ma_is_standard_sample_rate.exit

ma_is_standard_sample_rate.exit:                  ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %ma_is_standard_sample_rate.exit39, %bb.n, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -401, 1) i32 @ma_device_init_by_type__alsa(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef range(i32 1, 3) %3) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [254 x i8], align 16              ; 12 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_convert_ma_format_to_alsa_format.ALSAFormats, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 220
  %i.n = load i32, ptr %i.m, align 4
  %.not = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not, i32 0, i32 65536 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.p = load i32, ptr %i.o, align 8
  %.not331 = icmp eq i32 %i.p, 0
  %i.q = or disjoint i32 %spec.select, 131072
  %.1294 = select i1 %.not331, i32 %spec.select, i32 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.s = load i32, ptr %i.r, align 4
  %.not332 = icmp eq i32 %i.s, 0
  %i.t = or disjoint i32 %.1294, 262144
  %.2295 = select i1 %.not332, i32 %.1294, i32 %i.t
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = load ptr, ptr %2, align 8
  %i.y = call fastcc i32 @ma_context_open_pcm__alsa(ptr noundef %i.u, i32 noundef %i.w, i32 noundef %3, ptr noundef %i.x, i32 noundef %.2295, ptr noundef %i.a) ; 2 uses
  %.not333 = icmp eq i32 %i.y, 0
  br i1 %.not333, label %bb.b, label %ma_log_post.exit

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 448
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i64 %i.ab() #61               ; 3 uses
  %i.ad = load ptr, ptr %0, align 8               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 296
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i, label %ma_device_get_context.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call ptr %i.af(i64 noundef %i.ac, ptr noundef %i.ah) #61, !inline_history !68 ; 28 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %.ma_device_get_context.exit.i_crit_edge, label %bb.d

.ma_device_get_context.exit.i_crit_edge:          ; preds = %bb.c
  %.pre611 = load ptr, ptr %0, align 8
  br label %ma_device_get_context.exit.i

bb.d:                                             ; preds = %bb.c
  %.not8.i = icmp eq i64 %i.ac, 0
  br i1 %.not8.i, label %ma_calloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.ac, i1 false)
  br label %ma_calloc.exit

ma_device_get_context.exit.i:                     ; preds = %.ma_device_get_context.exit.i_crit_edge, %bb.b
  %i.aj = phi ptr [ %.pre611, %.ma_device_get_context.exit.i_crit_edge ], [ %i.ad, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 440
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = tail call i32 %i.al(ptr noundef %i.am) #61 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %ma_log_post.exit, label %ma_device_get_log.exit

ma_device_get_log.exit:                           ; preds = %ma_device_get_context.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %ma_log_post.exit, label %bb.f

bb.f:                                             ; preds = %ma_device_get_log.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 104 ; 2 uses
  %i.au = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.at) #61 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %.not21.i = icmp eq i32 %i.aw, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %i.ax = phi i32 [ %i.bc, %bb.h ], [ %i.aw, %bb.f ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.i340 = icmp eq ptr %i.az, null
  br i1 %.not.i340, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.az(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.513) #61, !inline_history !31
  %.pre.i = load i32, ptr %i.av, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.bc = phi i32 [ %i.ax, %.lr.ph.i ], [ %.pre.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next.i, %i.bd
  br i1 %i.be, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.at) #61 ; 0 uses
  br label %ma_log_post.exit

ma_calloc.exit:                                   ; preds = %bb.e, %bb.d
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 456
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = load ptr, ptr %i.a, align 8             ; 47 uses
  %i.bk = tail call i32 %i.bi(ptr noundef %i.bj, ptr noundef nonnull %i.ai) #61 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.bl, label %bb.i, label %bb.n

bb.i:                                             ; preds = %ma_calloc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.bo, null
  br i1 %.not9.i, label %ma_device_get_context.exit.i342, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 288
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bo(ptr noundef nonnull %i.ai, ptr noundef %i.bq) #61, !inline_history !30
  %.pre610 = load ptr, ptr %0, align 8
  br label %ma_device_get_context.exit.i342

ma_device_get_context.exit.i342:                  ; preds = %bb.j, %bb.i
  %i.br = phi ptr [ %.pre610, %bb.j ], [ %i.bm, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 440
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call i32 %i.bt(ptr noundef %i.bj) #61 ; 0 uses
  %i.bv = load ptr, ptr %0, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %ma_log_post.exit353, label %ma_device_get_log.exit344

ma_device_get_log.exit344:                        ; preds = %ma_device_get_context.exit.i342
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.by = load ptr, ptr %i.bx, align 8            ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %ma_log_post.exit353, label %bb.k

bb.k:                                             ; preds = %ma_device_get_log.exit344
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 104 ; 2 uses
  %i.cb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ca) #61 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  %.not21.i345 = icmp eq i32 %i.cd, 0
  br i1 %.not21.i345, label %._crit_edge.i351, label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %bb.k, %bb.m
  %i.ce = phi i32 [ %i.cj, %bb.m ], [ %i.cd, %bb.k ]
  %indvars.iv.i347 = phi i64 [ %indvars.iv.next.i350, %bb.m ], [ 0, %bb.k ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv.i347 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not.i348 = icmp eq ptr %i.cg, null
  br i1 %.not.i348, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i346
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.cg(ptr noundef %i.ci, i32 noundef 1, ptr noundef nonnull @.str.501) #61, !inline_history !31
  %.pre.i349 = load i32, ptr %i.cc, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i346
  %i.cj = phi i32 [ %i.ce, %.lr.ph.i346 ], [ %.pre.i349, %bb.l ] ; 2 uses
  %indvars.iv.next.i350 = add nuw nsw i64 %indvars.iv.i347, 1 ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next.i350, %i.ck
  br i1 %i.cl, label %.lr.ph.i346, label %._crit_edge.i351

._crit_edge.i351:                                 ; preds = %bb.m, %bb.k
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ca) #61 ; 0 uses
  br label %ma_log_post.exit353

ma_log_post.exit353:                              ; preds = %ma_device_get_context.exit.i342, %ma_device_get_log.exit344, %._crit_edge.i351
  %i.cn = sub nsw i32 0, %i.bk
  %i.co = tail call fastcc i32 @ma_result_from_errno(i32 noundef %i.cn)
  br label %ma_log_post.exit

bb.n:                                             ; preds = %ma_calloc.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bm, i64 560
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call i32 %i.cq(ptr noundef %i.bj, ptr noundef nonnull %i.ai, i32 noundef 3) #61 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
end_hunk_7
begin_hunk_8_@drwav__realloc_default:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -53, 1) i32 @drwav__read_chunk_header(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  switch i32 %2, label %bb.k [
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  %i.c = tail call i64 %0(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 4) #61
  %.not35 = icmp eq i64 %i.c, 4
  br i1 %.not35, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = call i64 %0(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 4) #61
  %.not36 = icmp eq i64 %i.d, 4
  br i1 %.not36, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  switch i32 %2, label %bb.f [
    i32 4, label %bb.e
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.e = load i32, ptr %i.a, align 4
  %i.f = call i32 @llvm.bswap.i32(i32 %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.a, align 4
  br label %bb.g

.thread:                                          ; preds = %bb.b, %bb.c
  %.031.ph = phi i32 [ -10, %bb.c ], [ -53, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.h = zext i32 %.0.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.h, ptr %i.i, align 8
  %i.j = and i32 %.0.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.j, ptr %i.k, align 8
  %i.l = load i64, ptr %3, align 8
  %i.m = add i64 %i.l, 8
  store i64 %i.m, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #61
  %i.n = tail call i64 %0(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 16) #61
  %.not = icmp eq i64 %i.n, 16
  br i1 %.not, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.o = call i64 %0(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 8) #61
  %.not34 = icmp eq i64 %i.o, 8
  br i1 %.not34, label %bb.j, label %.thread40

.thread40:                                        ; preds = %bb.h, %bb.i
  %.132.ph = phi i32 [ -10, %bb.i ], [ -53, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = load i64, ptr %i.b, align 8              ; 2 uses
  %i.q = add i64 %i.p, -24
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.q, ptr %i.r, align 8
  %i.s = trunc i64 %i.p to i32
  %i.t = and i32 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.t, ptr %i.u, align 8
  %i.v = load i64, ptr %3, align 8
  %i.w = add i64 %i.v, 24
  store i64 %i.w, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %.thread40, %.thread, %bb.a
  %.2 = phi i32 [ -10, %bb.a ], [ %.031.ph, %.thread ], [ %.132.ph, %.thread40 ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @drwav__seek_from_start(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %0(ptr noundef %2, i32 noundef 2147483647, i32 noundef 0) #61
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.01423 = add i64 %1, -2147483647               ; 3 uses
  %i.c = icmp ult i64 %.01423, 2147483648
  br i1 %i.c, label %.loopexit.sink.split, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.014 = add i64 %.01424, -2147483647            ; 3 uses
  %i.d = icmp ult i64 %.014, 2147483648
  br i1 %i.d, label %.loopexit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.01424 = phi i64 [ %.014, %.preheader ], [ %.01423, %.preheader.preheader ]
  %i.e = tail call i32 %0(ptr noundef %2, i32 noundef 2147483647, i32 noundef 1) #61
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %.loopexit, label %.preheader

.loopexit.sink.split:                             ; preds = %.preheader, %.preheader.preheader, %bb.a
  %.014.lcssa.sink = phi i64 [ %1, %bb.a ], [ %.01423, %.preheader.preheader ], [ %.014, %.preheader ]
  %.sink21 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.preheader ], [ 1, %.preheader ]
  %i.f = trunc nuw nsw i64 %.014.lcssa.sink to i32
  %i.g = tail call i32 %0(ptr noundef %2, i32 noundef %i.f, i32 noundef %.sink21) #61
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.g, %.loopexit.sink.split ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @drwav_aiff_extented_to_s64(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.j = load i32, ptr %i.i, align 1
  %i.k = zext i32 %i.h to i64
  %i.l = zext i32 %i.j to i64
  %i.m = shl nuw i64 %i.l, 32
  %i.n = or disjoint i64 %i.m, %i.k               ; 2 uses
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.n)
  %i.o = lshr i32 %i.b, 7                         ; 3 uses
  %.masked = and i32 %i.c, 32512
  %i.p = or disjoint i32 %.masked, %i.f           ; 4 uses
  %i.q = icmp eq i32 %i.p, 0
  %i.r = icmp eq i64 %i.n, 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i32 %i.p, 32767
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not31 = icmp eq i32 %i.o, 0
  %i.t = select i1 %.not31, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = add nsw i32 %i.p, -16383                 ; 2 uses
  %i.v = icmp ugt i32 %i.u, 63
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not30 = icmp eq i32 %i.o, 0
  %i.w = select i1 %.not30, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = icmp eq i32 %i.u, 0
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i32 16446, %i.p
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = lshr i64 %op.rdx, %i.z                  ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  %i.ab = sub nsw i64 0, %i.aa
  %spec.select = select i1 %.not, i64 %i.aa, i64 %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a, %bb.e, %bb.c
  %.0 = phi i64 [ 0, %bb.f ], [ %i.t, %bb.c ], [ %i.w, %bb.e ], [ 0, %bb.a ], [ %spec.select, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @drwav__metadata_process_chunk(ptr nofree noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 11 uses
  %i.b = alloca [7 x i8], align 1                 ; 10 uses
  %i.c = alloca [36 x i8], align 16               ; 12 uses
  %i.d = alloca [24 x i8], align 16               ; 10 uses
  %i.e = alloca [4 x i8], align 4                 ; 7 uses
  %i.f = alloca [257 x i8], align 16              ; 14 uses
  %i.g = alloca [4 x i8], align 1                 ; 10 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = load i8, ptr %1, align 1
  switch i8 %i.i, label %drwav_fourcc_equal.exit260.thread [
    i8 115, label %bb.b
    i8 105, label %bb.u
    i8 97, label %bb.ad
    i8 99, label %bb.am
    i8 98, label %bb.at
    i8 76, label %bb.be
    i8 108, label %bb.bg
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 109
  br i1 %i.l, label %bb.c, label %drwav_fourcc_equal.exit260.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 112
  br i1 %i.o, label %drwav__chunk_matches.exit, label %drwav_fourcc_equal.exit260.thread

drwav__chunk_matches.exit:                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1
  %.not = icmp eq i8 %i.q, 108
  br i1 %.not, label %bb.d, label %drwav_fourcc_equal.exit260.thread

bb.d:                                             ; preds = %drwav__chunk_matches.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ugt i64 %i.s, 35
  br i1 %i.t, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #61
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.y(ptr noundef %i.aa, i32 noundef 28, i32 noundef 1) #61
  %.not239.not = icmp eq i32 %i.ab, 0
  br i1 %.not239.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = call i64 %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.e, i64 noundef 4) #61, !inline_history !25 ; 2 uses
  %i.af = add i64 %i.ae, 28                       ; 2 uses
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.e, align 4
  %i.ai = load i64, ptr %i.r, align 8
  %i.aj = add i64 %i.ai, -36
  %i.ak = udiv i64 %i.aj, 24                      ; 2 uses
  %i.al = zext i32 %i.ah to i64
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %0, align 8
  %i.ao = load ptr, ptr %i.z, align 8
  %i.ap = call i64 %i.an(ptr noundef %i.ao, ptr noundef nonnull %i.e, i64 noundef 4) #61, !inline_history !25 ; 2 uses
  %i.aq = add i64 %i.ap, %i.af                    ; 2 uses
  %i.ar = icmp eq i64 %i.ap, 4
  br i1 %i.ar, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr %i.e, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = mul nuw nsw i64 %i.ak, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = or disjoint i64 %i.aw, 7
  %i.ba = zext i32 %i.as to i64
  %i.bb = add nuw nsw i64 %i.az, %i.ba
  %i.bc = add i64 %i.bb, %i.ay
  store i64 %i.bc, ptr %i.ax, align 8
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %.0.ph = phi i64 [ 32, %bb.h ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %.loopexit

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #61
  br label %.loopexit

bb.l:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %i.be, i64 %i.bg ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #61
  %i.bi = icmp eq ptr %i.be, null
  br i1 %i.bi, label %drwav__read_smpl_to_metadata_obj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call i64 %i.bj(ptr noundef %i.bl, ptr noundef nonnull %i.c, i64 noundef 36) #61, !inline_history !1224 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 36
  br i1 %i.bn, label %bb.n, label %drwav__read_smpl_to_metadata_obj.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bp = load i32, ptr %i.bo, align 4            ; 3 uses
  %i.bq = load i64, ptr %i.r, align 8
  %i.br = add i64 %i.bq, -36
  %i.bs = udiv i64 %i.br, 24
  %i.bt = trunc i64 %i.bs to i32
  %.not.i = icmp eq i32 %i.bp, %i.bt
  br i1 %.not.i, label %bb.o, label %drwav__read_smpl_to_metadata_obj.exit

bb.o:                                             ; preds = %bb.n
  store i32 2, ptr %i.bh, align 8
  %i.bu = load i32, ptr %i.c, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.bx, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  store i32 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cg = load i32, ptr %i.cf, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %i.cg, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i32 %i.cm, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 36 ; 3 uses
  store i32 %i.bp, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.cq = load i32, ptr %i.cp, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  store i32 %i.cq, ptr %i.cr, align 8
  %i.cs = zext i32 %i.bp to i64
  %i.ct = mul nuw nsw i64 %i.cs, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 7                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.cx, 0
  %i.cy = sub nuw nsw i64 8, %i.cx
  %.idx.i.i = select i1 %.not.i.i, i64 0, i64 %i.cy
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.ct
  store ptr %i.da, ptr %i.cu, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 7 uses
  store ptr %i.cz, ptr %i.db, align 8
  %i.dc = load i32, ptr %i.co, align 4
  %.not73.i = icmp eq i32 %i.dc, 0
  br i1 %.not73.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %.lr.ph.i
end_hunk_8
begin_hunk_9_@drwav_init_file_write__internal_FILE:bb.a
  %i.k = icmp eq ptr %.sroa.6.0.copyload47.i, null
  %or.cond58.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond58.i, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.l = load i32, ptr %i.b, align 4
  %i.m = trunc i32 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = trunc i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = mul i32 %i.w, %i.t
  %i.y = load i32, ptr %i.o, align 4
  %i.z = mul i32 %i.x, %i.y
  %i.aa = lshr i32 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i32, ptr %i.o, align 4
  %i.ad = load i32, ptr %i.v, align 4
  %i.ae = mul i32 %i.ad, %i.ac
  %i.af = lshr i32 %i.ae, 3
  %i.ag = trunc i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 %i.ag, ptr %i.ah, align 8
  %i.ai = load i32, ptr %i.v, align 4
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i16 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %4, ptr %i.am, align 8
  %i.an = tail call fastcc i32 @drwav_init_write__internal(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3)
  %.not.not16 = icmp eq i32 %i.an, 0
  br i1 %.not.not16, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.b, %bb.b, %bb.b, %drwav_copy_allocation_callbacks_or_defaults.exit.i, %bb.a
  %i.ao = tail call i32 @fclose(ptr noundef %1)   ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @drwav__on_write_memory(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  %i.i = shl i64 %i.c, 1
  %spec.select = select i1 %i.h, i64 256, i64 %i.i ; 2 uses
  %i.j = sub i64 %spec.select, %i.e
  %i.k = icmp ult i64 %i.j, %2
  %i.l = add i64 %i.e, %2
  %.035 = select i1 %i.k, i64 %i.l, i64 %spec.select ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = load ptr, ptr %i.m, align 8              ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %drwav__realloc_from_callbacks.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %.not26.i = icmp eq ptr %i.u, null
  br i1 %.not26.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = tail call ptr %i.s(i64 noundef %.035, ptr noundef %i.v) #61, !inline_history !1234 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27.i = icmp eq ptr %i.n, null
  br i1 %.not27.i, label %drwav__realloc_from_callbacks.exit.thread44, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %i.n, i64 %i.c, i1 false)
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = load ptr, ptr %i.o, align 8
  tail call void %i.y(ptr noundef nonnull %i.n, ptr noundef %i.z) #61, !inline_history !1234
  br label %drwav__realloc_from_callbacks.exit.thread44

drwav__realloc_from_callbacks.exit:               ; preds = %bb.b
  %i.aa = load ptr, ptr %i.o, align 8
  %i.ab = tail call ptr %i.q(ptr noundef %i.n, i64 noundef %.035, ptr noundef %i.aa) #61, !inline_history !1234 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.critedge, label %drwav__realloc_from_callbacks.exit.thread44

drwav__realloc_from_callbacks.exit.thread44:      ; preds = %bb.g, %bb.f, %drwav__realloc_from_callbacks.exit
  %.1.i47 = phi ptr [ %i.ab, %drwav__realloc_from_callbacks.exit ], [ %i.w, %bb.f ], [ %i.w, %bb.g ]
  %i.ac = load ptr, ptr %i.a, align 8
  store ptr %.1.i47, ptr %i.ac, align 8
  store i64 %.035, ptr %i.b, align 8
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %drwav__realloc_from_callbacks.exit.thread44, %bb.a
  %i.ad = phi i64 [ %.pre, %drwav__realloc_from_callbacks.exit.thread44 ], [ %i.e, %bb.a ]
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %1, i64 %2, i1 false)
  %i.ah = load i64, ptr %i.d, align 8
  %i.ai = add i64 %i.ah, %2                       ; 4 uses
  store i64 %i.ai, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ai, ptr %i.aj, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi i64 [ %i.ai, %bb.i ], [ %i.ak, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ao = load ptr, ptr %i.an, align 8
  store i64 %i.am, ptr %i.ao, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.e, %bb.c, %drwav__realloc_from_callbacks.exit, %bb.j
  %.1 = phi i64 [ %2, %bb.j ], [ 0, %drwav__realloc_from_callbacks.exit ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @drwav__on_seek_memory_write(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #17 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %.sink.split
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink17 = phi i64 [ 240, %bb.b ], [ 256, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink17
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.b, %.sink.split ]
  %i.c = sext i32 %1 to i64
  %i.d = add nsw i64 %.0, %i.c                    ; 3 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.d, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.013
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #33

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @vorbis_decode_initial(ptr nofree noundef initializes((1892, 1900)) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not87 = icmp eq i32 %i.d, 0
  br i1 %.not87, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  br label %bb.b

.critedge:                                        ; preds = %next_segment.exit.i, %bb.i, %bb.l, %bb.n
  store i32 0, ptr %i.e, align 8
  %i.t = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.u = tail call fastcc i32 @maybe_start_packet(ptr noundef nonnull %0)
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.e, align 8              ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %get_bits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %.lr.ph.i, label %.get_bits.exit_crit_edge

.get_bits.exit_crit_edge:                         ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4
  br label %get_bits.exit

.lr.ph.i:                                         ; preds = %bb.d
  store i32 0, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.y = tail call fastcc i32 @get8_packet_raw(ptr noundef nonnull %0), !inline_history !65 ; 2 uses
  %.not.i = icmp eq i32 %i.y, -1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.e, align 8              ; 3 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.f, align 4
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4
  %i.ad = add nsw i32 %i.z, 8                     ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8
  %i.ae = icmp slt i32 %i.z, -7
  br i1 %i.ae, label %bb.e, label %get_bits.exit

.critedge.i:                                      ; preds = %bb.e
  store i32 -1, ptr %i.e, align 8
  br label %get_bits.exit.thread

get_bits.exit:                                    ; preds = %bb.f, %.get_bits.exit_crit_edge
  %i.af = phi i32 [ %.pre, %.get_bits.exit_crit_edge ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ag = phi i32 [ %i.v, %.get_bits.exit_crit_edge ], [ %i.ad, %bb.f ]
  %i.ah = and i32 %i.af, 1
  %i.ai = lshr i32 %i.af, 1
  store i32 %i.ai, ptr %i.f, align 4
  %i.aj = add nsw i32 %i.ag, -1
  store i32 %i.aj, ptr %i.e, align 8
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %get_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_bits.exit
  %i.ak = load i8, ptr %i.g, align 4
  %.not59 = icmp eq i8 %i.ak, 0
  br i1 %.not59, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 35, ptr %i.s, align 4
  br label %.loopexit

.preheader:                                       ; preds = %bb.g, %get8_packet_raw.exit
  %i.al = load i8, ptr %i.h, align 4              ; 2 uses
  %.not.i73 = icmp eq i8 %i.al, 0
  br i1 %.not.i73, label %bb.i, label %bb.s

bb.i:                                             ; preds = %.preheader
  %i.am = load i32, ptr %i.i, align 4
  %.not6.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.j, align 8             ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %i.k, align 8
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.l, align 8
  %i.ar = tail call fastcc i32 @start_page(ptr noundef nonnull %0)
  %.not20.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not20.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.i, align 4
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.as = load i8, ptr %i.m, align 1
  %i.at = and i8 %i.as, 1
  %.not21.i.i = icmp eq i8 %i.at, 0
  br i1 %.not21.i.i, label %bb.n, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.m
  %.pre.i.i = load i32, ptr %i.j, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 32, ptr %i.s, align 4
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge.i.i, %bb.j
  %i.au = phi i32 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.an, %bb.j ] ; 3 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.av, ptr %i.j, align 8
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %i.n, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1             ; 4 uses
  %.not22.i.i = icmp eq i8 %i.ay, -1
  br i1 %.not22.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.i, align 4
  store i32 %i.au, ptr %i.l, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.az = load i32, ptr %i.k, align 8
  %.not23.i.i = icmp slt i32 %i.av, %i.az
  br i1 %.not23.i.i, label %next_segment.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 -1, ptr %i.j, align 8
  br label %next_segment.exit.i

next_segment.exit.i:                              ; preds = %bb.r, %bb.q
  store i8 %i.ay, ptr %i.h, align 4
  %.not7.i = icmp eq i8 %i.ay, 0
  br i1 %.not7.i, label %.critedge, label %bb.s

bb.s:                                             ; preds = %next_segment.exit.i, %.preheader
  %i.ba = phi i8 [ %i.ay, %next_segment.exit.i ], [ %i.al, %.preheader ]
  %i.bb = add i8 %i.ba, -1
  store i8 %i.bb, ptr %i.h, align 4
  %i.bc = load i32, ptr %i.o, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.o, align 4
  %i.be = load ptr, ptr %i.p, align 8             ; 3 uses
  %.not.i8.i = icmp eq ptr %i.be, null
  br i1 %.not.i8.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr %i.q, align 8
  %.not11.i.i = icmp ult ptr %i.be, %i.bf
  br i1 %.not11.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.c, align 8
  br label %get8_packet_raw.exit

bb.v:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bg, ptr %i.p, align 8
  br label %get8_packet_raw.exit

bb.w:                                             ; preds = %bb.s
  %i.bh = load ptr, ptr %i.r, align 8
  %i.bi = tail call i32 @fgetc(ptr noundef %i.bh)
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.x, label %get8_packet_raw.exit

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.c, align 8
  br label %get8_packet_raw.exit
end_hunk_9
