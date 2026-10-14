Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 372
begin_hunk_0_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  %i.ba = add nuw nsw i64 %indvars.iv124, %indvars.iv134
  %.reass106 = mul i64 %factor.op.mul105, %i.ba
  %gep = getelementptr i8, ptr %invariant.gep107, i64 %.reass106 ; 5 uses
  br i1 %i.x, label %_ZN4ncnn3MatD2Ev.exit59.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit59

bb.i:                                             ; preds = %.epilog-lcssa
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge, label %.preheader98, !llvm.loop !637

.unr-lcssa:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit59
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit59.epil.preheader

_ZN4ncnn3MatD2Ev.exit59.epil.preheader:           ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.3103.epil.init = phi ptr [ %.2108, %.preheader ], [ %i.bp, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %_ZN4ncnn3MatD2Ev.exit59.epil

_ZN4ncnn3MatD2Ev.exit59.epil:                     ; preds = %_ZN4ncnn3MatD2Ev.exit59.epil, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %indvars.iv.next.epil, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 2 uses
  %.3103.epil = phi ptr [ %.3103.epil.init, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %i.bd, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %epil.iter.next, %_ZN4ncnn3MatD2Ev.exit59.epil ]
  %i.bb = add nuw nsw i64 %indvars.iv.epil, %indvars.iv137
  %.reass.epil = mul i64 %factor.op.mul, %i.bb
  %gep102.epil = getelementptr i8, ptr %gep, i64 %.reass.epil
  %i.bc = load float, ptr %gep102.epil, align 4, !tbaa !41
  store float %i.bc, ptr %.3103.epil, align 4, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %.3103.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit59.epil, !llvm.loop !638

.epilog-lcssa:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit59.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.bp, %.unr-lcssa ], [ %i.bd, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 3 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.r
  br i1 %exitcond128.not, label %bb.i, label %.preheader, !llvm.loop !639

_ZN4ncnn3MatD2Ev.exit59:                          ; preds = %.preheader, %_ZN4ncnn3MatD2Ev.exit59
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN4ncnn3MatD2Ev.exit59 ], [ 0, %.preheader ] ; 5 uses
  %.3103 = phi ptr [ %i.bp, %_ZN4ncnn3MatD2Ev.exit59 ], [ %.2108, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit59 ], [ 0, %.preheader ]
  %i.be = add nuw nsw i64 %indvars.iv, %indvars.iv137
  %.reass = mul i64 %factor.op.mul, %i.be
  %gep102 = getelementptr i8, ptr %gep, i64 %.reass
  %i.bf = load float, ptr %gep102, align 4, !tbaa !41
  store float %i.bf, ptr %.3103, align 4, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.3103, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bh = add nuw nsw i64 %indvars.iv.next, %indvars.iv137
  %.reass.1 = mul i64 %factor.op.mul, %i.bh
  %gep102.1 = getelementptr i8, ptr %gep, i64 %.reass.1
  %i.bi = load float, ptr %gep102.1, align 4, !tbaa !41
  store float %i.bi, ptr %i.bg, align 4, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.3103, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.bk = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv137
  %.reass.2 = mul i64 %factor.op.mul, %i.bk
  %gep102.2 = getelementptr i8, ptr %gep, i64 %.reass.2
  %i.bl = load float, ptr %gep102.2, align 4, !tbaa !41
  store float %i.bl, ptr %i.bj, align 4, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.3103, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.bn = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv137
  %.reass.3 = mul i64 %factor.op.mul, %i.bn
  %gep102.3 = getelementptr i8, ptr %gep, i64 %.reass.3
  %i.bo = load float, ptr %gep102.3, align 4, !tbaa !41
  store float %i.bo, ptr %i.bm, align 4, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.3103, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit59, !llvm.loop !640

