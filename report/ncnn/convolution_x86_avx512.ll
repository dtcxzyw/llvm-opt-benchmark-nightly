Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 384
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 153
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 375
begin_hunk_0_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit59 ], [ 0, %.preheader ]
  %i.be = add nuw nsw i64 %indvars.iv, %indvars.iv137
  %.reass = mul i64 %factor.op.mul, %i.be
  %gep102 = getelementptr i8, ptr %gep, i64 %.reass
  %i.bf = load float, ptr %gep102, align 4, !tbaa !39
  store float %i.bf, ptr %.3103, align 4, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %.3103, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bh = add nuw nsw i64 %indvars.iv.next, %indvars.iv137
  %.reass.1 = mul i64 %factor.op.mul, %i.bh
  %gep102.1 = getelementptr i8, ptr %gep, i64 %.reass.1
  %i.bi = load float, ptr %gep102.1, align 4, !tbaa !39
  store float %i.bi, ptr %i.bg, align 4, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %.3103, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.bk = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv137
  %.reass.2 = mul i64 %factor.op.mul, %i.bk
  %gep102.2 = getelementptr i8, ptr %gep, i64 %.reass.2
  %i.bl = load float, ptr %gep102.2, align 4, !tbaa !39
  store float %i.bl, ptr %i.bj, align 4, !tbaa !39
  %i.bm = getelementptr inbounds nuw i8, ptr %.3103, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.bn = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv137
  %.reass.3 = mul i64 %factor.op.mul, %i.bn
  %gep102.3 = getelementptr i8, ptr %gep, i64 %.reass.3
  %i.bo = load float, ptr %gep102.3, align 4, !tbaa !39
  store float %i.bo, ptr %i.bm, align 4, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %.3103, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit59, !llvm.loop !634

