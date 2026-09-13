Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZN4ncnn36conv3x3s1_winograd23_int8_avx512vnniERKNS_3MatERS0_S2_iRKNS_6OptionE:bb.a
  %.not3.i133.i = icmp eq ptr %i.gx, null
  %i.gy = load ptr, ptr %6, align 8, !tbaa !28    ; 3 uses
  br i1 %.not3.i133.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gy)
          to label %_ZN4ncnn3MatD2Ev.exit79.i unwind label %bb.an, !inline_history !0

bb.al:                                            ; preds = %bb.aj
  %.not.i141.i = icmp eq ptr %i.gy, null
  br i1 %.not.i141.i, label %_ZN4ncnn3MatD2Ev.exit79.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.gy) #4
  br label %_ZN4ncnn3MatD2Ev.exit79.i

bb.an:                                            ; preds = %bb.ak
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit79.i:                        ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.au

.critedge78.i:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit165.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit171.i
  %i.he = load ptr, ptr %i.ex, align 8, !tbaa !38 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.he, null
  br i1 %.not.i136.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %.critedge78.i
  %i.hf = atomicrmw add ptr %i.he, i32 -1 acq_rel, align 4
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.hh = load ptr, ptr %i.ey, align 8, !tbaa !37 ; 3 uses
  %.not3.i137.i = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %8, align 8, !tbaa !28    ; 3 uses
  br i1 %.not3.i137.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.at, !inline_history !0

bb.ar:                                            ; preds = %bb.ap
  %.not.i140.i = icmp eq ptr %i.hi, null
  br i1 %.not.i140.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.hi) #4
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao, %.critedge78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit79.i, %_ZN4ncnn3MatD2Ev.exit82.i
  %.364.i = phi i32 [ %.263.i, %_ZN4ncnn3MatD2Ev.exit82.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit79.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  br label %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i

bb.av:                                            ; preds = %bb.aa, %bb.r, %bb.d
  %.pn73.pn.i = phi { ptr, i32 } [ %i.gj, %bb.aa ], [ %i.cj, %bb.d ], [ %i.fi, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.ho = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %.not.i128.i = icmp eq ptr %i.ho, null
  br i1 %.not.i128.i, label %_ZN4ncnn3MatD2Ev.exit80.i, label %bb.bc

_ZNK4ncnn3Mat5emptyEv.exit167.thread.i:           ; preds = %bb.au, %_ZNK4ncnn3Mat5emptyEv.exit167.i, %bb.a
  %.465.i = phi i32 [ %.364.i, %bb.au ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit167.i ], [ -100, %bb.a ]
  %i.hp = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %.not.i124.i = icmp eq ptr %i.hp, null
  br i1 %.not.i124.i, label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i
  %i.hq = atomicrmw add ptr %i.hp, i32 -1 acq_rel, align 4
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.ax, label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hs = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 3 uses
  %.not3.i125.i = icmp eq ptr %i.hs, null
  %i.ht = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  br i1 %.not3.i125.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  invoke void %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.ht)
          to label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i145.i = icmp eq ptr %i.ht, null
  br i1 %.not.i145.i, label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.ht) #4
  br label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.bb:                                            ; preds = %bb.ay
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #27
  unreachable

bb.bc:                                            ; preds = %bb.av
  %i.hz = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.ia = icmp eq i32 %i.hz, 1
  br i1 %i.ia, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit80.i

bb.bd:                                            ; preds = %bb.bc
  %i.ib = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 3 uses
  %.not3.i129.i = icmp eq ptr %i.ib, null
  %i.ic = load ptr, ptr %5, align 8, !tbaa !28    ; 3 uses
  br i1 %.not3.i129.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.id = load ptr, ptr %i.ib, align 8, !tbaa !40
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ib, ptr noundef %i.ic)
          to label %_ZN4ncnn3MatD2Ev.exit80.i unwind label %bb.bh, !inline_history !0

bb.bf:                                            ; preds = %bb.bd
  %.not.i143.i = icmp eq ptr %i.ic, null
  br i1 %.not.i143.i, label %_ZN4ncnn3MatD2Ev.exit80.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.ic) #4
  br label %_ZN4ncnn3MatD2Ev.exit80.i

