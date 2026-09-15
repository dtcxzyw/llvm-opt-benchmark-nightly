Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  store float %i.hy, ptr %i.hx, align 4, !tbaa !56
  %i.hz = getelementptr inbounds nuw i8, ptr %.1110, i64 16 ; 2 uses
  br i1 %exitcond.not.3, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.4

_ZN4ncnn3MatD2Ev.exit59.4:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.3
  %gep102.4 = getelementptr i8, ptr %gep, i64 %.reass.4
  %i.ia = load float, ptr %gep102.4, align 4, !tbaa !56
  store float %i.ia, ptr %i.hz, align 4, !tbaa !56
  %i.ib = getelementptr inbounds nuw i8, ptr %.1110, i64 20 ; 2 uses
  br i1 %exitcond.not.4, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.5

_ZN4ncnn3MatD2Ev.exit59.5:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.4
  %gep102.5 = getelementptr i8, ptr %gep, i64 %.reass.5
  %i.ic = load float, ptr %gep102.5, align 4, !tbaa !56
  store float %i.ic, ptr %i.ib, align 4, !tbaa !56
  %i.id = getelementptr inbounds nuw i8, ptr %.1110, i64 24 ; 2 uses
  br i1 %exitcond.not.5, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.6

_ZN4ncnn3MatD2Ev.exit59.6:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.5
  %gep102.6 = getelementptr i8, ptr %gep, i64 %.reass.6
  %i.ie = load float, ptr %gep102.6, align 4, !tbaa !56
  store float %i.ie, ptr %i.id, align 4, !tbaa !56
  %i.if = getelementptr inbounds nuw i8, ptr %.1110, i64 28 ; 2 uses
  br i1 %exitcond.not.6, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.7

_ZN4ncnn3MatD2Ev.exit59.7:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.6
  %gep102.7 = getelementptr i8, ptr %gep, i64 %.reass.7
  %i.ig = load float, ptr %gep102.7, align 4, !tbaa !56
  store float %i.ig, ptr %i.if, align 4, !tbaa !56
  %i.ih = getelementptr inbounds nuw i8, ptr %.1110, i64 32
  br label %bb.j

bb.q:                                             ; preds = %bb.h
  %i.ii = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !36 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %8, align 8, !tbaa !37    ; 3 uses
  br i1 %.not3.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.v, !inline_history !0