bb.j:                                             ; preds = %bb.h
  %i.bq = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !17 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bu)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i73 = icmp eq ptr %i.bu, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.bu) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.j, %bb.h, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.ak
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
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
  %i.j = sdiv i32 %i.i, 16
  %i.k = shl nsw i32 %i.j, 4
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !67
  %i.l = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.0)
  %i.m = load i32, ptr %3, align 4, !tbaa !67
  %i.n = mul nsw i32 %i.m, %.sroa.speculated82    ; 3 uses
  %i.o = add i32 %0, -1                           ; 2 uses
  %i.p = add i32 %i.o, %i.n
  %i.q = sdiv i32 %i.p, %i.n                      ; 2 uses
  %i.r = add i32 %i.o, %i.q
  %i.s = sdiv i32 %i.r, %i.q
  %i.t = add nsw i32 %i.s, 15
  %i.u = sdiv i32 %i.t, 16
  %i.v = shl nsw i32 %i.u, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.n) ; 3 uses
  %i.w = icmp sgt i32 %.0, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = add nuw nsw i32 %.sroa.speculated68, 15
  %i.z = and i32 %i.y, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !67
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.ab = sitofp fast i32 %storemerge to float
  %i.ac = fsub fast float %i.aa, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sdiv i32 %i.ad, 16
  %i.af = shl nsw i32 %i.ae, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 16) ; 3 uses
  %i.ag = add i32 %2, -1                          ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.speculated62
  %i.ai = sdiv i32 %i.ah, %.sroa.speculated62     ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 15
  %i.am = sdiv i32 %i.al, 16
  %i.an = shl nsw i32 %i.am, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !67
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %.sroa.speculated58
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = fsub fast float %i.f, %i.ar
  %i.at = add nsw i32 %i.ap, %.sroa.speculated58
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fdiv fast float %i.as, %i.au
  %i.aw = fptosi float %i.av to i32
  %i.ax = sdiv i32 %i.aw, 16
  %i.ay = shl nsw i32 %i.ax, 4
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 16) ; 3 uses
  %i.az = add nsw i32 %1, -1                      ; 2 uses
  %i.ba = add nuw i32 %i.az, %.sroa.speculated52
  %i.bb = udiv i32 %i.ba, %.sroa.speculated52     ; 2 uses
  %i.bc = add nuw i32 %i.az, %i.bb
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = add nuw nsw i32 %i.bd, 15
  %i.bf = and i32 %i.be, -16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph101, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.lr.ph101 ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033100 = phi i32 [ %i.k, %.lr.ph101 ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %12 = add i32 %i.k, %indvar
  %i.aa = mul i32 %12, 9
  %i.ab = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.033100             ; 3 uses
  %i.ad = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18, !noalias !635
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !635
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !635
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.an = mul i32 %i.ab, %i.aa
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ao = add nsw i32 %.033100, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033100, %i.ap
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.aq = phi i32 [ %i.afc, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.afe, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.al, %.lr.ph.preheader ]
  %.098 = phi i32 [ %i.afd, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !67
  %i.at = sub nsw i32 %i.as, %i.ac
  %i.au = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at) ; 3 uses
  %i.av = sub i32 %i.ar, %.098
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.av) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.aw, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %.lr.ph
  %i.ax = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 0
  %i.az = mul i32 %i.ax, 9
  br i1 %i.ay, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %i.ba = sext i32 %.098 to i64                   ; 5 uses
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bb = shl nuw nsw i64 %wide.trip.count.i, 8
  %i.bc = mul nsw i64 %i.ba, 36
  %scevgep106 = getelementptr i8, ptr %.val, i64 %i.bc
  %i.bd = mul i32 %i.an, %i.ax
  %i.be = mul i32 %i.ax, 9
  %i.bf = add nsw i64 %i.ba, %wide.trip.count.i
  %i.bg = mul nsw i64 %i.bf, 36
  %scevgep108 = getelementptr i8, ptr %.val, i64 %i.bg
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %min.iters.check110 = icmp ult i32 %.sroa.speculated, 16
  %i.bh = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bi = shl nuw nsw i64 %n.vec, 8
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  %n.vec190 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.bj = shl nuw nsw i64 %n.vec190, 8
  %broadcast.splatinsert191 = insertelement <4 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat192 = shufflevector <4 x i64> %broadcast.splatinsert191, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n283 = icmp eq i64 %n.vec190, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader12.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader12.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ak, %.preheader12.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 8 uses
  %i.bk = trunc i64 %indvars.iv25.i to i32
  %i.bl = add i32 %i.ac, %i.bk
  %i.bm = mul i32 %i.az, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bn ; 3 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = trunc i64 %indvars.iv25.i to i32
  %i.bq = mul i32 %i.be, %i.bp
  %i.br = add i32 %i.bq, %i.bd
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2                    ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.bt
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bt
  %scevgep = getelementptr i8, ptr %.020.i, i64 %i.bb
  %bound0 = icmp ult ptr %.020.i, %scevgep109
  %bound1 = icmp ult ptr %scevgep107, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = getelementptr i8, ptr %.020.i, i64 %i.bi ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.020.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 256, i64 512, i64 768, i64 1024, i64 1280, i64 1536, i64 1792, i64 2048, i64 2304, i64 2560, i64 2816, i64 3072, i64 3328, i64 3584, i64 3840> ; 64 uses
  %i.bv = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.bw = mul nsw <16 x i64> %i.bv, splat (i64 36)
  %wide.gep = getelementptr inbounds i8, ptr %i.bo, <16 x i64> %i.bw ; 9 uses
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 4 uses
  %wide.gep111 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4
  %wide.masked.gather112 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep111, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 3 uses
  %wide.gep113 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8
  %wide.masked.gather114 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep113, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 6 uses
  %i.bx = fmul fast <16 x float> %wide.masked.gather, splat (float f0xBE638E39) ; 4 uses
  %i.by = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3E638E39) ; 2 uses
  %i.bz = fmul fast <16 x float> %wide.masked.gather114, splat (float f0xBE638E39) ; 4 uses
  %i.ca = fsub fast <16 x float> %i.bx, %i.by
  %i.cb = fadd fast <16 x float> %i.ca, %i.bz     ; 4 uses
  %i.cc = fadd fast <16 x float> %i.by, %i.bx
  %i.cd = fadd fast <16 x float> %i.cc, %i.bz     ; 4 uses
  %i.ce = fmul fast <16 x float> %wide.masked.gather, splat (float f0x3C360B61) ; 4 uses
  %i.cf = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3CB60B61) ; 2 uses
  %i.cg = fadd fast <16 x float> %i.cf, %i.ce
  %i.ch = fmul fast <16 x float> %wide.masked.gather114, splat (float f0x3D360B61) ; 2 uses
  %i.ci = fadd fast <16 x float> %i.cg, %i.ch     ; 4 uses
  %i.cj = fsub fast <16 x float> %i.ce, %i.cf
  %i.ck = fadd fast <16 x float> %i.cj, %i.ch     ; 4 uses
  %i.cl = fmul fast <16 x float> %wide.masked.gather, splat (float f0x3CB60B61) ; 4 uses
  %i.cm = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3C360B61) ; 2 uses
  %i.cn = fadd fast <16 x float> %i.cm, %i.cl
  %i.co = fmul fast <16 x float> %wide.masked.gather114, splat (float f0x3BB60B61) ; 2 uses
  %i.cp = fadd fast <16 x float> %i.cn, %i.co     ; 4 uses
  %i.cq = fsub fast <16 x float> %i.cl, %i.cm
  %i.cr = fadd fast <16 x float> %i.cq, %i.co     ; 4 uses
  %wide.gep115 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 12
  %wide.masked.gather116 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep115, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 4 uses
  %wide.gep117 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 16
  %wide.masked.gather118 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep117, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 3 uses
  %wide.gep119 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 20
  %wide.masked.gather120 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep119, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 6 uses
  %i.cs = fmul fast <16 x float> %wide.masked.gather116, splat (float f0xBE638E39) ; 2 uses
  %i.ct = fmul fast <16 x float> %wide.masked.gather118, splat (float f0x3E638E39) ; 2 uses
  %i.cu = fmul fast <16 x float> %wide.masked.gather120, splat (float f0xBE638E39) ; 2 uses
  %i.cv = fsub fast <16 x float> %i.cs, %i.ct
  %i.cw = fadd fast <16 x float> %i.cv, %i.cu     ; 3 uses
  %i.cx = fadd fast <16 x float> %i.ct, %i.cs
  %i.cy = fadd fast <16 x float> %i.cx, %i.cu     ; 3 uses
  %i.cz = fmul fast <16 x float> %wide.masked.gather116, splat (float f0x3C360B61) ; 4 uses
  %i.da = fmul fast <16 x float> %wide.masked.gather118, splat (float f0x3CB60B61) ; 2 uses
  %i.db = fadd fast <16 x float> %i.da, %i.cz
  %i.dc = fmul fast <16 x float> %wide.masked.gather120, splat (float f0x3D360B61) ; 2 uses
  %i.dd = fadd fast <16 x float> %i.db, %i.dc     ; 3 uses
  %i.de = fsub fast <16 x float> %i.cz, %i.da
  %i.df = fadd fast <16 x float> %i.de, %i.dc     ; 3 uses
  %i.dg = fmul fast <16 x float> %wide.masked.gather116, splat (float f0x3CB60B61) ; 4 uses
  %i.dh = fmul fast <16 x float> %wide.masked.gather118, splat (float f0x3C360B61) ; 2 uses
  %i.di = fadd fast <16 x float> %i.dh, %i.dg
  %i.dj = fmul fast <16 x float> %wide.masked.gather120, splat (float f0x3BB60B61) ; 2 uses
  %i.dk = fadd fast <16 x float> %i.di, %i.dj     ; 3 uses
  %i.dl = fsub fast <16 x float> %i.dg, %i.dh
  %i.dm = fadd fast <16 x float> %i.dl, %i.dj     ; 3 uses
  %wide.gep121 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 24
  %wide.masked.gather122 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep121, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 6 uses
  %wide.gep123 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 28
  %wide.masked.gather124 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep123, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 3 uses
  %wide.gep125 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 32
  %wide.masked.gather126 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep125, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !638 ; 4 uses
  %i.dn = fmul fast <16 x float> %wide.masked.gather122, splat (float f0xBE638E39) ; 4 uses
  %i.do = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3E638E39) ; 2 uses
  %i.dp = fmul fast <16 x float> %wide.masked.gather126, splat (float f0xBE638E39) ; 4 uses
  %i.dq = fsub fast <16 x float> %i.dn, %i.do
  %i.dr = fadd fast <16 x float> %i.dq, %i.dp     ; 4 uses
  %i.ds = fadd fast <16 x float> %i.do, %i.dn
  %i.dt = fadd fast <16 x float> %i.ds, %i.dp     ; 4 uses
  %i.du = fmul fast <16 x float> %wide.masked.gather122, splat (float f0x3C360B61) ; 2 uses
  %i.dv = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3CB60B61) ; 2 uses
  %i.dw = fadd fast <16 x float> %i.dv, %i.du
  %i.dx = fmul fast <16 x float> %wide.masked.gather126, splat (float f0x3D360B61) ; 4 uses
  %i.dy = fadd fast <16 x float> %i.dw, %i.dx     ; 4 uses
  %i.dz = fsub fast <16 x float> %i.du, %i.dv
  %i.ea = fadd fast <16 x float> %i.dz, %i.dx     ; 4 uses
  %i.eb = fmul fast <16 x float> %wide.masked.gather122, splat (float f0x3CB60B61) ; 2 uses
  %i.ec = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3C360B61) ; 2 uses
  %i.ed = fadd fast <16 x float> %i.ec, %i.eb
  %i.ee = fmul fast <16 x float> %wide.masked.gather126, splat (float f0x3BB60B61) ; 4 uses
  %i.ef = fadd fast <16 x float> %i.ed, %i.ee     ; 4 uses
  %i.eg = fsub fast <16 x float> %i.eb, %i.ec
  %i.eh = fadd fast <16 x float> %i.eg, %i.ee     ; 4 uses
  %i.ei = fmul fast <16 x float> %wide.masked.gather116, splat (float f0x3E638E39) ; 2 uses
  %i.ej = fsub fast <16 x float> %i.bx, %i.ei
  %i.ek = fadd fast <16 x float> %i.ej, %i.dn
  %i.el = fadd fast <16 x float> %i.ei, %i.bx
  %i.em = fadd fast <16 x float> %i.el, %i.dn
  %i.en = fadd fast <16 x float> %i.dg, %i.ce
  %i.eo = fmul fast <16 x float> %wide.masked.gather122, splat (float f0x3D360B61) ; 2 uses
  %i.ep = fadd fast <16 x float> %i.en, %i.eo
  %i.eq = fsub fast <16 x float> %i.ce, %i.dg
  %i.er = fadd fast <16 x float> %i.eq, %i.eo
  %i.es = fadd fast <16 x float> %i.cz, %i.cl
  %i.et = fmul fast <16 x float> %wide.masked.gather122, splat (float f0x3BB60B61) ; 2 uses
  %i.eu = fadd fast <16 x float> %i.es, %i.et
  %i.ev = fsub fast <16 x float> %i.cl, %i.cz
  %i.ew = fadd fast <16 x float> %i.ev, %i.et
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather, <16 x ptr> align 4 %vector.gep, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep127 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ek, <16 x ptr> align 4 %wide.gep127, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep128 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.em, <16 x ptr> align 4 %wide.gep128, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep129 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ep, <16 x ptr> align 4 %wide.gep129, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep130 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 16
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.er, <16 x ptr> align 4 %wide.gep130, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep131 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.eu, <16 x ptr> align 4 %wide.gep131, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep132 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 24
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ew, <16 x ptr> align 4 %wide.gep132, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep133 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather122, <16 x ptr> align 4 %wide.gep133, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !641, !noalias !638
  %wide.gep134 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 32
