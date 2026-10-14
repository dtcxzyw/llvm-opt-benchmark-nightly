Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ba, i32 noundef 1, i32 noundef %i.bb, i64 noundef 2, ptr noundef null)
  %i.bf = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %i.bg = add nsw i32 %.sroa.speculated58.i, -1
  %i.bh = add i32 %i.bg, %2
  %i.bi = sdiv i32 %i.bh, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bf, i32 noundef 16, i32 noundef %i.bi, i32 noundef %i.ay, i64 noundef 2, ptr noundef null)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !61
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bj)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %5, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %1)
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit12

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 3 uses
  %.not3.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %5, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.bo)
          to label %_ZN4ncnn3MatD2Ev.exit12 unwind label %bb.m, !inline_history !0

bb.k:                                             ; preds = %bb.i
  %.not.i18 = icmp eq ptr %i.bo, null
  br i1 %.not.i18, label %_ZN4ncnn3MatD2Ev.exit12, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.bo) #12
  br label %_ZN4ncnn3MatD2Ev.exit12

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit12:                          ; preds = %bb.h, %bb.g, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit12, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %.not.i13 = icmp eq ptr %i.bv, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = atomicrmw add ptr %i.bv, i32 -1 acq_rel, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %i.bd, align 8, !tbaa !36 ; 3 uses
  %.not3.i14 = icmp eq ptr %i.by, null
  %i.bz = load ptr, ptr %5, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef %i.bz)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.u, !inline_history !0