bb.j:                                             ; preds = %bb.h
  %i.bq = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %8, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bu)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !0

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
  %i.j = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !66
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !66
  %i.m = mul nsw i32 %i.l, %.sroa.speculated82    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 15
  %i.t = sdiv i32 %i.s, 16
  %i.u = shl nsw i32 %i.t, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated68, 15
  %i.y = and i32 %i.x, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !66
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 16
  %i.ae = shl nsw i32 %i.ad, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 16) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated62
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated62     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 15
  %i.al = sdiv i32 %i.ak, 16
  %i.am = shl nsw i32 %i.al, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !66
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %.sroa.speculated58
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = fsub fast float %i.f, %i.aq
  %i.as = add nsw i32 %i.ao, %.sroa.speculated58
  %i.at = sitofp fast i32 %i.as to float
  %i.au = fdiv fast float %i.ar, %i.at
  %i.av = fptosi float %i.au to i32
  %i.aw = sdiv i32 %i.av, 16
  %i.ax = shl nsw i32 %i.aw, 4
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 16) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %7 = udiv i32 %i.az, %.sroa.speculated52        ; 2 uses
  %i.ba = add nuw i32 %i.ay, %7
  %8 = udiv i32 %i.ba, %7
  %i.bb = add nuw nsw i32 %8, 15
  %9 = and i32 %i.bb, -16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %9, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
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
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 3 uses
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
  %.033100 = phi i32 [ %i.k, %.lr.ph101 ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = add i32 %i.k, %indvar
  %i.ab = mul i32 %i.aa, 9
  %i.ac = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %.033100             ; 3 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.af = load ptr, ptr %4, align 8, !tbaa !22, !noalias !656
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !656
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !64, !noalias !656
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  %i.ao = mul i32 %i.ac, %i.ab
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ap = add nsw i32 %.033100, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.033100, %i.aq
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.ar = phi i32 [ %i.aei, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i32 [ %i.aek, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.am, %.lr.ph.preheader ]
  %.098 = phi i32 [ %i.aej, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.at = load i32, ptr %7, align 4, !tbaa !66
  %i.au = sub nsw i32 %i.at, %i.ad
  %i.av = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.au) ; 3 uses
  %i.aw = sub i32 %i.as, %.098
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aw) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.ax = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.ax, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %.lr.ph
  %i.ay = load i32, ptr %9, align 4, !tbaa !66    ; 3 uses
  %i.az = icmp sgt i32 %.sroa.speculated, 0
  %i.ba = mul i32 %i.ay, 9
  br i1 %i.az, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %i.bb = sext i32 %.098 to i64                   ; 5 uses
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bc = shl nuw nsw i64 %wide.trip.count.i, 8
  %i.bd = mul nsw i64 %i.bb, 36
  %scevgep106 = getelementptr i8, ptr %.val, i64 %i.bd
  %i.be = mul i32 %i.ao, %i.ay
  %i.bf = mul i32 %i.ay, 9
  %i.bg = add nsw i64 %i.bb, %wide.trip.count.i
  %i.bh = mul nsw i64 %i.bg, 36
  %scevgep108 = getelementptr i8, ptr %.val, i64 %i.bh
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %min.iters.check110 = icmp ult i32 %.sroa.speculated, 16
  %i.bi = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bj = shl nuw nsw i64 %n.vec, 8
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.bi, 0
  %n.vec190 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.bk = shl nuw nsw i64 %n.vec190, 8
  %broadcast.splatinsert191 = insertelement <4 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat192 = shufflevector <4 x i64> %broadcast.splatinsert191, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n283 = icmp eq i64 %n.vec190, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader12.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader12.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %.020.i = phi ptr [ %i.al, %.preheader12.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 8 uses
  %i.bl = trunc i64 %indvars.iv25.i to i32
  %i.bm = add i32 %i.ad, %i.bl
  %i.bn = mul i32 %i.ba, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bo ; 3 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bq = trunc i64 %indvars.iv25.i to i32
  %i.br = mul i32 %i.bf, %i.bq
  %i.bs = add i32 %i.br, %i.be
  %i.bt = sext i32 %i.bs to i64
  %i.bu = shl nsw i64 %i.bt, 2                    ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep108, i64 %i.bu
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bu
  %scevgep = getelementptr i8, ptr %.020.i, i64 %i.bc
  %bound0 = icmp ult ptr %.020.i, %scevgep109
  %bound1 = icmp ult ptr %scevgep107, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = getelementptr i8, ptr %.020.i, i64 %i.bj ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %.020.i, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 256, i64 512, i64 768, i64 1024, i64 1280, i64 1536, i64 1792, i64 2048, i64 2304, i64 2560, i64 2816, i64 3072, i64 3328, i64 3584, i64 3840> ; 64 uses
  %i.bw = add nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.bx = mul nsw <16 x i64> %i.bw, splat (i64 36)
  %wide.gep = getelementptr inbounds i8, ptr %i.bp, <16 x i64> %i.bx ; 9 uses
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41, !alias.scope !657 ; 4 uses
  %wide.gep111 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4
  %wide.masked.gather112 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep111, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41, !alias.scope !657 ; 3 uses
  %wide.gep113 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8
  %wide.masked.gather114 = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep113, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !41, !alias.scope !657 ; 6 uses
  %i.by = fmul fast <16 x float> %wide.masked.gather, splat (float f0xBE638E39) ; 4 uses
  %i.bz = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3E638E39) ; 2 uses
  %i.ca = fmul fast <16 x float> %wide.masked.gather114, splat (float f0xBE638E39) ; 4 uses
  %i.cb = fsub fast <16 x float> %i.by, %i.bz
  %i.cc = fadd fast <16 x float> %i.cb, %i.ca     ; 4 uses
  %i.cd = fadd fast <16 x float> %i.bz, %i.by
  %i.ce = fadd fast <16 x float> %i.cd, %i.ca     ; 4 uses
  %i.cf = fmul fast <16 x float> %wide.masked.gather, splat (float f0x3C360B61) ; 4 uses
  %i.cg = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3CB60B61) ; 2 uses
  %i.ch = fadd fast <16 x float> %i.cg, %i.cf
  %i.ci = fmul fast <16 x float> %wide.masked.gather114, splat (float f0x3D360B61) ; 2 uses
  %i.cj = fadd fast <16 x float> %i.ch, %i.ci     ; 4 uses
  %i.ck = fsub fast <16 x float> %i.cf, %i.cg
  %i.cl = fadd fast <16 x float> %i.ck, %i.ci     ; 4 uses
  %i.cm = fmul fast <16 x float> %wide.masked.gather, splat (float f0x3CB60B61) ; 4 uses
  %i.cn = fmul fast <16 x float> %wide.masked.gather112, splat (float f0x3C360B61) ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  store float %i.gq, ptr %i.fs, align 4, !tbaa !41
  store float %i.fx, ptr %i.ft, align 4, !tbaa !41
  %i.gs = fmul fast <3 x float> %i.gm, splat (float 5.000000e-01) ; 3 uses
  %i.gt = shufflevector <3 x float> %i.gs, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gu = shufflevector <3 x float> %i.gs, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gv = fadd fast <2 x float> %i.gt, %i.gu
  %i.gw = fsub fast <2 x float> %i.gt, %i.gu
  %i.gx = shufflevector <2 x float> %i.gv, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.gy = shufflevector <3 x float> %i.gs, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gz = fadd fast <2 x float> %i.gx, %i.gy
  %i.ha = extractelement <3 x float> %i.gm, i64 0
  store float %i.ha, ptr %i.fu, align 4, !tbaa !41
  store <2 x float> %i.gz, ptr %i.fv, align 4, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %.110.i, i64 28
  %i.hc = extractelement <3 x float> %i.gm, i64 2
  store float %i.hc, ptr %i.hb, align 4, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %.110.i, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %.110.i, i64 36
  %i.hf = fmul fast float %i.fq, 5.000000e-01     ; 3 uses
  %i.hg = insertelement <3 x float> %i.gb, float %i.fz, i64 2
  %i.hh = fsub fast <3 x float> %i.hg, %i.gd
  %i.hi = insertelement <3 x float> %i.gh, float %i.hf, i64 2
  %i.hj = fadd fast <3 x float> %i.hh, %i.hi      ; 3 uses
  %i.hk = fmul fast <3 x float> %i.hj, splat (float 5.000000e-01) ; 3 uses
  %i.hl = extractelement <3 x float> %i.hk, i64 0 ; 2 uses
  %i.hm = extractelement <3 x float> %i.hk, i64 1 ; 2 uses
  %i.hn = fadd fast float %i.hm, %i.hl
  %i.ho = fsub fast float %i.hl, %i.hm
  %i.hp = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.ho, i64 1
  %i.hr = shufflevector <3 x float> %i.hk, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hs = fadd fast <2 x float> %i.hq, %i.hr
  %i.ht = extractelement <3 x float> %i.hj, i64 0
  store float %i.ht, ptr %i.hd, align 4, !tbaa !41
  store <2 x float> %i.hs, ptr %i.he, align 4, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.110.i, i64 44
  %i.hv = fadd fast float %i.gk, %i.gi
  %i.hw = fadd fast float %i.hv, %i.hf
  %i.hx = fsub fast float %i.gi, %i.gk
  %i.hy = fadd fast float %i.hx, %i.hf
  %i.hz = shufflevector <3 x float> %i.hj, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ia = insertelement <2 x float> %i.hz, float %i.fy, i64 1
  store <2 x float> %i.ia, ptr %i.hu, align 4, !tbaa !41
  %i.ib = getelementptr inbounds nuw i8, ptr %.110.i, i64 52
  store float %i.hw, ptr %i.ib, align 4, !tbaa !41
  %i.ic = getelementptr inbounds nuw i8, ptr %.110.i, i64 56
  store float %i.hy, ptr %i.ic, align 4, !tbaa !41
  %i.id = getelementptr inbounds nuw i8, ptr %.110.i, i64 60
  store float %i.fq, ptr %i.id, align 4, !tbaa !41
  %i.ie = getelementptr inbounds nuw i8, ptr %.110.i, i64 64 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !700

._crit_edge.i:                                    ; preds = %.preheader.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.dq, %vec.epilog.middle.block ], [ %i.bv, %middle.block ], [ %i.ie, %.preheader.preheader.i ]
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, label %iter.check, !llvm.loop !701