bb.t:                                             ; preds = %bb.r
  %.not.i73 = icmp eq ptr %i.im, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.im) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.v:                                             ; preds = %bb.s
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.q, %bb.h, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.aj
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
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
  %i.j = and i32 %i.i, 2147483640
  %.sroa.speculated88 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 8)
  store i32 %.sroa.speculated88, ptr %3, align 4, !tbaa !81
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated84 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !81
  %i.m = mul nsw i32 %i.l, %.sroa.speculated84    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 7
  %i.t = sdiv i32 %i.s, 8
  %i.u = shl nsw i32 %i.t, 3
  %.sroa.speculated80 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated80, %.0
  %.sroa.speculated70 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated70, 7
  %i.y = and i32 %i.x, 2147483640
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated80)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated76, %bb.d ], [ %.sroa.speculated80, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !81
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 8
  %i.ae = shl nsw i32 %i.ad, 3
  %.sroa.speculated64 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 8) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated64
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated64     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 7
  %i.al = sdiv i32 %i.ak, 8
  %i.am = shl nsw i32 %i.al, 3
  %.sroa.speculated60 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated64) ; 3 uses
  store i32 %.sroa.speculated60, ptr %5, align 4, !tbaa !81
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %.sroa.speculated60
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = fsub fast float %i.f, %i.aq
  %i.as = add nsw i32 %i.ao, %.sroa.speculated60
  %i.at = sitofp fast i32 %i.as to float
  %i.au = fdiv fast float %i.ar, %i.at
  %i.av = fptosi float %i.au to i32
  %.fr = freeze i32 %i.av                         ; 2 uses
  %i.aw = srem i32 %.fr, 12
  %i.ax = sub nsw i32 %.fr, %i.aw
  %.sroa.speculated54 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 12) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated54
  %i.ba = udiv i32 %i.az, %.sroa.speculated54     ; 2 uses
  %i.bb = add nuw i32 %i.ay, %i.ba
  %i.bc = udiv i32 %i.bb, %i.ba
  %.fr43 = freeze i32 %i.bc
  %i.bd = add i32 %.fr43, 11                      ; 2 uses
  %i.be = srem i32 %i.bd, 12
  %i.bf = sub nsw i32 %i.bd, %i.be
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %.sroa.speculated54)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !81
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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph127, %_ZN4ncnn3MatD2Ev.exit
  %.033126 = phi i32 [ %i.k, %.lr.ph127 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = mul i32 %.033126, 9
  %i.s = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.t = mul i32 %i.s, %.033126                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !37, !noalias !676 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !676
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !676
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 5 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !81    ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !81
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 10 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !81    ; 9 uses
  %i.ai = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !677
  %i.al = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !677
  %i.am = load ptr, ptr %10, align 8, !tbaa !37, !noalias !677
  %i.an = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !677
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !677 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.ak to i64
  %i.au = sext i32 %i.al to i64
  %i.av = mul i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = icmp sgt i32 %.sroa.speculated82, 7
  %i.ay = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.az = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.ba = add i32 %.sroa.speculated82, -4
  %i.bb = or disjoint i32 %i.ay, 3
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.az, -7
  %invariant.op102.i = add nsw i64 %i.az, -3
  %invariant.op103.i = add nsw i64 %i.az, -1
  %i.bd = sext i32 %i.ah to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ac to i64
  %i.bf = shl nsw i64 %i.az, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.s, %i.r
  %i.bj = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033126, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033126, %i.bm
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar159 = phi i64 [ 0, %.lr.ph ], [ %indvar.next160, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar159 to i32
  %i.bo = mul i32 %i.ah, %i.bn
  %i.bp = sub i32 %i.ac, %i.bo
  %smin197 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bp)
  %i.bq = add i32 %smin197, -1                    ; 2 uses
  %i.br = mul i32 %i.ah, %indvar
  %i.bs = sub i32 %i.ac, %i.br
  %smin157 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bs)
  %i.bt = zext i32 %smin157 to i64                ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 8
  %i.bv = mul i64 %i.bh, %indvar159               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ah, %indvar
  %i.by = sub i32 %i.ac, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = shl i32 %smin, 6                        ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = shl nuw nsw i64 %i.ca, 8
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ac, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ch) ; 22 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  br i1 %i.ai, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %bb.d
  %i.ci = load i32, ptr %9, align 4, !tbaa !81    ; 3 uses
  %i.cj = icmp sgt i32 %.sroa.speculated, 0
  %i.ck = mul i32 %i.ci, 9
  br i1 %i.cj, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep161 = getelementptr i8, ptr %.val, i64 %i.bv
  %i.cl = mul i32 %i.bi, %i.ci
  %i.cm = mul i32 %i.ci, 9
  %i.cn = getelementptr i8, ptr %.val, i64 %i.bv
  %scevgep165 = getelementptr i8, ptr %i.cn, i64 %i.bw
  %min.iters.check171 = icmp ult i32 %.sroa.speculated, 4
  %n.vec173 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.co = shl nuw nsw i64 %n.vec173, 8
  %cmp.n182 = icmp eq i64 %n.vec173, %wide.trip.count.i
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %._crit_edge.i, %.preheader12.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader12.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ab, %.preheader12.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cp = trunc i64 %indvars.iv25.i to i32
  %i.cq = add i32 %i.t, %i.cp
  %i.cr = mul i32 %i.ck, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cs ; 5 uses
  br i1 %min.iters.check171, label %.preheader.preheader.i.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.preheader12.i
  %i.cu = trunc i64 %indvars.iv25.i to i32
  %i.cv = mul i32 %i.cm, %i.cu
  %i.cw = add i32 %i.cv, %i.cl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.cy
  %scevgep164 = getelementptr i8, ptr %scevgep161, i64 %i.cy
  %scevgep158 = getelementptr i8, ptr %.020.i, i64 %i.bu
  %bound0167 = icmp ult ptr %.020.i, %scevgep166
  %bound1168 = icmp ult ptr %scevgep164, %scevgep158
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.preheader.preheader.i.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck156
  %i.cz = getelementptr i8, ptr %.020.i, i64 %i.co ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 6 uses
  %i.da = or disjoint i64 %index175, 1
  %i.db = or disjoint i64 %index175, 2
  %i.dc = or disjoint i64 %index175, 3
  %i.dd = shl i64 %index175, 8                    ; 4 uses
  %next.gep176.a = getelementptr i8, ptr %.020.i, i64 %i.dd ; 64 uses
  %i.de = getelementptr i8, ptr %.020.i, i64 %i.dd ; 20 uses
  %next.gep177.a = getelementptr i8, ptr %i.de, i64 256
  %i.df = getelementptr i8, ptr %.020.i, i64 %i.dd ; 20 uses
  %next.gep178 = getelementptr i8, ptr %i.df, i64 512
  %i.dg = getelementptr i8, ptr %.020.i, i64 %i.dd ; 20 uses
  %next.gep179 = getelementptr i8, ptr %i.dg, i64 768
  %i.dh = add nsw i64 %index175, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = mul nsw i64 %i.dk, 36
  %i.dp = getelementptr inbounds i8, ptr %i.ct, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dm ; 9 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 %i.do ; 9 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.du = load float, ptr %i.dq, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.dx = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !56, !alias.scope !678
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !56, !alias.scope !678
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !56, !alias.scope !678
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !56, !alias.scope !678
  %i.ej = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 1
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 2
  %i.em = insertelement <4 x float> %i.el, float %i.ei, i64 3 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.er = load float, ptr %i.en, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.es = load float, ptr %i.eo, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.et = load float, ptr %i.ep, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !56, !alias.scope !678 ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %i.er, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 2
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 3 ; 5 uses
  %i.ez = fmul fast <4 x float> %i.ea, splat (float f0xBE638E39) ; 4 uses
  %i.fa = fmul fast <4 x float> %i.em, splat (float f0x3E638E39) ; 2 uses
  %i.fb = fmul fast <4 x float> %i.ey, splat (float f0xBE638E39) ; 4 uses
  %i.fc = fsub fast <4 x float> %i.ez, %i.fa
  %i.fd = fadd fast <4 x float> %i.fc, %i.fb      ; 7 uses
  %i.fe = fadd fast <4 x float> %i.fa, %i.ez
  %i.ff = fadd fast <4 x float> %i.fe, %i.fb      ; 7 uses
  %i.fg = fmul fast <4 x float> %i.ea, splat (float f0x3C360B61) ; 4 uses
  %i.fh = fmul fast <4 x float> %i.em, splat (float f0x3CB60B61) ; 2 uses
  %i.fi = fadd fast <4 x float> %i.fh, %i.fg
  %i.fj = fmul fast <4 x float> %i.ey, splat (float f0x3D360B61) ; 2 uses
  %i.fk = fadd fast <4 x float> %i.fi, %i.fj      ; 7 uses
  %i.fl = fsub fast <4 x float> %i.fg, %i.fh
  %i.fm = fadd fast <4 x float> %i.fl, %i.fj      ; 7 uses
  %i.fn = fmul fast <4 x float> %i.ea, splat (float f0x3CB60B61) ; 4 uses
  %i.fo = fmul fast <4 x float> %i.em, splat (float f0x3C360B61) ; 2 uses
  %i.fp = fadd fast <4 x float> %i.fo, %i.fn
  %i.fq = fmul fast <4 x float> %i.ey, splat (float f0x3BB60B61) ; 2 uses
  %i.fr = fadd fast <4 x float> %i.fp, %i.fq      ; 7 uses
  %i.fs = fsub fast <4 x float> %i.fn, %i.fo
  %i.ft = fadd fast <4 x float> %i.fs, %i.fq      ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !56, !alias.scope !678
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !56, !alias.scope !678
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !56, !alias.scope !678
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !56, !alias.scope !678
  %i.gc = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 1
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 2
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 3 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !56, !alias.scope !678
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !56, !alias.scope !678
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !56, !alias.scope !678
  %i.gn = load float, ptr %i.gj, align 4, !tbaa !56, !alias.scope !678
  %i.go = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.gn, i64 3 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !56, !alias.scope !678
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !56, !alias.scope !678
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !56, !alias.scope !678
  %i.gz = load float, ptr %i.gv, align 4, !tbaa !56, !alias.scope !678
  %i.ha = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 2
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 3 ; 6 uses
  %i.he = fmul fast <4 x float> %i.gf, splat (float f0xBE638E39) ; 2 uses
  %i.hf = fmul fast <4 x float> %i.gr, splat (float f0x3E638E39) ; 2 uses
  %i.hg = fmul fast <4 x float> %i.hd, splat (float f0xBE638E39) ; 2 uses
  %i.hh = fsub fast <4 x float> %i.he, %i.hf
  %i.hi = fadd fast <4 x float> %i.hh, %i.hg      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %next.gep146 = getelementptr i8, ptr %i.asp, i64 256
  %i.asq = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep147 = getelementptr i8, ptr %i.asq, i64 512
  %i.asr = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep148 = getelementptr i8, ptr %i.asr, i64 768
  %i.ass = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep149 = getelementptr i8, ptr %i.ass, i64 1024
  %i.ast = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep150 = getelementptr i8, ptr %i.ast, i64 1280
  %i.asu = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep151 = getelementptr i8, ptr %i.asu, i64 1536
  %i.asv = getelementptr i8, ptr %gep.i, i64 %i.aso
  %next.gep152 = getelementptr i8, ptr %i.asv, i64 1792
  %i.asw = shl i64 %index, 2
  %next.gep153 = getelementptr i8, ptr %.646.i, i64 %i.asw
  %i.asx = load float, ptr %next.gep, align 4, !tbaa !56, !alias.scope !680
  %i.asy = load float, ptr %next.gep146, align 4, !tbaa !56, !alias.scope !680
  %i.asz = load float, ptr %next.gep147, align 4, !tbaa !56, !alias.scope !680
  %i.ata = load float, ptr %next.gep148, align 4, !tbaa !56, !alias.scope !680
  %i.atb = load float, ptr %next.gep149, align 4, !tbaa !56, !alias.scope !680
  %i.atc = load float, ptr %next.gep150, align 4, !tbaa !56, !alias.scope !680
  %i.atd = load float, ptr %next.gep151, align 4, !tbaa !56, !alias.scope !680
  %i.ate = load float, ptr %next.gep152, align 4, !tbaa !56, !alias.scope !680
  %i.atf = insertelement <8 x float> poison, float %i.asx, i64 0
  %i.atg = insertelement <8 x float> %i.atf, float %i.asy, i64 1
  %i.ath = insertelement <8 x float> %i.atg, float %i.asz, i64 2
  %i.ati = insertelement <8 x float> %i.ath, float %i.ata, i64 3
  %i.atj = insertelement <8 x float> %i.ati, float %i.atb, i64 4
  %i.atk = insertelement <8 x float> %i.atj, float %i.atc, i64 5
  %i.atl = insertelement <8 x float> %i.atk, float %i.atd, i64 6
  %i.atm = insertelement <8 x float> %i.atl, float %i.ate, i64 7
  store <8 x float> %i.atm, ptr %next.gep153, align 4, !tbaa !56, !alias.scope !681, !noalias !680
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.atn = icmp eq i64 %index.next, %n.vec
  br i1 %i.atn, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.anx, %middle.block ] ; 4 uses
  %.09944.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.asm, %middle.block ] ; 2 uses
  %.743.i.ph = phi ptr [ %.646.i, %vector.memcheck ], [ %.646.i, %.lr.ph.i ], [ %i.asn, %middle.block ] ; 2 uses
  %i.ato = sub i32 %.sroa.speculated, %.045.i.ph
  %xtraiter207 = and i32 %i.ato, 7                ; 2 uses
  %lcmp.mod208.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.i.prol = phi i32 [ %i.ats, %scalar.ph.prol ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.09944.i.prol = phi ptr [ %i.atq, %scalar.ph.prol ], [ %.09944.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.743.i.prol = phi ptr [ %i.atr, %scalar.ph.prol ], [ %.743.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.atp = load float, ptr %.09944.i.prol, align 4, !tbaa !56
  store float %i.atp, ptr %.743.i.prol, align 4, !tbaa !56
  %i.atq = getelementptr inbounds nuw i8, ptr %.09944.i.prol, i64 256 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %.743.i.prol, i64 4 ; 3 uses
  %i.ats = add nuw nsw i32 %.045.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter207
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !673

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa196.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.atr, %scalar.ph.prol ]
  %.045.i.unr = phi i32 [ %.045.i.ph, %scalar.ph.preheader ], [ %i.ats, %scalar.ph.prol ]
  %.09944.i.unr = phi ptr [ %.09944.i.ph, %scalar.ph.preheader ], [ %i.atq, %scalar.ph.prol ]
  %.743.i.unr = phi ptr [ %.743.i.ph, %scalar.ph.preheader ], [ %i.atr, %scalar.ph.prol ]
  %i.att = sub i32 %.045.i.ph, %.sroa.speculated
  %i.atu = icmp ugt i32 %i.att, -8
  br i1 %i.atu, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045.i = phi i32 [ %i.aut, %scalar.ph ], [ %.045.i.unr, %scalar.ph.prol.loopexit ]
  %.09944.i = phi ptr [ %i.aur, %scalar.ph ], [ %.09944.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.743.i = phi ptr [ %i.aus, %scalar.ph ], [ %.743.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.atv = load float, ptr %.09944.i, align 4, !tbaa !56
  store float %i.atv, ptr %.743.i, align 4, !tbaa !56
  %i.atw = getelementptr inbounds nuw i8, ptr %.09944.i, i64 256
  %i.atx = getelementptr inbounds nuw i8, ptr %.743.i, i64 4
  %i.aty = load float, ptr %i.atw, align 4, !tbaa !56
  store float %i.aty, ptr %i.atx, align 4, !tbaa !56
  %i.atz = getelementptr inbounds nuw i8, ptr %.09944.i, i64 512
  %i.aua = getelementptr inbounds nuw i8, ptr %.743.i, i64 8
  %i.aub = load float, ptr %i.atz, align 4, !tbaa !56
  store float %i.aub, ptr %i.aua, align 4, !tbaa !56
  %i.auc = getelementptr inbounds nuw i8, ptr %.09944.i, i64 768
  %i.aud = getelementptr inbounds nuw i8, ptr %.743.i, i64 12
  %i.aue = load float, ptr %i.auc, align 4, !tbaa !56
  store float %i.aue, ptr %i.aud, align 4, !tbaa !56
  %i.auf = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1024
  %i.aug = getelementptr inbounds nuw i8, ptr %.743.i, i64 16
  %i.auh = load float, ptr %i.auf, align 4, !tbaa !56
  store float %i.auh, ptr %i.aug, align 4, !tbaa !56
  %i.aui = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1280
  %i.auj = getelementptr inbounds nuw i8, ptr %.743.i, i64 20
  %i.auk = load float, ptr %i.aui, align 4, !tbaa !56
  store float %i.auk, ptr %i.auj, align 4, !tbaa !56
  %i.aul = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1536
  %i.aum = getelementptr inbounds nuw i8, ptr %.743.i, i64 24
  %i.aun = load float, ptr %i.aul, align 4, !tbaa !56
  store float %i.aun, ptr %i.aum, align 4, !tbaa !56
  %i.auo = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1792
  %i.aup = getelementptr inbounds nuw i8, ptr %.743.i, i64 28
  %i.auq = load float, ptr %i.auo, align 4, !tbaa !56
  store float %i.auq, ptr %i.aup, align 4, !tbaa !56
  %i.aur = getelementptr inbounds nuw i8, ptr %.09944.i, i64 2048
  %i.aus = getelementptr inbounds nuw i8, ptr %.743.i, i64 32 ; 2 uses
  %i.aut = add nuw nsw i32 %.045.i, 8             ; 2 uses
  %exitcond73.not.i.7 = icmp eq i32 %i.aut, %.sroa.speculated
  br i1 %exitcond73.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !674

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa142 = phi ptr [ %i.asn, %middle.block ], [ %.lcssa196.unr, %scalar.ph.prol.loopexit ], [ %i.aus, %scalar.ph ]
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next75.i, %i.az
  br i1 %exitcond77.not.i, label %._crit_edge49.split.i, label %.lr.ph.i, !llvm.loop !8

._crit_edge49.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph48.i, %.preheader.i, %.lr.ph33.i
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next79.i, 64
  br i1 %exitcond82.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !9

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge49.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bd ; 2 uses
  %i.auu = icmp slt i64 %indvars.iv.next, %i.be
  %indvar.next = add i32 %indvar, 1
  %indvar.next160 = add i64 %indvar159, 1
  br i1 %i.auu, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !675

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
  %i.auv = landingpad { ptr, i32 }
          catch ptr null
  %i.auw = extractvalue { ptr, i32 } %i.auv, 0
  call void @__clang_call_terminate(ptr %i.auw) #32
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare !callback !118 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
  %.not133 = icmp sgt i32 %i.k, %i.j
  br i1 %.not133, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.033134 = phi i32 [ %i.k, %.lr.ph135 ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = mul i32 %.033134, 9
  %i.s = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.t = mul i32 %i.s, %.033134                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !37, !noalias !700 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !700
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !700
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 5 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !81    ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !81
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 10 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !81    ; 9 uses
  %i.ai = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !701
  %i.al = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !701
  %i.am = load ptr, ptr %10, align 8, !tbaa !37, !noalias !701
  %i.an = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !701
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !701 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.ak to i64
  %i.au = sext i32 %i.al to i64
  %i.av = mul i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = icmp sgt i32 %.sroa.speculated82, 7
  %i.ay = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.az = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.ba = add i32 %.sroa.speculated82, -4
  %i.bb = or disjoint i32 %i.ay, 3
  %i.bc = icmp slt i32 %i.bb, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.az, -7
  %invariant.op102.i = add nsw i64 %i.az, -3
  %invariant.op103.i = add nsw i64 %i.az, -1
  %i.bd = sext i32 %i.ah to i64                   ; 2 uses
  %i.be = zext nneg i32 %i.ac to i64
  %i.bf = shl nsw i64 %i.az, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bd, 36
  %i.bi = mul i32 %i.s, %i.r
  %i.bj = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bl = add i32 %.033134, 1
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033134, %i.bm
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar167 = phi i64 [ 0, %.lr.ph ], [ %indvar.next168, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bn = trunc i64 %indvar167 to i32
  %i.bo = mul i32 %i.ah, %i.bn
  %i.bp = sub i32 %i.ac, %i.bo
  %smin198 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bp)
  %i.bq = add i32 %smin198, -1                    ; 2 uses
  %i.br = mul i32 %i.ah, %indvar
  %i.bs = sub i32 %i.ac, %i.br
  %smin165 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bs)
  %i.bt = zext i32 %smin165 to i64                ; 2 uses
  %i.bu = mul nuw nsw i64 %i.bt, 144
  %i.bv = mul i64 %i.bh, %indvar167               ; 2 uses
  %i.bw = mul nuw nsw i64 %i.bt, 36
  %i.bx = mul i32 %i.ah, %indvar
  %i.by = sub i32 %i.ac, %i.bx
  %smin = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.by) ; 2 uses
  %i.bz = add i32 %smin, -1
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = mul i32 %smin, 36                       ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %i.bg, %i.cd
  %i.cf = mul nuw nsw i64 %i.ca, 144
  %i.cg = trunc i64 %indvars.iv to i32
  %i.ch = sub i32 %i.ac, %i.cg
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ch) ; 22 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.ai, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.lr.ph.i:                             ; preds = %bb.d
  %i.ci = load i32, ptr %9, align 4, !tbaa !81    ; 3 uses
  %i.cj = icmp sgt i32 %.sroa.speculated, 0
  %i.ck = mul i32 %i.ci, 9
  br i1 %i.cj, label %.preheader10.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.preheader.i:                         ; preds = %.preheader10.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep169 = getelementptr i8, ptr %.val50, i64 %i.bv
  %i.cl = mul i32 %i.bi, %i.ci
  %i.cm = mul i32 %i.ci, 9
  %i.cn = getelementptr i8, ptr %.val50, i64 %i.bv
  %scevgep173 = getelementptr i8, ptr %i.cn, i64 %i.bw
  %min.iters.check179 = icmp ult i32 %.sroa.speculated, 4
  %n.vec181 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.co = mul nuw nsw i64 %n.vec181, 144
  %cmp.n190 = icmp eq i64 %n.vec181, %wide.trip.count.i
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %._crit_edge.i, %.preheader10.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader10.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge.i ] ; 3 uses
  %.018.i = phi ptr [ %i.ab, %.preheader10.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cp = trunc i64 %indvars.iv23.i to i32
  %i.cq = add i32 %i.t, %i.cp
  %i.cr = mul i32 %i.ck, %i.cq
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cs ; 5 uses
  br i1 %min.iters.check179, label %.preheader.preheader.i.preheader, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.preheader10.i
  %i.cu = trunc i64 %indvars.iv23.i to i32
  %i.cv = mul i32 %i.cm, %i.cu
  %i.cw = add i32 %i.cv, %i.cl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.cy
  %scevgep172 = getelementptr i8, ptr %scevgep169, i64 %i.cy
  %scevgep166 = getelementptr i8, ptr %.018.i, i64 %i.bu
  %bound0175 = icmp ult ptr %.018.i, %scevgep174
  %bound1176 = icmp ult ptr %scevgep172, %scevgep166
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.preheader.preheader.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck164
  %i.cz = getelementptr i8, ptr %.018.i, i64 %i.co ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 6 uses
  %i.da = or disjoint i64 %index183, 1
  %i.db = or disjoint i64 %index183, 2
  %i.dc = or disjoint i64 %index183, 3
  %i.dd = mul i64 %index183, 144                  ; 4 uses
  %next.gep184.a = getelementptr i8, ptr %.018.i, i64 %i.dd ; 36 uses
  %i.de = getelementptr i8, ptr %.018.i, i64 %i.dd ; 11 uses
  %i.df = getelementptr i8, ptr %.018.i, i64 %i.dd ; 12 uses
  %next.gep186 = getelementptr i8, ptr %i.df, i64 288
  %i.dg = getelementptr i8, ptr %.018.i, i64 %i.dd ; 12 uses
  %next.gep187 = getelementptr i8, ptr %i.dg, i64 432
  %i.dh = add nsw i64 %index183, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = mul nsw i64 %i.dk, 36
  %i.dp = getelementptr inbounds i8, ptr %i.ct, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.ct, i64 %i.dm ; 8 uses
  %i.dr = getelementptr inbounds i8, ptr %i.ct, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 %i.do ; 9 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.du = load float, ptr %i.dr, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.dv = load float, ptr %i.ds, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !56, !alias.scope !702
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !56, !alias.scope !702
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !56, !alias.scope !702
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !56, !alias.scope !702
  %i.ee = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.eb, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.em = load float, ptr %i.ei, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.ep = load float, ptr %i.el, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.eq = insertelement <4 x float> poison, float %i.em, i64 0
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 1
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 2
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 3 ; 3 uses
  %i.eu = fmul fast <4 x float> %i.eh, splat (float f0x3EF15BEF) ; 2 uses
  %i.ev = fmul fast <4 x float> %i.et, splat (float f0x3EAAAAAB) ; 4 uses
  %i.ew = fadd fast <4 x float> %i.eu, %i.ev
  %i.ex = fmul fast <4 x float> %i.eh, splat (float f0x3E715BEF) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !56, !alias.scope !702
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !56, !alias.scope !702
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !56, !alias.scope !702
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !56, !alias.scope !702
  %i.fg = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 1
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 2
  %i.fj = insertelement <4 x float> %i.fi, float %i.ff, i64 3 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !56, !alias.scope !702
  %i.fp = load float, ptr %i.fl, align 4, !tbaa !56, !alias.scope !702
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !56, !alias.scope !702
  %i.fr = load float, ptr %i.fn, align 4, !tbaa !56, !alias.scope !702
  %i.fs = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 1
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 2
  %i.fv = insertelement <4 x float> %i.fu, float %i.fr, i64 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !56, !alias.scope !702
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !56, !alias.scope !702
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !56, !alias.scope !702
  %i.gd = load float, ptr %i.fz, align 4, !tbaa !56, !alias.scope !702
  %i.ge = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.gd, i64 3 ; 3 uses
  %i.gi = fmul fast <4 x float> %i.fj, splat (float f0xBF2AAAAB) ; 2 uses
  %i.gj = fmul fast <4 x float> %i.fv, splat (float f0x3EF15BEF) ; 2 uses
  %i.gk = fmul fast <4 x float> %i.gh, splat (float f0x3EAAAAAB) ; 4 uses
  %i.gl = fadd fast <4 x float> %i.gj, %i.gk
  %i.gm = fsub fast <4 x float> %i.gi, %i.gl      ; 2 uses
  %i.gn = fadd fast <4 x float> %i.gj, %i.gi
  %i.go = fsub fast <4 x float> %i.gn, %i.gk      ; 2 uses
  %i.gp = fmul fast <4 x float> %i.fj, splat (float f0x3E2AAAAB) ; 2 uses
  %i.gq = fmul fast <4 x float> %i.fv, splat (float f0x3E715BEF) ; 2 uses
  %i.gr = fadd fast <4 x float> %i.gq, %i.gp
  %i.gs = fadd fast <4 x float> %i.gr, %i.gk      ; 2 uses
  %i.gt = fsub fast <4 x float> %i.gp, %i.gq
  %i.gu = fadd fast <4 x float> %i.gt, %i.gk      ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.gz = load float, ptr %i.gv, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.ha = load float, ptr %i.gw, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.hb = load float, ptr %i.gx, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.hc = load float, ptr %i.gy, align 4, !tbaa !56, !alias.scope !702 ; 2 uses
  %i.hd = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 1
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 2
  %i.hg = insertelement <4 x float> %i.hf, float %i.hc, i64 3 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.hj = getelementptr inbounds nuw i8, ptr %i.dr, i64 28
end_hunk_1
begin_hunk_2_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a
bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.bo) #12
  br label %_ZN4ncnn3MatD2Ev.exit12

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #32
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
  call void @__clang_call_terminate(ptr %i.ce) #32
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
  %i.bb = udiv i32 %i.ba, %.sroa.speculated52     ; 2 uses
  %i.bc = add nuw i32 %i.az, %i.bb
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = add nuw nsw i32 %i.bd, 3
  %i.bf = and i32 %i.be, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.sroa.speculated52)
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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !81   ; 2 uses
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
  %.033139 = phi i32 [ %i.k, %.lr.ph140 ], [ %i.bh, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = mul i32 %.033139, 9
  %i.s = load i32, ptr %3, align 4, !tbaa !81     ; 2 uses
  %i.t = mul i32 %i.s, %.033139                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !37, !noalias !1681 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !38, !noalias !1681
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !1681
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 4 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !81    ; 7 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !81
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !81    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 6 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !81    ; 11 uses
  %i.ai = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count27.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !89, !noalias !1682
  %i.al = load i32, ptr %i.o, align 8, !tbaa !90, !noalias !1682
  %i.am = load ptr, ptr %10, align 8, !tbaa !37, !noalias !1682
  %i.an = load i64, ptr %i.p, align 8, !tbaa !38, !noalias !1682
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !79, !noalias !1682 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.ak to i64
  %i.au = sext i32 %i.al to i64
  %i.av = mul i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = icmp sgt i32 %.sroa.speculated83, 3
  %i.ay = sext i32 %.sroa.speculated83 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ay, -3
  %invariant.op87.i = add nsw i64 %i.ay, -1
  %i.az = sext i32 %i.ah to i64                   ; 2 uses
  %i.ba = zext nneg i32 %i.ac to i64
  %i.bb = shl nuw nsw i64 %wide.trip.count27.i, 1
  %i.bc = add nsw i64 %i.bb, -2
  %i.bd = mul nsw i64 %i.az, 9
  %i.be = mul i32 %i.s, %i.r
  %i.bf = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.bg = getelementptr i8, ptr %i.bf, i64 2
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bh = add i32 %.033139, 1
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !81
  %.not.not = icmp slt i32 %.033139, %i.bi
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar207 = phi i64 [ 0, %.lr.ph ], [ %indvar.next208, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bj = trunc i64 %indvar207 to i32
  %i.bk = mul i32 %i.ah, %i.bj
  %i.bl = sub i32 %i.ac, %i.bk
  %smin239 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bl) ; 3 uses
  %i.bm = add i32 %smin239, -2                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bo = add nuw i32 %i.bn, 1                    ; 2 uses
  %i.bp = mul i32 %i.ah, %indvar
  %i.bq = sub i32 %i.ac, %i.bp
  %smin205 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bq)
  %i.br = zext i32 %smin205 to i64                ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 72
  %i.bt = mul i64 %i.bd, %indvar207               ; 2 uses
  %i.bu = mul nuw nsw i64 %i.br, 9
  %i.bv = mul i32 %i.ah, %indvar
  %i.bw = sub i32 %i.ac, %i.bv
  %smin168 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bw) ; 3 uses
  %i.bx = zext i32 %smin168 to i64                ; 5 uses
  %i.by = mul i32 %i.ah, %indvar
  %i.bz = sub i32 %i.ac, %i.by
  %smin = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bz) ; 2 uses
  %i.ca = add i32 %smin, -1
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 1
  %i.cd = mul i32 %smin, 36                       ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul i64 %i.bc, %i.ce
  %i.cg = mul nuw nsw i64 %i.cb, 72
  %i.ch = trunc i64 %indvars.iv to i32
  %i.ci = sub i32 %i.ac, %i.ch
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.ci) ; 19 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  br i1 %i.ai, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %bb.d
  %i.cj = load i32, ptr %9, align 4, !tbaa !81    ; 3 uses
  %i.ck = icmp sgt i32 %.sroa.speculated, 0
  %i.cl = mul i32 %i.cj, 9
  br i1 %i.ck, label %.preheader11.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep209 = getelementptr i8, ptr %.val, i64 %i.bt
  %i.cm = mul i32 %i.be, %i.cj
  %i.cn = mul i32 %i.cj, 9
  %i.co = getelementptr i8, ptr %.val, i64 %i.bt
  %scevgep213 = getelementptr i8, ptr %i.co, i64 %i.bu
  %min.iters.check218 = icmp ult i32 %.sroa.speculated, 4
  %n.vec220 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cp = mul nuw nsw i64 %n.vec220, 72
  %cmp.n229 = icmp eq i64 %n.vec220, %wide.trip.count.i
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %._crit_edge.i, %.preheader11.preheader.i
  %indvars.iv24.i = phi i64 [ 0, %.preheader11.preheader.i ], [ %indvars.iv.next25.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi ptr [ %i.ab, %.preheader11.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.cq = trunc i64 %indvars.iv24.i to i32
  %i.cr = add i32 %i.t, %i.cq
  %i.cs = mul i32 %i.cl, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %.val, i64 %i.ct ; 5 uses
  br i1 %min.iters.check218, label %.preheader.preheader.i.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.preheader11.i
  %i.cv = trunc i64 %indvars.iv24.i to i32
  %i.cw = mul i32 %i.cn, %i.cv
  %i.cx = add i32 %i.cw, %i.cm
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.cy
  %scevgep212 = getelementptr i8, ptr %scevgep209, i64 %i.cy
  %scevgep206 = getelementptr i8, ptr %.019.i, i64 %i.bs
  %bound0215 = icmp ult ptr %.019.i, %scevgep214
  %bound1216 = icmp ult ptr %scevgep212, %scevgep206
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.preheader.preheader.i.preheader, label %vector.ph219

vector.ph219:                                     ; preds = %vector.memcheck204
  %i.cz = getelementptr i8, ptr %.019.i, i64 %i.cp ; 2 uses
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 6 uses
  %i.da = or disjoint i64 %index222, 1
  %i.db = or disjoint i64 %index222, 2
  %i.dc = or disjoint i64 %index222, 3
  %i.dd = mul i64 %index222, 72                   ; 4 uses
  %next.gep223 = getelementptr i8, ptr %.019.i, i64 %i.dd ; 36 uses
  %i.de = getelementptr i8, ptr %.019.i, i64 %i.dd ; 29 uses
  %i.df = getelementptr i8, ptr %.019.i, i64 %i.dd ; 35 uses
  %i.dg = getelementptr i8, ptr %.019.i, i64 %i.dd ; 35 uses
  %i.dh = add nsw i64 %index222, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = add nsw i64 %i.dc, %indvars.iv
  %i.dl = mul nsw i64 %i.dh, 9
  %i.dm = mul nsw i64 %i.di, 9
  %i.dn = mul nsw i64 %i.dj, 9
  %i.do = mul nsw i64 %i.dk, 9
  %i.dp = getelementptr inbounds i8, ptr %i.cu, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.cu, i64 %i.dm ; 9 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cu, i64 %i.dn ; 9 uses
  %i.ds = getelementptr inbounds i8, ptr %i.cu, i64 %i.do ; 9 uses
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !114, !alias.scope !1683
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !114, !alias.scope !1683
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !114, !alias.scope !1683
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !114, !alias.scope !1683
  %i.dx = insertelement <4 x i8> poison, i8 %i.dt, i64 0
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.du, i64 1
  %i.dz = insertelement <4 x i8> %i.dy, i8 %i.dv, i64 2
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !114, !alias.scope !1683
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !114, !alias.scope !1683
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !114, !alias.scope !1683
  %i.ei = load i8, ptr %i.ee, align 1, !tbaa !114, !alias.scope !1683
  %i.ej = insertelement <4 x i8> poison, i8 %i.ef, i64 0
  %i.ek = insertelement <4 x i8> %i.ej, i8 %i.eg, i64 1
  %i.el = insertelement <4 x i8> %i.ek, i8 %i.eh, i64 2
  %i.em = insertelement <4 x i8> %i.el, i8 %i.ei, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.er = load i8, ptr %i.en, align 1, !tbaa !114, !alias.scope !1683
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !114, !alias.scope !1683
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !114, !alias.scope !1683
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !114, !alias.scope !1683
  %i.ev = insertelement <4 x i8> poison, i8 %i.er, i64 0
  %i.ew = insertelement <4 x i8> %i.ev, i8 %i.es, i64 1
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.et, i64 2
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.eu, i64 3 ; 2 uses
  %i.ez = sext <4 x i8> %i.ea to <4 x i32>        ; 3 uses
  %i.fa = sext <4 x i8> %i.ea to <4 x i16>        ; 2 uses
  %i.fb = mul nsw <4 x i16> %i.fa, splat (i16 6)
  %i.fc = mul nsw <4 x i32> %i.ez, splat (i32 -4) ; 2 uses
  %i.fd = sext <4 x i8> %i.em to <4 x i32>        ; 2 uses
  %i.fe = shl nsw <4 x i32> %i.fd, splat (i32 2)  ; 2 uses
  %i.ff = sext <4 x i8> %i.ey to <4 x i32>
  %i.fg = shl nsw <4 x i32> %i.ff, splat (i32 2)  ; 4 uses
  %i.fh = add nsw <4 x i32> %i.fe, %i.fg
  %i.fi = sub nsw <4 x i32> %i.fc, %i.fh          ; 4 uses
  %i.fj = trunc nsw <4 x i32> %i.fi to <4 x i16>
  %i.fk = add nsw <4 x i32> %i.fe, %i.fc
  %i.fl = sub nsw <4 x i32> %i.fk, %i.fg          ; 4 uses
  %i.fm = trunc nsw <4 x i32> %i.fl to <4 x i16>
  %i.fn = shl nsw <4 x i32> %i.fd, splat (i32 1)  ; 2 uses
  %i.fo = add nsw <4 x i32> %i.fn, %i.ez
  %i.fp = add nsw <4 x i32> %i.fo, %i.fg          ; 4 uses
  %i.fq = trunc nsw <4 x i32> %i.fp to <4 x i16>
  %i.fr = sub nsw <4 x i32> %i.ez, %i.fn
  %i.fs = add nsw <4 x i32> %i.fr, %i.fg          ; 4 uses
  %i.ft = trunc nsw <4 x i32> %i.fs to <4 x i16>
  %i.fu = sext <4 x i8> %i.ey to <4 x i16>        ; 2 uses
  %i.fv = mul nsw <4 x i16> %i.fu, splat (i16 6)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !114, !alias.scope !1683
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !114, !alias.scope !1683
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !114, !alias.scope !1683
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !114, !alias.scope !1683
  %i.ge = insertelement <4 x i8> poison, i8 %i.ga, i64 0
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 1
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 2
  %i.gh = insertelement <4 x i8> %i.gg, i8 %i.gd, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !114, !alias.scope !1683
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !114, !alias.scope !1683
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !114, !alias.scope !1683
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !114, !alias.scope !1683
  %i.gq = insertelement <4 x i8> poison, i8 %i.gm, i64 0
  %i.gr = insertelement <4 x i8> %i.gq, i8 %i.gn, i64 1
  %i.gs = insertelement <4 x i8> %i.gr, i8 %i.go, i64 2
  %i.gt = insertelement <4 x i8> %i.gs, i8 %i.gp, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ds, i64 5
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !114, !alias.scope !1683
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !114, !alias.scope !1683
  %i.ha = load i8, ptr %i.gw, align 1, !tbaa !114, !alias.scope !1683
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !114, !alias.scope !1683
  %i.hc = insertelement <4 x i8> poison, i8 %i.gy, i64 0
  %i.hd = insertelement <4 x i8> %i.hc, i8 %i.gz, i64 1
  %i.he = insertelement <4 x i8> %i.hd, i8 %i.ha, i64 2
  %i.hf = insertelement <4 x i8> %i.he, i8 %i.hb, i64 3
  %i.hg = sext <4 x i8> %i.gh to <4 x i32>        ; 5 uses
end_hunk_2
