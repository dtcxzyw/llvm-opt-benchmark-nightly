Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK14llama_kv_cache17set_input_k_shiftEP11ggml_tensor:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.ak = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.k, %bb.d ] ; 2 uses
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next25, %i.al
  br i1 %i.am, label %bb.d, label %._crit_edge21, !llvm.loop !34

bb.f:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !110
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.at = phi i32 [ %i.as, %bb.g ], [ 0, %bb.f ]
  %i.au = add i64 %i.w, %indvars.iv
  %i.av = and i64 %i.au, 4294967295
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.av
  store i32 %i.at, ptr %i.aw, align 4, !tbaa !110
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !110
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !126
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !110
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bd = phi i32 [ %i.bc, %bb.i ], [ 0, %bb.h ]
  %i.be = add i64 %i.w, %indvars.iv.next
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bf
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !110
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !35
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache17set_input_kq_maskEP11ggml_tensorPK12llama_ubatchb(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.args_set_input_kq_mask, align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !312
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.e = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.d)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1747, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !180
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !180  ; 3 uses
  %i.j = zext i32 %i.b to i64                     ; 2 uses
  %i.k = srem i64 %i.j, %i.i
  %i.l = sdiv i64 %i.j, %i.i
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1752, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.57) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !306 ; 2 uses
  br i1 %3, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 12588
  %i.o = load i32, ptr %i.n, align 4, !tbaa !382
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106
  %i.s = icmp eq i32 %i.r, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.f
  %.0.in = phi i1 [ false, %bb.f ], [ %i.s, %bb.g ], [ true, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %.pre, ptr %4, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !384
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !117, !nonnull !118, !align !119
  store ptr %i.w, ptr %i.u, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.y, ptr %i.x, align 8, !tbaa !329
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !99
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !385
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !106
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !386
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.g, ptr %i.af, align 8, !tbaa !387
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.i, ptr %i.ag, align 8, !tbaa !388
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.l, ptr %i.ah, align 8, !tbaa !389
  %i.ai = load i32, ptr %1, align 8, !tbaa !271
  %i.aj = icmp eq i32 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !171 ; 4 uses
  br i1 %i.aj, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  br i1 %.0.in, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZL22set_input_kq_mask_implItLb1EEvRK22args_set_input_kq_maskPT_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, ptr noundef %i.al)
  br label %_ZL22set_input_kq_mask_implItEvRK22args_set_input_kq_maskPT_b.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZL22set_input_kq_mask_implItLb0EEvRK22args_set_input_kq_maskPT_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, ptr noundef %i.al)
  br label %_ZL22set_input_kq_mask_implItEvRK22args_set_input_kq_maskPT_b.exit

bb.k:                                             ; preds = %._crit_edge
  br i1 %.0.in, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZL22set_input_kq_mask_implIfLb1EEvRK22args_set_input_kq_maskPT_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, ptr noundef %i.al)
  br label %_ZL22set_input_kq_mask_implItEvRK22args_set_input_kq_maskPT_b.exit

bb.m:                                             ; preds = %bb.k
  call fastcc void @_ZL22set_input_kq_mask_implIfLb0EEvRK22args_set_input_kq_maskPT_(ptr noundef nonnull readonly align 8 dereferenceable(64) %4, ptr noundef %i.al)
  br label %_ZL22set_input_kq_mask_implItEvRK22args_set_input_kq_maskPT_b.exit

_ZL22set_input_kq_mask_implItEvRK22args_set_input_kq_maskPT_b.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache20set_input_pos_bucketEP11ggml_tensorPK12llama_ubatch(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !312  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1791, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.58) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !202
  %i.k = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.j)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1794, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %2, align 8, !tbaa !635
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1795, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.59) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !180  ; 2 uses
  %3 = trunc i64 %i.p to i32
  %.not39 = icmp eq i32 %i.b, 0
  %4 = icmp slt i32 %3, 1
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %brmerge = select i1 %.not39, i1 true, i1 %4
  br i1 %brmerge, label %.split35, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %i.q = and i64 %i.p, 2147483647                 ; 2 uses
  %wide.trip.count44 = zext i32 %i.b to i64
  br label %.preheader

.split35:                                         ; preds = %._crit_edge, %bb.g
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next42, %._crit_edge ] ; 3 uses
  %i.r = mul nuw nsw i64 %indvars.iv41, %i.q
  %i.s = getelementptr [4 x i8], ptr %i.n, i64 %i.r
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %.split35, label %.preheader, !llvm.loop !633

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !126
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !110
  %i.w = load ptr, ptr %6, align 8, !tbaa !366
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv41
  %i.y = load i32, ptr %i.x, align 4, !tbaa !110
  %i.z = load ptr, ptr %7, align 8, !tbaa !306, !nonnull !118, !align !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !636
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call noundef i32 @_Z30llama_relative_position_bucketiimb(i32 noundef %i.v, i32 noundef %i.y, i64 noundef %i.ac, i1 noundef zeroext false)
  %i.ae = getelementptr [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !110
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !634
}