_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_tileERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.lr.ph, %.preheader4.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.if = sdiv i32 %i.ad, %i.av
  %i.ig = load ptr, ptr %10, align 8, !tbaa !22, !noalias !710
  %i.ih = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !710
  %i.ii = sext i32 %i.if to i64
  %i.ij = mul i64 %i.ih, %i.ii
  %i.ik = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !710 ; 3 uses
  %i.il = mul i64 %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.il
  %i.in = load i32, ptr %i.r, align 8, !tbaa !65, !noalias !710
  %i.io = load ptr, ptr %i.s, align 8, !tbaa !21, !noalias !710
  %i.ip = sdiv i32 %.079, %i.ar
  %i.iq = sext i32 %i.ip to i64
  store ptr null, ptr %i.t, align 8, !tbaa !20
  store i64 %i.ik, ptr %i.u, align 8, !tbaa !64
  store i32 %i.in, ptr %i.v, align 8, !tbaa !65
  store ptr %i.io, ptr %i.w, align 8, !tbaa !21
  %i.ir = load <2 x i32>, ptr %i.n, align 4, !tbaa !66, !noalias !710
  %i.is = load i32, ptr %i.o, align 8, !tbaa !75, !noalias !710
  %i.it = load i32, ptr %i.n, align 4, !tbaa !74, !noalias !710
  %i.iu = sext i32 %i.it to i64
  %i.iv = sext i32 %i.is to i64
  %i.iw = mul nsw i64 %i.iv, %i.iu                ; 2 uses
  %i.ix = mul i64 %i.ik, %i.iw
  %i.iy = mul i64 %i.ix, %i.iq
  %i.iz = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.iy
  store ptr %i.iz, ptr %11, align 8, !tbaa !22
  %i.ja = shufflevector <2 x i32> %i.ir, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.jb = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.ja, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.jb, ptr %i.x, align 8, !tbaa !66
  store i32 1, ptr %i.y, align 8, !tbaa !67
  store i64 %i.iw, ptr %i.z, align 8, !tbaa !23, !alias.scope !711
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iii(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 16, i32 noundef %.sroa.speculated66, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.jc = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.jd = add nsw i32 %i.jc, %.079                ; 2 uses
  %i.je = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.jf = icmp slt i32 %i.jd, %i.je
  br i1 %i.jf, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !706

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
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  call void @__clang_call_terminate(ptr %i.jh) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL44convolution_im2col_gemm_get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 2                         ; 2 uses
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.e = add nsw i32 %i.b, -64
  %i.f = sdiv i32 %i.e, 256
  %i.g = shl nsw i32 %i.f, 4
  %.sroa.speculated110 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated110
  %i.j = sdiv i32 %i.i, %.sroa.speculated110      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 15
  %i.n = sdiv i32 %i.m, 16
  %i.o = shl nsw i32 %i.n, 4
  %.sroa.speculated105 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated110)
  store i32 %.sroa.speculated105, ptr %5, align 4, !tbaa !66
  %i.p = add nsw i32 %0, 63
  %i.q = sdiv i32 %i.p, 64                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 15
  %i.v = sdiv i32 %i.u, 16
  %i.w = shl nsw i32 %i.v, 4
  %.sroa.speculated98 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 16)
  store i32 %.sroa.speculated98, ptr %3, align 4, !tbaa !66
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0120)
  %i.y = load i32, ptr %3, align 4, !tbaa !66
  %i.z = mul nsw i32 %i.y, %.sroa.speculated93    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 15
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = shl nsw i32 %i.af, 4
  %.sroa.speculated88 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0120, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated88, %.0120
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated76, 15
  %i.ak = and i32 %i.aj, 2147483632
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated88)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated83, %bb.d ], [ %.sroa.speculated88, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !66
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !66    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %i.as = sdiv i32 %i.ar, 16
  %i.at = shl nsw i32 %i.as, 4
  %.sroa.speculated69 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 16) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated69
  %7 = udiv i32 %i.av, %.sroa.speculated69        ; 2 uses
  %i.aw = add nuw i32 %i.au, %7
  %8 = udiv i32 %i.aw, %7
  %i.ax = add nuw nsw i32 %8, 15
  %9 = and i32 %i.ax, -16
  %.sroa.speculated64 = tail call i32 @llvm.umin.i32(i32 %9, i32 %.sroa.speculated69)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated64, i32 16)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not114 = icmp sgt i32 %i.k, %i.j
  br i1 %.not114, label %._crit_edge117, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !66     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge117

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ab, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.028115 = phi i32 [ %i.ac, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !66     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.028115               ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !66
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 7 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 15
  %i.y = zext nneg i32 %.sroa.speculated57 to i64
  %i.z = sext i32 %i.t to i64                     ; 5 uses
  %i.aa = sext i32 %.sroa.speculated57 to i64     ; 4 uses
  %invariant.op.i = add nsw i64 %i.aa, -7
  %invariant.op437.i = add nsw i64 %i.aa, -3
  %invariant.op438.i = add nsw i64 %i.aa, -1
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ab = phi i32 [ %i.r, %.lr.ph.split ], [ %i.ahj, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ac = add i32 %.028115, 1
  %exitcond.not = icmp eq i32 %.028115, %i.j
  br i1 %exitcond.not, label %._crit_edge117, label %.lr.ph.split, !llvm.loop !712

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ad = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ahh, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ae = phi i32 [ %i.r, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ahj, %_ZN4ncnn3MatD2Ev.exit ]
  %.0113 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ahi, %_ZN4ncnn3MatD2Ev.exit ] ; 8 uses
  %i.af = sub i32 %i.ae, %.0113
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.af) ; 46 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !66
  %i.ah = sdiv i32 %i.t, %i.ag
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !785
  %i.aj = load ptr, ptr %7, align 8, !tbaa !22, !noalias !785
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !785
  %i.al = sext i32 %i.ah to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !785 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = sdiv i32 %.0113, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.aq
  %i.au = mul i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !74  ; 5 uses
  br i1 %i.x, label %.lr.ph159.i, label %.preheader99.i

.lr.ph159.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.ax = sext i32 %.0113 to i64                  ; 16 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 15
  %i.az = and i32 %.sroa.speculated, -16
  %i.ba = sext i32 %i.aw to i64                   ; 16 uses
  br label %bb.c

.preheader99.loopexit.i:                          ; preds = %._crit_edge.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader99.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0462.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.bb, %.preheader99.loopexit.i ] ; 3 uses
  %.0459.lcssa.i = phi ptr [ %i.av, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.2461.lcssa.i, %.preheader99.loopexit.i ] ; 2 uses
  %i.bc = or disjoint i32 %.0462.lcssa.i, 7
  %i.bd = icmp slt i32 %i.bc, %.sroa.speculated57
  br i1 %i.bd, label %.lr.ph199.i, label %.preheader97.i