bb.s:                                             ; preds = %bb.q
  %.not.i17 = icmp eq ptr %i.bz, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bz) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.p, %bb.o, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %i.bu
}

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn47conv3x3s1_winograd43_transform_kernel_int8_avx2ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp eq i32 %6, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.f = uitofp fast i64 %i.c to float            ; 2 uses
  %i.g = fmul fast float %i.f, f0x3EAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %i.j = and i32 %i.i, 2147483644
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !81
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !81
  %i.m = mul nsw i32 %i.l, %.sroa.speculated82    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 3
  %i.t = sdiv i32 %i.s, 4
  %i.u = shl nsw i32 %i.t, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated68, 3
  %i.y = and i32 %i.x, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !81
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 4
  %i.ae = shl nsw i32 %i.ad, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 4) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated62
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated62     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = sdiv i32 %i.ak, 4
  %i.am = shl nsw i32 %i.al, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !81
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %.sroa.speculated58
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sub nsw i64 %i.c, %i.aq
  %i.as = shl nsw i32 %i.ao, 1
  %i.at = add nsw i32 %i.as, %.sroa.speculated58
  %i.au = sext i32 %i.at to i64
  %i.av = udiv i64 %i.ar, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sdiv i32 %i.aw, 4
  %i.ay = shl nsw i32 %i.ax, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 4) ; 3 uses
  %i.az = add nsw i32 %1, -1                      ; 2 uses
  %i.ba = add nuw i32 %i.az, %.sroa.speculated52
  %7 = sdiv i32 %i.ba, %.sroa.speculated52        ; 2 uses
  %i.bb = add i32 %i.az, %7
  %8 = sdiv i32 %i.bb, %7
  %i.bc = add nsw i32 %8, 3
  %9 = sdiv i32 %i.bc, 4
  %10 = shl nsw i32 %9, 2
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %10, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 3 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %_ZN4ncnn3MatD2Ev.exit
  %indvar210 = phi i32 [ 0, %.lr.ph140 ], [ %indvar.next211, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033139 = phi i32 [ %i.k, %.lr.ph140 ], [ %i.bi, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = add i32 %i.k, %indvar210
  %i.s = mul i32 %i.r, 9
  %i.t = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.u = mul i32 %i.t, %.033139                   ; 3 uses
  %i.v = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.w = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1682 ; 2 uses
  %i.x = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !1682
  %i.y = sext i32 %i.v to i64
  %i.z = mul i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !1682
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %i.ab   ; 4 uses
  %i.ad = load i32, ptr %5, align 4, !tbaa !81    ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.af = load i32, ptr %7, align 4, !tbaa !81
  %i.ag = sub i32 %i.af, %i.u
  %i.ah = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ag) ; 6 uses
  %i.ai = load i32, ptr %6, align 4, !tbaa !81    ; 11 uses
  %i.aj = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count27.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.ak = sdiv i32 %i.u, %i.ah
  %i.al = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !1683
  %i.am = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !1683
  %i.an = load ptr, ptr %10, align 8, !tbaa !37, !noalias !1683
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !1683
  %i.ap = sext i32 %i.ak to i64
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !1683 ; 2 uses
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %i.al to i64
  %i.av = sext i32 %i.am to i64
  %i.aw = mul i64 %i.ar, %i.au                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.av
  %i.ay = icmp sgt i32 %.sroa.speculated83, 3
  %i.az = sext i32 %.sroa.speculated83 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.az, -3
  %invariant.op87.i = add nsw i64 %i.az, -1
  %i.ba = sext i32 %i.ai to i64                   ; 2 uses
  %i.bb = zext nneg i32 %i.ad to i64
  %i.bc = shl nuw nsw i64 %wide.trip.count27.i, 1
  %i.bd = add nsw i64 %i.bc, -2
  %i.be = mul nsw i64 %i.ba, 9
  %i.bf = mul i32 %i.t, %i.s
  %i.bg = getelementptr i8, ptr %i.w, i64 %i.ab
  %i.bh = getelementptr i8, ptr %i.bg, i64 2
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bi = add i32 %.033139, 1
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033139, %i.bj
  %indvar.next211 = add i32 %indvar210, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar207 = phi i64 [ 0, %.lr.ph ], [ %indvar.next208, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bk = trunc i64 %indvar207 to i32
  %i.bl = mul i32 %i.ai, %i.bk
  %i.bm = sub i32 %i.ad, %i.bl
  %smin239 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bm) ; 3 uses
  %i.bn = add i32 %smin239, -2                    ; 2 uses
  %i.bo = lshr i32 %i.bn, 1                       ; 2 uses
  %i.bp = add nuw i32 %i.bo, 1                    ; 2 uses
  %i.bq = mul i32 %i.ai, %indvar
  %i.br = sub i32 %i.ad, %i.bq
  %smin205 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.br)
  %i.bs = zext i32 %smin205 to i64                ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 72
  %i.bu = mul i64 %i.be, %indvar207               ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bs, 9
  %i.bw = mul i32 %i.ai, %indvar
  %i.bx = sub i32 %i.ad, %i.bw
  %smin168 = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bx) ; 3 uses
  %i.by = zext i32 %smin168 to i64                ; 5 uses
  %i.bz = mul i32 %i.ai, %indvar
  %i.ca = sub i32 %i.ad, %i.bz
  %smin = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ca) ; 2 uses
  %i.cb = add i32 %smin, -1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 1
  %i.ce = mul i32 %smin, 36                       ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.bd, %i.cf
  %i.ch = mul nuw nsw i64 %i.cc, 72
  %i.ci = trunc i64 %indvars.iv to i32
  %i.cj = sub i32 %i.ad, %i.ci
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.cj) ; 19 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  br i1 %i.aj, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %bb.d
  %i.ck = load i32, ptr %9, align 4, !tbaa !81    ; 3 uses
  %i.cl = icmp sgt i32 %.sroa.speculated, 0
  %i.cm = mul i32 %i.ck, 9
  br i1 %i.cl, label %.preheader11.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep209 = getelementptr i8, ptr %.val, i64 %i.bu
  %i.cn = mul i32 %i.bf, %i.ck
  %i.co = mul i32 %i.ck, 9
  %i.cp = getelementptr i8, ptr %.val, i64 %i.bu
  %scevgep213 = getelementptr i8, ptr %i.cp, i64 %i.bv
  %min.iters.check218 = icmp ult i32 %.sroa.speculated, 4
  %n.vec220 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cq = mul nuw nsw i64 %n.vec220, 72
  %cmp.n229 = icmp eq i64 %n.vec220, %wide.trip.count.i
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi ptr [ %i.ac, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cr = trunc i64 %indvars.iv24.i to i32
  %i.cs = add i32 %i.u, %i.cr
  %i.ct = mul i32 %i.cm, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %.val, i64 %i.cu ; 5 uses
  br i1 %min.iters.check218, label %.preheader.preheader.i.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.preheader11.i
  %i.cw = trunc i64 %indvars.iv24.i to i32
  %i.cx = mul i32 %i.co, %i.cw
  %i.cy = add i32 %i.cx, %i.cn
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.cz
  %scevgep212 = getelementptr i8, ptr %scevgep209, i64 %i.cz
  %scevgep206 = getelementptr i8, ptr %.019.i, i64 %i.bt
  %bound0215 = icmp ult ptr %.019.i, %scevgep214
  %bound1216 = icmp ult ptr %scevgep212, %scevgep206
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.preheader.preheader.i.preheader, label %vector.ph219

vector.ph219:                                     ; preds = %vector.memcheck204
  %i.da = getelementptr i8, ptr %.019.i, i64 %i.cq ; 2 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 6 uses
  %i.db = or disjoint i64 %index222, 1
  %i.dc = or disjoint i64 %index222, 2
  %i.dd = or disjoint i64 %index222, 3
end_hunk_0
begin_hunk_1_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.rf = insertelement <8 x i16> %i.re, i16 %i.qx, i64 4
  %i.rg = insertelement <8 x i16> %i.rf, i16 %i.qy, i64 5
  %i.rh = insertelement <8 x i16> %i.rg, i16 %i.qz, i64 6
  %i.ri = insertelement <8 x i16> %i.rh, i16 %i.ra, i64 7
  store <8 x i16> %i.ri, ptr %next.gep172, align 2, !tbaa !116, !alias.scope !1716, !noalias !1715
  %index.next173 = add nuw i64 %index163, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.rj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1705

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n174, label %._crit_edge46.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.043.i.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.gm, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ] ; 4 uses
  %.011342.i.ph = phi ptr [ %gep53.i, %iter.check ], [ %gep53.i, %vector.memcheck ], [ %i.oi, %vec.epilog.iter.check ], [ %i.qi, %vec.epilog.middle.block ] ; 2 uses
  %.741.i.ph = phi ptr [ %.648.i, %iter.check ], [ %.648.i, %vector.memcheck ], [ %i.oj, %vec.epilog.iter.check ], [ %i.qj, %vec.epilog.middle.block ] ; 2 uses
  %i.rk = sub i32 %smin216, %.043.i.ph
  %xtraiter224 = and i32 %i.rk, 7                 ; 2 uses
  %lcmp.mod225.not = icmp eq i32 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.043.i.prol = phi i32 [ %i.ro, %vec.epilog.scalar.ph.prol ], [ %.043.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.011342.i.prol = phi ptr [ %i.rm, %vec.epilog.scalar.ph.prol ], [ %.011342.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.741.i.prol = phi ptr [ %i.rn, %vec.epilog.scalar.ph.prol ], [ %.741.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter226 = phi i32 [ %prol.iter226.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.rl = load i16, ptr %.011342.i.prol, align 2, !tbaa !116
  store i16 %i.rl, ptr %.741.i.prol, align 2, !tbaa !116
  %i.rm = getelementptr inbounds nuw i8, ptr %.011342.i.prol, i64 32 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.741.i.prol, i64 2 ; 3 uses
  %i.ro = add nuw nsw i32 %.043.i.prol, 1         ; 2 uses
  %prol.iter226.next = add i32 %prol.iter226, 1   ; 2 uses
  %prol.iter226.cmp.not = icmp eq i32 %prol.iter226.next, %xtraiter224
  br i1 %prol.iter226.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1706

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa215.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.rn, %vec.epilog.scalar.ph.prol ]
  %.043.i.unr = phi i32 [ %.043.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ro, %vec.epilog.scalar.ph.prol ]
  %.011342.i.unr = phi ptr [ %.011342.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rm, %vec.epilog.scalar.ph.prol ]
  %.741.i.unr = phi ptr [ %.741.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.rn, %vec.epilog.scalar.ph.prol ]
  %i.rp = sub i32 %.043.i.ph, %smin216
  %i.rq = icmp ugt i32 %i.rp, -8
  br i1 %i.rq, label %._crit_edge46.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.043.i = phi i32 [ %i.sp, %vec.epilog.scalar.ph ], [ %.043.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.011342.i = phi ptr [ %i.sn, %vec.epilog.scalar.ph ], [ %.011342.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.741.i = phi ptr [ %i.so, %vec.epilog.scalar.ph ], [ %.741.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.rr = load i16, ptr %.011342.i, align 2, !tbaa !116
  store i16 %i.rr, ptr %.741.i, align 2, !tbaa !116
  %i.rs = getelementptr inbounds nuw i8, ptr %.011342.i, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %.741.i, i64 2
  %i.ru = load i16, ptr %i.rs, align 2, !tbaa !116
  store i16 %i.ru, ptr %i.rt, align 2, !tbaa !116
  %i.rv = getelementptr inbounds nuw i8, ptr %.011342.i, i64 64
  %i.rw = getelementptr inbounds nuw i8, ptr %.741.i, i64 4
  %i.rx = load i16, ptr %i.rv, align 2, !tbaa !116
  store i16 %i.rx, ptr %i.rw, align 2, !tbaa !116
  %i.ry = getelementptr inbounds nuw i8, ptr %.011342.i, i64 96
  %i.rz = getelementptr inbounds nuw i8, ptr %.741.i, i64 6
  %i.sa = load i16, ptr %i.ry, align 2, !tbaa !116
  store i16 %i.sa, ptr %i.rz, align 2, !tbaa !116
  %i.sb = getelementptr inbounds nuw i8, ptr %.011342.i, i64 128
  %i.sc = getelementptr inbounds nuw i8, ptr %.741.i, i64 8
  %i.sd = load i16, ptr %i.sb, align 2, !tbaa !116
  store i16 %i.sd, ptr %i.sc, align 2, !tbaa !116
  %i.se = getelementptr inbounds nuw i8, ptr %.011342.i, i64 160
  %i.sf = getelementptr inbounds nuw i8, ptr %.741.i, i64 10
  %i.sg = load i16, ptr %i.se, align 2, !tbaa !116
  store i16 %i.sg, ptr %i.sf, align 2, !tbaa !116
  %i.sh = getelementptr inbounds nuw i8, ptr %.011342.i, i64 192
  %i.si = getelementptr inbounds nuw i8, ptr %.741.i, i64 12
  %i.sj = load i16, ptr %i.sh, align 2, !tbaa !116
  store i16 %i.sj, ptr %i.si, align 2, !tbaa !116
  %i.sk = getelementptr inbounds nuw i8, ptr %.011342.i, i64 224
  %i.sl = getelementptr inbounds nuw i8, ptr %.741.i, i64 14
  %i.sm = load i16, ptr %i.sk, align 2, !tbaa !116
  store i16 %i.sm, ptr %i.sl, align 2, !tbaa !116
  %i.sn = getelementptr inbounds nuw i8, ptr %.011342.i, i64 256
  %i.so = getelementptr inbounds nuw i8, ptr %.741.i, i64 16 ; 2 uses
  %i.sp = add nuw nsw i32 %.043.i, 8              ; 2 uses
  %exitcond70.not.i.7 = icmp eq i32 %i.sp, %.sroa.speculated
  br i1 %exitcond70.not.i.7, label %._crit_edge46.i, label %vec.epilog.scalar.ph, !llvm.loop !1707

._crit_edge46.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa138 = phi ptr [ %i.qj, %vec.epilog.middle.block ], [ %i.oj, %middle.block ], [ %.lcssa215.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.so, %vec.epilog.scalar.ph ]
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count20.i
  br i1 %exitcond74.not.i, label %._crit_edge51.split.i, label %iter.check, !llvm.loop !17

._crit_edge51.split.i:                            ; preds = %._crit_edge46.i, %.lr.ph50.i, %.preheader2.i
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond79.not.i = icmp eq i64 %indvars.iv.next76.i, 16
  br i1 %exitcond79.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !18

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge51.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ay ; 2 uses
  %i.sq = icmp slt i64 %indvars.iv.next, %i.az
  %indvar.next = add i32 %indvar, 1
  br i1 %i.sq, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1708

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.i:                                             ; preds = %bb.c
  %i.sr = landingpad { ptr, i32 }
          catch ptr null
  %i.ss = extractvalue { ptr, i32 } %i.sr, 0
  call void @__clang_call_terminate(ptr %i.ss) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() ; 2 uses
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0105 = phi i32 [ %i.c, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.d = add nsw i32 %i.a, -32
  %i.e = sdiv i32 %i.d, 64
  %i.f = shl nsw i32 %i.e, 3
  %.sroa.speculated95 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 8) ; 3 uses
  %i.g = add i32 %2, -1                           ; 2 uses
  %i.h = add i32 %i.g, %.sroa.speculated95
  %i.i = sdiv i32 %i.h, %.sroa.speculated95       ; 2 uses
  %i.j = add i32 %i.g, %i.i
  %i.k = sdiv i32 %i.j, %i.i
  %i.l = add nsw i32 %i.k, 7
  %i.m = sdiv i32 %i.l, 8
  %i.n = shl nsw i32 %i.m, 3
  %.sroa.speculated91 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated95)
  store i32 %.sroa.speculated91, ptr %5, align 4, !tbaa !81
  %i.o = add nsw i32 %0, 31
  %i.p = sdiv i32 %i.o, 32                        ; 2 uses
  %i.q = add i32 %0, -1                           ; 3 uses
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, %i.p
  %i.t = add nsw i32 %i.s, 7
  %i.u = sdiv i32 %i.t, 8
  %i.v = shl nsw i32 %i.u, 3
  %.sroa.speculated85 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 8)
  store i32 %.sroa.speculated85, ptr %3, align 4, !tbaa !81
  %i.w = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated81 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.0105)
  %i.x = load i32, ptr %3, align 4, !tbaa !81
  %i.y = mul nsw i32 %i.x, %.sroa.speculated81    ; 3 uses
  %i.z = add i32 %i.q, %i.y
  %i.aa = sdiv i32 %i.z, %i.y                     ; 2 uses
  %i.ab = add i32 %i.q, %i.aa
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = add nsw i32 %i.ac, 7
  %i.ae = sdiv i32 %i.ad, 8
  %i.af = shl nsw i32 %i.ae, 3
  %.sroa.speculated77 = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.y) ; 3 uses
  %i.ag = icmp sgt i32 %.0105, 1
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = sdiv i32 %.sroa.speculated77, %.0105
  %.sroa.speculated67 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.ai = add nuw nsw i32 %.sroa.speculated67, 7
  %i.aj = and i32 %i.ai, 2147483640
  %.sroa.speculated73 = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %.sroa.speculated77)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi i32 [ %.sroa.speculated73, %bb.d ], [ %.sroa.speculated77, %bb.c ] ; 3 uses
  store i32 %i.ak, ptr %3, align 4, !tbaa !81
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %5, align 4, !tbaa !81    ; 3 uses
  %.not = icmp slt i32 %i.am, %2
  %i.an = mul nsw i32 %i.ak, %i.am
  %i.ao = sub nsw i32 %i.a, %i.an
  %i.ap = shl nsw i32 %i.ak, 2
  %i.aq = select i1 %.not, i32 %i.ap, i32 0
  %.sink = add nsw i32 %i.am, %i.aq
  %i.ar = sdiv i32 %i.ao, %.sink
  %i.as = sdiv i32 %i.ar, 8
  %i.at = shl nsw i32 %i.as, 3
  %.sroa.speculated61 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 8) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated61
  %7 = sdiv i32 %i.av, %.sroa.speculated61        ; 2 uses
  %i.aw = add i32 %i.au, %7
  %8 = sdiv i32 %i.aw, %7
  %i.ax = add nsw i32 %8, 7
  %9 = sdiv i32 %i.ax, 8
  %10 = shl nsw i32 %9, 3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %10, i32 %.sroa.speculated61)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45convolution_im2col_gemm_transform_kernel_int8ERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %8) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not54 = icmp sgt i32 %i.k, %i.j
  br i1 %.not54, label %._crit_edge57, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.x = load i32, ptr %5, align 4, !tbaa !81     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge57

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.z = phi i32 [ %i.ag, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.aa = phi i32 [ %i.ah, %._crit_edge ], [ %i.x, %.lr.ph ] ; 3 uses
  %.02855 = phi i32 [ %i.ai, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ab = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.02855              ; 3 uses
  %i.ad = load i32, ptr %4, align 4, !tbaa !81
  %i.ae = sub nsw i32 %i.ad, %i.ac
  %.sroa.speculated50 = call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ae)
  %i.af = icmp sgt i32 %i.aa, 0
  br i1 %i.af, label %_ZN4ncnn3MatD2Ev.exit29.preheader, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.preheader:                ; preds = %.lr.ph.split
  %.pre = load i32, ptr %6, align 4, !tbaa !81
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre59 = load i32, ptr %i.b, align 4, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ag = phi i32 [ %.pre59, %._crit_edge.loopexit ], [ %i.z, %.lr.ph.split ] ; 2 uses
  %i.ah = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.aa, %.lr.ph.split ]
  %i.ai = add nsw i32 %.02855, 1
  %.not.not = icmp slt i32 %.02855, %i.ag
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge57, !llvm.loop !1717

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aj = phi i32 [ %i.bp, %_ZN4ncnn3MatD2Ev.exit ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.preheader ] ; 2 uses
  %i.ak = phi i32 [ %i.br, %_ZN4ncnn3MatD2Ev.exit ], [ %i.aa, %_ZN4ncnn3MatD2Ev.exit29.preheader ]
  %.053 = phi i32 [ %i.bq, %_ZN4ncnn3MatD2Ev.exit ], [ 0, %_ZN4ncnn3MatD2Ev.exit29.preheader ] ; 4 uses
  %i.al = sub nsw i32 %i.ak, %.053
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.am = load i32, ptr %3, align 4, !tbaa !81
  %i.an = sdiv i32 %i.ac, %i.am
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !89, !noalias !1723 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !37, !noalias !1723
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !1723
  %i.ar = sext i32 %i.an to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.n, align 8, !tbaa !79, !noalias !1723 ; 3 uses
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au
  %i.aw = load i32, ptr %i.o, align 8, !tbaa !80, !noalias !1723
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !36, !noalias !1723
  %i.ay = sext i32 %i.ao to i64                   ; 2 uses
  %i.az = sdiv i32 %.053, %i.aj
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.at, %i.ay
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  store ptr %i.bd, ptr %9, align 8, !tbaa !37, !alias.scope !1724
  store ptr null, ptr %i.q, align 8, !tbaa !35, !alias.scope !1724
  store i64 %i.at, ptr %i.r, align 8, !tbaa !79, !alias.scope !1724
  store i32 %i.aw, ptr %i.s, align 8, !tbaa !80, !alias.scope !1724
  store ptr %i.ax, ptr %i.t, align 8, !tbaa !36, !alias.scope !1724
  %i.be = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ao, i64 1
  store <4 x i32> %i.be, ptr %i.u, align 8, !tbaa !81, !alias.scope !1724
  store i32 1, ptr %i.v, align 8, !tbaa !82, !alias.scope !1724
  store i64 %i.ay, ptr %i.w, align 8, !tbaa !38, !alias.scope !1724
  invoke void @_ZN4ncnn20Gemm_x86_fma_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.ac, i32 noundef %.sroa.speculated50, i32 noundef %.053, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.j

