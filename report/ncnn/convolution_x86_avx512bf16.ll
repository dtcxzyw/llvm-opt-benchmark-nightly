Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn37conv3x3s1_winograd23_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE:bb.a
  %i.gz = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i135.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ha = load ptr, ptr %i.gy, align 8, !tbaa !48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  invoke void %i.hc(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef %i.gz)
          to label %_ZN4ncnn3MatD2Ev.exit81.i unwind label %bb.an, !inline_history !0

bb.al:                                            ; preds = %bb.aj
  %.not.i143.i = icmp eq ptr %i.gz, null
  br i1 %.not.i143.i, label %_ZN4ncnn3MatD2Ev.exit81.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.gz) #10
  br label %_ZN4ncnn3MatD2Ev.exit81.i

bb.an:                                            ; preds = %bb.ak
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit81.i:                        ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.au

.critedge80.i:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit170.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit169.i
  %i.hf = load ptr, ptr %i.ey, align 8, !tbaa !45 ; 2 uses
  %.not.i138.i = icmp eq ptr %i.hf, null
  br i1 %.not.i138.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.ao

bb.ao:                                            ; preds = %.critedge80.i
  %i.hg = atomicrmw add ptr %i.hf, i32 -1 acq_rel, align 4
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.hi = load ptr, ptr %i.ez, align 8, !tbaa !46 ; 3 uses
  %.not3.i139.i = icmp eq ptr %i.hi, null
  %i.hj = load ptr, ptr %11, align 8, !tbaa !15   ; 3 uses
  br i1 %.not3.i139.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !48
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hj)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.at, !inline_history !0

bb.ar:                                            ; preds = %bb.ap
  %.not.i142.i = icmp eq ptr %i.hj, null
  br i1 %.not.i142.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.hj) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.at:                                            ; preds = %bb.aq
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao, %.critedge80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit81.i, %_ZN4ncnn3MatD2Ev.exit84.i
  %.366.i = phi i32 [ %.265.i, %_ZN4ncnn3MatD2Ev.exit84.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit81.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  br label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i

bb.av:                                            ; preds = %bb.aa, %bb.r, %bb.d
  %.pn75.pn.i = phi { ptr, i32 } [ %i.gk, %bb.aa ], [ %i.ck, %bb.d ], [ %i.fj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  %i.hp = load ptr, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.hp, null
  br i1 %.not.i130.i, label %_ZN4ncnn3MatD2Ev.exit82.i, label %bb.bc

_ZNK4ncnn3Mat5emptyEv.exit172.thread.i:           ; preds = %bb.au, %_ZNK4ncnn3Mat5emptyEv.exit172.i, %bb.a
  %.467.i = phi i32 [ %.366.i, %bb.au ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit172.i ], [ -100, %bb.a ]
  %i.hq = load ptr, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %.not.i126.i = icmp eq ptr %i.hq, null
  br i1 %.not.i126.i, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i
  %i.hr = atomicrmw add ptr %i.hq, i32 -1 acq_rel, align 4
  %i.hs = icmp eq i32 %i.hr, 1
  br i1 %i.hs, label %bb.ax, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ht = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 3 uses
  %.not3.i127.i = icmp eq ptr %i.ht, null
  %i.hu = load ptr, ptr %8, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i127.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !48
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  invoke void %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %i.hu)
          to label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit unwind label %bb.bb, !inline_history !0

bb.az:                                            ; preds = %bb.ax
  %.not.i147.i = icmp eq ptr %i.hu, null
  br i1 %.not.i147.i, label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.hu) #10
  br label %_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit

bb.bb:                                            ; preds = %bb.ay
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #26
  unreachable

bb.bc:                                            ; preds = %bb.av
  %i.ia = atomicrmw add ptr %i.hp, i32 -1 acq_rel, align 4
  %i.ib = icmp eq i32 %i.ia, 1
  br i1 %i.ib, label %bb.bd, label %_ZN4ncnn3MatD2Ev.exit82.i

bb.bd:                                            ; preds = %bb.bc
  %i.ic = load ptr, ptr %i.ay, align 8, !tbaa !46 ; 3 uses
  %.not3.i131.i = icmp eq ptr %i.ic, null
  %i.id = load ptr, ptr %8, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i131.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !48
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  invoke void %i.ig(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef %i.id)
          to label %_ZN4ncnn3MatD2Ev.exit82.i unwind label %bb.bh, !inline_history !0

bb.bf:                                            ; preds = %bb.bd
  %.not.i145.i = icmp eq ptr %i.id, null
  br i1 %.not.i145.i, label %_ZN4ncnn3MatD2Ev.exit82.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @free(ptr noundef nonnull %i.id) #10
  br label %_ZN4ncnn3MatD2Ev.exit82.i

bb.bh:                                            ; preds = %bb.be
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit82.i:                        ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  resume { ptr, i32 } %.pn75.pn.i

_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.exit: ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, %bb.aw, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i32 %.467.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 2.500000e-01       ; 2 uses
  %i.g = fmul fast float %i.e, f0x3DAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %7, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !30
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !30
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
  store i32 %storemerge, ptr %3, align 4, !tbaa !30
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
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !30
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !30    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = fsub fast float %i.f, %i.ap
  %i.ar = add nsw i32 %i.an, %.sroa.speculated58
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = fdiv fast float %i.aq, %i.as
  %i.au = fptosi float %i.at to i32
  %i.av = sdiv i32 %i.au, 16
  %i.aw = shl nsw i32 %i.av, 4
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 16) ; 3 uses
  %i.ax = add nsw i32 %1, -1                      ; 2 uses
  %i.ay = add nuw i32 %i.ax, %.sroa.speculated52
  %i.az = udiv i32 %i.ay, %.sroa.speculated52     ; 2 uses
  %i.ba = add nuw i32 %i.ax, %i.az
  %i.bb = udiv i32 %i.ba, %i.az
  %i.bc = add nuw nsw i32 %i.bb, 15
  %i.bd = and i32 %i.bc, -16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !30     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.j, ptr %i.e, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 1, ptr %i.f, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i32 0, ptr %i.g, align 4, !tbaa !30
  %i.k = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !30
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !30
  %i.n = load i32, ptr %i.d, align 4, !tbaa !30   ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.ea, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !30    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !30    ; 2 uses
  %i.ax = load i32, ptr %5, align 4, !tbaa !30    ; 2 uses
  %i.ay = mul nsw i32 %i.ax, %i.av                ; 3 uses
  %i.az = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !30
  %i.bb = sub nsw i32 %i.ba, %i.az
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !30
  %i.bd = sub nsw i32 %i.bc, %i.ay
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !31, !noalias !689 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !35, !noalias !689 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !50, !noalias !689
  %i.bi = load ptr, ptr %8, align 8, !tbaa !15, !noalias !689
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !16, !noalias !689
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !17, !noalias !689 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !32, !noalias !689
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !46, !noalias !689
  store ptr %i.bo, ptr %11, align 8, !tbaa !15
  store ptr null, ptr %i.v, align 8, !tbaa !45
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !17
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !32
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !46
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !31
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !35
  store i32 1, ptr %i.ac, align 4, !tbaa !50
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !33
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !16
  %i.by = load i32, ptr %i.af, align 8, !tbaa !51, !noalias !689 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !51, !alias.scope !689
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

end_hunk_0