.lr.ph199.i:                                      ; preds = %.preheader99.i
  %i.be = sext i32 %.0113 to i64                  ; 8 uses
  %i.bf = icmp sgt i32 %.sroa.speculated, 7
  %i.bg = and i32 %.sroa.speculated, -8
  %i.bh = zext nneg i32 %.0462.lcssa.i to i64
  %i.bi = sext i32 %i.aw to i64                   ; 8 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph159.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph159.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0459157.i = phi ptr [ %i.av, %.lr.ph159.i ], [ %.2461.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !22    ; 16 uses
  %i.bk = add nsw i64 %indvars.iv.i, %i.z         ; 16 uses
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
  %i.cq = add nsw i64 %i.bk, 8
  %i.cr = mul nsw i64 %i.cq, %i.ba
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ax ; 2 uses
  %i.cu = add nsw i64 %i.bk, 9
  %i.cv = mul nsw i64 %i.cu, %i.ba
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cv
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ax ; 2 uses
  %i.cy = add nsw i64 %i.bk, 10
  %i.cz = mul nsw i64 %i.cy, %i.ba
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.ax ; 2 uses
  %i.dc = add nsw i64 %i.bk, 11
  %i.dd = mul nsw i64 %i.dc, %i.ba
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.ax ; 2 uses
  %i.dg = add nsw i64 %i.bk, 12
  %i.dh = mul nsw i64 %i.dg, %i.ba
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.ax ; 2 uses
  %i.dk = add nsw i64 %i.bk, 13
  %i.dl = mul nsw i64 %i.dk, %i.ba
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dl
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ax ; 2 uses
  %i.do = add nsw i64 %i.bk, 14
  %i.dp = mul nsw i64 %i.do, %i.ba
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dp
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ax ; 2 uses
  %i.ds = add nsw i64 %i.bk, 15
  %i.dt = mul nsw i64 %i.ds, %i.ba
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %.preheader100.i
end_hunk_1
begin_hunk_2_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a
  %i.az = mul nsw i32 %i.ay, %.sroa.speculated58.i
  %i.ba = load i32, ptr %i.h, align 4, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.bd, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.az, i32 noundef 1, i32 noundef %i.ba, i64 noundef 2, ptr noundef null)
  %i.be = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %i.bf = add nsw i32 %.sroa.speculated58.i, -1
  %i.bg = add i32 %i.bf, %2
  %i.bh = sdiv i32 %i.bg, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.be, i32 noundef 16, i32 noundef %i.bh, i32 noundef %i.ax, i64 noundef 2, ptr noundef null)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.bi = load i32, ptr %i.h, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.bi)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %5, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %1)
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 3 uses
  %.not3.i = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %5, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bn)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i14 = icmp eq ptr %i.bn, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.bn) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.k:                                             ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.f, %bb.e, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.l:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %i.bb, align 8, !tbaa !20 ; 2 uses
  %.not.i9 = icmp eq ptr %i.bu, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.bx, null
  %i.by = load ptr, ptr %5, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i10, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef %i.by)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.r, !inline_history !0