_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !35  ; 2 uses
  %.not.i30 = icmp eq ptr %i.bf, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !36  ; 3 uses
  %.not3.i31 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  invoke void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.h, !inline_history !0

bb.f:                                             ; preds = %bb.d
  %.not.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.bj) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #33
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.c, %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.bp = load i32, ptr %6, align 4, !tbaa !81    ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.053                ; 2 uses
  %i.br = load i32, ptr %5, align 4, !tbaa !81    ; 3 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge.loopexit, !llvm.loop !1722

._crit_edge57:                                    ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge57, %bb.a
  ret void

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #33
  unreachable
}

declare void @_ZN4ncnn20Gemm_x86_fma_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1
end_hunk_1
begin_hunk_2_@_ZNK4ncnn19Convolution_x86_fma19forwardDilation_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.15:bb.a
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %wide.load = load <8 x float>, ptr %i.bn, align 4, !tbaa !56, !alias.scope !2139
  %wide.load92 = load <8 x float>, ptr %i.bo, align 4, !tbaa !56, !alias.scope !2139
  %wide.load93 = load <8 x float>, ptr %i.bp, align 4, !tbaa !56, !alias.scope !2139
  %wide.load94 = load <8 x float>, ptr %i.bq, align 4, !tbaa !56, !alias.scope !2139
  %i.br = getelementptr inbounds [4 x i8], ptr %.03265, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store <8 x float> %wide.load, ptr %i.br, align 4, !tbaa !56, !alias.scope !2140, !noalias !2139
  store <8 x float> %wide.load92, ptr %i.bs, align 4, !tbaa !56, !alias.scope !2140, !noalias !2139
  store <8 x float> %wide.load93, ptr %i.bt, align 4, !tbaa !56, !alias.scope !2140, !noalias !2139
  store <8 x float> %wide.load94, ptr %i.bu, align 4, !tbaa !56, !alias.scope !2140, !noalias !2139
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2132

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index96
  %wide.load97 = load <4 x float>, ptr %i.bw, align 4, !tbaa !56, !alias.scope !2139
  %i.bx = getelementptr inbounds [4 x i8], ptr %.03265, i64 %index96
  store <4 x float> %wide.load97, ptr %i.bx, align 4, !tbaa !56, !alias.scope !2140, !noalias !2139
  %index.next98 = add nuw i64 %index96, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2133

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n99, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec95, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !56
  %i.cb = mul nsw i64 %indvars.iv.prol, %i.aj
  %i.cc = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cb
  store float %i.ca, ptr %i.cc, align 4, !tbaa !56
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2134

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv.ph, %i.ak
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cf = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.ai
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge67, label %iter.check, !llvm.loop !2135

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !56
  %i.ci = mul nsw i64 %indvars.iv, %i.aj
  %i.cj = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.ci
  store float %i.ch, ptr %i.cj, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !56
  %i.cm = mul nsw i64 %indvars.iv.next, %i.aj
  %i.cn = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cm
  store float %i.cl, ptr %i.cn, align 4, !tbaa !56
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.1
  %i.cp = load float, ptr %i.co, align 4, !tbaa !56
  %i.cq = mul nsw i64 %indvars.iv.next.1, %i.aj
  %i.cr = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cq
  store float %i.cp, ptr %i.cr, align 4, !tbaa !56
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !56
  %i.cu = mul nsw i64 %indvars.iv.next.2, %i.aj
  %i.cv = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !56
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ak
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2136