end_hunk_0
begin_hunk_1_@_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016145 = phi ptr [ %i.hf, %.lr.ph ], [ %gep, %.lr.ph.preheader ] ; 3 uses
  %.744 = phi ptr [ %i.hg, %.lr.ph ], [ %.647, %.lr.ph.preheader ] ; 9 uses
  %niter138 = phi i32 [ %niter138.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.gj = load float, ptr %.016145, align 4, !tbaa !39
  store float %i.gj, ptr %.744, align 4, !tbaa !39
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.016145, i64 %i.j
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %.744, i64 4
  store float %i.gl, ptr %i.gm, align 4, !tbaa !39
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.016145, i64 %i.am ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.744, i64 8
  %i.gp = load float, ptr %i.gn, align 4, !tbaa !39
  store float %i.gp, ptr %i.go, align 4, !tbaa !39
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.j
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %.744, i64 12
  store float %i.gr, ptr %i.gs, align 4, !tbaa !39
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.am ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.744, i64 16
  %i.gv = load float, ptr %i.gt, align 4, !tbaa !39
  store float %i.gv, ptr %i.gu, align 4, !tbaa !39
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.j
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %.744, i64 20
  store float %i.gx, ptr %i.gy, align 4, !tbaa !39
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.am ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.744, i64 24
  %i.hb = load float, ptr %i.gz, align 4, !tbaa !39
  store float %i.hb, ptr %i.ha, align 4, !tbaa !39
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.j
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !39
  %i.he = getelementptr inbounds nuw i8, ptr %.744, i64 28
  store float %i.hd, ptr %i.he, align 4, !tbaa !39
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.am ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.744, i64 32 ; 3 uses
  %niter138.next.3 = add nuw nsw i32 %niter138, 4 ; 2 uses
  %niter138.ncmp.3 = icmp eq i32 %niter138.next.3, %unroll_iter137
  br i1 %niter138.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !660

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod134.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016145.epil.init = phi ptr [ %gep, %.lr.ph.preheader ], [ %i.hf, %._crit_edge.loopexit.unr-lcssa ]
  %.744.epil.init = phi ptr [ %.647, %.lr.ph.preheader ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.016145.epil = phi ptr [ %i.hl, %.lr.ph.epil ], [ %.016145.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.744.epil = phi ptr [ %i.hm, %.lr.ph.epil ], [ %.744.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.hh = load float, ptr %.016145.epil, align 4, !tbaa !39
  store float %i.hh, ptr %.744.epil, align 4, !tbaa !39
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.016145.epil, i64 %i.j
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !39
  %i.hk = getelementptr inbounds nuw i8, ptr %.744.epil, i64 4
  store float %i.hj, ptr %i.hk, align 4, !tbaa !39
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.016145.epil, i64 %i.am
  %i.hm = getelementptr inbounds nuw i8, ptr %.744.epil, i64 8 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter133
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !661

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %.7.lcssa = phi ptr [ %.647, %bb.f ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ], [ %i.hm, %.lr.ph.epil ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 2 ; 3 uses
  %i.hn = icmp slt i64 %indvars.iv.next93, %invariant.op122
  br i1 %i.hn, label %bb.f, label %.preheader.loopexit, !llvm.loop !662

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %._crit_edge58
  %indvars.iv96 = phi i64 [ %i.gh, %.lr.ph57.preheader ], [ %indvars.iv.next97, %._crit_edge58 ] ; 2 uses
  %.860 = phi ptr [ %.6.lcssa, %.lr.ph57.preheader ], [ %.lcssa130, %._crit_edge58 ] ; 2 uses
  %i.ho = mul nsw i64 %indvars.iv96, %i.j
  %gep65 = getelementptr [4 x i8], ptr %invariant.gep64, i64 %i.ho ; 2 uses
  br i1 %i.au, label %.epil.preheader139, label %.lr.ph57.new

.lr.ph57.new:                                     ; preds = %.lr.ph57, %.lr.ph57.new
  %.015954 = phi ptr [ %i.il, %.lr.ph57.new ], [ %gep65, %.lr.ph57 ] ; 2 uses
  %.953 = phi ptr [ %i.im, %.lr.ph57.new ], [ %.860, %.lr.ph57 ] ; 9 uses
  %niter146 = phi i32 [ %niter146.next.7, %.lr.ph57.new ], [ 0, %.lr.ph57 ]
  %i.hp = load float, ptr %.015954, align 4, !tbaa !39
  store float %i.hp, ptr %.953, align 4, !tbaa !39
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.015954, i64 %i.am ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.953, i64 4
  %i.hs = load float, ptr %i.hq, align 4, !tbaa !39
  store float %i.hs, ptr %i.hr, align 4, !tbaa !39
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.am ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.953, i64 8
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !39
  store float %i.hv, ptr %i.hu, align 4, !tbaa !39
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.am ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.953, i64 12
  %i.hy = load float, ptr %i.hw, align 4, !tbaa !39
  store float %i.hy, ptr %i.hx, align 4, !tbaa !39
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.am ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.953, i64 16
  %i.ib = load float, ptr %i.hz, align 4, !tbaa !39
  store float %i.ib, ptr %i.ia, align 4, !tbaa !39
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.am ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.953, i64 20
  %i.ie = load float, ptr %i.ic, align 4, !tbaa !39
  store float %i.ie, ptr %i.id, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.am ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.953, i64 24
  %i.ih = load float, ptr %i.if, align 4, !tbaa !39
  store float %i.ih, ptr %i.ig, align 4, !tbaa !39
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.am ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.953, i64 28
  %i.ik = load float, ptr %i.ii, align 4, !tbaa !39
  store float %i.ik, ptr %i.ij, align 4, !tbaa !39
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.am ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.953, i64 32 ; 3 uses
  %niter146.next.7 = add nuw nsw i32 %niter146, 8 ; 2 uses
  %niter146.ncmp.7 = icmp eq i32 %niter146.next.7, %unroll_iter145
  br i1 %niter146.ncmp.7, label %._crit_edge58.unr-lcssa, label %.lr.ph57.new, !llvm.loop !663

._crit_edge58.unr-lcssa:                          ; preds = %.lr.ph57.new
  br i1 %lcmp.mod142.not, label %._crit_edge58, label %.epil.preheader139

.epil.preheader139:                               ; preds = %._crit_edge58.unr-lcssa, %.lr.ph57
  %.015954.epil.init = phi ptr [ %gep65, %.lr.ph57 ], [ %i.il, %._crit_edge58.unr-lcssa ]
  %.953.epil.init = phi ptr [ %.860, %.lr.ph57 ], [ %i.im, %._crit_edge58.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader139
  %.015954.epil = phi ptr [ %.015954.epil.init, %.epil.preheader139 ], [ %i.io, %bb.g ] ; 2 uses
  %.953.epil = phi ptr [ %.953.epil.init, %.epil.preheader139 ], [ %i.ip, %bb.g ] ; 2 uses
  %epil.iter141 = phi i32 [ 0, %.epil.preheader139 ], [ %epil.iter141.next, %bb.g ]
  %i.in = load float, ptr %.015954.epil, align 4, !tbaa !39
  store float %i.in, ptr %.953.epil, align 4, !tbaa !39
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.015954.epil, i64 %i.am
  %i.ip = getelementptr inbounds nuw i8, ptr %.953.epil, i64 4 ; 2 uses
  %epil.iter141.next = add i32 %epil.iter141, 1   ; 2 uses
  %epil.iter141.cmp.not = icmp eq i32 %epil.iter141.next, %xtraiter140
  br i1 %epil.iter141.cmp.not, label %._crit_edge58, label %bb.g, !llvm.loop !664

._crit_edge58:                                    ; preds = %bb.g, %._crit_edge58.unr-lcssa
  %.lcssa130 = phi ptr [ %i.im, %._crit_edge58.unr-lcssa ], [ %i.ip, %bb.g ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next97, %i.ap
  br i1 %exitcond99.not, label %._crit_edge63.split, label %.lr.ph57, !llvm.loop !665

._crit_edge63.split:                              ; preds = %._crit_edge58, %.lr.ph62, %.preheader
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %i.am
  br i1 %exitcond104.not, label %bb.b, label %bb.c, !llvm.loop !666
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !667 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not107 = icmp sgt i32 %i.k, %i.j
  br i1 %.not107, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph109, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.lr.ph109 ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033108 = phi i32 [ %i.k, %.lr.ph109 ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %12 = add i32 %i.k, %indvar
  %i.aa = mul i32 %12, 9
  %i.ab = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.033108             ; 3 uses
  %i.ad = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18, !noalias !669
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !669
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !669
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.an = mul i32 %i.ab, %i.aa
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ao = add nsw i32 %.033108, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033108, %i.ap
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.aq = phi i32 [ %i.sg, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.si, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.al, %.lr.ph.preheader ]
  %.0106 = phi i32 [ %i.sh, %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !67
  %i.at = sub nsw i32 %i.as, %i.ac
  %i.au = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at) ; 3 uses
  %i.av = sub i32 %i.ar, %.0106
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.av) ; 5 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.aw, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.lr.ph.i:                             ; preds = %.lr.ph
  %i.ax = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 0
  %i.az = mul i32 %i.ax, 9
  br i1 %i.ay, label %.preheader10.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.preheader.i:                         ; preds = %.preheader10.lr.ph.i
  %i.ba = sext i32 %.0106 to i64                  ; 5 uses
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bb = mul nuw nsw i64 %wide.trip.count.i, 144
  %i.bc = mul nsw i64 %i.ba, 36
  %scevgep114 = getelementptr i8, ptr %.val50, i64 %i.bc
  %i.bd = mul i32 %i.an, %i.ax
  %i.be = mul i32 %i.ax, 9
  %i.bf = add nsw i64 %i.ba, %wide.trip.count.i
  %i.bg = mul nsw i64 %i.bf, 36
  %scevgep116 = getelementptr i8, ptr %.val50, i64 %i.bg
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %min.iters.check118 = icmp ult i32 %.sroa.speculated, 16
  %i.bh = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bi = mul nuw nsw i64 %n.vec, 144
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  %n.vec170 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.bj = mul nuw nsw i64 %n.vec170, 144
  %broadcast.splatinsert171 = insertelement <4 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat172 = shufflevector <4 x i64> %broadcast.splatinsert171, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n235 = icmp eq i64 %n.vec170, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader10.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader10.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge.i ] ; 3 uses
  %.018.i = phi ptr [ %i.ak, %.preheader10.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 8 uses
  %i.bk = trunc i64 %indvars.iv23.i to i32
  %i.bl = add i32 %i.ac, %i.bk
  %i.bm = mul i32 %i.az, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.bn ; 3 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = trunc i64 %indvars.iv23.i to i32
  %i.bq = mul i32 %i.be, %i.bp
  %i.br = add i32 %i.bq, %i.bd
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2                    ; 2 uses
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.bt
  %scevgep115 = getelementptr i8, ptr %scevgep114, i64 %i.bt
  %scevgep = getelementptr i8, ptr %.018.i, i64 %i.bb
  %bound0 = icmp ult ptr %.018.i, %scevgep117
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = getelementptr i8, ptr %.018.i, i64 %i.bi ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.018.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 144, i64 288, i64 432, i64 576, i64 720, i64 864, i64 1008, i64 1152, i64 1296, i64 1440, i64 1584, i64 1728, i64 1872, i64 2016, i64 2160> ; 36 uses
  %i.bv = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.bw = mul nsw <16 x i64> %i.bv, splat (i64 36)
  %wide.gep = getelementptr inbounds i8, ptr %i.bo, <16 x i64> %i.bw ; 9 uses
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 3 uses
  %wide.gep119 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4
  %wide.masked.gather120 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep119, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 2 uses
  %wide.gep121 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8
  %wide.masked.gather122 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep121, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 4 uses
  %i.bx = fmul fast <16 x float> %wide.masked.gather, splat (float f0xBF2AAAAB) ; 4 uses
  %i.by = fmul fast <16 x float> %wide.masked.gather120, splat (float f0x3EF15BEF) ; 2 uses
  %i.bz = fmul fast <16 x float> %wide.masked.gather122, splat (float f0x3EAAAAAB) ; 4 uses
  %i.ca = fadd fast <16 x float> %i.by, %i.bz
  %i.cb = fsub fast <16 x float> %i.bx, %i.ca     ; 3 uses
  %i.cc = fadd fast <16 x float> %i.by, %i.bx
  %i.cd = fsub fast <16 x float> %i.cc, %i.bz     ; 3 uses
  %i.ce = fmul fast <16 x float> %wide.masked.gather, splat (float f0x3E2AAAAB) ; 4 uses
  %i.cf = fmul fast <16 x float> %wide.masked.gather120, splat (float f0x3E715BEF) ; 2 uses
  %i.cg = fadd fast <16 x float> %i.cf, %i.ce
  %i.ch = fadd fast <16 x float> %i.cg, %i.bz     ; 3 uses
  %i.ci = fsub fast <16 x float> %i.ce, %i.cf
  %i.cj = fadd fast <16 x float> %i.ci, %i.bz     ; 3 uses
  %wide.gep123 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 12
  %wide.masked.gather124 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep123, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 4 uses
  %wide.gep125 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 16
  %wide.masked.gather126 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep125, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 2 uses
  %wide.gep127 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 20
  %wide.masked.gather128 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep127, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 3 uses
  %i.ck = fmul fast <16 x float> %wide.masked.gather124, splat (float f0xBF2AAAAB) ; 2 uses
  %i.cl = fmul fast <16 x float> %wide.masked.gather126, splat (float f0x3EF15BEF) ; 2 uses
  %i.cm = fmul fast <16 x float> %wide.masked.gather128, splat (float f0x3EAAAAAB) ; 4 uses
  %i.cn = fadd fast <16 x float> %i.cl, %i.cm
  %i.co = fsub fast <16 x float> %i.ck, %i.cn     ; 2 uses
  %i.cp = fadd fast <16 x float> %i.cl, %i.ck
  %i.cq = fsub fast <16 x float> %i.cp, %i.cm     ; 2 uses
  %i.cr = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cs = fmul fast <16 x float> %wide.masked.gather126, splat (float f0x3E715BEF) ; 2 uses
  %i.ct = fadd fast <16 x float> %i.cs, %i.cr
  %i.cu = fadd fast <16 x float> %i.ct, %i.cm     ; 2 uses
  %i.cv = fsub fast <16 x float> %i.cr, %i.cs
  %i.cw = fadd fast <16 x float> %i.cv, %i.cm     ; 2 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 24
  %wide.masked.gather130 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep129, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 4 uses
  %wide.gep131 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 28
  %wide.masked.gather132 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep131, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 2 uses
  %wide.gep133 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 32
  %wide.masked.gather134 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep133, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !672 ; 2 uses
  %i.cx = fmul fast <16 x float> %wide.masked.gather130, splat (float f0xBF2AAAAB) ; 2 uses
  %i.cy = fmul fast <16 x float> %wide.masked.gather132, splat (float f0x3EF15BEF) ; 2 uses
  %i.cz = fmul fast <16 x float> %wide.masked.gather134, splat (float f0x3EAAAAAB) ; 8 uses
  %i.da = fadd fast <16 x float> %i.cy, %i.cz
  %i.db = fsub fast <16 x float> %i.cx, %i.da     ; 2 uses
  %i.dc = fadd fast <16 x float> %i.cy, %i.cx
  %i.dd = fsub fast <16 x float> %i.dc, %i.cz     ; 2 uses
  %i.de = fmul fast <16 x float> %wide.masked.gather130, splat (float f0x3E2AAAAB) ; 2 uses
  %i.df = fmul fast <16 x float> %wide.masked.gather132, splat (float f0x3E715BEF) ; 2 uses
  %i.dg = fadd fast <16 x float> %i.df, %i.de
  %i.dh = fadd fast <16 x float> %i.dg, %i.cz     ; 2 uses
  %i.di = fsub fast <16 x float> %i.de, %i.df
  %i.dj = fadd fast <16 x float> %i.di, %i.cz     ; 2 uses
  %i.dk = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3EF15BEF) ; 2 uses
  %i.dl = fmul fast <16 x float> %wide.masked.gather130, splat (float f0x3EAAAAAB) ; 4 uses
  %i.dm = fadd fast <16 x float> %i.dk, %i.dl
  %i.dn = fsub fast <16 x float> %i.bx, %i.dm
  %i.do = fadd fast <16 x float> %i.dk, %i.bx
  %i.dp = fsub fast <16 x float> %i.do, %i.dl
  %i.dq = fmul fast <16 x float> %wide.masked.gather124, splat (float f0x3E715BEF) ; 2 uses
  %i.dr = fadd fast <16 x float> %i.dq, %i.ce
  %i.ds = fadd fast <16 x float> %i.dr, %i.dl
  %i.dt = fsub fast <16 x float> %i.ce, %i.dq
  %i.du = fadd fast <16 x float> %i.dt, %i.dl
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather, <16 x ptr> align 4 %vector.gep, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep135 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dn, <16 x ptr> align 4 %wide.gep135, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep136 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dp, <16 x ptr> align 4 %wide.gep136, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep137 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ds, <16 x ptr> align 4 %wide.gep137, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep138 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 16
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.du, <16 x ptr> align 4 %wide.gep138, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep139 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather130, <16 x ptr> align 4 %wide.gep139, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep140 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 24
  %i.dv = fmul fast <16 x float> %i.cb, splat (float f0xBF2AAAAB) ; 2 uses
  %i.dw = fmul fast <16 x float> %i.co, splat (float f0x3EF15BEF) ; 2 uses
  %i.dx = fmul fast <16 x float> %i.db, splat (float f0x3EAAAAAB) ; 4 uses
  %i.dy = fadd fast <16 x float> %i.dw, %i.dx
  %i.dz = fsub fast <16 x float> %i.dv, %i.dy
  %i.ea = fadd fast <16 x float> %i.dw, %i.dv
  %i.eb = fsub fast <16 x float> %i.ea, %i.dx
  %i.ec = fmul fast <16 x float> %i.cb, splat (float f0x3E2AAAAB) ; 2 uses
  %i.ed = fmul fast <16 x float> %i.co, splat (float f0x3E715BEF) ; 2 uses
  %i.ee = fadd fast <16 x float> %i.ed, %i.ec
  %i.ef = fadd fast <16 x float> %i.ee, %i.dx
  %i.eg = fsub fast <16 x float> %i.ec, %i.ed
  %i.eh = fadd fast <16 x float> %i.eg, %i.dx
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cb, <16 x ptr> align 4 %wide.gep140, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep141 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dz, <16 x ptr> align 4 %wide.gep141, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep142 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 32
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.eb, <16 x ptr> align 4 %wide.gep142, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep143 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 36
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ef, <16 x ptr> align 4 %wide.gep143, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep144 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 40
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.eh, <16 x ptr> align 4 %wide.gep144, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep145 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 44
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.db, <16 x ptr> align 4 %wide.gep145, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !675, !noalias !672
  %wide.gep146 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 48
  %i.ei = fmul fast <16 x float> %i.cd, splat (float f0xBF2AAAAB) ; 2 uses
  %i.ej = fmul fast <16 x float> %i.cq, splat (float f0x3EF15BEF) ; 2 uses
  %i.ek = fmul fast <16 x float> %i.dd, splat (float f0x3EAAAAAB) ; 4 uses
  %i.el = fadd fast <16 x float> %i.ej, %i.ek
  %i.em = fsub fast <16 x float> %i.ei, %i.el
  %i.en = fadd fast <16 x float> %i.ej, %i.ei
  %i.eo = fsub fast <16 x float> %i.en, %i.ek
end_hunk_1
begin_hunk_2_@_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  store float %i.of, ptr %i.oj, align 4, !tbaa !39
  %i.ok = getelementptr inbounds nuw i8, ptr %.116.i, i64 44
  store float %i.mt, ptr %i.ok, align 4, !tbaa !39
  %i.ol = getelementptr inbounds nuw i8, ptr %.116.i, i64 48
  %i.om = fmul fast float %i.lj, f0xBF2AAAAB      ; 2 uses
  %i.on = fmul fast float %i.mc, f0x3EF15BEF      ; 2 uses
  %i.oo = fmul fast float %i.mv, f0x3EAAAAAB      ; 4 uses
  %i.op = fadd fast float %i.on, %i.oo
  %i.oq = fsub fast float %i.om, %i.op
  %i.or = fadd fast float %i.on, %i.om
  %i.os = fsub fast float %i.or, %i.oo
  %i.ot = fmul fast float %i.lj, f0x3E2AAAAB      ; 2 uses
  %i.ou = fmul fast float %i.mc, f0x3E715BEF      ; 2 uses
  %i.ov = fadd fast float %i.ou, %i.ot
  %i.ow = fadd fast float %i.ov, %i.oo
  %i.ox = fsub fast float %i.ot, %i.ou
  %i.oy = fadd fast float %i.ox, %i.oo
  store float %i.lj, ptr %i.ol, align 4, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %.116.i, i64 52
  store float %i.oq, ptr %i.oz, align 4, !tbaa !39
  %i.pa = getelementptr inbounds nuw i8, ptr %.116.i, i64 56
  store float %i.os, ptr %i.pa, align 4, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %.116.i, i64 60
  store float %i.ow, ptr %i.pb, align 4, !tbaa !39
  %i.pc = getelementptr inbounds nuw i8, ptr %.116.i, i64 64
  store float %i.oy, ptr %i.pc, align 4, !tbaa !39
  %i.pd = getelementptr inbounds nuw i8, ptr %.116.i, i64 68
  store float %i.mv, ptr %i.pd, align 4, !tbaa !39
  %i.pe = getelementptr inbounds nuw i8, ptr %.116.i, i64 72
  %i.pf = fmul fast float %i.ln, f0xBF2AAAAB      ; 2 uses
  %i.pg = fmul fast float %i.mg, f0x3EF15BEF      ; 2 uses
  %i.ph = fmul fast float %i.mz, f0x3EAAAAAB      ; 4 uses
  %i.pi = fadd fast float %i.pg, %i.ph
  %i.pj = fsub fast float %i.pf, %i.pi
  %i.pk = fadd fast float %i.pg, %i.pf
  %i.pl = fsub fast float %i.pk, %i.ph
  %i.pm = fmul fast float %i.ln, f0x3E2AAAAB      ; 2 uses
  %i.pn = fmul fast float %i.mg, f0x3E715BEF      ; 2 uses
  %i.po = fadd fast float %i.pn, %i.pm
  %i.pp = fadd fast float %i.po, %i.ph
  %i.pq = fsub fast float %i.pm, %i.pn
  %i.pr = fadd fast float %i.pq, %i.ph
  store float %i.ln, ptr %i.pe, align 4, !tbaa !39
  %i.ps = getelementptr inbounds nuw i8, ptr %.116.i, i64 76
  store float %i.pj, ptr %i.ps, align 4, !tbaa !39
  %i.pt = getelementptr inbounds nuw i8, ptr %.116.i, i64 80
  store float %i.pl, ptr %i.pt, align 4, !tbaa !39
  %i.pu = getelementptr inbounds nuw i8, ptr %.116.i, i64 84
  store float %i.pp, ptr %i.pu, align 4, !tbaa !39
  %i.pv = getelementptr inbounds nuw i8, ptr %.116.i, i64 88
  store float %i.pr, ptr %i.pv, align 4, !tbaa !39
  %i.pw = getelementptr inbounds nuw i8, ptr %.116.i, i64 92
  store float %i.mz, ptr %i.pw, align 4, !tbaa !39
  %i.px = getelementptr inbounds nuw i8, ptr %.116.i, i64 96
  %i.py = fmul fast float %i.lp, f0xBF2AAAAB      ; 2 uses
  %i.pz = fmul fast float %i.mi, f0x3EF15BEF      ; 2 uses
  %i.qa = fmul fast float %i.nb, f0x3EAAAAAB      ; 4 uses
  %i.qb = fadd fast float %i.pz, %i.qa
  %i.qc = fsub fast float %i.py, %i.qb
  %i.qd = fadd fast float %i.pz, %i.py
  %i.qe = fsub fast float %i.qd, %i.qa
  %i.qf = fmul fast float %i.lp, f0x3E2AAAAB      ; 2 uses
  %i.qg = fmul fast float %i.mi, f0x3E715BEF      ; 2 uses
  %i.qh = fadd fast float %i.qg, %i.qf
  %i.qi = fadd fast float %i.qh, %i.qa
  %i.qj = fsub fast float %i.qf, %i.qg
  %i.qk = fadd fast float %i.qj, %i.qa
  store float %i.lp, ptr %i.px, align 4, !tbaa !39
  %i.ql = getelementptr inbounds nuw i8, ptr %.116.i, i64 100
  store float %i.qc, ptr %i.ql, align 4, !tbaa !39
  %i.qm = getelementptr inbounds nuw i8, ptr %.116.i, i64 104
  store float %i.qe, ptr %i.qm, align 4, !tbaa !39
  %i.qn = getelementptr inbounds nuw i8, ptr %.116.i, i64 108
  store float %i.qi, ptr %i.qn, align 4, !tbaa !39
  %i.qo = getelementptr inbounds nuw i8, ptr %.116.i, i64 112
  store float %i.qk, ptr %i.qo, align 4, !tbaa !39
  %i.qp = getelementptr inbounds nuw i8, ptr %.116.i, i64 116
  store float %i.nb, ptr %i.qp, align 4, !tbaa !39
  %i.qq = getelementptr inbounds nuw i8, ptr %.116.i, i64 120
  %i.qr = fmul fast float %i.lc, f0xBF2AAAAB      ; 2 uses
  %i.qs = fmul fast float %i.lv, f0x3EF15BEF      ; 2 uses
  %i.qt = fadd fast float %i.qs, %i.mr
  %i.qu = fsub fast float %i.qr, %i.qt
  %i.qv = fadd fast float %i.qs, %i.qr
  %i.qw = fsub fast float %i.qv, %i.mr
  %i.qx = fmul fast float %i.lc, f0x3E2AAAAB      ; 2 uses
  %i.qy = fmul fast float %i.lv, f0x3E715BEF      ; 2 uses
  %i.qz = fadd fast float %i.qy, %i.qx
  %i.ra = fadd fast float %i.qz, %i.mr
  %i.rb = fsub fast float %i.qx, %i.qy
  %i.rc = fadd fast float %i.rb, %i.mr
  store float %i.lc, ptr %i.qq, align 4, !tbaa !39
  %i.rd = getelementptr inbounds nuw i8, ptr %.116.i, i64 124
  store float %i.qu, ptr %i.rd, align 4, !tbaa !39
  %i.re = getelementptr inbounds nuw i8, ptr %.116.i, i64 128
  store float %i.qw, ptr %i.re, align 4, !tbaa !39
  %i.rf = getelementptr inbounds nuw i8, ptr %.116.i, i64 132
  store float %i.ra, ptr %i.rf, align 4, !tbaa !39
  %i.rg = getelementptr inbounds nuw i8, ptr %.116.i, i64 136
  store float %i.rc, ptr %i.rg, align 4, !tbaa !39
  %i.rh = getelementptr inbounds nuw i8, ptr %.116.i, i64 140
  store float %i.mo, ptr %i.rh, align 4, !tbaa !39
  %i.ri = getelementptr inbounds nuw i8, ptr %.116.i, i64 144 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !679

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gi, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %i.ri, %.preheader.preheader.i ]
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next24.i, %wide.trip.count26.i
  br i1 %exitcond27.not.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %iter.check, !llvm.loop !680

_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.lr.ph, %.preheader10.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.rj = sdiv i32 %i.ac, %i.au
  %i.rk = load ptr, ptr %10, align 8, !tbaa !18, !noalias !681
  %i.rl = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !681
  %i.rm = sext i32 %i.rj to i64
  %i.rn = mul i64 %i.rl, %i.rm
  %i.ro = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !681 ; 3 uses
  %i.rp = mul i64 %i.rn, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rp
  %i.rr = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !681
  %i.rs = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !681
  %i.rt = sdiv i32 %.0106, %i.aq
  %i.ru = sext i32 %i.rt to i64
  store ptr null, ptr %i.t, align 8, !tbaa !11
  store i64 %i.ro, ptr %i.u, align 8, !tbaa !65
  store i32 %i.rr, ptr %i.v, align 8, !tbaa !66
  store ptr %i.rs, ptr %i.w, align 8, !tbaa !17
  %i.rv = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !681
  %i.rw = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !681
  %i.rx = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !681
  %i.ry = sext i32 %i.rx to i64
  %i.rz = sext i32 %i.rw to i64
  %i.sa = mul nsw i64 %i.rz, %i.ry                ; 2 uses
  %i.sb = mul i64 %i.ro, %i.sa
  %i.sc = mul i64 %i.sb, %i.ru
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.sc
  store ptr %i.sd, ptr %11, align 8, !tbaa !18
  %i.se = shufflevector <2 x i32> %i.rv, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.sf = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.se, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.sf, ptr %i.x, align 8, !tbaa !67
  store i32 1, ptr %i.y, align 8, !tbaa !68
  store i64 %i.sa, ptr %i.z, align 8, !tbaa !20, !alias.scope !684
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 36, i32 noundef %.sroa.speculated66, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.sg = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.sh = add nsw i32 %i.sg, %.0106               ; 2 uses
  %i.si = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.sj = icmp slt i32 %i.sh, %i.si
  br i1 %i.sj, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !687

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.sk = landingpad { ptr, i32 }
          catch ptr null
  %i.sl = extractvalue { ptr, i32 } %i.sk, 0
  call void @__clang_call_terminate(ptr %i.sl) #36
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not80 = icmp sgt i32 %i.k, %i.j
  br i1 %.not80, label %._crit_edge, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph82, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.lr.ph82 ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.03381 = phi i32 [ %i.k, %.lr.ph82 ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %12 = add i32 %i.k, %indvar
  %i.aa = mul i32 %12, 9
  %i.ab = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.03381              ; 3 uses
  %i.ad = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18, !noalias !688
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !688
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !688
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.an = mul i32 %i.ab, %i.aa
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ao = add nsw i32 %.03381, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.03381, %i.ap
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.aq = phi i32 [ %i.jh, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.jj, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.al, %.lr.ph.preheader ]
  %.079 = phi i32 [ %i.ji, %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !67
  %i.at = sub nsw i32 %i.as, %i.ac
  %i.au = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at) ; 3 uses
  %i.av = sub i32 %i.ar, %.079
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.av) ; 5 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.aw, label %.preheader4.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %.lr.ph
  %i.ax = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 0
  %i.az = mul i32 %i.ax, 9
  br i1 %i.ay, label %.preheader4.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %i.ba = sext i32 %.079 to i64                   ; 5 uses
  %wide.trip.count20.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bb = shl nuw nsw i64 %wide.trip.count.i, 6
  %i.bc = mul nsw i64 %i.ba, 36
  %scevgep87 = getelementptr i8, ptr %.val50, i64 %i.bc
  %i.bd = mul i32 %i.an, %i.ax
  %i.be = mul i32 %i.ax, 9
  %i.bf = add nsw i64 %i.ba, %wide.trip.count.i
  %i.bg = mul nsw i64 %i.bf, 36
  %scevgep89 = getelementptr i8, ptr %.val50, i64 %i.bg
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check91 = icmp ult i32 %.sroa.speculated, 16
  %i.bh = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bi = shl nuw nsw i64 %n.vec, 6
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bh, 0
  %n.vec123 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bj = shl nuw nsw i64 %n.vec123, 6
  %broadcast.splatinsert124 = insertelement <8 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat125 = shufflevector <8 x i64> %broadcast.splatinsert124, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n168 = icmp eq i64 %n.vec123, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 3 uses
  %.012.i = phi ptr [ %i.ak, %.preheader4.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 8 uses
  %i.bk = trunc i64 %indvars.iv17.i to i32
  %i.bl = add i32 %i.ac, %i.bk
  %i.bm = mul i32 %i.az, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.bn ; 3 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = trunc i64 %indvars.iv17.i to i32
  %i.bq = mul i32 %i.be, %i.bp
  %i.br = add i32 %i.bq, %i.bd
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 2                    ; 2 uses
  %scevgep90 = getelementptr i8, ptr %scevgep89, i64 %i.bt
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.bt
  %scevgep = getelementptr i8, ptr %.012.i, i64 %i.bb
  %bound0 = icmp ult ptr %.012.i, %scevgep90
  %bound1 = icmp ult ptr %scevgep88, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check91, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = getelementptr i8, ptr %.012.i, i64 %i.bi ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.012.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 64, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448, i64 512, i64 576, i64 640, i64 704, i64 768, i64 832, i64 896, i64 960> ; 16 uses
  %i.bv = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.bw = mul nsw <16 x i64> %i.bv, splat (i64 36)
  %wide.gep = getelementptr inbounds i8, ptr %i.bo, <16 x i64> %i.bw ; 9 uses
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691 ; 2 uses
  %wide.gep92 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4
  %wide.masked.gather93 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep92, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691
  %wide.gep94 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8
  %wide.masked.gather95 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep94, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691 ; 2 uses
  %i.bx = fmul fast <16 x float> %wide.masked.gather, splat (float 5.000000e-01) ; 4 uses
  %i.by = fmul fast <16 x float> %wide.masked.gather93, splat (float 5.000000e-01) ; 2 uses
  %i.bz = fadd fast <16 x float> %i.by, %i.bx
  %i.ca = fmul fast <16 x float> %wide.masked.gather95, splat (float 5.000000e-01) ; 4 uses
  %i.cb = fadd fast <16 x float> %i.bz, %i.ca     ; 2 uses
  %i.cc = fsub fast <16 x float> %i.bx, %i.by
  %i.cd = fadd fast <16 x float> %i.cc, %i.ca     ; 2 uses
  %wide.gep96 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 12
  %wide.masked.gather97 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep96, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691
  %wide.gep98 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 16
  %wide.masked.gather99 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep98, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691
  %wide.gep100 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 20
  %wide.masked.gather101 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep100, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691
  %i.ce = fmul fast <16 x float> %wide.masked.gather97, splat (float 5.000000e-01) ; 4 uses
  %i.cf = fmul fast <16 x float> %wide.masked.gather99, splat (float 5.000000e-01) ; 2 uses
  %i.cg = fadd fast <16 x float> %i.cf, %i.ce
  %i.ch = fmul fast <16 x float> %wide.masked.gather101, splat (float 5.000000e-01) ; 4 uses
  %i.ci = fadd fast <16 x float> %i.cg, %i.ch
  %i.cj = fsub fast <16 x float> %i.ce, %i.cf
  %i.ck = fadd fast <16 x float> %i.cj, %i.ch
  %wide.gep102 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 24
  %wide.masked.gather103 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep102, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691 ; 2 uses
  %wide.gep104 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 28
  %wide.masked.gather105 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep104, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691
  %wide.gep106 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 32
  %wide.masked.gather107 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep106, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !39, !alias.scope !691 ; 2 uses
  %i.cl = fmul fast <16 x float> %wide.masked.gather103, splat (float 5.000000e-01) ; 4 uses
  %i.cm = fmul fast <16 x float> %wide.masked.gather105, splat (float 5.000000e-01) ; 2 uses
  %i.cn = fadd fast <16 x float> %i.cm, %i.cl
  %i.co = fmul fast <16 x float> %wide.masked.gather107, splat (float 5.000000e-01) ; 4 uses
  %i.cp = fadd fast <16 x float> %i.cn, %i.co     ; 2 uses
  %i.cq = fsub fast <16 x float> %i.cl, %i.cm
  %i.cr = fadd fast <16 x float> %i.cq, %i.co     ; 2 uses
  %i.cs = fadd fast <16 x float> %i.ce, %i.bx
  %i.ct = fadd fast <16 x float> %i.cs, %i.cl
  %i.cu = fsub fast <16 x float> %i.bx, %i.ce
  %i.cv = fadd fast <16 x float> %i.cu, %i.cl
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather, <16 x ptr> align 4 %vector.gep, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep108 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 4
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.ct, <16 x ptr> align 4 %wide.gep108, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep109 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cv, <16 x ptr> align 4 %wide.gep109, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep110 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather103, <16 x ptr> align 4 %wide.gep110, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep111 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 16
  %i.cw = fmul fast <16 x float> %i.cb, splat (float 5.000000e-01) ; 2 uses
  %i.cx = fmul fast <16 x float> %i.ci, splat (float 5.000000e-01) ; 2 uses
  %i.cy = fadd fast <16 x float> %i.cx, %i.cw
  %i.cz = fmul fast <16 x float> %i.cp, splat (float 5.000000e-01) ; 2 uses
  %i.da = fadd fast <16 x float> %i.cy, %i.cz
  %i.db = fsub fast <16 x float> %i.cw, %i.cx
  %i.dc = fadd fast <16 x float> %i.db, %i.cz
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cb, <16 x ptr> align 4 %wide.gep111, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep112 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 20
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.da, <16 x ptr> align 4 %wide.gep112, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep113 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 24
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dc, <16 x ptr> align 4 %wide.gep113, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep114 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 28
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cp, <16 x ptr> align 4 %wide.gep114, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep115 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 32
  %i.dd = fmul fast <16 x float> %i.cd, splat (float 5.000000e-01) ; 2 uses
  %i.de = fmul fast <16 x float> %i.ck, splat (float 5.000000e-01) ; 2 uses
  %i.df = fadd fast <16 x float> %i.de, %i.dd
  %i.dg = fmul fast <16 x float> %i.cr, splat (float 5.000000e-01) ; 2 uses
  %i.dh = fadd fast <16 x float> %i.df, %i.dg
  %i.di = fsub fast <16 x float> %i.dd, %i.de
  %i.dj = fadd fast <16 x float> %i.di, %i.dg
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cd, <16 x ptr> align 4 %wide.gep115, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep116 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 36
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dh, <16 x ptr> align 4 %wide.gep116, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep117 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 40
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dj, <16 x ptr> align 4 %wide.gep117, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep118 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 44
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.cr, <16 x ptr> align 4 %wide.gep118, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep119 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 48
  %i.dk = fadd fast <16 x float> %i.ch, %i.ca
  %i.dl = fadd fast <16 x float> %i.dk, %i.co
  %i.dm = fsub fast <16 x float> %i.ca, %i.ch
  %i.dn = fadd fast <16 x float> %i.dm, %i.co
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather95, <16 x ptr> align 4 %wide.gep119, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep120 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 52
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dl, <16 x ptr> align 4 %wide.gep120, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep121 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 56
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.dn, <16 x ptr> align 4 %wide.gep121, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %wide.gep122 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 60
  call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %wide.masked.gather107, <16 x ptr> align 4 %wide.gep122, <16 x i1> splat (i1 true)), !tbaa !39, !alias.scope !694, !noalias !691
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1024
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %.preheader.preheader.i.preheader, label %vec.epilog.ph, !prof !697

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.resume.val = phi ptr [ %i.bu, %vec.epilog.iter.check ], [ %.012.i, %vector.main.loop.iter.check ]
  %i.dp = getelementptr i8, ptr %.012.i, i64 %i.bj ; 2 uses
  %broadcast.splatinsert126 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat127 = shufflevector <8 x i64> %broadcast.splatinsert126, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat127, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body
end_hunk_2
begin_hunk_3_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a
  %.not.i14 = icmp eq ptr %i.ah, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.ah) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.c, %bb.b, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.i:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !11  ; 2 uses
  %.not.i9 = icmp eq ptr %i.ao, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !17  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ar, null
  %i.as = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i13 = icmp eq ptr %i.as, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.as) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %i.an
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
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
  %i.j = sdiv i32 %i.i, 16
  %i.k = shl nsw i32 %i.j, 4
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !67
  %i.l = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.0)
  %i.m = load i32, ptr %3, align 4, !tbaa !67
  %i.n = mul nsw i32 %i.m, %.sroa.speculated82    ; 3 uses
  %i.o = add i32 %0, -1                           ; 2 uses
  %i.p = add i32 %i.o, %i.n
  %i.q = sdiv i32 %i.p, %i.n                      ; 2 uses
  %i.r = add i32 %i.o, %i.q
  %i.s = sdiv i32 %i.r, %i.q
  %i.t = add nsw i32 %i.s, 15
  %i.u = sdiv i32 %i.t, 16
  %i.v = shl nsw i32 %i.u, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.n) ; 3 uses
  %i.w = icmp sgt i32 %.0, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = add nuw nsw i32 %.sroa.speculated68, 15
  %i.z = and i32 %i.y, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !67
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.ab = sitofp fast i32 %storemerge to float
  %i.ac = fsub fast float %i.aa, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sdiv i32 %i.ad, 16
  %i.af = shl nsw i32 %i.ae, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 16) ; 3 uses
  %i.ag = add i32 %2, -1                          ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.speculated62
  %i.ai = sdiv i32 %i.ah, %.sroa.speculated62     ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 15
  %i.am = sdiv i32 %i.al, 16
  %i.an = shl nsw i32 %i.am, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !67
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %.sroa.speculated58
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 %i.c, %i.ar
  %i.at = shl nsw i32 %i.ap, 1
  %i.au = add nsw i32 %i.at, %.sroa.speculated58
  %i.av = sext i32 %i.au to i64
  %i.aw = udiv i64 %i.as, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = sdiv i32 %i.ax, 4
  %i.az = shl nsw i32 %i.ay, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.az, i32 4) ; 3 uses
  %i.ba = add nsw i32 %1, -1                      ; 2 uses
  %i.bb = add nuw i32 %i.ba, %.sroa.speculated52
  %i.bc = udiv i32 %i.bb, %.sroa.speculated52     ; 2 uses
  %i.bd = add nuw i32 %i.ba, %i.bc
  %i.be = udiv i32 %i.bd, %i.bc
  %i.bf = add nuw nsw i32 %i.be, 3
  %i.bg = and i32 %i.bf, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !67
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
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 3 uses
  %.not108 = icmp sgt i32 %i.k, %i.j
  br i1 %.not108, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph110, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i32 [ 0, %.lr.ph110 ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %.033109 = phi i32 [ %i.k, %.lr.ph110 ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %12 = add i32 %i.k, %indvar
  %i.aa = mul i32 %12, 9
  %i.ab = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.033109             ; 3 uses
  %i.ad = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ae = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1614
  %i.af = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1614
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1614
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %5, align 4, !tbaa !67    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !67
  %i.an = mul i32 %i.ab, %i.aa
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ao = add nsw i32 %.033109, 1
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033109, %i.ap
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit
  %i.aq = phi i32 [ %i.dmr, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.dmt, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %i.al, %.lr.ph.preheader ]
  %.0107 = phi i32 [ %i.dms, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.as = load i32, ptr %7, align 4, !tbaa !67
  %i.at = sub nsw i32 %i.as, %i.ac
  %i.au = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.au, i32 %i.at) ; 3 uses
  %i.av = sub i32 %i.ar, %.0107
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.av) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.aw = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.aw, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.ax = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 0
  %i.az = mul i32 %i.ax, 9
  br i1 %i.ay, label %.preheader11.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.ba = sext i32 %.0107 to i64                  ; 5 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bb = mul nuw nsw i64 %wide.trip.count.i, 72
  %i.bc = mul nsw i64 %i.ba, 9
  %scevgep115 = getelementptr i8, ptr %.val, i64 %i.bc
  %i.bd = mul i32 %i.an, %i.ax
  %i.be = mul i32 %i.ax, 9
  %i.bf = add nsw i64 %i.ba, %wide.trip.count.i
  %i.bg = mul nsw i64 %i.bf, 9
  %scevgep117 = getelementptr i8, ptr %.val, i64 %i.bg
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check119 = icmp ult i32 %.sroa.speculated, 16
  %i.bh = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bi = mul nuw nsw i64 %n.vec, 72
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bh, 0
  %n.vec135 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bj = mul nuw nsw i64 %n.vec135, 72
  %broadcast.splatinsert136 = insertelement <8 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat137 = shufflevector <8 x i64> %broadcast.splatinsert136, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n152 = icmp eq i64 %n.vec135, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi ptr [ %i.ak, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 30 uses
  %i.bk = trunc i64 %indvars.iv24.i to i32
  %i.bl = add i32 %i.ac, %i.bk
  %i.bm = mul i32 %i.az, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %.val, i64 %i.bn ; 25 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = trunc i64 %indvars.iv24.i to i32
  %i.bq = mul i32 %i.be, %i.bp
  %i.br = add i32 %i.bq, %i.bd
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.bs
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bs
  %scevgep = getelementptr i8, ptr %.019.i, i64 %i.bb
  %bound0 = icmp ult ptr %.019.i, %scevgep118
  %bound1 = icmp ult ptr %scevgep116, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = getelementptr i8, ptr %.019.i, i64 %i.bi ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, 72                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %i.bv = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep120 = getelementptr i8, ptr %i.bv, i64 72
  %i.bw = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep121 = getelementptr i8, ptr %i.bw, i64 144
  %i.bx = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep122 = getelementptr i8, ptr %i.bx, i64 216
  %i.by = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 288
  %i.bz = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep124 = getelementptr i8, ptr %i.bz, i64 360
  %i.ca = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep125 = getelementptr i8, ptr %i.ca, i64 432
  %i.cb = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep126 = getelementptr i8, ptr %i.cb, i64 504
  %i.cc = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep127 = getelementptr i8, ptr %i.cc, i64 576
  %i.cd = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep128 = getelementptr i8, ptr %i.cd, i64 648
  %i.ce = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep129 = getelementptr i8, ptr %i.ce, i64 720
  %i.cf = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep130 = getelementptr i8, ptr %i.cf, i64 792
  %i.cg = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep131 = getelementptr i8, ptr %i.cg, i64 864
  %i.ch = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep132 = getelementptr i8, ptr %i.ch, i64 936
  %i.ci = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep133 = getelementptr i8, ptr %i.ci, i64 1008
  %i.cj = getelementptr i8, ptr %.019.i, i64 %i.bu ; 36 uses
  %next.gep134 = getelementptr i8, ptr %i.cj, i64 1080
  %i.ck = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.cl = mul nsw <16 x i64> %i.ck, splat (i64 9) ; 16 uses
  %i.cm = extractelement <16 x i64> %i.cl, i64 0
  %i.cn = getelementptr inbounds i8, ptr %i.bo, i64 %i.cm ; 9 uses
  %i.co = extractelement <16 x i64> %i.cl, i64 1
  %i.cp = getelementptr inbounds i8, ptr %i.bo, i64 %i.co ; 9 uses
  %i.cq = extractelement <16 x i64> %i.cl, i64 2
  %i.cr = getelementptr inbounds i8, ptr %i.bo, i64 %i.cq ; 9 uses
  %i.cs = extractelement <16 x i64> %i.cl, i64 3
  %i.ct = getelementptr inbounds i8, ptr %i.bo, i64 %i.cs ; 9 uses
  %i.cu = extractelement <16 x i64> %i.cl, i64 4
  %i.cv = getelementptr inbounds i8, ptr %i.bo, i64 %i.cu ; 9 uses
  %i.cw = extractelement <16 x i64> %i.cl, i64 5
  %i.cx = getelementptr inbounds i8, ptr %i.bo, i64 %i.cw ; 9 uses
  %i.cy = extractelement <16 x i64> %i.cl, i64 6
  %i.cz = getelementptr inbounds i8, ptr %i.bo, i64 %i.cy ; 9 uses
  %i.da = extractelement <16 x i64> %i.cl, i64 7
  %i.db = getelementptr inbounds i8, ptr %i.bo, i64 %i.da ; 9 uses
  %i.dc = extractelement <16 x i64> %i.cl, i64 8
  %i.dd = getelementptr inbounds i8, ptr %i.bo, i64 %i.dc ; 9 uses
  %i.de = extractelement <16 x i64> %i.cl, i64 9
  %i.df = getelementptr inbounds i8, ptr %i.bo, i64 %i.de ; 9 uses
  %i.dg = extractelement <16 x i64> %i.cl, i64 10
  %i.dh = getelementptr inbounds i8, ptr %i.bo, i64 %i.dg ; 9 uses
  %i.di = extractelement <16 x i64> %i.cl, i64 11
  %i.dj = getelementptr inbounds i8, ptr %i.bo, i64 %i.di ; 9 uses
  %i.dk = extractelement <16 x i64> %i.cl, i64 12
  %i.dl = getelementptr inbounds i8, ptr %i.bo, i64 %i.dk ; 9 uses
  %i.dm = extractelement <16 x i64> %i.cl, i64 13
  %i.dn = getelementptr inbounds i8, ptr %i.bo, i64 %i.dm ; 9 uses
  %i.do = extractelement <16 x i64> %i.cl, i64 14
  %i.dp = getelementptr inbounds i8, ptr %i.bo, i64 %i.do ; 9 uses
  %i.dq = extractelement <16 x i64> %i.cl, i64 15
  %i.dr = getelementptr inbounds i8, ptr %i.bo, i64 %i.dq ; 9 uses
  %i.ds = load i8, ptr %i.cn, align 1, !tbaa !100, !alias.scope !1617
  %i.dt = load i8, ptr %i.cp, align 1, !tbaa !100, !alias.scope !1617
  %i.du = load i8, ptr %i.cr, align 1, !tbaa !100, !alias.scope !1617
  %i.dv = load i8, ptr %i.ct, align 1, !tbaa !100, !alias.scope !1617
  %i.dw = load i8, ptr %i.cv, align 1, !tbaa !100, !alias.scope !1617
  %i.dx = load i8, ptr %i.cx, align 1, !tbaa !100, !alias.scope !1617
  %i.dy = load i8, ptr %i.cz, align 1, !tbaa !100, !alias.scope !1617
  %i.dz = load i8, ptr %i.db, align 1, !tbaa !100, !alias.scope !1617
  %i.ea = load i8, ptr %i.dd, align 1, !tbaa !100, !alias.scope !1617
  %i.eb = load i8, ptr %i.df, align 1, !tbaa !100, !alias.scope !1617
  %i.ec = load i8, ptr %i.dh, align 1, !tbaa !100, !alias.scope !1617
  %i.ed = load i8, ptr %i.dj, align 1, !tbaa !100, !alias.scope !1617
  %i.ee = load i8, ptr %i.dl, align 1, !tbaa !100, !alias.scope !1617
  %i.ef = load i8, ptr %i.dn, align 1, !tbaa !100, !alias.scope !1617
  %i.eg = load i8, ptr %i.dp, align 1, !tbaa !100, !alias.scope !1617
  %i.eh = load i8, ptr %i.dr, align 1, !tbaa !100, !alias.scope !1617
  %i.ei = insertelement <16 x i8> poison, i8 %i.ds, i64 0
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 1
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 2
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 3
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 4
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 5
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 6
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 7
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 8
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 9
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 10
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 11
  %i.eu = insertelement <16 x i8> %i.et, i8 %i.ee, i64 12
  %i.ev = insertelement <16 x i8> %i.eu, i8 %i.ef, i64 13
  %i.ew = insertelement <16 x i8> %i.ev, i8 %i.eg, i64 14
  %i.ex = insertelement <16 x i8> %i.ew, i8 %i.eh, i64 15 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.fo = load i8, ptr %i.ey, align 1, !tbaa !100, !alias.scope !1617
  %i.fp = load i8, ptr %i.ez, align 1, !tbaa !100, !alias.scope !1617
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !100, !alias.scope !1617
end_hunk_3