bb.p:                                             ; preds = %bb.n
  %.not.i13 = icmp eq ptr %i.by, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.by) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.m, %bb.l, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %i.bt
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
  %i.j = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !66
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !66
  %i.m = mul nsw i32 %i.l, %.sroa.speculated82    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 15
  %i.t = sdiv i32 %i.s, 16
  %i.u = shl nsw i32 %i.t, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated68, 15
  %i.y = and i32 %i.x, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !66
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 16
  %i.ae = shl nsw i32 %i.ad, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 16) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated62
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated62     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 15
  %i.al = sdiv i32 %i.ak, 16
  %i.am = shl nsw i32 %i.al, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !66
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
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
  %7 = udiv i32 %i.ba, %.sroa.speculated52        ; 2 uses
  %i.bb = add nuw i32 %i.az, %7
  %8 = udiv i32 %i.bb, %7
  %i.bc = add nuw nsw i32 %8, 3
  %9 = and i32 %i.bc, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %9, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
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
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 3 uses
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
  %.033109 = phi i32 [ %i.k, %.lr.ph110 ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = add i32 %i.k, %indvar
  %i.ab = mul i32 %i.aa, 9
  %i.ac = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ad = mul nsw i32 %i.ac, %.033109             ; 3 uses
  %i.ae = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.af = load ptr, ptr %4, align 8, !tbaa !22, !noalias !1628
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !1628
  %i.ah = sext i32 %i.ae to i64
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !64, !noalias !1628
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  %i.ao = mul i32 %i.ac, %i.ab
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.ap = add nsw i32 %.033109, 1
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.033109, %i.aq
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit
  %i.ar = phi i32 [ %i.dms, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.as = phi i32 [ %i.dmu, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %i.am, %.lr.ph.preheader ]
  %.0107 = phi i32 [ %i.dmt, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.at = load i32, ptr %7, align 4, !tbaa !66
  %i.au = sub nsw i32 %i.at, %i.ad
  %i.av = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.au) ; 3 uses
  %i.aw = sub i32 %i.as, %.0107
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.aw) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.ax = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.ax, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.ay = load i32, ptr %9, align 4, !tbaa !66    ; 3 uses
  %i.az = icmp sgt i32 %.sroa.speculated, 0
  %i.ba = mul i32 %i.ay, 9
  br i1 %i.az, label %.preheader11.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.bb = sext i32 %.0107 to i64                  ; 5 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.bc = mul nuw nsw i64 %wide.trip.count.i, 72
  %i.bd = mul nsw i64 %i.bb, 9
  %scevgep115 = getelementptr i8, ptr %.val, i64 %i.bd
  %i.be = mul i32 %i.ao, %i.ay
  %i.bf = mul i32 %i.ay, 9
  %i.bg = add nsw i64 %i.bb, %wide.trip.count.i
  %i.bh = mul nsw i64 %i.bg, 9
  %scevgep117 = getelementptr i8, ptr %.val, i64 %i.bh
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check119 = icmp ult i32 %.sroa.speculated, 16
  %i.bi = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.bj = mul nuw nsw i64 %n.vec, 72
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bi, 0
  %n.vec135 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bk = mul nuw nsw i64 %n.vec135, 72
  %broadcast.splatinsert136 = insertelement <8 x i64> poison, i64 %i.bb, i64 0
  %broadcast.splat137 = shufflevector <8 x i64> %broadcast.splatinsert136, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n152 = icmp eq i64 %n.vec135, %wide.trip.count.i
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi ptr [ %i.al, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 30 uses
  %i.bl = trunc i64 %indvars.iv24.i to i32
  %i.bm = add i32 %i.ad, %i.bl
  %i.bn = mul i32 %i.ba, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %.val, i64 %i.bo ; 25 uses
  br i1 %min.iters.check, label %.preheader.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bq = trunc i64 %indvars.iv24.i to i32
  %i.br = mul i32 %i.bf, %i.bq
  %i.bs = add i32 %i.br, %i.be
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.bt
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bt
  %scevgep = getelementptr i8, ptr %.019.i, i64 %i.bc
  %bound0 = icmp ult ptr %.019.i, %scevgep118
  %bound1 = icmp ult ptr %scevgep116, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = getelementptr i8, ptr %.019.i, i64 %i.bj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bv = mul i64 %index, 72                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %i.bw = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep120 = getelementptr i8, ptr %i.bw, i64 72
  %i.bx = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep121 = getelementptr i8, ptr %i.bx, i64 144
  %i.by = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep122 = getelementptr i8, ptr %i.by, i64 216
  %i.bz = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep123 = getelementptr i8, ptr %i.bz, i64 288
  %i.ca = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep124 = getelementptr i8, ptr %i.ca, i64 360
  %i.cb = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep125 = getelementptr i8, ptr %i.cb, i64 432
  %i.cc = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep126 = getelementptr i8, ptr %i.cc, i64 504
  %i.cd = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep127 = getelementptr i8, ptr %i.cd, i64 576
  %i.ce = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep128 = getelementptr i8, ptr %i.ce, i64 648
  %i.cf = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep129 = getelementptr i8, ptr %i.cf, i64 720
  %i.cg = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep130 = getelementptr i8, ptr %i.cg, i64 792
  %i.ch = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep131 = getelementptr i8, ptr %i.ch, i64 864
  %i.ci = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
  %next.gep132 = getelementptr i8, ptr %i.ci, i64 936
  %i.cj = getelementptr i8, ptr %.019.i, i64 %i.bv ; 36 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %i.cl = add nsw i32 %i.ck, %i.ch
  %i.cm = trunc nsw i32 %i.cl to i16
  %.tr57.1.i = sext i8 %i.cc to i16
  %i.cn = shl nsw i16 %.tr57.1.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.bg, i64 6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !85  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !85  ; 2 uses
  %i.cu = sext i8 %i.cp to i32                    ; 2 uses
  %.tr.2.i = sext i8 %i.cp to i16                 ; 2 uses
  %i.cv = shl nsw i16 %.tr.2.i, 1
  %i.cw = sext i8 %i.cr to i32                    ; 2 uses
  %i.cx = add nsw i32 %i.cw, %i.cu
  %i.cy = sext i8 %i.ct to i32                    ; 2 uses
  %i.cz = add nsw i32 %i.cx, %i.cy
  %i.da = trunc nsw i32 %i.cz to i16
  %i.db = sub nsw i32 %i.cu, %i.cw
  %i.dc = add nsw i32 %i.db, %i.cy
  %i.dd = trunc nsw i32 %i.dc to i16
  %.tr57.2.i = sext i8 %i.ct to i16               ; 2 uses
  %i.de = shl nsw i16 %.tr57.2.i, 1
  %i.df = insertelement <8 x i16> poison, i16 %i.bn, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.ce, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.bs, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.cj, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.bv, i64 4 ; 2 uses
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.cm, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.bw, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.cn, i64 7 ; 3 uses
  %i.dn = shufflevector <8 x i16> %i.dm, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6> ; 2 uses
  %i.do = add nsw <8 x i16> %i.dm, %i.dn
  %i.dp = sub nsw <8 x i16> %i.dm, %i.dn
  %i.dq = insertelement <8 x i16> poison, i16 %i.cv, i64 0
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.da, i64 1
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dd, i64 2 ; 2 uses
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.de, i64 3
  %i.du = shufflevector <8 x i16> %i.dj, <8 x i16> %i.ds, <8 x i32> <i32 poison, i32 poison, i32 2, i32 9, i32 4, i32 10, i32 poison, i32 poison>
  %i.dv = insertelement <8 x i16> %i.du, i16 %.tr.i, i64 0
  %i.dw = insertelement <8 x i16> %i.dv, i16 %.tr.2.i, i64 1
  %i.dx = insertelement <8 x i16> %i.dw, i16 %.tr57.i, i64 6
  %i.dy = insertelement <8 x i16> %i.dx, i16 %.tr57.2.i, i64 7
  %i.dz = shl nsw <8 x i16> %i.dy, <i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2>
  %i.ea = shufflevector <8 x i16> %i.dz, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eb = shufflevector <8 x i16> %i.do, <8 x i16> %i.dp, <16 x i32> <i32 8, i32 1, i32 10, i32 3, i32 12, i32 5, i32 14, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ec = shufflevector <8 x i16> %i.dt, <8 x i16> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ed = add nsw <16 x i16> %i.eb, %i.ec
  %i.ee = shufflevector <16 x i16> %i.ea, <16 x i16> %i.ed, <16 x i32> <i32 0, i32 17, i32 16, i32 1, i32 2, i32 19, i32 18, i32 3, i32 4, i32 21, i32 20, i32 5, i32 6, i32 23, i32 22, i32 7>
  store <16 x i16> %i.ee, ptr %.110.i, align 2, !tbaa !102
  %i.ef = getelementptr inbounds nuw i8, ptr %.110.i, i64 32 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !1652

._crit_edge.i:                                    ; preds = %.preheader.preheader.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, label %.preheader4.i, !llvm.loop !1653

_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %.lr.ph, %.preheader4.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.eg = sdiv i32 %i.ab, %i.as
  %i.eh = load ptr, ptr %10, align 8, !tbaa !22, !noalias !1660
  %i.ei = load i64, ptr %i.p, align 8, !tbaa !23, !noalias !1660
  %i.ej = sext i32 %i.eg to i64
  %i.ek = mul i64 %i.ei, %i.ej
  %i.el = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !1660 ; 3 uses
  %i.em = mul i64 %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  %i.eo = load i32, ptr %i.r, align 8, !tbaa !65, !noalias !1660
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !21, !noalias !1660
  %i.eq = sdiv i32 %.081, %i.ao
  %i.er = sext i32 %i.eq to i64
  store ptr null, ptr %i.t, align 8, !tbaa !20
  store i64 %i.el, ptr %i.u, align 8, !tbaa !64
  store i32 %i.eo, ptr %i.v, align 8, !tbaa !65
  store ptr %i.ep, ptr %i.w, align 8, !tbaa !21
  %i.es = load <2 x i32>, ptr %i.n, align 4, !tbaa !66, !noalias !1660
  %i.et = load i32, ptr %i.o, align 8, !tbaa !75, !noalias !1660
  %i.eu = load i32, ptr %i.n, align 4, !tbaa !74, !noalias !1660
  %i.ev = sext i32 %i.eu to i64
  %i.ew = sext i32 %i.et to i64
  %i.ex = mul nsw i64 %i.ew, %i.ev                ; 2 uses
  %i.ey = mul i64 %i.el, %i.ex
  %i.ez = mul i64 %i.ey, %i.er
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ez
  store ptr %i.fa, ptr %11, align 8, !tbaa !22
  %i.fb = shufflevector <2 x i32> %i.es, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fc = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.fb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.fc, ptr %i.x, align 8, !tbaa !66
  store i32 1, ptr %i.y, align 8, !tbaa !67
  store i64 %i.ex, ptr %i.z, align 8, !tbaa !23, !alias.scope !1661
  call fastcc void @_ZN4ncnnL16pack_A_tile_int8ERKNS_3MatERS0_iii(ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef 16, i32 noundef %.sroa.speculated66, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.fd = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.fe = add nsw i32 %i.fd, %.081                ; 2 uses
  %i.ff = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1658

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
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  call void @__clang_call_terminate(ptr %i.fi) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL49convolution_im2col_gemm_get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() ; 2 uses
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0105 = phi i32 [ %i.c, %bb.b ], [ %6, %bb.a ] ; 3 uses
  %i.d = add nsw i32 %i.a, -64
  %i.e = sdiv i32 %i.d, 256
  %i.f = shl nsw i32 %i.e, 4
  %.sroa.speculated95 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 16) ; 3 uses
  %i.g = add i32 %2, -1                           ; 2 uses
  %i.h = add i32 %i.g, %.sroa.speculated95
  %i.i = sdiv i32 %i.h, %.sroa.speculated95       ; 2 uses
  %i.j = add i32 %i.g, %i.i
  %i.k = sdiv i32 %i.j, %i.i
  %i.l = add nsw i32 %i.k, 15
  %i.m = sdiv i32 %i.l, 16
  %i.n = shl nsw i32 %i.m, 4
  %.sroa.speculated91 = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated95)
  store i32 %.sroa.speculated91, ptr %5, align 4, !tbaa !66
  %i.o = add nsw i32 %0, 63
  %i.p = sdiv i32 %i.o, 64                        ; 2 uses
  %i.q = add i32 %0, -1                           ; 3 uses
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, %i.p
  %i.t = add nsw i32 %i.s, 15
  %i.u = sdiv i32 %i.t, 16
  %i.v = shl nsw i32 %i.u, 4
  %.sroa.speculated85 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 16)
  store i32 %.sroa.speculated85, ptr %3, align 4, !tbaa !66
  %i.w = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated81 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %.0105)
  %i.x = load i32, ptr %3, align 4, !tbaa !66
  %i.y = mul nsw i32 %i.x, %.sroa.speculated81    ; 3 uses
  %i.z = add i32 %i.q, %i.y
  %i.aa = sdiv i32 %i.z, %i.y                     ; 2 uses
  %i.ab = add i32 %i.q, %i.aa
  %i.ac = sdiv i32 %i.ab, %i.aa
  %i.ad = add nsw i32 %i.ac, 15
  %i.ae = sdiv i32 %i.ad, 16
  %i.af = shl nsw i32 %i.ae, 4
  %.sroa.speculated77 = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.y) ; 3 uses
  %i.ag = icmp sgt i32 %.0105, 1
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = sdiv i32 %.sroa.speculated77, %.0105
  %.sroa.speculated67 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.ai = add nuw nsw i32 %.sroa.speculated67, 15
  %i.aj = and i32 %i.ai, 2147483632
  %.sroa.speculated73 = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %.sroa.speculated77)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi i32 [ %.sroa.speculated73, %bb.d ], [ %.sroa.speculated77, %bb.c ] ; 3 uses
  store i32 %i.ak, ptr %3, align 4, !tbaa !66
  %i.al = icmp sgt i32 %1, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = load i32, ptr %5, align 4, !tbaa !66    ; 3 uses
  %.not = icmp slt i32 %i.am, %2
  %i.an = mul nsw i32 %i.ak, %i.am
  %i.ao = sub nsw i32 %i.a, %i.an
  %i.ap = shl nsw i32 %i.ak, 2
  %i.aq = select i1 %.not, i32 %i.ap, i32 0
  %.sink = add nsw i32 %i.am, %i.aq
  %i.ar = sdiv i32 %i.ao, %.sink
  %i.as = sdiv i32 %i.ar, 16
  %i.at = shl nsw i32 %i.as, 4
  %.sroa.speculated61 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 15) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated61
  %7 = udiv i32 %i.av, %.sroa.speculated61        ; 2 uses
  %i.aw = add nuw i32 %i.au, %7
  %8 = udiv i32 %i.aw, %7
  %i.ax = add nuw nsw i32 %8, 15
  %9 = and i32 %i.ax, -16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %9, i32 %.sroa.speculated61)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
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
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
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
  %i.x = load i32, ptr %5, align 4, !tbaa !66     ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.split, label %._crit_edge57

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.z = phi i32 [ %i.ag, %._crit_edge ], [ %i.j, %.lr.ph ]
  %i.aa = phi i32 [ %i.ah, %._crit_edge ], [ %i.x, %.lr.ph ] ; 3 uses
  %.02855 = phi i32 [ %i.ai, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.ab = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ac = mul nsw i32 %i.ab, %.02855              ; 3 uses
  %i.ad = load i32, ptr %4, align 4, !tbaa !66
  %i.ae = sub nsw i32 %i.ad, %i.ac
  %.sroa.speculated50 = call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ae)
  %i.af = icmp sgt i32 %i.aa, 0
  br i1 %i.af, label %_ZN4ncnn3MatD2Ev.exit29.preheader, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.preheader:                ; preds = %.lr.ph.split
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge.loopexit:                             ; preds = %_ZN4ncnn3MatD2Ev.exit
  %.pre59 = load i32, ptr %i.b, align 4, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.ag = phi i32 [ %.pre59, %._crit_edge.loopexit ], [ %i.z, %.lr.ph.split ] ; 2 uses
  %i.ah = phi i32 [ %i.br, %._crit_edge.loopexit ], [ %i.aa, %.lr.ph.split ]
  %i.ai = add nsw i32 %.02855, 1
  %.not.not = icmp slt i32 %.02855, %i.ag
  br i1 %.not.not, label %.lr.ph.split, label %._crit_edge57, !llvm.loop !1662

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.aj = phi i32 [ %i.bp, %_ZN4ncnn3MatD2Ev.exit ], [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.preheader ] ; 2 uses
  %i.ak = phi i32 [ %i.br, %_ZN4ncnn3MatD2Ev.exit ], [ %i.aa, %_ZN4ncnn3MatD2Ev.exit29.preheader ]
  %.053 = phi i32 [ %i.bq, %_ZN4ncnn3MatD2Ev.exit ], [ 0, %_ZN4ncnn3MatD2Ev.exit29.preheader ] ; 4 uses
  %i.al = sub nsw i32 %i.ak, %.053
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.am = load i32, ptr %3, align 4, !tbaa !66
  %i.an = sdiv i32 %i.ac, %i.am
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !1668 ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !22, !noalias !1668
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !1668
  %i.ar = sext i32 %i.an to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !1668 ; 3 uses
  %i.au = mul i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au
  %i.aw = load i32, ptr %i.o, align 8, !tbaa !65, !noalias !1668
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !21, !noalias !1668
  %i.ay = sext i32 %i.ao to i64                   ; 2 uses
  %i.az = sdiv i32 %.053, %i.aj
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.at, %i.ay
  %i.bc = mul i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc
  store ptr %i.bd, ptr %9, align 8, !tbaa !22, !alias.scope !1669
  store ptr null, ptr %i.q, align 8, !tbaa !20, !alias.scope !1669
  store i64 %i.at, ptr %i.r, align 8, !tbaa !64, !alias.scope !1669
  store i32 %i.aw, ptr %i.s, align 8, !tbaa !65, !alias.scope !1669
  store ptr %i.ax, ptr %i.t, align 8, !tbaa !21, !alias.scope !1669
  %i.be = insertelement <4 x i32> <i32 2, i32 poison, i32 1, i32 1>, i32 %i.ao, i64 1
  store <4 x i32> %i.be, ptr %i.u, align 8, !tbaa !66, !alias.scope !1669
  store i32 1, ptr %i.v, align 8, !tbaa !67, !alias.scope !1669
  store i64 %i.ay, ptr %i.w, align 8, !tbaa !23, !alias.scope !1669
  invoke void @_ZN4ncnn23Gemm_x86_avx512_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.ac, i32 noundef %.sroa.speculated50, i32 noundef %.053, i32 noundef %.sroa.speculated)
          to label %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit unwind label %bb.j