._crit_edge70.split:                              ; preds = %._crit_edge67, %_ZN4ncnn3MatD2Ev.exit34.lr.ph, %_ZN4ncnn3MatD2Ev.exit34.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge70.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.e = add nsw i32 %i.b, -32
  %i.f = sdiv i32 %i.e, 64
  %i.g = shl nsw i32 %i.f, 3
  %.sroa.speculated110 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 8) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated110
  %i.j = sdiv i32 %i.i, %.sroa.speculated110      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 7
  %i.n = sdiv i32 %i.m, 8
  %i.o = shl nsw i32 %i.n, 3
  %.sroa.speculated105 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated110)
  store i32 %.sroa.speculated105, ptr %5, align 4, !tbaa !81
  %i.p = add nsw i32 %0, 31
  %i.q = sdiv i32 %i.p, 32                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 7
  %i.v = sdiv i32 %i.u, 8
  %i.w = shl nsw i32 %i.v, 3
  %.sroa.speculated98 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 8)
  store i32 %.sroa.speculated98, ptr %3, align 4, !tbaa !81
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0120)
  %i.y = load i32, ptr %3, align 4, !tbaa !81
  %i.z = mul nsw i32 %i.y, %.sroa.speculated93    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 7
  %i.af = sdiv i32 %i.ae, 8
  %i.ag = shl nsw i32 %i.af, 3
  %.sroa.speculated88 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0120, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated88, %.0120
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated76, 7
  %i.ak = and i32 %i.aj, 2147483640
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated88)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated83, %bb.d ], [ %.sroa.speculated88, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !81
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !81    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %i.as = sdiv i32 %i.ar, 4
  %i.at = shl nsw i32 %i.as, 2
  %.sroa.speculated69 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 4) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated69
  %7 = sdiv i32 %i.av, %.sroa.speculated69        ; 2 uses
  %i.aw = add i32 %i.au, %7
  %8 = sdiv i32 %i.aw, %7
  %i.ax = add nsw i32 %8, 3
  %9 = sdiv i32 %i.ax, 4
  %10 = shl nsw i32 %9, 2
  %.sroa.speculated64 = tail call i32 @llvm.smin.i32(i32 %10, i32 %.sroa.speculated69)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated64, i32 4)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !81     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !81
  %i.h = load i32, ptr %0, align 4, !tbaa !81     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !81
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !81
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not96 = icmp sgt i32 %i.k, %i.j
  br i1 %.not96, label %._crit_edge99, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !81     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge99

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ab, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.02897 = phi i32 [ %i.ac, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.02897                ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !81
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 6 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 7
  %i.y = zext nneg i32 %.sroa.speculated57 to i64
  %i.z = sext i32 %i.t to i64                     ; 4 uses
  %i.aa = sext i32 %.sroa.speculated57 to i64     ; 3 uses
  %invariant.op.i = add nsw i64 %i.aa, -3
  %invariant.op296.i = add nsw i64 %i.aa, -1
  %.pre = load i32, ptr %6, align 4, !tbaa !81
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ab = phi i32 [ %i.r, %.lr.ph.split ], [ %i.vf, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ac = add i32 %.02897, 1
  %exitcond.not = icmp eq i32 %.02897, %i.j
  br i1 %exitcond.not, label %._crit_edge99, label %.lr.ph.split, !llvm.loop !2141

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ad = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.vd, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ae = phi i32 [ %i.r, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.vf, %_ZN4ncnn3MatD2Ev.exit ]
  %.095 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ve, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.af = sub i32 %i.ae, %.095
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.af) ; 29 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !81
  %i.ah = sdiv i32 %i.t, %i.ag
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !89, !noalias !2164
  %i.aj = load ptr, ptr %7, align 8, !tbaa !37, !noalias !2164
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !38, !noalias !2164
  %i.al = sext i32 %i.ah to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !79, !noalias !2164 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = sdiv i32 %.095, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.aq
  %i.au = mul i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !89  ; 4 uses
  br i1 %i.x, label %.lr.ph101.i, label %.preheader65.i

.lr.ph101.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.ax = sext i32 %.095 to i64                   ; 8 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 7
  %i.az = and i32 %.sroa.speculated, -8
  %i.ba = sext i32 %i.aw to i64                   ; 8 uses
  br label %bb.c

.preheader65.loopexit.i:                          ; preds = %._crit_edge.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader65.i

.preheader65.i:                                   ; preds = %.preheader65.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0270.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.bb, %.preheader65.loopexit.i ] ; 3 uses
  %.0258.lcssa.i = phi ptr [ %i.av, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.2260.lcssa.i, %.preheader65.loopexit.i ] ; 2 uses
  %i.bc = or disjoint i32 %.0270.lcssa.i, 3
  %i.bd = icmp slt i32 %i.bc, %.sroa.speculated57
  br i1 %i.bd, label %.lr.ph142.i, label %.preheader62.i