bb.bh:                                            ; preds = %bb.be
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit80.i:                        ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  resume { ptr, i32 } %.pn73.pn.i

_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i, %bb.aw, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret i32 %.465.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #0 {
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
  %7 = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %7, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !10
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !10
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 15
  %i.s = sdiv i32 %i.r, 16
  %i.t = shl nsw i32 %i.s, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 15
  %i.x = and i32 %i.w, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !10
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 16) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 15
  %i.ak = sdiv i32 %i.aj, 16
  %i.al = shl nsw i32 %i.ak, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !10
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.c, %i.ap
  %i.ar = shl nsw i32 %i.an, 1
  %i.as = add nsw i32 %i.ar, %.sroa.speculated58
  %i.at = sext i32 %i.as to i64
  %i.au = udiv i64 %i.aq, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = sdiv i32 %i.av, 4
  %i.ax = shl nsw i32 %i.aw, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 4) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %i.ba = udiv i32 %i.az, %.sroa.speculated52     ; 2 uses
  %i.bb = add nuw i32 %i.ay, %i.ba
  %i.bc = udiv i32 %i.bb, %i.ba
  %i.bd = add nuw nsw i32 %i.bc, 3
  %i.be = and i32 %i.bd, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, -2147483648) %6) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  store i32 %3, ptr %i.b, align 4, !tbaa !10
  store i32 %4, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16   ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  store i32 %i.n, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  store i32 %i.p, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = sext i32 %i.p to i64
  %i.t = mul i64 %i.r, %i.s
  store i64 %i.t, ptr %i.g, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.u = add nsw i32 %i.l, -1
  %i.v = sdiv i32 %i.u, 2
  store i32 %i.v, ptr %i.h, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  %i.w = sdiv i32 %5, 16
  store i32 %i.w, ptr %i.i, align 4, !tbaa !10
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.g, ptr nonnull %1)
  %i.x = load i32, ptr %i.i, align 4, !tbaa !10
  %i.y = shl nsw i32 %i.x, 4                      ; 3 uses
  %i.z = sub nsw i32 %5, %i.y                     ; 2 uses
  %i.aa = sdiv i32 %i.z, 8                        ; 3 uses
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !10
  %i.ab = icmp sgt i32 %i.z, 7
  br i1 %i.ab, label %.lr.ph, label %._crit_edge403

.lr.ph:                                           ; preds = %bb.a
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !10  ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = load i32, ptr %i.h, align 4             ; 2 uses
  %i.af = load i32, ptr %i.f, align 4             ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.d, align 4             ; 4 uses
  %i.ai = mul nsw i32 %i.af, %i.ah
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = load i64, ptr %i.g, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %i.an = shufflevector <8 x i32> %i.am, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ao = mul <8 x i32> %i.an, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 16 uses
  %factor.op.mul = shl i32 %i.ac, 4               ; 2 uses
  %i.ap = shl nsw i32 %i.ac, 3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sext i32 %factor.op.mul to i64
  %i.as = mul nsw i32 %i.ac, 24
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i32 %i.ac, 5
  %i.av = sext i32 %i.au to i64                   ; 12 uses
  br i1 %i.ad, label %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us.preheader, label %._crit_edge403

_ZN4ncnn3MatD2Ev.exit326.lr.ph.us.preheader:      ; preds = %.lr.ph
  %i.aw = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = sext i32 %i.aw to i64                   ; 3 uses
  %i.ba = zext i32 %i.y to i64
  %wide.trip.count452 = zext nneg i32 %i.aa to i64
  %wide.trip.count = zext nneg i32 %i.ac to i64
  %invariant.op = add nsw i64 %i.az, -1
  %invariant.op527 = add nsw i64 %i.az, -2
  %invariant.op528 = add nsw i64 %i.az, -3
  br label %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us

