Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx?download=true
inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %.1110, i64 16 ; 2 uses
  br i1 %exitcond.not.3, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.4

_ZN4ncnn3MatD2Ev.exit59.4:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.3
  %gep102.4 = getelementptr i8, ptr %gep, i64 %.reass.4
  %i.ia = load float, ptr %gep102.4, align 4, !tbaa !39
  store float %i.ia, ptr %i.hz, align 4, !tbaa !39
  %i.ib = getelementptr inbounds nuw i8, ptr %.1110, i64 20 ; 2 uses
  br i1 %exitcond.not.4, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.5

_ZN4ncnn3MatD2Ev.exit59.5:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.4
  %gep102.5 = getelementptr i8, ptr %gep, i64 %.reass.5
  %i.ic = load float, ptr %gep102.5, align 4, !tbaa !39
  store float %i.ic, ptr %i.ib, align 4, !tbaa !39
  %i.id = getelementptr inbounds nuw i8, ptr %.1110, i64 24 ; 2 uses
  br i1 %exitcond.not.5, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.6

_ZN4ncnn3MatD2Ev.exit59.6:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.5
  %gep102.6 = getelementptr i8, ptr %gep, i64 %.reass.6
  %i.ie = load float, ptr %gep102.6, align 4, !tbaa !39
  store float %i.ie, ptr %i.id, align 4, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %.1110, i64 28 ; 2 uses
  br i1 %exitcond.not.6, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.7

_ZN4ncnn3MatD2Ev.exit59.7:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.6
  %gep102.7 = getelementptr i8, ptr %gep, i64 %.reass.7
  %i.ig = load float, ptr %gep102.7, align 4, !tbaa !39
  store float %i.ig, ptr %i.if, align 4, !tbaa !39
  %i.ih = getelementptr inbounds nuw i8, ptr %.1110, i64 32
  br label %bb.j