_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !20  ; 2 uses
  %.not.i30 = icmp eq ptr %i.bf, null
  br i1 %.not.i30, label %_ZN4ncnn3MatD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !21  ; 3 uses
  %.not3.i31 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %9, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !14
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
  call void @__clang_call_terminate(ptr %i.bo) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.c, %_ZN4ncnnL35convolution_im2col_pack_A_tile_int8ERKNS_3MatERS0_iiii.exit, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.bp = load i32, ptr %6, align 4, !tbaa !66    ; 2 uses
  %i.bq = add nsw i32 %i.bp, %.053                ; 2 uses
  %i.br = load i32, ptr %5, align 4, !tbaa !66    ; 3 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %_ZN4ncnn3MatD2Ev.exit29, label %._crit_edge.loopexit, !llvm.loop !1667

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
  call void @__clang_call_terminate(ptr %i.bu) #36
  unreachable
}

declare void @_ZN4ncnn23Gemm_x86_avx512_utility16pack_A_tile_int8ERKNS_3MatERS1_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.x86.avx512.mask.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #16

end_hunk_3
begin_hunk_4_@_ZNK4ncnn22Convolution_x86_avx51219forwardDilation_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.15:bb.a

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 192
  %wide.load = load <16 x float>, ptr %i.bn, align 4, !tbaa !41, !alias.scope !2547
  %wide.load92 = load <16 x float>, ptr %i.bo, align 4, !tbaa !41, !alias.scope !2547
  %wide.load93 = load <16 x float>, ptr %i.bp, align 4, !tbaa !41, !alias.scope !2547
  %wide.load94 = load <16 x float>, ptr %i.bq, align 4, !tbaa !41, !alias.scope !2547
  %i.br = getelementptr inbounds [4 x i8], ptr %.03265, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 192
  store <16 x float> %wide.load, ptr %i.br, align 4, !tbaa !41, !alias.scope !2548, !noalias !2547
  store <16 x float> %wide.load92, ptr %i.bs, align 4, !tbaa !41, !alias.scope !2548, !noalias !2547
  store <16 x float> %wide.load93, ptr %i.bt, align 4, !tbaa !41, !alias.scope !2548, !noalias !2547
  store <16 x float> %wide.load94, ptr %i.bu, align 4, !tbaa !41, !alias.scope !2548, !noalias !2547
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2540

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index96
  %wide.load97 = load <8 x float>, ptr %i.bw, align 4, !tbaa !41, !alias.scope !2547
  %i.bx = getelementptr inbounds [4 x i8], ptr %.03265, i64 %index96
  store <8 x float> %wide.load97, ptr %i.bx, align 4, !tbaa !41, !alias.scope !2548, !noalias !2547
  %index.next98 = add nuw i64 %index96, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next98, %n.vec95
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2541

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n99, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec95, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.prol
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !41
  %i.cb = mul nsw i64 %indvars.iv.prol, %i.aj
  %i.cc = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cb
  store float %i.ca, ptr %i.cc, align 4, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2542

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv.ph, %i.ak
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cf = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.ai
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge67, label %iter.check, !llvm.loop !2543

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !41
  %i.ci = mul nsw i64 %indvars.iv, %i.aj
  %i.cj = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.ci
  store float %i.ch, ptr %i.cj, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !41
  %i.cm = mul nsw i64 %indvars.iv.next, %i.aj
  %i.cn = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cm
  store float %i.cl, ptr %i.cn, align 4, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.1
  %i.cp = load float, ptr %i.co, align 4, !tbaa !41
  %i.cq = mul nsw i64 %indvars.iv.next.1, %i.aj
  %i.cr = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cq
  store float %i.cp, ptr %i.cr, align 4, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !41
  %i.cu = mul nsw i64 %indvars.iv.next.2, %i.aj
  %i.cv = getelementptr inbounds [4 x i8], ptr %.03265, i64 %i.cu
  store float %i.ct, ptr %i.cv, align 4, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.ak
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2544

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

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
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
  %i.e = add nsw i32 %i.b, -64
  %i.f = sdiv i32 %i.e, 256
  %i.g = shl nsw i32 %i.f, 4
  %.sroa.speculated110 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16) ; 3 uses
  %i.h = add i32 %2, -1                           ; 2 uses
  %i.i = add i32 %i.h, %.sroa.speculated110
  %i.j = sdiv i32 %i.i, %.sroa.speculated110      ; 2 uses
  %i.k = add i32 %i.h, %i.j
  %i.l = sdiv i32 %i.k, %i.j
  %i.m = add nsw i32 %i.l, 15
  %i.n = sdiv i32 %i.m, 16
  %i.o = shl nsw i32 %i.n, 4
  %.sroa.speculated105 = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %.sroa.speculated110)
  store i32 %.sroa.speculated105, ptr %5, align 4, !tbaa !66
  %i.p = add nsw i32 %0, 63
  %i.q = sdiv i32 %i.p, 64                        ; 2 uses
  %i.r = add i32 %0, -1                           ; 3 uses
  %i.s = add i32 %i.r, %i.q
  %i.t = sdiv i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, 15
  %i.v = sdiv i32 %i.u, 16
  %i.w = shl nsw i32 %i.v, 4
  %.sroa.speculated98 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 16)
  store i32 %.sroa.speculated98, ptr %3, align 4, !tbaa !66
  %i.x = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.0120)
  %i.y = load i32, ptr %3, align 4, !tbaa !66
  %i.z = mul nsw i32 %i.y, %.sroa.speculated93    ; 3 uses
  %i.aa = add i32 %i.r, %i.z
  %i.ab = sdiv i32 %i.aa, %i.z                    ; 2 uses
  %i.ac = add i32 %i.r, %i.ab
  %i.ad = sdiv i32 %i.ac, %i.ab
  %i.ae = add nsw i32 %i.ad, 15
  %i.af = sdiv i32 %i.ae, 16
  %i.ag = shl nsw i32 %i.af, 4
  %.sroa.speculated88 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.z) ; 3 uses
  %i.ah = icmp sgt i32 %.0120, 1
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = sdiv i32 %.sroa.speculated88, %.0120
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1)
  %i.aj = add nuw nsw i32 %.sroa.speculated76, 15
  %i.ak = and i32 %i.aj, 2147483632
  %.sroa.speculated83 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %.sroa.speculated88)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.al = phi i32 [ %.sroa.speculated83, %bb.d ], [ %.sroa.speculated88, %bb.c ] ; 3 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !66
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %5, align 4, !tbaa !66    ; 3 uses
  %.not = icmp slt i32 %i.an, %2
  %i.ao = mul nsw i32 %i.al, %i.an
  %i.ap = sub nsw i32 %i.b, %i.ao
  %i.aq = select i1 %.not, i32 %i.al, i32 0
  %.sink = add nsw i32 %i.an, %i.aq
  %i.ar = sdiv i32 %i.ap, %.sink
  %i.as = sdiv i32 %i.ar, 16
  %i.at = shl nsw i32 %i.as, 4
  %.sroa.speculated69 = tail call i32 @llvm.smax.i32(i32 %i.at, i32 16) ; 3 uses
  %i.au = add nsw i32 %1, -1                      ; 2 uses
  %i.av = add nuw i32 %i.au, %.sroa.speculated69
  %7 = udiv i32 %i.av, %.sroa.speculated69        ; 2 uses
  %i.aw = add nuw i32 %i.au, %7
  %8 = udiv i32 %i.aw, %7
  %i.ax = add nuw nsw i32 %8, 15
  %9 = and i32 %i.ax, -16
  %.sroa.speculated64 = tail call i32 @llvm.umin.i32(i32 %9, i32 %.sroa.speculated69)
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated64, i32 16)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not114 = icmp sgt i32 %i.k, %i.j
  br i1 %.not114, label %._crit_edge117, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = load i32, ptr %5, align 4, !tbaa !66     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.split, label %._crit_edge117

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.r = phi i32 [ %i.ab, %._crit_edge ], [ %i.p, %.lr.ph ] ; 3 uses
  %.028115 = phi i32 [ %i.ac, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !66     ; 2 uses
  %i.t = mul nsw i32 %i.s, %.028115               ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !66
  %i.v = sub nsw i32 %i.u, %i.t
  %.sroa.speculated57 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.v) ; 7 uses
  %i.w = icmp sgt i32 %i.r, 0
  br i1 %i.w, label %_ZN4ncnn3MatD2Ev.exit29.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit29.lr.ph:                    ; preds = %.lr.ph.split
  %i.x = icmp sgt i32 %.sroa.speculated57, 15
  %i.y = zext nneg i32 %.sroa.speculated57 to i64
  %i.z = sext i32 %i.t to i64                     ; 5 uses
  %i.aa = sext i32 %.sroa.speculated57 to i64     ; 4 uses
  %invariant.op.i = add nsw i64 %i.aa, -7
  %invariant.op453.i = add nsw i64 %i.aa, -3
  %invariant.op454.i = add nsw i64 %i.aa, -1
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  br label %_ZN4ncnn3MatD2Ev.exit29

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.lr.ph.split
  %i.ab = phi i32 [ %i.r, %.lr.ph.split ], [ %i.akq, %_ZN4ncnn3MatD2Ev.exit ]
  %i.ac = add i32 %.028115, 1
  %exitcond.not = icmp eq i32 %.028115, %i.j
  br i1 %exitcond.not, label %._crit_edge117, label %.lr.ph.split, !llvm.loop !2549