_ZN4ncnn3MatD2Ev.exit326.lr.ph.us:                ; preds = %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv449 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us.preheader ], [ %indvars.iv.next450, %._crit_edge.us ] ; 2 uses
  %i.bb = shl nuw nsw i64 %indvars.iv449, 3
  %i.bc = add nuw i64 %i.bb, %i.ba                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %i.ax, %i.bd
  %i.bf = sdiv i32 %i.be, %i.af
  %i.bg = sext i32 %i.bf to i64
  %i.bh = trunc i64 %i.bc to i32
  %.reass.us = mul i32 %factor.op.mul, %i.bh
  %i.bi = sext i32 %.reass.us to i64
  br label %_ZN4ncnn3MatD2Ev.exit326.us

_ZN4ncnn3MatD2Ev.exit326.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us, %.thread.us.3
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit326.lr.ph.us ], [ %indvars.iv.next, %.thread.us.3 ] ; 3 uses
  %i.bj = trunc i64 %indvars.iv to i32
  %i.bk = add i32 %i.ay, %i.bj                    ; 2 uses
  %i.bl = sdiv i32 %i.bk, %i.ae
  %i.bm = srem i32 %i.bk, %i.ae
  %i.bn = load i32, ptr %i.k, align 4, !tbaa !16, !noalias !568
  %i.bo = load ptr, ptr %0, align 8, !tbaa !28, !noalias !568
  %i.bp = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !568
  %i.bq = mul i64 %i.bp, %i.bg
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !29, !noalias !568 ; 2 uses
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bs
  %i.bu = sext i32 %i.bn to i64
  %i.bv = shl nsw i32 %i.bl, 1                    ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 4 uses
  %i.bx = mul nsw i64 %i.bu, %i.bw
  %i.by = mul i64 %i.bx, %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  %i.ca = shl nsw i32 %i.bm, 1                    ; 4 uses
  %i.cb = mul nsw i32 %i.af, %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %.neg.1 = mul nsw <16 x i16> %i.rv, splat (i16 -5)
  %i.akx = add nsw <16 x i16> %.neg.1, %i.akw
  %i.aky = add nsw <16 x i16> %i.akx, %i.acz
  %i.akz = add nsw <16 x i16> %i.aks, %i.akq
  %i.ala = sub nsw <16 x i16> %i.aks, %i.akq
  %i.alb = add nsw <16 x i16> %i.akv, %i.aku
  %i.alc = sub nsw <16 x i16> %i.akv, %i.aku
  %.neg245.1 = mul nsw <16 x i16> %i.xk, splat (i16 -5)
  %i.ald = add nsw <16 x i16> %.neg245.1, %i.akp
  %i.ale = add nsw <16 x i16> %i.ald, %i.aio
  store <16 x i16> %i.aky, ptr %i.akj, align 32, !tbaa !30
  store <16 x i16> %i.akz, ptr %i.akk, align 32, !tbaa !30
  store <16 x i16> %i.ala, ptr %i.akl, align 32, !tbaa !30
  store <16 x i16> %i.alb, ptr %i.akm, align 32, !tbaa !30
  store <16 x i16> %i.alc, ptr %i.akn, align 32, !tbaa !30
  store <16 x i16> %i.ale, ptr %i.ako, align 32, !tbaa !30
  %i.alf = load i32, ptr %3, align 4, !tbaa !10
  %i.alg = mul nsw i32 %i.alf, 96
  %i.alh = sext i32 %i.alg to i64                 ; 6 uses
  %i.ali = getelementptr inbounds [2 x i8], ptr %i.akj, i64 %i.alh ; 2 uses
  %i.alj = getelementptr inbounds [2 x i8], ptr %i.akk, i64 %i.alh ; 2 uses
  %i.alk = getelementptr inbounds [2 x i8], ptr %i.akl, i64 %i.alh ; 2 uses
  %i.all = getelementptr inbounds [2 x i8], ptr %i.akm, i64 %i.alh ; 2 uses
  %i.alm = getelementptr inbounds [2 x i8], ptr %i.akn, i64 %i.alh ; 2 uses
  %i.aln = getelementptr inbounds [2 x i8], ptr %i.ako, i64 %i.alh ; 2 uses
  %i.alo = shl nsw <16 x i16> %i.mh, splat (i16 2) ; 2 uses
  %i.alp = sub nsw <16 x i16> %i.xl, %i.alo       ; 2 uses
  %i.alq = shl nsw <16 x i16> %i.rw, splat (i16 2)
  %i.alr = sub nsw <16 x i16> %i.ada, %i.alq      ; 2 uses
  %i.als = sub nsw <16 x i16> %i.xl, %i.mh
  %i.alt = shl nsw <16 x i16> %i.als, splat (i16 1) ; 2 uses
  %i.alu = sub nsw <16 x i16> %i.ada, %i.rw       ; 2 uses
  %i.alv = shl nsw <16 x i16> %i.gs, splat (i16 2)
  %.neg.2 = mul nsw <16 x i16> %i.rw, splat (i16 -5)
  %i.alw = add nsw <16 x i16> %.neg.2, %i.alv
  %i.alx = add nsw <16 x i16> %i.alw, %i.ada
  %i.aly = add nsw <16 x i16> %i.alr, %i.alp
  %i.alz = sub nsw <16 x i16> %i.alr, %i.alp
  %i.ama = add nsw <16 x i16> %i.alu, %i.alt
  %i.amb = sub nsw <16 x i16> %i.alu, %i.alt
  %.neg245.2 = mul nsw <16 x i16> %i.xl, splat (i16 -5)
  %i.amc = add nsw <16 x i16> %.neg245.2, %i.alo
  %i.amd = add nsw <16 x i16> %i.amc, %i.aip
  store <16 x i16> %i.alx, ptr %i.ali, align 32, !tbaa !30
  store <16 x i16> %i.aly, ptr %i.alj, align 32, !tbaa !30
  store <16 x i16> %i.alz, ptr %i.alk, align 32, !tbaa !30
  store <16 x i16> %i.ama, ptr %i.all, align 32, !tbaa !30
  store <16 x i16> %i.amb, ptr %i.alm, align 32, !tbaa !30
  store <16 x i16> %i.amd, ptr %i.aln, align 32, !tbaa !30
  %i.ame = load i32, ptr %3, align 4, !tbaa !10
  %i.amf = mul nsw i32 %i.ame, 96
  %i.amg = sext i32 %i.amf to i64                 ; 6 uses
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.ali, i64 %i.amg ; 2 uses
  %i.ami = getelementptr inbounds [2 x i8], ptr %i.alj, i64 %i.amg ; 2 uses
  %i.amj = getelementptr inbounds [2 x i8], ptr %i.alk, i64 %i.amg ; 2 uses
  %i.amk = getelementptr inbounds [2 x i8], ptr %i.all, i64 %i.amg ; 2 uses
  %i.aml = getelementptr inbounds [2 x i8], ptr %i.alm, i64 %i.amg ; 2 uses
  %i.amm = getelementptr inbounds [2 x i8], ptr %i.aln, i64 %i.amg ; 2 uses
  %i.amn = shl nsw <16 x i16> %i.mi, splat (i16 2) ; 2 uses
  %i.amo = sub nsw <16 x i16> %i.xm, %i.amn       ; 2 uses
  %i.amp = shl nsw <16 x i16> %i.rx, splat (i16 2)
  %i.amq = sub nsw <16 x i16> %i.adb, %i.amp      ; 2 uses
  %i.amr = sub nsw <16 x i16> %i.xm, %i.mi
  %i.ams = shl nsw <16 x i16> %i.amr, splat (i16 1) ; 2 uses
  %i.amt = sub nsw <16 x i16> %i.adb, %i.rx       ; 2 uses
  %i.amu = shl nsw <16 x i16> %i.gt, splat (i16 2)
  %.neg.3 = mul nsw <16 x i16> %i.rx, splat (i16 -5)
  %i.amv = add nsw <16 x i16> %.neg.3, %i.amu
  %i.amw = add nsw <16 x i16> %i.amv, %i.adb
  %i.amx = add nsw <16 x i16> %i.amq, %i.amo
  %i.amy = sub nsw <16 x i16> %i.amq, %i.amo
  %i.amz = add nsw <16 x i16> %i.amt, %i.ams
  %i.ana = sub nsw <16 x i16> %i.amt, %i.ams
  %.neg245.3 = mul nsw <16 x i16> %i.xm, splat (i16 -5)
  %i.anb = add nsw <16 x i16> %.neg245.3, %i.amn
  %i.anc = add nsw <16 x i16> %i.anb, %i.aiq
  store <16 x i16> %i.amw, ptr %i.amh, align 32, !tbaa !30
  store <16 x i16> %i.amx, ptr %i.ami, align 32, !tbaa !30
  store <16 x i16> %i.amy, ptr %i.amj, align 32, !tbaa !30
  store <16 x i16> %i.amz, ptr %i.amk, align 32, !tbaa !30
  store <16 x i16> %i.ana, ptr %i.aml, align 32, !tbaa !30
  store <16 x i16> %i.anc, ptr %i.amm, align 32, !tbaa !30
  %i.and = load i32, ptr %3, align 4, !tbaa !10
  %i.ane = mul nsw i32 %i.and, 96
  %i.anf = sext i32 %i.ane to i64                 ; 6 uses
  %i.ang = getelementptr inbounds [2 x i8], ptr %i.amh, i64 %i.anf ; 2 uses
  %i.anh = getelementptr inbounds [2 x i8], ptr %i.ami, i64 %i.anf ; 2 uses
  %i.ani = getelementptr inbounds [2 x i8], ptr %i.amj, i64 %i.anf ; 2 uses
  %i.anj = getelementptr inbounds [2 x i8], ptr %i.amk, i64 %i.anf ; 2 uses
  %i.ank = getelementptr inbounds [2 x i8], ptr %i.aml, i64 %i.anf ; 2 uses
  %i.anl = getelementptr inbounds [2 x i8], ptr %i.amm, i64 %i.anf ; 2 uses
  %i.anm = shl nsw <16 x i16> %i.mj, splat (i16 2) ; 2 uses
  %i.ann = sub nsw <16 x i16> %i.xn, %i.anm       ; 2 uses
  %i.ano = shl nsw <16 x i16> %i.ry, splat (i16 2)
  %i.anp = sub nsw <16 x i16> %i.adc, %i.ano      ; 2 uses
  %i.anq = sub nsw <16 x i16> %i.xn, %i.mj
  %i.anr = shl nsw <16 x i16> %i.anq, splat (i16 1) ; 2 uses
  %i.ans = sub nsw <16 x i16> %i.adc, %i.ry       ; 2 uses
  %i.ant = shl nsw <16 x i16> %i.gu, splat (i16 2)
  %.neg.4 = mul nsw <16 x i16> %i.ry, splat (i16 -5)
  %i.anu = add nsw <16 x i16> %.neg.4, %i.ant
  %i.anv = add nsw <16 x i16> %i.anu, %i.adc
  %i.anw = add nsw <16 x i16> %i.anp, %i.ann
  %i.anx = sub nsw <16 x i16> %i.anp, %i.ann
  %i.any = add nsw <16 x i16> %i.ans, %i.anr
  %i.anz = sub nsw <16 x i16> %i.ans, %i.anr
  %.neg245.4 = mul nsw <16 x i16> %i.xn, splat (i16 -5)
  %i.aoa = add nsw <16 x i16> %.neg245.4, %i.anm
  %i.aob = add nsw <16 x i16> %i.aoa, %i.air
  store <16 x i16> %i.anv, ptr %i.ang, align 32, !tbaa !30
  store <16 x i16> %i.anw, ptr %i.anh, align 32, !tbaa !30
  store <16 x i16> %i.anx, ptr %i.ani, align 32, !tbaa !30
  store <16 x i16> %i.any, ptr %i.anj, align 32, !tbaa !30
  store <16 x i16> %i.anz, ptr %i.ank, align 32, !tbaa !30
  store <16 x i16> %i.aob, ptr %i.anl, align 32, !tbaa !30
  %i.aoc = load i32, ptr %3, align 4, !tbaa !10
  %i.aod = mul nsw i32 %i.aoc, 96
  %i.aoe = sext i32 %i.aod to i64                 ; 6 uses
  %i.aof = getelementptr inbounds [2 x i8], ptr %i.ang, i64 %i.aoe
  %i.aog = getelementptr inbounds [2 x i8], ptr %i.anh, i64 %i.aoe
  %i.aoh = getelementptr inbounds [2 x i8], ptr %i.ani, i64 %i.aoe
  %i.aoi = getelementptr inbounds [2 x i8], ptr %i.anj, i64 %i.aoe
  %i.aoj = getelementptr inbounds [2 x i8], ptr %i.ank, i64 %i.aoe
  %i.aok = getelementptr inbounds [2 x i8], ptr %i.anl, i64 %i.aoe
  %i.aol = shl nsw <16 x i16> %i.ml, splat (i16 2) ; 2 uses
  %i.aom = sub nsw <16 x i16> %i.xp, %i.aol       ; 2 uses
  %i.aon = shl nsw <16 x i16> %i.sa, splat (i16 2)
  %i.aoo = sub nsw <16 x i16> %i.ade, %i.aon      ; 2 uses
  %i.aop = sub nsw <16 x i16> %i.xp, %i.ml
  %i.aoq = shl nsw <16 x i16> %i.aop, splat (i16 1) ; 2 uses
  %i.aor = sub nsw <16 x i16> %i.ade, %i.sa       ; 2 uses
  %i.aos = shl <16 x i16> %i.gw, splat (i16 2)
  %.neg.5 = mul nsw <16 x i16> %i.sa, splat (i16 -5)
  %i.aot = add <16 x i16> %.neg.5, %i.aos
  %i.aou = add <16 x i16> %i.aot, %i.ade
  %i.aov = add nsw <16 x i16> %i.aoo, %i.aom
  %i.aow = sub nsw <16 x i16> %i.aoo, %i.aom
  %i.aox = add nsw <16 x i16> %i.aor, %i.aoq
  %i.aoy = sub nsw <16 x i16> %i.aor, %i.aoq
  %.neg245.5 = mul nsw <16 x i16> %i.xp, splat (i16 -5)
  %i.aoz = add nsw <16 x i16> %.neg245.5, %i.aol
  %i.apa = add nsw <16 x i16> %i.aoz, %i.ait
  store <16 x i16> %i.aou, ptr %i.aof, align 32, !tbaa !30
  store <16 x i16> %i.aov, ptr %i.aog, align 32, !tbaa !30
  store <16 x i16> %i.aow, ptr %i.aoh, align 32, !tbaa !30
  store <16 x i16> %i.aox, ptr %i.aoi, align 32, !tbaa !30
  store <16 x i16> %i.aoy, ptr %i.aoj, align 32, !tbaa !30
  store <16 x i16> %i.apa, ptr %i.aok, align 32, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.apb = load i32, ptr %3, align 4, !tbaa !10   ; 3 uses
  %i.apc = sext i32 %i.apb to i64
  %i.apd = icmp slt i64 %indvars.iv.next, %i.apc
  br i1 %i.apd, label %.noexc, label %._crit_edge, !llvm.loop !835