declare noundef i32 @_Z30llama_relative_position_bucketiimb(i32 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache15set_input_k_rotEP11ggml_tensor(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.c = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1814, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !390
  %.not.not.i.i.i = icmp eq i64 %i.h, 0           ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.i, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !180
  %i.l = icmp eq i64 %i.e, %i.k
  br i1 %i.l, label %.loopexit27, label %bb.e, !llvm.loop !36

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !104  ; 3 uses
  %i.o = urem i64 %i.e, %i.n                      ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !156  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !157  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !180
  %i.v = icmp eq i64 %i.e, %i.u
  br i1 %i.v, label %.thread48, label %.lr.ph.i.i.i.i.i

.thread48:                                        ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !171
  br label %bb.o

bb.i:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.e, %i.ab
  br i1 %i.y, label %.loopexit27, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %bb.i ], [ %i.s, %bb.h ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !180 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.n
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.o
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i, %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1817, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.60) #29
  unreachable

.loopexit27:                                      ; preds = %bb.i, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !171 ; 2 uses
  br i1 %.not.not.i.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.loopexit27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.sroa.06.0.in.i.i.i14 = phi ptr [ %i.af, %bb.k ], [ %.sroa.06.0.i.i.i15, %bb.m ]
  %.sroa.06.0.i.i.i15 = load ptr, ptr %.sroa.06.0.in.i.i.i14, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i16 = icmp eq ptr %.sroa.06.0.i.i.i15, null
  br i1 %.not.i.i.i16, label %.loopexit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i15, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !180
  %i.ai = icmp eq i64 %i.e, %i.ah
  br i1 %i.ai, label %_ZNKSt13unordered_mapIlSt6vectorIfSaIfEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE2atERS8_.exit, label %bb.l, !llvm.loop !36

bb.n:                                             ; preds = %.loopexit27
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !104 ; 2 uses
  %.pre40 = load ptr, ptr %i.f, align 8, !tbaa !103
  %.pre41 = urem i64 %i.e, %.pre                  ; 2 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw [8 x i8], ptr %.pre40, i64 %.pre41
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %.pre43, null
  br i1 %.not.i.i.i.i.i7, label %.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %.thread48, %bb.n
  %i.aj = phi ptr [ %i.x, %.thread48 ], [ %i.ae, %bb.n ] ; 2 uses
  %i.ak = phi i64 [ %i.n, %.thread48 ], [ %.pre, %bb.n ]
  %.pre-phi51 = phi i64 [ %i.o, %.thread48 ], [ %.pre41, %bb.n ]
  %i.al = phi ptr [ %i.r, %.thread48 ], [ %.pre43, %bb.n ]
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !157 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !180
  %i.ap = icmp eq i64 %i.e, %i.ao
  br i1 %i.ap, label %_ZNKSt13unordered_mapIlSt6vectorIfSaIfEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE2atERS8_.exit, label %.lr.ph.i.i.i.i.i8

bb.p:                                             ; preds = %bb.q
  %i.aq = icmp eq i64 %i.e, %i.at
  br i1 %i.aq, label %_ZNKSt13unordered_mapIlSt6vectorIfSaIfEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE2atERS8_.exit, label %.lr.ph.i.i.i.i.i8, !llvm.loop !3

.lr.ph.i.i.i.i.i8:                                ; preds = %bb.o, %bb.p
  %.020.i.i.i.i.i9 = phi ptr [ %i.ar, %bb.p ], [ %i.am, %bb.o ]
  %i.ar = load ptr, ptr %.020.i.i.i.i.i9, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i10 = icmp eq ptr %i.ar, null
  br i1 %.not18.i.i.i.i.i10, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !180 ; 2 uses
  %i.au = urem i64 %i.at, %i.ak
  %.not19.i.i.i.i.i11 = icmp eq i64 %i.au, %.pre-phi51
  br i1 %.not19.i.i.i.i.i11, label %bb.p, label %..loopexit_crit_edge21.i.i.i.i.i12, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i12:               ; preds = %bb.q
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i8, %bb.l, %..loopexit_crit_edge21.i.i.i.i.i12, %bb.n
  tail call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.100) #29
  unreachable

_ZNKSt13unordered_mapIlSt6vectorIfSaIfEESt4hashIlESt8equal_toIlESaISt4pairIKlS2_EEE2atERS8_.exit: ; preds = %bb.p, %bb.m, %bb.o
  %i.av = phi ptr [ %i.ae, %bb.m ], [ %i.aj, %bb.o ], [ %i.aj, %bb.p ]
  %.sroa.06.1.i.i.i13 = phi ptr [ %.sroa.06.0.i.i.i15, %bb.m ], [ %i.am, %bb.o ], [ %i.ar, %bb.p ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i13, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !269
  %i.ay = tail call i64 @ggml_nbytes(ptr noundef %1)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 4 %i.ax, i64 %i.ay, i1 false)
  ret void
}

declare i64 @ggml_nbytes(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK14llama_kv_cache15set_input_v_rotEP11ggml_tensor(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !202
  %i.c = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1823, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.56) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
end_hunk_0