.lr.ph142.i:                                      ; preds = %.preheader65.i
  %i.be = sext i32 %.095 to i64                   ; 4 uses
  %i.bf = icmp sgt i32 %.sroa.speculated, 7
  %i.bg = and i32 %.sroa.speculated, -8
  %i.bh = zext nneg i32 %.0270.lcssa.i to i64
  %i.bi = sext i32 %i.aw to i64                   ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph101.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph101.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.025899.i = phi ptr [ %i.av, %.lr.ph101.i ], [ %.2260.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !37    ; 8 uses
  %i.bk = add nsw i64 %indvars.iv.i, %i.z         ; 8 uses
  %i.bl = mul nsw i64 %i.bk, %i.ba
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.ax ; 2 uses
  %i.bo = add nsw i64 %i.bk, 1
  %i.bp = mul nsw i64 %i.bo, %i.ba
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bp
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ax ; 2 uses
  %i.bs = add nsw i64 %i.bk, 2
  %i.bt = mul nsw i64 %i.bs, %i.ba
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.ax ; 2 uses
  %i.bw = add nsw i64 %i.bk, 3
  %i.bx = mul nsw i64 %i.bw, %i.ba
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ax ; 2 uses
  %i.ca = add nsw i64 %i.bk, 4
  %i.cb = mul nsw i64 %i.ca, %i.ba
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ax ; 2 uses
  %i.ce = add nsw i64 %i.bk, 5
  %i.cf = mul nsw i64 %i.ce, %i.ba
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cf
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ax ; 2 uses
  %i.ci = add nsw i64 %i.bk, 6
  %i.cj = mul nsw i64 %i.ci, %i.ba
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ax ; 2 uses
  %i.cm = add nsw i64 %i.bk, 7
  %i.cn = mul nsw i64 %i.cm, %i.ba
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cn
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ax ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %.preheader66.i

.preheader66.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.0305.lcssa.i = phi ptr [ %i.bz, %bb.c ], [ %i.ge, %.lr.ph.i ]
  %.0303.lcssa.i = phi ptr [ %i.cd, %bb.c ], [ %i.gf, %.lr.ph.i ]
  %.0301.lcssa.i = phi ptr [ %i.ch, %bb.c ], [ %i.gg, %.lr.ph.i ]
  %.0299.lcssa.i = phi ptr [ %i.cl, %bb.c ], [ %i.gh, %.lr.ph.i ]
  %.0297.lcssa.i = phi ptr [ %i.cp, %bb.c ], [ %i.gi, %.lr.ph.i ]
  %.0295.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.az, %.lr.ph.i ] ; 2 uses
  %.0278.lcssa.i = phi ptr [ %i.bv, %bb.c ], [ %i.gd, %.lr.ph.i ]
  %.0276.lcssa.i = phi ptr [ %i.br, %bb.c ], [ %i.gc, %.lr.ph.i ]
  %.0274.lcssa.i = phi ptr [ %i.bn, %bb.c ], [ %i.gb, %.lr.ph.i ]
  %.1259.lcssa.i = phi ptr [ %.025899.i, %bb.c ], [ %i.ga, %.lr.ph.i ] ; 2 uses
  %i.cq = icmp slt i32 %.0295.lcssa.i, %.sroa.speculated
  br i1 %i.cq, label %.lr.ph96.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.125976.i = phi ptr [ %i.ga, %.lr.ph.i ], [ %.025899.i, %bb.c ] ; 9 uses
  %.027475.i = phi ptr [ %i.gb, %.lr.ph.i ], [ %i.bn, %bb.c ] ; 2 uses
  %.027674.i = phi ptr [ %i.gc, %.lr.ph.i ], [ %i.br, %bb.c ] ; 2 uses
  %.027873.i = phi ptr [ %i.gd, %.lr.ph.i ], [ %i.bv, %bb.c ] ; 2 uses
  %.029572.i = phi i32 [ %i.gj, %.lr.ph.i ], [ 0, %bb.c ]
  %.029771.i = phi ptr [ %i.gi, %.lr.ph.i ], [ %i.cp, %bb.c ] ; 2 uses
  %.029970.i = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.cl, %bb.c ] ; 2 uses
  %.030169.i = phi ptr [ %i.gg, %.lr.ph.i ], [ %i.ch, %bb.c ] ; 2 uses
  %.030368.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.cd, %bb.c ] ; 2 uses
  %.030567.i = phi ptr [ %i.ge, %.lr.ph.i ], [ %i.bz, %bb.c ] ; 2 uses
  %i.cr = load <8 x float>, ptr %.027475.i, align 1, !tbaa !114 ; 2 uses
  %i.cs = load <8 x float>, ptr %.027674.i, align 1, !tbaa !114 ; 2 uses
  %i.ct = load <8 x float>, ptr %.027873.i, align 1, !tbaa !114 ; 2 uses
  %i.cu = load <8 x float>, ptr %.030567.i, align 1, !tbaa !114 ; 2 uses
  %i.cv = load <8 x float>, ptr %.030368.i, align 1, !tbaa !114 ; 2 uses
  %i.cw = load <8 x float>, ptr %.030169.i, align 1, !tbaa !114 ; 2 uses
  %i.cx = load <8 x float>, ptr %.029970.i, align 1, !tbaa !114 ; 2 uses
  %i.cy = load <8 x float>, ptr %.029771.i, align 1, !tbaa !114 ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cr, <8 x float> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.da = shufflevector <8 x float> %i.cr, <8 x float> %i.cs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dc = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dd = shufflevector <8 x float> %i.cv, <8 x float> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
end_hunk_2