_ZN4ncnn3MatD2Ev.exit29:                          ; preds = %_ZN4ncnn3MatD2Ev.exit29.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.ad = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.ako, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ae = phi i32 [ %i.r, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.akq, %_ZN4ncnn3MatD2Ev.exit ]
  %.0113 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29.lr.ph ], [ %i.akp, %_ZN4ncnn3MatD2Ev.exit ] ; 8 uses
  %i.af = sub i32 %i.ae, %.0113
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.af) ; 35 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !66
  %i.ah = sdiv i32 %i.t, %i.ag
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !74, !noalias !2579
  %i.aj = load ptr, ptr %7, align 8, !tbaa !22, !noalias !2579
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !2579
  %i.al = sext i32 %i.ah to i64
  %i.am = mul i64 %i.ak, %i.al
  %i.an = load i64, ptr %i.n, align 8, !tbaa !64, !noalias !2579 ; 2 uses
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = sdiv i32 %.0113, %i.ad
  %i.as = sext i32 %i.ar to i64
  %i.at = mul i64 %i.an, %i.aq
  %i.au = mul i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.o, align 4, !tbaa !74  ; 5 uses
  br i1 %i.x, label %.lr.ph175.i, label %.preheader115.i

.lr.ph175.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit29
  %i.ax = sext i32 %.0113 to i64                  ; 16 uses
  %i.ay = icmp sgt i32 %.sroa.speculated, 15
  %i.az = and i32 %.sroa.speculated, -16
  %i.ba = sext i32 %i.aw to i64                   ; 16 uses
  br label %bb.c