._crit_edge:                                      ; preds = %.thread238.5, %.lr.ph.split
  %i.ape = phi i32 [ %i.q, %.lr.ph.split ], [ %i.apb, %.thread238.5 ]
  %i.apf = add i32 %.0259, 1
  %exitcond.not = icmp eq i32 %.0259, %i.j
  br i1 %exitcond.not, label %._crit_edge261, label %.lr.ph.split, !llvm.loop !836

._crit_edge261:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.gg

bb.gg:                                            ; preds = %._crit_edge261, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+avx512vnni,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !7, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !13, i64 64}
!16 = !{!15, !7, i64 44}
!17 = !{!15, !7, i64 24}
!18 = !{!15, !7, i64 56}
!19 = !{!15, !13, i64 64}
!20 = !{!15, !7, i64 48}
!21 = !{!12, !12, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 8, i32 56}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"_ZTSN4ncnn6OptionE", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !7, i64 4, !14, i64 8, !14, i64 16, !7, i64 24, !26, i64 28, !26, i64 29, !26, i64 30, !26, i64 31, !26, i64 32, !26, i64 33, !26, i64 34, !26, i64 35, !26, i64 36, !26, i64 37, !26, i64 38, !26, i64 39, !7, i64 40, !26, i64 44, !26, i64 45, !26, i64 46, !26, i64 47, !6, i64 48, !26, i64 49, !26, i64 50, !26, i64 51, !26, i64 52, !26, i64 53, !26, i64 54, !26, i64 55, !26, i64 56, !26, i64 57, !26, i64 58, !26, i64 59, !26, i64 60, !26, i64 61, !26, i64 62, !26, i64 63}
!28 = !{!15, !11, i64 0}
!29 = !{!15, !13, i64 16}
!30 = !{!6, !6, i64 0}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!"branch_weights", i32 16, i32 48}
!33 = !{i64 2, i64 -1, i64 -1, i1 true}
!34 = !{!33}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!27, !14, i64 16}
!37 = !{!15, !14, i64 32}
!38 = !{!15, !12, i64 8}
!39 = !{!"vtable pointer", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!13, !13, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!15, !7, i64 52}
!45 = !{!15, !7, i64 40}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = distinct !{!47, !22, !23, !24}
!48 = distinct !{!48, !22, !23, !24}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22, !24, !23}
!51 = distinct !{!51, !"_ZN4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !51, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!53 = distinct !{!53, !"_ZNK4ncnn3Mat7channelEi"}
!54 = distinct !{!54, !53, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!55 = distinct !{!55, !"_ZNK4ncnn3Mat7channelEi"}
!56 = distinct !{!56, !55, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !"_ZNK4ncnn3Mat7channelEi"}
!60 = distinct !{!60, !59, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!61 = distinct !{!61, !"_ZNK4ncnn3Mat7channelEi"}
!62 = distinct !{!62, !61, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !"_ZNK4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !65, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !"_ZNK4ncnn3Mat7channelEi"}
!73 = distinct !{!73, !72, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!74 = distinct !{!74, !"_ZNK4ncnn3Mat7channelEi"}
!75 = distinct !{!75, !74, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !"_ZNK4ncnn3Mat7channelEi"}
!79 = distinct !{!79, !78, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, !"_ZNK4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !80, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !"_ZNK4ncnn3Mat7channelEi"}
!87 = distinct !{!87, !86, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !"_ZNK4ncnn3Mat7channelEi"}
!92 = distinct !{!92, !91, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!93 = distinct !{!93, !"_ZNK4ncnn3Mat7channelEi"}
!94 = distinct !{!94, !93, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
!97 = distinct !{!97, !"_ZNK4ncnn3Mat7channelEi"}
!98 = distinct !{!98, !97, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !"_ZNK4ncnn3Mat7channelEi"}
!102 = distinct !{!102, !101, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !"_ZNK4ncnn3Mat7channelEi"}
!106 = distinct !{!106, !105, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !"_ZN4ncnn3Mat7channelEi"}
!112 = distinct !{!112, !111, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!113 = distinct !{!113, !"_ZNK4ncnn3Mat7channelEi"}
!114 = distinct !{!114, !113, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!115 = distinct !{!115, !"_ZNK4ncnn3Mat7channelEi"}
!116 = distinct !{!116, !115, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, !22}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !"_ZNK4ncnn3Mat7channelEi"}
!120 = distinct !{!120, !119, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !22}
!123 = distinct !{!123, !"_ZNK4ncnn3Mat7channelEi"}
!124 = distinct !{!124, !123, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!125 = distinct !{!125, !"_ZNK4ncnn3Mat7channelEi"}
!126 = distinct !{!126, !125, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = distinct !{!130, !22}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !"_ZNK4ncnn3Mat7channelEi"}
!133 = distinct !{!133, !132, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!134 = distinct !{!134, !"_ZNK4ncnn3Mat7channelEi"}
!135 = distinct !{!135, !134, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !"_ZNK4ncnn3Mat7channelEi"}
!139 = distinct !{!139, !138, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !22}
!142 = distinct !{!142, !"_ZNK4ncnn3Mat7channelEi"}
!143 = distinct !{!143, !142, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
end_hunk_1