bb.q:                                             ; preds = %bb.h
  %i.ii = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.ik = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !17 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %8, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.v, !inline_history !19

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
  %i.j = sdiv i32 %i.i, 8
  %i.k = shl nsw i32 %i.j, 3
  %.sroa.speculated88 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 8)
  store i32 %.sroa.speculated88, ptr %3, align 4, !tbaa !67
  %i.l = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated84 = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.0)
  %i.m = load i32, ptr %3, align 4, !tbaa !67
  %i.n = mul nsw i32 %i.m, %.sroa.speculated84    ; 3 uses
  %i.o = add i32 %0, -1                           ; 2 uses
  %i.p = add i32 %i.o, %i.n
  %i.q = sdiv i32 %i.p, %i.n                      ; 2 uses
  %i.r = add i32 %i.o, %i.q
  %i.s = sdiv i32 %i.r, %i.q
  %i.t = add nsw i32 %i.s, 7
  %i.u = sdiv i32 %i.t, 8
  %i.v = shl nsw i32 %i.u, 3
  %.sroa.speculated80 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.n) ; 3 uses
  %i.w = icmp sgt i32 %.0, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.sroa.speculated80, %.0
  %.sroa.speculated70 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = add nuw nsw i32 %.sroa.speculated70, 7
  %i.z = and i32 %i.y, 2147483640
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.sroa.speculated80)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated76, %bb.d ], [ %.sroa.speculated80, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !67
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.ab = sitofp fast i32 %storemerge to float
  %i.ac = fsub fast float %i.aa, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sdiv i32 %i.ad, 8
  %i.af = shl nsw i32 %i.ae, 3
  %.sroa.speculated64 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 8) ; 3 uses
  %i.ag = add i32 %2, -1                          ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.speculated64
  %i.ai = sdiv i32 %i.ah, %.sroa.speculated64     ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 7
  %i.am = sdiv i32 %i.al, 8
  %i.an = shl nsw i32 %i.am, 3
  %.sroa.speculated60 = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %.sroa.speculated64) ; 3 uses
  store i32 %.sroa.speculated60, ptr %5, align 4, !tbaa !67
  %i.ao = icmp sgt i32 %1, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %i.aq = mul nsw i32 %i.ap, %.sroa.speculated60
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = fsub fast float %i.f, %i.ar
  %i.at = add nsw i32 %i.ap, %.sroa.speculated60
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fdiv fast float %i.as, %i.au
  %i.aw = fptosi float %i.av to i32
  %.fr = freeze i32 %i.aw                         ; 2 uses
  %i.ax = srem i32 %.fr, 12
  %i.ay = sub nsw i32 %.fr, %i.ax
  %.sroa.speculated54 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 12) ; 3 uses
  %i.az = add nsw i32 %1, -1                      ; 2 uses
  %i.ba = add nuw i32 %i.az, %.sroa.speculated54
  %i.bb = udiv i32 %i.ba, %.sroa.speculated54     ; 2 uses
  %i.bc = add nuw i32 %i.az, %i.bb
  %i.bd = udiv i32 %i.bc, %i.bb
  %.fr43 = freeze i32 %i.bd
  %i.be = add i32 %.fr43, 11                      ; 2 uses
  %i.bf = srem i32 %i.be, 12
  %i.bg = sub nsw i32 %i.be, %i.bf
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %.sroa.speculated54)
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
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
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
  %.033126 = phi i32 [ %i.k, %.lr.ph127 ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = mul i32 %.033126, 9
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul i32 %i.s, %.033126                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !18, !noalias !634 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !634
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !634
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 5 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !67
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 10 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.ai = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !637
  %i.al = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !637
  %i.am = load ptr, ptr %10, align 8, !tbaa !18, !noalias !637
  %i.an = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !637
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !637 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.ak to i64
  %i.au = sext i32 %i.al to i64
  %i.av = mul i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = icmp sgt i32 %.sroa.speculated82, 7
  %i.ay = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.az = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.ba = or disjoint i32 %i.ay, 3
  %i.bb = icmp slt i32 %i.ba, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.az, -7
  %invariant.op105.i = add nsw i64 %i.az, -3
  %invariant.op106.i = add nsw i64 %i.az, -1
  %i.bc = sext i32 %i.ah to i64                   ; 2 uses
  %i.bd = zext nneg i32 %i.ac to i64
  %i.be = shl nsw i64 %i.az, 2
  %i.bf = add nsw i64 %i.be, -4
  %i.bg = mul nsw i64 %i.bc, 36
  %i.bh = mul i32 %i.s, %i.r
  %i.bi = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bk = add i32 %.033126, 1
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033126, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar159 = phi i64 [ 0, %.lr.ph ], [ %indvar.next160, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bm = trunc i64 %indvar159 to i32
  %i.bn = mul i32 %i.ah, %i.bm
  %i.bo = sub i32 %i.ac, %i.bn
  %smin205 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bo)
  %i.bp = add i32 %smin205, -1                    ; 2 uses
  %i.bq = mul i32 %i.ah, %indvar
  %i.br = sub i32 %i.ac, %i.bq
  %smin157 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.br)
  %i.bs = zext i32 %smin157 to i64                ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 8
  %i.bu = mul i64 %i.bg, %indvar159               ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bs, 36
  %i.bw = mul i32 %i.ah, %indvar
  %i.bx = sub i32 %i.ac, %i.bw
  %smin = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bx) ; 2 uses
  %i.by = add i32 %smin, -1
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = shl i32 %smin, 6                        ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.bf, %i.cc
  %i.ce = shl nuw nsw i64 %i.bz, 8
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = sub i32 %i.ac, %i.cf
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.cg) ; 22 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  br i1 %i.ai, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %bb.d
  %i.ch = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ci = icmp sgt i32 %.sroa.speculated, 0
  %i.cj = mul i32 %i.ch, 9
  br i1 %i.ci, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep161 = getelementptr i8, ptr %.val, i64 %i.bu
  %i.ck = mul i32 %i.bh, %i.ch
  %i.cl = mul i32 %i.ch, 9
  %i.cm = getelementptr i8, ptr %.val, i64 %i.bu
  %scevgep165 = getelementptr i8, ptr %i.cm, i64 %i.bv
  %min.iters.check171 = icmp ult i32 %.sroa.speculated, 4
  %n.vec173 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec173, 8
  %cmp.n182 = icmp eq i64 %n.vec173, %wide.trip.count.i
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %._crit_edge.i, %.preheader12.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.preheader12.preheader.i ], [ %indvars.iv.next26.i, %._crit_edge.i ] ; 3 uses
  %.020.i = phi ptr [ %i.ab, %.preheader12.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.co = trunc i64 %indvars.iv25.i to i32
  %i.cp = add i32 %i.t, %i.co
  %i.cq = mul i32 %i.cj, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cr ; 5 uses
  br i1 %min.iters.check171, label %.preheader.preheader.i.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %.preheader12.i
  %i.ct = trunc i64 %indvars.iv25.i to i32
  %i.cu = mul i32 %i.cl, %i.ct
  %i.cv = add i32 %i.cu, %i.ck
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.cx
  %scevgep164 = getelementptr i8, ptr %scevgep161, i64 %i.cx
  %scevgep158 = getelementptr i8, ptr %.020.i, i64 %i.bt
  %bound0167 = icmp ult ptr %.020.i, %scevgep166
  %bound1168 = icmp ult ptr %scevgep164, %scevgep158
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %.preheader.preheader.i.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %vector.memcheck156
  %i.cy = getelementptr i8, ptr %.020.i, i64 %i.cn ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 6 uses
  %i.cz = or disjoint i64 %index175, 1
  %i.da = or disjoint i64 %index175, 2
  %i.db = or disjoint i64 %index175, 3
  %i.dc = shl i64 %index175, 8                    ; 4 uses
  %next.gep176.a = getelementptr i8, ptr %.020.i, i64 %i.dc ; 64 uses
  %i.dd = getelementptr i8, ptr %.020.i, i64 %i.dc ; 20 uses
  %next.gep177.a = getelementptr i8, ptr %i.dd, i64 256
  %i.de = getelementptr i8, ptr %.020.i, i64 %i.dc ; 20 uses
  %next.gep178 = getelementptr i8, ptr %i.de, i64 512
  %i.df = getelementptr i8, ptr %.020.i, i64 %i.dc ; 20 uses
  %next.gep179 = getelementptr i8, ptr %i.df, i64 768
  %i.dg = add nsw i64 %index175, %indvars.iv
  %i.dh = add nsw i64 %i.cz, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = mul nsw i64 %i.dg, 36
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = getelementptr inbounds i8, ptr %i.cs, i64 %i.dk ; 9 uses
  %i.dp = getelementptr inbounds i8, ptr %i.cs, i64 %i.dl ; 9 uses
  %i.dq = getelementptr inbounds i8, ptr %i.cs, i64 %i.dm ; 9 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cs, i64 %i.dn ; 9 uses
  %i.ds = load float, ptr %i.do, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.du = load float, ptr %i.dq, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.dw = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !39, !alias.scope !640
  %i.ef = load float, ptr %i.eb, align 4, !tbaa !39, !alias.scope !640
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !39, !alias.scope !640
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !39, !alias.scope !640
  %i.ei = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 1
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.eq = load float, ptr %i.em, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.er = load float, ptr %i.en, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.es = load float, ptr %i.eo, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.et = load float, ptr %i.ep, align 4, !tbaa !39, !alias.scope !640 ; 2 uses
  %i.eu = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.es, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 3 ; 5 uses
  %i.ey = fmul fast <4 x float> %i.dz, splat (float f0xBE638E39) ; 4 uses
  %i.ez = fmul fast <4 x float> %i.el, splat (float f0x3E638E39) ; 2 uses
  %i.fa = fmul fast <4 x float> %i.ex, splat (float f0xBE638E39) ; 4 uses
  %i.fb = fsub fast <4 x float> %i.ey, %i.ez
  %i.fc = fadd fast <4 x float> %i.fb, %i.fa      ; 7 uses
  %i.fd = fadd fast <4 x float> %i.ez, %i.ey
  %i.fe = fadd fast <4 x float> %i.fd, %i.fa      ; 7 uses
  %i.ff = fmul fast <4 x float> %i.dz, splat (float f0x3C360B61) ; 4 uses
  %i.fg = fmul fast <4 x float> %i.el, splat (float f0x3CB60B61) ; 2 uses
  %i.fh = fadd fast <4 x float> %i.fg, %i.ff
  %i.fi = fmul fast <4 x float> %i.ex, splat (float f0x3D360B61) ; 2 uses
  %i.fj = fadd fast <4 x float> %i.fh, %i.fi      ; 7 uses
  %i.fk = fsub fast <4 x float> %i.ff, %i.fg
  %i.fl = fadd fast <4 x float> %i.fk, %i.fi      ; 7 uses
  %i.fm = fmul fast <4 x float> %i.dz, splat (float f0x3CB60B61) ; 4 uses
  %i.fn = fmul fast <4 x float> %i.el, splat (float f0x3C360B61) ; 2 uses
  %i.fo = fadd fast <4 x float> %i.fn, %i.fm
  %i.fp = fmul fast <4 x float> %i.ex, splat (float f0x3BB60B61) ; 2 uses
  %i.fq = fadd fast <4 x float> %i.fo, %i.fp      ; 7 uses
  %i.fr = fsub fast <4 x float> %i.fm, %i.fn
  %i.fs = fadd fast <4 x float> %i.fr, %i.fp      ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !39, !alias.scope !640
  %i.fy = load float, ptr %i.fu, align 4, !tbaa !39, !alias.scope !640
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !39, !alias.scope !640
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !39, !alias.scope !640
  %i.gb = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.gc = insertelement <4 x float> %i.gb, float %i.fy, i64 1
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 2
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 3 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !39, !alias.scope !640
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !39, !alias.scope !640
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !39, !alias.scope !640
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !39, !alias.scope !640
  %i.gn = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 1
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 2
  %i.gq = insertelement <4 x float> %i.gp, float %i.gm, i64 3 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !39, !alias.scope !640
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !39, !alias.scope !640
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !39, !alias.scope !640
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !39, !alias.scope !640
  %i.gz = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 1
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 2
  %i.hc = insertelement <4 x float> %i.hb, float %i.gy, i64 3 ; 6 uses
  %i.hd = fmul fast <4 x float> %i.ge, splat (float f0xBE638E39) ; 2 uses
  %i.he = fmul fast <4 x float> %i.gq, splat (float f0x3E638E39) ; 2 uses
  %i.hf = fmul fast <4 x float> %i.hc, splat (float f0xBE638E39) ; 2 uses
  %i.hg = fsub fast <4 x float> %i.hd, %i.he
  %i.hh = fadd fast <4 x float> %i.hg, %i.hf      ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  %next.gep146 = getelementptr i8, ptr %i.asn, i64 256
  %i.aso = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep147 = getelementptr i8, ptr %i.aso, i64 512
  %i.asp = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep148 = getelementptr i8, ptr %i.asp, i64 768
  %i.asq = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep149 = getelementptr i8, ptr %i.asq, i64 1024
  %i.asr = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep150 = getelementptr i8, ptr %i.asr, i64 1280
  %i.ass = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep151 = getelementptr i8, ptr %i.ass, i64 1536
  %i.ast = getelementptr i8, ptr %gep.i, i64 %i.asm
  %next.gep152 = getelementptr i8, ptr %i.ast, i64 1792
  %i.asu = shl i64 %index, 2
  %next.gep153 = getelementptr i8, ptr %.646.i, i64 %i.asu
  %i.asv = load float, ptr %next.gep, align 4, !tbaa !39, !alias.scope !655
  %i.asw = load float, ptr %next.gep146, align 4, !tbaa !39, !alias.scope !655
  %i.asx = load float, ptr %next.gep147, align 4, !tbaa !39, !alias.scope !655
  %i.asy = load float, ptr %next.gep148, align 4, !tbaa !39, !alias.scope !655
  %i.asz = load float, ptr %next.gep149, align 4, !tbaa !39, !alias.scope !655
  %i.ata = load float, ptr %next.gep150, align 4, !tbaa !39, !alias.scope !655
  %i.atb = load float, ptr %next.gep151, align 4, !tbaa !39, !alias.scope !655
  %i.atc = load float, ptr %next.gep152, align 4, !tbaa !39, !alias.scope !655
  %i.atd = insertelement <8 x float> poison, float %i.asv, i64 0
  %i.ate = insertelement <8 x float> %i.atd, float %i.asw, i64 1
  %i.atf = insertelement <8 x float> %i.ate, float %i.asx, i64 2
  %i.atg = insertelement <8 x float> %i.atf, float %i.asy, i64 3
  %i.ath = insertelement <8 x float> %i.atg, float %i.asz, i64 4
  %i.ati = insertelement <8 x float> %i.ath, float %i.ata, i64 5
  %i.atj = insertelement <8 x float> %i.ati, float %i.atb, i64 6
  %i.atk = insertelement <8 x float> %i.atj, float %i.atc, i64 7
  store <8 x float> %i.atk, ptr %next.gep153, align 4, !tbaa !39, !alias.scope !658, !noalias !655
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.atl = icmp eq i64 %index.next, %n.vec
  br i1 %i.atl, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i53, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.045.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.anw, %middle.block ] ; 4 uses
  %.09944.i.ph = phi ptr [ %gep.i, %vector.memcheck ], [ %gep.i, %.lr.ph.i ], [ %i.ask, %middle.block ] ; 2 uses
  %.743.i.ph = phi ptr [ %.646.i, %vector.memcheck ], [ %.646.i, %.lr.ph.i ], [ %i.asl, %middle.block ] ; 2 uses
  %i.atm = sub i32 %.sroa.speculated, %.045.i.ph
  %xtraiter215 = and i32 %i.atm, 7                ; 2 uses
  %lcmp.mod216.not = icmp eq i32 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.045.i.prol = phi i32 [ %i.atq, %scalar.ph.prol ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.09944.i.prol = phi ptr [ %i.ato, %scalar.ph.prol ], [ %.09944.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.743.i.prol = phi ptr [ %i.atp, %scalar.ph.prol ], [ %.743.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.atn = load float, ptr %.09944.i.prol, align 4, !tbaa !39
  store float %i.atn, ptr %.743.i.prol, align 4, !tbaa !39
  %i.ato = getelementptr inbounds nuw i8, ptr %.09944.i.prol, i64 256 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.743.i.prol, i64 4 ; 3 uses
  %i.atq = add nuw nsw i32 %.045.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !661

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa204.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.atp, %scalar.ph.prol ]
  %.045.i.unr = phi i32 [ %.045.i.ph, %scalar.ph.preheader ], [ %i.atq, %scalar.ph.prol ]
  %.09944.i.unr = phi ptr [ %.09944.i.ph, %scalar.ph.preheader ], [ %i.ato, %scalar.ph.prol ]
  %.743.i.unr = phi ptr [ %.743.i.ph, %scalar.ph.preheader ], [ %i.atp, %scalar.ph.prol ]
  %i.atr = sub i32 %.045.i.ph, %.sroa.speculated
  %i.ats = icmp ugt i32 %i.atr, -8
  br i1 %i.ats, label %._crit_edge.i53, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045.i = phi i32 [ %i.aur, %scalar.ph ], [ %.045.i.unr, %scalar.ph.prol.loopexit ]
  %.09944.i = phi ptr [ %i.aup, %scalar.ph ], [ %.09944.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.743.i = phi ptr [ %i.auq, %scalar.ph ], [ %.743.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.att = load float, ptr %.09944.i, align 4, !tbaa !39
  store float %i.att, ptr %.743.i, align 4, !tbaa !39
  %i.atu = getelementptr inbounds nuw i8, ptr %.09944.i, i64 256
  %i.atv = getelementptr inbounds nuw i8, ptr %.743.i, i64 4
  %i.atw = load float, ptr %i.atu, align 4, !tbaa !39
  store float %i.atw, ptr %i.atv, align 4, !tbaa !39
  %i.atx = getelementptr inbounds nuw i8, ptr %.09944.i, i64 512
  %i.aty = getelementptr inbounds nuw i8, ptr %.743.i, i64 8
  %i.atz = load float, ptr %i.atx, align 4, !tbaa !39
  store float %i.atz, ptr %i.aty, align 4, !tbaa !39
  %i.aua = getelementptr inbounds nuw i8, ptr %.09944.i, i64 768
  %i.aub = getelementptr inbounds nuw i8, ptr %.743.i, i64 12
  %i.auc = load float, ptr %i.aua, align 4, !tbaa !39
  store float %i.auc, ptr %i.aub, align 4, !tbaa !39
  %i.aud = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1024
  %i.aue = getelementptr inbounds nuw i8, ptr %.743.i, i64 16
  %i.auf = load float, ptr %i.aud, align 4, !tbaa !39
  store float %i.auf, ptr %i.aue, align 4, !tbaa !39
  %i.aug = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1280
  %i.auh = getelementptr inbounds nuw i8, ptr %.743.i, i64 20
  %i.aui = load float, ptr %i.aug, align 4, !tbaa !39
  store float %i.aui, ptr %i.auh, align 4, !tbaa !39
  %i.auj = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1536
  %i.auk = getelementptr inbounds nuw i8, ptr %.743.i, i64 24
  %i.aul = load float, ptr %i.auj, align 4, !tbaa !39
  store float %i.aul, ptr %i.auk, align 4, !tbaa !39
  %i.aum = getelementptr inbounds nuw i8, ptr %.09944.i, i64 1792
  %i.aun = getelementptr inbounds nuw i8, ptr %.743.i, i64 28
  %i.auo = load float, ptr %i.aum, align 4, !tbaa !39
  store float %i.auo, ptr %i.aun, align 4, !tbaa !39
  %i.aup = getelementptr inbounds nuw i8, ptr %.09944.i, i64 2048
  %i.auq = getelementptr inbounds nuw i8, ptr %.743.i, i64 32 ; 2 uses
  %i.aur = add nuw nsw i32 %.045.i, 8             ; 2 uses
  %exitcond74.not.i.7 = icmp eq i32 %i.aur, %.sroa.speculated
  br i1 %exitcond74.not.i.7, label %._crit_edge.i53, label %scalar.ph, !llvm.loop !662

._crit_edge.i53:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa142 = phi ptr [ %i.asl, %middle.block ], [ %.lcssa204.unr, %scalar.ph.prol.loopexit ], [ %i.auq, %scalar.ph ]
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, %i.az
  br i1 %exitcond78.not.i, label %._crit_edge49.split.i, label %.lr.ph.i, !llvm.loop !663

._crit_edge49.split.i:                            ; preds = %._crit_edge.i53, %.lr.ph48.i, %.preheader.i, %.lr.ph33.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, 64
  br i1 %exitcond83.not.i, label %_ZN4ncnn3MatD2Ev.exit34, label %bb.e, !llvm.loop !664

_ZN4ncnn3MatD2Ev.exit34:                          ; preds = %._crit_edge49.split.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bc ; 2 uses
  %i.aus = icmp slt i64 %indvars.iv.next, %i.bd
  %indvar.next = add i32 %indvar, 1
  %indvar.next160 = add i64 %indvar159, 1
  br i1 %i.aus, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !665

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
  %i.aut = landingpad { ptr, i32 }
          catch ptr null
  %i.auu = extractvalue { ptr, i32 } %i.aut, 0
  call void @__clang_call_terminate(ptr %i.auu) #32
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
declare !callback !666 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #12

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
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
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
  %.033134 = phi i32 [ %i.k, %.lr.ph135 ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = mul i32 %.033134, 9
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul i32 %i.s, %.033134                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !18, !noalias !668 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !668
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !668
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 5 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !67    ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !67
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 10 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !67    ; 9 uses
  %i.ai = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count26.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !671
  %i.al = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !671
  %i.am = load ptr, ptr %10, align 8, !tbaa !18, !noalias !671
  %i.an = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !671
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !671 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ar
  %i.at = sext i32 %i.ak to i64
  %i.au = sext i32 %i.al to i64
  %i.av = mul i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = icmp sgt i32 %.sroa.speculated82, 7
  %i.ay = and i32 %.sroa.speculated82, -8         ; 3 uses
  %i.az = sext i32 %.sroa.speculated82 to i64     ; 5 uses
  %i.ba = or disjoint i32 %i.ay, 3
  %i.bb = icmp slt i32 %i.ba, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.az, -7
  %invariant.op105.i = add nsw i64 %i.az, -3
  %invariant.op106.i = add nsw i64 %i.az, -1
  %i.bc = sext i32 %i.ah to i64                   ; 2 uses
  %i.bd = zext nneg i32 %i.ac to i64
  %i.be = shl nsw i64 %i.az, 2
  %i.bf = add nsw i64 %i.be, -4
  %i.bg = mul nsw i64 %i.bc, 36
  %i.bh = mul i32 %i.s, %i.r
  %i.bi = getelementptr i8, ptr %i.v, i64 %i.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bk = add i32 %.033134, 1
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !67
  %.not.not = icmp slt i32 %.033134, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar167 = phi i64 [ 0, %.lr.ph ], [ %indvar.next168, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bm = trunc i64 %indvar167 to i32
  %i.bn = mul i32 %i.ah, %i.bm
  %i.bo = sub i32 %i.ac, %i.bn
  %smin198 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bo)
  %i.bp = add i32 %smin198, -1                    ; 2 uses
  %i.bq = mul i32 %i.ah, %indvar
  %i.br = sub i32 %i.ac, %i.bq
  %smin165 = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.br)
  %i.bs = zext i32 %smin165 to i64                ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bs, 144
  %i.bu = mul i64 %i.bg, %indvar167               ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bs, 36
  %i.bw = mul i32 %i.ah, %indvar
  %i.bx = sub i32 %i.ac, %i.bw
  %smin = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bx) ; 2 uses
  %i.by = add i32 %smin, -1
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = mul i32 %smin, 36                       ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.bf, %i.cc
  %i.ce = mul nuw nsw i64 %i.bz, 144
  %i.cf = trunc i64 %indvars.iv to i32
  %i.cg = sub i32 %i.ac, %i.cf
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.cg) ; 22 uses
  %.val50 = load ptr, ptr %8, align 8             ; 3 uses
  br i1 %i.ai, label %.preheader10.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.lr.ph.i:                             ; preds = %bb.d
  %i.ch = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
  %i.ci = icmp sgt i32 %.sroa.speculated, 0
  %i.cj = mul i32 %i.ch, 9
  br i1 %i.ci, label %.preheader10.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader10.preheader.i:                         ; preds = %.preheader10.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %scevgep169 = getelementptr i8, ptr %.val50, i64 %i.bu
  %i.ck = mul i32 %i.bh, %i.ch
  %i.cl = mul i32 %i.ch, 9
  %i.cm = getelementptr i8, ptr %.val50, i64 %i.bu
  %scevgep173 = getelementptr i8, ptr %i.cm, i64 %i.bv
  %min.iters.check179 = icmp ult i32 %.sroa.speculated, 4
  %n.vec181 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cn = mul nuw nsw i64 %n.vec181, 144
  %cmp.n190 = icmp eq i64 %n.vec181, %wide.trip.count.i
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %._crit_edge.i, %.preheader10.preheader.i
  %indvars.iv23.i = phi i64 [ 0, %.preheader10.preheader.i ], [ %indvars.iv.next24.i, %._crit_edge.i ] ; 3 uses
  %.018.i = phi ptr [ %i.ab, %.preheader10.preheader.i ], [ %.lcssa, %._crit_edge.i ] ; 9 uses
  %i.co = trunc i64 %indvars.iv23.i to i32
  %i.cp = add i32 %i.t, %i.co
  %i.cq = mul i32 %i.cj, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cr ; 5 uses
  br i1 %min.iters.check179, label %.preheader.preheader.i.preheader, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.preheader10.i
  %i.ct = trunc i64 %indvars.iv23.i to i32
  %i.cu = mul i32 %i.cl, %i.ct
  %i.cv = add i32 %i.cu, %i.ck
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 2                    ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.cx
  %scevgep172 = getelementptr i8, ptr %scevgep169, i64 %i.cx
  %scevgep166 = getelementptr i8, ptr %.018.i, i64 %i.bt
  %bound0175 = icmp ult ptr %.018.i, %scevgep174
  %bound1176 = icmp ult ptr %scevgep172, %scevgep166
  %found.conflict177 = and i1 %bound0175, %bound1176
  br i1 %found.conflict177, label %.preheader.preheader.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %vector.memcheck164
  %i.cy = getelementptr i8, ptr %.018.i, i64 %i.cn ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 6 uses
  %i.cz = or disjoint i64 %index183, 1
  %i.da = or disjoint i64 %index183, 2
  %i.db = or disjoint i64 %index183, 3
  %i.dc = mul i64 %index183, 144                  ; 4 uses
  %next.gep184.a = getelementptr i8, ptr %.018.i, i64 %i.dc ; 36 uses
  %i.dd = getelementptr i8, ptr %.018.i, i64 %i.dc ; 11 uses
  %i.de = getelementptr i8, ptr %.018.i, i64 %i.dc ; 12 uses
  %next.gep186 = getelementptr i8, ptr %i.de, i64 288
  %i.df = getelementptr i8, ptr %.018.i, i64 %i.dc ; 12 uses
  %next.gep187 = getelementptr i8, ptr %i.df, i64 432
  %i.dg = add nsw i64 %index183, %indvars.iv
  %i.dh = add nsw i64 %i.cz, %indvars.iv
  %i.di = add nsw i64 %i.da, %indvars.iv
  %i.dj = add nsw i64 %i.db, %indvars.iv
  %i.dk = mul nsw i64 %i.dg, 36
  %i.dl = mul nsw i64 %i.dh, 36
  %i.dm = mul nsw i64 %i.di, 36
  %i.dn = mul nsw i64 %i.dj, 36
  %i.do = getelementptr inbounds i8, ptr %i.cs, i64 %i.dk ; 9 uses
  %i.dp = getelementptr inbounds i8, ptr %i.cs, i64 %i.dl ; 8 uses
  %i.dq = getelementptr inbounds i8, ptr %i.cs, i64 %i.dm ; 9 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cs, i64 %i.dn ; 9 uses
  %i.ds = load float, ptr %i.do, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.dt = load float, ptr %i.dq, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.du = load float, ptr %i.dr, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !39, !alias.scope !674
  %i.ea = load float, ptr %i.dw, align 4, !tbaa !39, !alias.scope !674
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !39, !alias.scope !674
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !39, !alias.scope !674
  %i.ed = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.ea, i64 1
  %i.ef = insertelement <4 x float> %i.ee, float %i.eb, i64 2
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.el = load float, ptr %i.eh, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.em = load float, ptr %i.ei, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.en = load float, ptr %i.ej, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.ep = insertelement <4 x float> poison, float %i.el, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.em, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.eo, i64 3 ; 3 uses
  %i.et = fmul fast <4 x float> %i.eg, splat (float f0x3EF15BEF) ; 2 uses
  %i.eu = fmul fast <4 x float> %i.es, splat (float f0x3EAAAAAB) ; 4 uses
  %i.ev = fadd fast <4 x float> %i.et, %i.eu
  %i.ew = fmul fast <4 x float> %i.eg, splat (float f0x3E715BEF) ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.fb = load float, ptr %i.ex, align 4, !tbaa !39, !alias.scope !674
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !39, !alias.scope !674
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !39, !alias.scope !674
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !39, !alias.scope !674
  %i.ff = insertelement <4 x float> poison, float %i.fb, i64 0
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 1
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 2
  %i.fi = insertelement <4 x float> %i.fh, float %i.fe, i64 3 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !39, !alias.scope !674
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !39, !alias.scope !674
  %i.fp = load float, ptr %i.fl, align 4, !tbaa !39, !alias.scope !674
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !39, !alias.scope !674
  %i.fr = insertelement <4 x float> poison, float %i.fn, i64 0
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 1
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.do, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %i.fz = load float, ptr %i.fv, align 4, !tbaa !39, !alias.scope !674
  %i.ga = load float, ptr %i.fw, align 4, !tbaa !39, !alias.scope !674
  %i.gb = load float, ptr %i.fx, align 4, !tbaa !39, !alias.scope !674
  %i.gc = load float, ptr %i.fy, align 4, !tbaa !39, !alias.scope !674
  %i.gd = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.ge = insertelement <4 x float> %i.gd, float %i.ga, i64 1
  %i.gf = insertelement <4 x float> %i.ge, float %i.gb, i64 2
  %i.gg = insertelement <4 x float> %i.gf, float %i.gc, i64 3 ; 3 uses
  %i.gh = fmul fast <4 x float> %i.fi, splat (float f0xBF2AAAAB) ; 2 uses
  %i.gi = fmul fast <4 x float> %i.fu, splat (float f0x3EF15BEF) ; 2 uses
  %i.gj = fmul fast <4 x float> %i.gg, splat (float f0x3EAAAAAB) ; 4 uses
  %i.gk = fadd fast <4 x float> %i.gi, %i.gj
  %i.gl = fsub fast <4 x float> %i.gh, %i.gk      ; 2 uses
  %i.gm = fadd fast <4 x float> %i.gi, %i.gh
  %i.gn = fsub fast <4 x float> %i.gm, %i.gj      ; 2 uses
  %i.go = fmul fast <4 x float> %i.fi, splat (float f0x3E2AAAAB) ; 2 uses
  %i.gp = fmul fast <4 x float> %i.fu, splat (float f0x3E715BEF) ; 2 uses
  %i.gq = fadd fast <4 x float> %i.gp, %i.go
  %i.gr = fadd fast <4 x float> %i.gq, %i.gj      ; 2 uses
  %i.gs = fsub fast <4 x float> %i.go, %i.gp
  %i.gt = fadd fast <4 x float> %i.gs, %i.gj      ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.gy = load float, ptr %i.gu, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.gz = load float, ptr %i.gv, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.ha = load float, ptr %i.gw, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.hb = load float, ptr %i.gx, align 4, !tbaa !39, !alias.scope !674 ; 2 uses
  %i.hc = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gz, i64 1
  %i.he = insertelement <4 x float> %i.hd, float %i.ha, i64 2
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 3 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.do, i64 28
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
end_hunk_1
begin_hunk_2_@_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE:bb.a

bb.j:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit12:                          ; preds = %bb.e, %bb.d, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit12, %bb.b
  ret void

bb.l:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !11  ; 2 uses
  %.not.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = atomicrmw add ptr %i.ap, i32 -1 acq_rel, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !17  ; 3 uses
  %.not3.i14 = icmp eq ptr %i.as, null
  %i.at = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  br i1 %.not3.i14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.at)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.r, !inline_history !19

bb.p:                                             ; preds = %bb.n
  %.not.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.at) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #32
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.m, %bb.l, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  resume { ptr, i32 } %i.ao
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
  %i.j = sdiv i32 %i.i, 4
  %i.k = shl nsw i32 %i.j, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 4)
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
  %i.t = add nsw i32 %i.s, 3
  %i.u = sdiv i32 %i.t, 4
  %i.v = shl nsw i32 %i.u, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.n) ; 3 uses
  %i.w = icmp sgt i32 %.0, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.x, i32 1)
  %i.y = add nuw nsw i32 %.sroa.speculated68, 3
  %i.z = and i32 %i.y, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.z, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !67
  %i.aa = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.ab = sitofp fast i32 %storemerge to float
  %i.ac = fsub fast float %i.aa, %i.ab
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sdiv i32 %i.ad, 4
  %i.af = shl nsw i32 %i.ae, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 4) ; 3 uses
  %i.ag = add i32 %2, -1                          ; 2 uses
  %i.ah = add i32 %i.ag, %.sroa.speculated62
  %i.ai = sdiv i32 %i.ah, %.sroa.speculated62     ; 2 uses
  %i.aj = add i32 %i.ag, %i.ai
  %i.ak = sdiv i32 %i.aj, %i.ai
  %i.al = add nsw i32 %i.ak, 3
  %i.am = sdiv i32 %i.al, 4
  %i.an = shl nsw i32 %i.am, 2
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
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

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
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
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
  %i.s = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.t = mul i32 %i.s, %.033139                   ; 3 uses
  %i.u = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.v = load ptr, ptr %4, align 8, !tbaa !18, !noalias !1653 ; 2 uses
  %i.w = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !1653
  %i.x = sext i32 %i.u to i64
  %i.y = mul i64 %i.w, %i.x
  %i.z = load i64, ptr %i.m, align 8, !tbaa !65, !noalias !1653
  %i.aa = mul i64 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 %i.aa   ; 4 uses
  %i.ac = load i32, ptr %5, align 4, !tbaa !67    ; 7 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ae = load i32, ptr %7, align 4, !tbaa !67
  %i.af = sub i32 %i.ae, %i.t
  %i.ag = load i32, ptr %3, align 4, !tbaa !67    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.af) ; 6 uses
  %i.ah = load i32, ptr %6, align 4, !tbaa !67    ; 11 uses
  %i.ai = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count27.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.aj = sdiv i32 %i.t, %i.ag
  %i.ak = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1656
  %i.al = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1656
  %i.am = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1656
  %i.an = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1656
  %i.ao = sext i32 %i.aj to i64
  %i.ap = mul i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1656 ; 2 uses
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
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !67
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
  %i.cj = load i32, ptr %9, align 4, !tbaa !67    ; 3 uses
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
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !316, !alias.scope !1659
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !316, !alias.scope !1659
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !316, !alias.scope !1659
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !316, !alias.scope !1659
  %i.dx = insertelement <4 x i8> poison, i8 %i.dt, i64 0
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.du, i64 1
  %i.dz = insertelement <4 x i8> %i.dy, i8 %i.dv, i64 2
  %i.ea = insertelement <4 x i8> %i.dz, i8 %i.dw, i64 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.ef = load i8, ptr %i.eb, align 1, !tbaa !316, !alias.scope !1659
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !316, !alias.scope !1659
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !316, !alias.scope !1659
  %i.ei = load i8, ptr %i.ee, align 1, !tbaa !316, !alias.scope !1659
  %i.ej = insertelement <4 x i8> poison, i8 %i.ef, i64 0
  %i.ek = insertelement <4 x i8> %i.ej, i8 %i.eg, i64 1
  %i.el = insertelement <4 x i8> %i.ek, i8 %i.eh, i64 2
  %i.em = insertelement <4 x i8> %i.el, i8 %i.ei, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.er = load i8, ptr %i.en, align 1, !tbaa !316, !alias.scope !1659
  %i.es = load i8, ptr %i.eo, align 1, !tbaa !316, !alias.scope !1659
  %i.et = load i8, ptr %i.ep, align 1, !tbaa !316, !alias.scope !1659
  %i.eu = load i8, ptr %i.eq, align 1, !tbaa !316, !alias.scope !1659
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
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !316, !alias.scope !1659
  %i.gb = load i8, ptr %i.fx, align 1, !tbaa !316, !alias.scope !1659
  %i.gc = load i8, ptr %i.fy, align 1, !tbaa !316, !alias.scope !1659
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !316, !alias.scope !1659
  %i.ge = insertelement <4 x i8> poison, i8 %i.ga, i64 0
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.gb, i64 1
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 2
  %i.gh = insertelement <4 x i8> %i.gg, i8 %i.gd, i64 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !316, !alias.scope !1659
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !316, !alias.scope !1659
  %i.go = load i8, ptr %i.gk, align 1, !tbaa !316, !alias.scope !1659
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !316, !alias.scope !1659
  %i.gq = insertelement <4 x i8> poison, i8 %i.gm, i64 0
  %i.gr = insertelement <4 x i8> %i.gq, i8 %i.gn, i64 1
  %i.gs = insertelement <4 x i8> %i.gr, i8 %i.go, i64 2
  %i.gt = insertelement <4 x i8> %i.gs, i8 %i.gp, i64 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dp, i64 5
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dq, i64 5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dr, i64 5
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ds, i64 5
  %i.gy = load i8, ptr %i.gu, align 1, !tbaa !316, !alias.scope !1659
  %i.gz = load i8, ptr %i.gv, align 1, !tbaa !316, !alias.scope !1659
  %i.ha = load i8, ptr %i.gw, align 1, !tbaa !316, !alias.scope !1659
  %i.hb = load i8, ptr %i.gx, align 1, !tbaa !316, !alias.scope !1659
  %i.hc = insertelement <4 x i8> poison, i8 %i.gy, i64 0
  %i.hd = insertelement <4 x i8> %i.hc, i8 %i.gz, i64 1
  %i.he = insertelement <4 x i8> %i.hd, i8 %i.ha, i64 2
  %i.hf = insertelement <4 x i8> %i.he, i8 %i.hb, i64 3
  %i.hg = sext <4 x i8> %i.gh to <4 x i32>        ; 5 uses
end_hunk_2