.preheader115.loopexit.i:                         ; preds = %._crit_edge.i
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader115.i

.preheader115.i:                                  ; preds = %.preheader115.loopexit.i, %_ZN4ncnn3MatD2Ev.exit29
  %.0457.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit29 ], [ %i.bb, %.preheader115.loopexit.i ] ; 3 uses
  %.0445.lcssa.i = phi ptr [ %i.av, %_ZN4ncnn3MatD2Ev.exit29 ], [ %.2447.lcssa.i, %.preheader115.loopexit.i ] ; 2 uses
  %i.bc = or disjoint i32 %.0457.lcssa.i, 7
  %i.bd = icmp slt i32 %i.bc, %.sroa.speculated57
  br i1 %i.bd, label %.lr.ph215.i, label %.preheader113.i

.lr.ph215.i:                                      ; preds = %.preheader115.i
  %i.be = sext i32 %.0113 to i64                  ; 8 uses
  %i.bf = icmp sgt i32 %.sroa.speculated, 7
  %i.bg = and i32 %.sroa.speculated, -8
  %i.bh = zext nneg i32 %.0457.lcssa.i to i64
  %i.bi = sext i32 %i.aw to i64                   ; 8 uses
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph175.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph175.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.0445173.i = phi ptr [ %i.av, %.lr.ph175.i ], [ %.2447.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !22    ; 16 uses
  %i.bk = add nsw i64 %indvars.iv.i, %i.z         ; 16 uses
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
  %i.cq = add nsw i64 %i.bk, 8
  %i.cr = mul nsw i64 %i.cq, %i.ba
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ax ; 2 uses
  %i.cu = add nsw i64 %i.bk, 9
  %i.cv = mul nsw i64 %i.cu, %i.ba
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cv
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ax ; 2 uses
  %i.cy = add nsw i64 %i.bk, 10
  %i.cz = mul nsw i64 %i.cy, %i.ba
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.cz
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.ax ; 2 uses
  %i.dc = add nsw i64 %i.bk, 11
  %i.dd = mul nsw i64 %i.dc, %i.ba
  %i.de = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.ax ; 2 uses
  %i.dg = add nsw i64 %i.bk, 12
  %i.dh = mul nsw i64 %i.dg, %i.ba
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.ax ; 2 uses
  %i.dk = add nsw i64 %i.bk, 13
  %i.dl = mul nsw i64 %i.dk, %i.ba
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dl
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.ax ; 2 uses
  %i.do = add nsw i64 %i.bk, 14
  %i.dp = mul nsw i64 %i.do, %i.ba
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dp
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ax ; 2 uses
  %i.ds = add nsw i64 %i.bk, 15
  %i.dt = mul nsw i64 %i.ds, %i.ba
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dt
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  br i1 %i.ay, label %.lr.ph.i, label %.preheader116.i

.preheader116.i:                                  ; preds = %.lr.ph.i, %bb.c
  %.0527.lcssa.i = phi ptr [ %i.bz, %bb.c ], [ %i.ma, %.lr.ph.i ]
  %.0525.lcssa.i = phi ptr [ %i.cd, %bb.c ], [ %i.mb, %.lr.ph.i ]
  %.0523.lcssa.i = phi ptr [ %i.ch, %bb.c ], [ %i.mc, %.lr.ph.i ]
  %.0521.lcssa.i = phi ptr [ %i.cl, %bb.c ], [ %i.md, %.lr.ph.i ]
end_hunk_4
