inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.1
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.h = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !113
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not184 = icmp sgt i32 %i.k, %i.j
  br i1 %.not184, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph187, %_ZN4ncnn3MatD2Ev.exit
  %.0185 = phi i32 [ %i.k, %.lr.ph187 ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.u = mul nsw i32 %i.t, %.0185                 ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !113
  %i.w = load i32, ptr %5, align 4, !tbaa !113
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit55

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc49 unwind label %bb.f

.noexc49:                                         ; preds = %bb.d
  %i.z = load ptr, ptr %6, align 8, !tbaa !9, !noalias !479
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !479
  %i.ab = sext i32 %i.y to i64
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !479
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.pre = load i32, ptr %3, align 4, !tbaa !113
  br label %_ZN4ncnn3MatD2Ev.exit55

_ZN4ncnn3MatD2Ev.exit55:                          ; preds = %.noexc49, %bb.c
  %i.ag = phi i32 [ %i.t, %bb.c ], [ %.pre, %.noexc49 ]
  %.sroa.0170.0 = phi ptr [ null, %bb.c ], [ %i.af, %.noexc49 ]
  %i.ah = load i32, ptr %7, align 4, !tbaa !113
  %i.ai = sub nsw i32 %i.ah, %i.u
  %.sroa.speculated152 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ai)
  %i.aj = load i32, ptr %8, align 4, !tbaa !113   ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit55
  %i.al = load i32, ptr %4, align 4, !tbaa !113   ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre190 = load i32, ptr %9, align 4, !tbaa !113
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit55
  %i.an = add nsw i32 %.0185, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !113
  %.not.not = icmp slt i32 %.0185, %i.ao
  br i1 %.not.not, label %bb.c, label %._crit_edge188

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.au, %._crit_edge ], [ %i.aj, %.lr.ph.split.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.av, %._crit_edge ], [ %.pre190, %.lr.ph.split.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.aw, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 3 uses
  %.047183 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.as = sub nsw i32 %i.ap, %.047183
  %.sroa.speculated148 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph.split
  %.pre191 = load i32, ptr %5, align 4, !tbaa !113
  br label %.noexc

._crit_edge.loopexit:                             ; preds = %.noexc
  %.pre192 = load i32, ptr %9, align 4, !tbaa !113
  %.pre193 = load i32, ptr %8, align 4, !tbaa !113
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.split
  %i.au = phi i32 [ %.pre193, %._crit_edge.loopexit ], [ %i.ap, %.lr.ph.split ] ; 2 uses
  %i.av = phi i32 [ %.pre192, %._crit_edge.loopexit ], [ %i.aq, %.lr.ph.split ] ; 2 uses
  %i.aw = phi i32 [ %i.cl, %._crit_edge.loopexit ], [ %i.ar, %.lr.ph.split ]
  %i.ax = add nsw i32 %i.av, %.047183             ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.au
  br i1 %i.ay, label %.lr.ph.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !482

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.az = phi i32 [ %i.cj, %.noexc ], [ %.pre191, %.noexc.preheader ] ; 3 uses
  %i.ba = phi i32 [ %i.cl, %.noexc ], [ %i.ar, %.noexc.preheader ] ; 2 uses
  %.048182 = phi i32 [ %i.ck, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.bb = sub nsw i32 %i.ba, %.048182
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.bb)
  %i.bc = load i32, ptr %3, align 4, !tbaa !113
  %i.bd = sdiv i32 %i.u, %i.bc
  %i.be = load i32, ptr %i.n, align 4, !tbaa !114, !noalias !483
  %i.bf = load ptr, ptr %10, align 8, !tbaa !9, !noalias !483
  %i.bg = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !483
  %i.bh = sext i32 %i.bd to i64
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !483 ; 2 uses
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bk
  %i.bm = sext i32 %i.be to i64
  %i.bn = sdiv i32 %.048182, %i.az
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul i64 %i.bj, %i.bm
  %i.bq = mul i64 %i.bp, %i.bo
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = load i32, ptr %9, align 4, !tbaa !113
  %i.bt = sdiv i32 %.047183, %i.bs
  %i.bu = load i32, ptr %i.q, align 4, !tbaa !114, !noalias !486
  %i.bv = load ptr, ptr %11, align 8, !tbaa !9, !noalias !486
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !486
  %i.bx = sext i32 %i.bt to i64
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !486 ; 2 uses
  %i.ca = mul i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %i.cc = sext i32 %i.bu to i64
  %i.cd = mul i64 %i.bz, %i.cc
  %i.ce = mul i64 %i.cd, %i.bo
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %i.cg = add nsw i32 %i.az, %.048182
  %i.ch = icmp sge i32 %i.cg, %i.ba
  %i.ci = load i32, ptr %14, align 4, !tbaa !113
  call fastcc void @_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_(ptr %i.br, ptr %i.cf, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr %.sroa.0170.0, ptr noundef nonnull align 8 dereferenceable(72) %13, i32 noundef %i.u, i32 noundef %.sroa.speculated152, i32 noundef %.047183, i32 noundef %.sroa.speculated148, i32 noundef %.048182, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.ch, i32 noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(72) %15)
  %i.cj = load i32, ptr %5, align 4, !tbaa !113   ; 2 uses
  %i.ck = add nsw i32 %i.cj, %.048182             ; 2 uses
  %i.cl = load i32, ptr %4, align 4, !tbaa !113   ; 3 uses
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.noexc, label %._crit_edge.loopexit, !llvm.loop !489

._crit_edge188:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge188, %bb.a
  ret void

bb.f:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #26
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree %.0.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i32 noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !115  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 26 uses
  %i.e = trunc i64 %i.d to i32                    ; 6 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.g = icmp sgt i32 %3, 15
  br i1 %i.g, label %.lr.ph9127, label %.preheader8911

.lr.ph9127:                                       ; preds = %bb.a
  %i.h = mul nsw i32 %i.b, %4
  %i.i = sext i32 %i.h to i64
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = icmp sgt i32 %5, 15
  %11 = icmp eq i32 %6, 0                         ; 4 uses
  %i.l = icmp sgt i32 %7, 1                       ; 4 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.n = icmp eq i32 %i.m, 1                      ; 4 uses
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true) ; 4 uses
  %sext2702 = shl i64 %i.d, 32
  %i.p = ashr exact i64 %sext2702, 31             ; 4 uses
  %i.q = shl nsw i32 %i.e, 1
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %sext2703 = mul i64 %i.d, 12884901888
  %i.s = ashr exact i64 %sext2703, 31             ; 4 uses
  %i.t = shl nsw i32 %i.e, 2
  %i.u = sext i32 %i.t to i64                     ; 8 uses
  %sext2704 = mul i64 %i.d, 21474836480
  %i.v = ashr exact i64 %sext2704, 31             ; 4 uses
  %sext2705 = mul i64 %i.d, 25769803776
  %i.w = ashr exact i64 %sext2705, 31             ; 4 uses
  %sext2706 = mul i64 %i.d, 30064771072
  %i.x = ashr exact i64 %sext2706, 31             ; 4 uses
  %i.y = shl nsw i32 %i.e, 3
  %i.z = sext i32 %i.y to i64                     ; 12 uses
  %sext2707 = mul i64 %i.d, 38654705664
  %i.aa = ashr exact i64 %sext2707, 31            ; 4 uses
  %sext2708 = mul i64 %i.d, 42949672960
  %i.ab = ashr exact i64 %sext2708, 31            ; 4 uses
  %sext2709 = mul i64 %i.d, 47244640256
  %i.ac = ashr exact i64 %sext2709, 31            ; 4 uses
  %sext2710 = mul i64 %i.d, 51539607552
  %i.ad = ashr exact i64 %sext2710, 31            ; 8 uses
  %sext2711 = mul i64 %i.d, 55834574848
  %i.ae = ashr exact i64 %sext2711, 31            ; 4 uses
  %sext2712 = mul i64 %i.d, 60129542144
  %i.af = ashr exact i64 %sext2712, 31            ; 4 uses
  %sext2713 = mul i64 %i.d, 64424509440
  %i.ag = ashr exact i64 %sext2713, 31            ; 4 uses
  %i.ah = shl nsw i32 %7, 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i32 %7, -2                          ; 5 uses
  %i.ak = and i32 %i.aj, -2
  %i.al = add i32 %i.ak, 2                        ; 4 uses
  %i.am = and i32 %5, -16
  %i.an = lshr i32 %i.aj, 1
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = shl nuw nsw i64 %i.ao, 5
  %i.aq = shl nuw nsw i64 %i.ao, 4
  %i.ar = shl nuw nsw i64 %i.ao, 2
  %i.as = zext nneg i32 %3 to i64
  %sext = shl i64 %i.d, 32
  %i.at = ashr exact i64 %sext, 32
  %i.au = lshr i32 %i.aj, 1                       ; 2 uses
  %i.av = add nuw i32 %i.au, 1                    ; 4 uses
  %i.aw = icmp eq i32 %i.au, 0
  %unroll_iter = and i32 %i.av, -2
  %i.ax = and i32 %i.aj, 2
  %lcmp.mod.not.not = icmp eq i32 %i.ax, 0
  %lcmp.mod11092 = trunc i32 %i.av to i1
  %xtraiter11095 = and i32 %i.av, 3               ; 3 uses
  %i.ay = icmp ult i32 %i.aj, 6
  %unroll_iter11100 = and i32 %i.av, -4
  %lcmp.mod11096.not = icmp eq i32 %xtraiter11095, 0
  %lcmp.mod11099 = icmp ne i32 %xtraiter11095, 0
  br label %bb.b

.preheader8911.loopexit:                          ; preds = %._crit_edge9120
  %i.az = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader8911

.preheader8911:                                   ; preds = %.preheader8911.loopexit, %bb.a
  %.02345.lcssa = phi i32 [ 0, %bb.a ], [ %i.az, %.preheader8911.loopexit ] ; 3 uses
  %.02335.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.42339.lcssa, %.preheader8911.loopexit ] ; 2 uses
  %.02330.lcssa = phi ptr [ %i.f, %bb.a ], [ %.12331, %.preheader8911.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.gck, %.preheader8911.loopexit ] ; 3 uses
  %i.ba = or disjoint i32 %.02345.lcssa, 7
  %i.bb = icmp slt i32 %i.ba, %3
  br i1 %i.bb, label %.lr.ph9311, label %.preheader8903

.lr.ph9311:                                       ; preds = %.preheader8911
  %i.bc = mul nsw i32 %i.b, %4
  %i.bd = sext i32 %i.bc to i64
  %i.be = sext i32 %2 to i64                      ; 2 uses
  %i.bf = icmp sgt i32 %5, 15
  %12 = icmp eq i32 %6, 0                         ; 4 uses
  %i.bg = icmp sgt i32 %7, 1                      ; 4 uses
  %sext2649 = shl i64 %i.d, 32
  %i.bh = ashr exact i64 %sext2649, 31            ; 4 uses
  %i.bi = shl nsw i32 %i.e, 1
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %sext2650 = mul i64 %i.d, 12884901888
  %i.bk = ashr exact i64 %sext2650, 31            ; 4 uses
  %i.bl = shl nsw i32 %i.e, 2
  %i.bm = sext i32 %i.bl to i64                   ; 8 uses
  %sext2651 = mul i64 %i.d, 21474836480
  %i.bn = ashr exact i64 %sext2651, 31            ; 4 uses
  %sext2652 = mul i64 %i.d, 25769803776
  %i.bo = ashr exact i64 %sext2652, 31            ; 4 uses
  %sext2653 = mul i64 %i.d, 30064771072
  %i.bp = ashr exact i64 %sext2653, 31            ; 4 uses
  %i.bq = shl i32 %7, 3
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = add i32 %7, -2                          ; 5 uses
  %i.bt = and i32 %i.bs, -2
  %i.bu = add i32 %i.bt, 2                        ; 4 uses
  %i.bv = and i32 %5, -16
  %i.bw = lshr i32 %i.bs, 1
  %i.bx = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.by = shl nuw nsw i64 %i.bx, 5
  %i.bz = add nuw nsw i64 %i.by, 32               ; 2 uses
  %scevgep9995 = getelementptr i8, ptr %.0.lcssa, i64 %i.bz
  %i.ca = shl nsw i64 %i.br, 1
  %i.cb = shl nuw nsw i64 %i.bx, 4
  %i.cc = shl nuw nsw i64 %i.bx, 2
  %i.cd = zext nneg i32 %.02345.lcssa to i64
  %i.ce = sext i32 %3 to i64
  %sext10081 = shl i64 %i.d, 32
  %i.cf = ashr exact i64 %sext10081, 32
  %invariant.op = add nsw i64 %i.ce, -7
  %i.cg = lshr i32 %i.bs, 1                       ; 2 uses
  %i.ch = add nuw i32 %i.cg, 1                    ; 4 uses
  %i.ci = icmp eq i32 %i.cg, 0
  %unroll_iter11112 = and i32 %i.ch, -2
  %i.cj = and i32 %i.bs, 2
  %lcmp.mod11106.not.not = icmp eq i32 %i.cj, 0
  %lcmp.mod11111 = trunc i32 %i.ch to i1
  %xtraiter11116 = and i32 %i.ch, 3               ; 3 uses
  %i.ck = icmp ult i32 %i.bs, 6
  %unroll_iter11121 = and i32 %i.ch, -4
  %lcmp.mod11118.not = icmp eq i32 %xtraiter11116, 0
  %lcmp.mod11120 = icmp ne i32 %xtraiter11116, 0
  br label %bb.au

bb.b:                                             ; preds = %.lr.ph9127, %._crit_edge9120
  %indvars.iv = phi i64 [ 0, %.lr.ph9127 ], [ %indvars.iv.next, %._crit_edge9120 ] ; 3 uses
  %.09125 = phi ptr [ %.0.val, %.lr.ph9127 ], [ %i.gck, %._crit_edge9120 ] ; 11 uses
  %.023309124 = phi ptr [ %i.f, %.lr.ph9127 ], [ %.12331, %._crit_edge9120 ]
  %.023359123 = phi ptr [ %.0.val3, %.lr.ph9127 ], [ %.42339.lcssa, %._crit_edge9120 ] ; 2 uses
  %i.cl = load ptr, ptr %1, align 8, !tbaa !9
  %i.cm = add nsw i64 %indvars.iv, %i.j
  %i.cn = mul nsw i64 %i.cm, %i.at
  %i.co = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.cn
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.i ; 2 uses
  %.not2654 = icmp eq ptr %.023309124, null
  %i.cq = load ptr, ptr %0, align 8
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.j
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv ; 5 uses
  %.12331 = select i1 %.not2654, ptr null, ptr %i.cs ; 6 uses
  br i1 %i.k, label %.lr.ph8998, label %.preheader8918

.lr.ph8998:                                       ; preds = %bb.b
  %.not2700 = icmp eq ptr %.12331, null
  br label %bb.c

.preheader8918:                                   ; preds = %.thread6903, %bb.b
  %.02396.lcssa = phi i32 [ 0, %bb.b ], [ %i.am, %.thread6903 ] ; 3 uses
  %.02380.lcssa = phi ptr [ %.0.val1, %bb.b ], [ %.22382.lcssa, %.thread6903 ] ; 2 uses
  %.02357.lcssa = phi ptr [ %i.cp, %bb.b ], [ %.52362, %.thread6903 ] ; 2 uses
  %.12336.lcssa = phi ptr [ %.023359123, %bb.b ], [ %i.cpp, %.thread6903 ] ; 2 uses
  %i.ct = or disjoint i32 %.02396.lcssa, 7
  %i.cu = icmp slt i32 %i.ct, %5
  br i1 %i.cu, label %.lr.ph9053, label %.preheader8917

.lr.ph9053:                                       ; preds = %.preheader8918
  %.not2685 = icmp eq ptr %.12331, null
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph8998, %.thread6903
  %.123368996 = phi ptr [ %.023359123, %.lr.ph8998 ], [ %i.cpp, %.thread6903 ] ; 33 uses
  %.023578995 = phi ptr [ %i.cp, %.lr.ph8998 ], [ %.52362, %.thread6903 ] ; 55 uses
  %.023808994 = phi ptr [ %.0.val1, %.lr.ph8998 ], [ %.22382.lcssa, %.thread6903 ] ; 2 uses
  %.023968993 = phi i32 [ 0, %.lr.ph8998 ], [ %i.cpq, %.thread6903 ]
  br i1 %11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = load <16 x float>, ptr %.123368996, align 64, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %.123368996, i64 64
  %i.cx = load <16 x float>, ptr %i.cw, align 64, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %.123368996, i64 128
  %i.cz = load <16 x float>, ptr %i.cy, align 64, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %.123368996, i64 192
  %i.db = load <16 x float>, ptr %i.da, align 64, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %.123368996, i64 256
  %i.dd = load <16 x float>, ptr %i.dc, align 64, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %.123368996, i64 320
  %i.df = load <16 x float>, ptr %i.de, align 64, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %.123368996, i64 384
  %i.dh = load <16 x float>, ptr %i.dg, align 64, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %.123368996, i64 448
  %i.dj = load <16 x float>, ptr %i.di, align 64, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %.123368996, i64 512
  %i.dl = load <16 x float>, ptr %i.dk, align 64, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %.123368996, i64 576
  %i.dn = load <16 x float>, ptr %i.dm, align 64, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %.123368996, i64 640
  %i.dp = load <16 x float>, ptr %i.do, align 64, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %.123368996, i64 704
  %i.dr = load <16 x float>, ptr %i.dq, align 64, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %.123368996, i64 768
  %i.dt = load <16 x float>, ptr %i.ds, align 64, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %.123368996, i64 832
  %i.dv = load <16 x float>, ptr %i.du, align 64, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %.123368996, i64 896
  %i.dx = load <16 x float>, ptr %i.dw, align 64, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %.123368996, i64 960
  %i.dz = load <16 x float>, ptr %i.dy, align 64, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.05042 = phi nsz <16 x float> [ %i.dx, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05037 = phi nsz <16 x float> [ %i.dv, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05032 = phi nsz <16 x float> [ %i.dt, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05027 = phi nsz <16 x float> [ %i.dr, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05011 = phi nsz <16 x float> [ %i.dp, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05006 = phi nsz <16 x float> [ %i.dn, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.05001 = phi nsz <16 x float> [ %i.dl, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04996 = phi nsz <16 x float> [ %i.dj, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04991 = phi nsz <16 x float> [ %i.dh, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04983 = phi nsz <16 x float> [ %i.df, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04975 = phi nsz <16 x float> [ %i.dd, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04970 = phi nsz <16 x float> [ %i.db, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04965 = phi nsz <16 x float> [ %i.cz, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04960 = phi nsz <16 x float> [ %i.cx, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %.04955 = phi nsz <16 x float> [ %i.cv, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %storemerge2699 = phi <16 x float> [ %i.dz, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  br i1 %i.l, label %.lr.ph, label %.preheader8915

.preheader8915:                                   ; preds = %.lr.ph, %bb.e
  %.05047.lcssa = phi <16 x float> [ %storemerge2699, %bb.e ], [ %i.fi, %.lr.ph ] ; 2 uses
  %.15043.lcssa = phi <16 x float> [ %.05042, %bb.e ], [ %i.fd, %.lr.ph ] ; 2 uses
  %.15038.lcssa = phi <16 x float> [ %.05037, %bb.e ], [ %i.fh, %.lr.ph ] ; 2 uses
  %.15033.lcssa = phi <16 x float> [ %.05032, %bb.e ], [ %i.fc, %.lr.ph ] ; 2 uses
  %.15028.lcssa = phi <16 x float> [ %.05027, %bb.e ], [ %i.fb, %.lr.ph ] ; 2 uses
  %.15012.lcssa = phi <16 x float> [ %.05011, %bb.e ], [ %i.fa, %.lr.ph ] ; 2 uses
  %.15007.lcssa = phi <16 x float> [ %.05006, %bb.e ], [ %i.eu, %.lr.ph ] ; 2 uses
  %.15002.lcssa = phi <16 x float> [ %.05001, %bb.e ], [ %i.et, %.lr.ph ] ; 2 uses
  %.14997.lcssa = phi <16 x float> [ %.04996, %bb.e ], [ %i.fg, %.lr.ph ] ; 2 uses
  %.14992.lcssa = phi <16 x float> [ %.04991, %bb.e ], [ %i.ey, %.lr.ph ] ; 2 uses
  %.14984.lcssa = phi <16 x float> [ %.04983, %bb.e ], [ %i.ff, %.lr.ph ] ; 2 uses
  %.14976.lcssa = phi <16 x float> [ %.04975, %bb.e ], [ %i.ex, %.lr.ph ] ; 2 uses
  %.14971.lcssa = phi <16 x float> [ %.04970, %bb.e ], [ %i.er, %.lr.ph ] ; 2 uses
  %.14966.lcssa = phi <16 x float> [ %.04965, %bb.e ], [ %i.eq, %.lr.ph ] ; 2 uses
  %.14961.lcssa = phi <16 x float> [ %.04960, %bb.e ], [ %i.eo, %.lr.ph ] ; 2 uses
  %.14956.lcssa = phi <16 x float> [ %.04955, %bb.e ], [ %i.el, %.lr.ph ] ; 2 uses
  %.02406.lcssa = phi i32 [ 0, %bb.e ], [ %i.al, %.lr.ph ] ; 2 uses
  %.02400.lcssa = phi ptr [ %.09125, %bb.e ], [ %i.fj, %.lr.ph ]
  %.12381.lcssa = phi ptr [ %.023808994, %bb.e ], [ %i.fk, %.lr.ph ] ; 2 uses
  %i.ea = icmp slt i32 %.02406.lcssa, %7
  br i1 %i.ea, label %.lr.ph8975, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.123818937 = phi ptr [ %i.fk, %.lr.ph ], [ %.023808994, %bb.e ] ; 2 uses
  %.024008936 = phi ptr [ %i.fj, %.lr.ph ], [ %.09125, %bb.e ] ; 2 uses
  %.024068935 = phi i32 [ %i.fl, %.lr.ph ], [ 0, %bb.e ]
  %.149568934 = phi <16 x float> [ %i.el, %.lr.ph ], [ %.04955, %bb.e ]
  %.149618933 = phi <16 x float> [ %i.eo, %.lr.ph ], [ %.04960, %bb.e ]
  %.149668932 = phi <16 x float> [ %i.eq, %.lr.ph ], [ %.04965, %bb.e ]
  %.149718931 = phi <16 x float> [ %i.er, %.lr.ph ], [ %.04970, %bb.e ]
  %.149768930 = phi <16 x float> [ %i.ex, %.lr.ph ], [ %.04975, %bb.e ]
  %.149848929 = phi <16 x float> [ %i.ff, %.lr.ph ], [ %.04983, %bb.e ]
  %.149928928 = phi <16 x float> [ %i.ey, %.lr.ph ], [ %.04991, %bb.e ]
  %.149978927 = phi <16 x float> [ %i.fg, %.lr.ph ], [ %.04996, %bb.e ]
  %.150028926 = phi <16 x float> [ %i.et, %.lr.ph ], [ %.05001, %bb.e ]
  %.150078925 = phi <16 x float> [ %i.eu, %.lr.ph ], [ %.05006, %bb.e ]
  %.150128924 = phi <16 x float> [ %i.fa, %.lr.ph ], [ %.05011, %bb.e ]
  %.150288923 = phi <16 x float> [ %i.fb, %.lr.ph ], [ %.05027, %bb.e ]
  %.150338922 = phi <16 x float> [ %i.fc, %.lr.ph ], [ %.05032, %bb.e ]
  %.150388921 = phi <16 x float> [ %i.fh, %.lr.ph ], [ %.05037, %bb.e ]
  %.150438920 = phi <16 x float> [ %i.fd, %.lr.ph ], [ %.05042, %bb.e ]
  %.050478919 = phi <16 x float> [ %i.fi, %.lr.ph ], [ %storemerge2699, %bb.e ]
  %i.eb = load <8 x i64>, ptr %.024008936, align 1, !tbaa !20 ; 2 uses
  %i.ec = load <8 x i64>, ptr %.123818937, align 1, !tbaa !20 ; 2 uses
  %i.ed = bitcast <8 x i64> %i.eb to <16 x i32>   ; 3 uses
  %i.ee = shufflevector <16 x i32> %i.ed, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.ef = shufflevector <16 x i32> %i.ed, <16 x i32> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11>
  %i.eg = bitcast <8 x i64> %i.ec to <16 x i32>   ; 3 uses
  %i.eh = shufflevector <16 x i32> %i.eg, <16 x i32> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ei = shufflevector <16 x i32> %i.eg, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.ej = bitcast <8 x i64> %i.eb to <32 x bfloat> ; 4 uses
  %i.ek = bitcast <8 x i64> %i.ec to <32 x bfloat> ; 4 uses
  %i.el = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149568934, <32 x bfloat> nofpclass(nan inf) %i.ej, <32 x bfloat> nofpclass(nan inf) %i.ek) ; 2 uses
  %i.em = shufflevector <16 x i32> %i.ed, <16 x i32> poison, <16 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 14, i32 15, i32 12, i32 13, i32 10, i32 11, i32 8, i32 9>
  %i.en = bitcast <16 x i32> %i.ei to <32 x bfloat> ; 4 uses
  %i.eo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149618933, <32 x bfloat> nofpclass(nan inf) %i.ej, <32 x bfloat> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ep = bitcast <16 x i32> %i.ee to <32 x bfloat> ; 4 uses
  %i.eq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149668932, <32 x bfloat> nofpclass(nan inf) %i.ep, <32 x bfloat> nofpclass(nan inf) %i.ek) ; 2 uses
  %i.er = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149718931, <32 x bfloat> nofpclass(nan inf) %i.ep, <32 x bfloat> nofpclass(nan inf) %i.en) ; 2 uses
  %i.es = bitcast <16 x i32> %i.ef to <32 x bfloat> ; 4 uses
  %i.et = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150028926, <32 x bfloat> nofpclass(nan inf) %i.es, <32 x bfloat> nofpclass(nan inf) %i.ek) ; 2 uses
  %i.eu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150078925, <32 x bfloat> nofpclass(nan inf) %i.es, <32 x bfloat> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ev = shufflevector <16 x i32> %i.eg, <16 x i32> poison, <16 x i32> <i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12, i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ew = bitcast <16 x i32> %i.eh to <32 x bfloat> ; 4 uses
  %i.ex = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149768930, <32 x bfloat> nofpclass(nan inf) %i.ej, <32 x bfloat> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.ey = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149928928, <32 x bfloat> nofpclass(nan inf) %i.ep, <32 x bfloat> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.ez = bitcast <16 x i32> %i.em to <32 x bfloat> ; 4 uses
  %i.fa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150128924, <32 x bfloat> nofpclass(nan inf) %i.ez, <32 x bfloat> nofpclass(nan inf) %i.ek) ; 2 uses
  %i.fb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150288923, <32 x bfloat> nofpclass(nan inf) %i.ez, <32 x bfloat> nofpclass(nan inf) %i.en) ; 2 uses
  %i.fc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150338922, <32 x bfloat> nofpclass(nan inf) %i.es, <32 x bfloat> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150438920, <32 x bfloat> nofpclass(nan inf) %i.ez, <32 x bfloat> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fe = bitcast <16 x i32> %i.ev to <32 x bfloat> ; 4 uses
  %i.ff = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149848929, <32 x bfloat> nofpclass(nan inf) %i.ej, <32 x bfloat> nofpclass(nan inf) %i.fe) ; 2 uses
  %i.fg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.149978927, <32 x bfloat> nofpclass(nan inf) %i.ep, <32 x bfloat> nofpclass(nan inf) %i.fe) ; 2 uses
  %i.fh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150388921, <32 x bfloat> nofpclass(nan inf) %i.es, <32 x bfloat> nofpclass(nan inf) %i.fe) ; 2 uses
  %i.fi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.050478919, <32 x bfloat> nofpclass(nan inf) %i.ez, <32 x bfloat> nofpclass(nan inf) %i.fe) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.024008936, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.123818937, i64 64 ; 2 uses
  %i.fl = add nuw nsw i32 %.024068935, 2          ; 2 uses
  %i.fm = or disjoint i32 %i.fl, 1
  %i.fn = icmp slt i32 %i.fm, %7
  br i1 %i.fn, label %.lr.ph, label %.preheader8915, !llvm.loop !490

.lr.ph8975:                                       ; preds = %.preheader8915, %.lr.ph8975
  %.223828974 = phi ptr [ %i.gp, %.lr.ph8975 ], [ %.12381.lcssa, %.preheader8915 ] ; 2 uses
  %.124018973 = phi ptr [ %i.go, %.lr.ph8975 ], [ %.02400.lcssa, %.preheader8915 ] ; 2 uses
  %.124078972 = phi i32 [ %i.gq, %.lr.ph8975 ], [ %.02406.lcssa, %.preheader8915 ]
  %.249578971 = phi <16 x float> [ %i.fy, %.lr.ph8975 ], [ %.14956.lcssa, %.preheader8915 ]
  %.249628970 = phi <16 x float> [ %i.fz, %.lr.ph8975 ], [ %.14961.lcssa, %.preheader8915 ]
  %.249678969 = phi <16 x float> [ %i.ga, %.lr.ph8975 ], [ %.14966.lcssa, %.preheader8915 ]
  %.249728968 = phi <16 x float> [ %i.gb, %.lr.ph8975 ], [ %.14971.lcssa, %.preheader8915 ]
  %.249778967 = phi <16 x float> [ %i.gc, %.lr.ph8975 ], [ %.14976.lcssa, %.preheader8915 ]
  %.249858966 = phi <16 x float> [ %i.gd, %.lr.ph8975 ], [ %.14984.lcssa, %.preheader8915 ]
  %.249938965 = phi <16 x float> [ %i.ge, %.lr.ph8975 ], [ %.14992.lcssa, %.preheader8915 ]
  %.249988964 = phi <16 x float> [ %i.gf, %.lr.ph8975 ], [ %.14997.lcssa, %.preheader8915 ]
  %.250038963 = phi <16 x float> [ %i.gg, %.lr.ph8975 ], [ %.15002.lcssa, %.preheader8915 ]
  %.250088962 = phi <16 x float> [ %i.gh, %.lr.ph8975 ], [ %.15007.lcssa, %.preheader8915 ]
  %.250138961 = phi <16 x float> [ %i.gi, %.lr.ph8975 ], [ %.15012.lcssa, %.preheader8915 ]
  %.250298960 = phi <16 x float> [ %i.gj, %.lr.ph8975 ], [ %.15028.lcssa, %.preheader8915 ]
  %.250348959 = phi <16 x float> [ %i.gk, %.lr.ph8975 ], [ %.15033.lcssa, %.preheader8915 ]
  %.250398958 = phi <16 x float> [ %i.gl, %.lr.ph8975 ], [ %.15038.lcssa, %.preheader8915 ]
  %.250448957 = phi <16 x float> [ %i.gm, %.lr.ph8975 ], [ %.15043.lcssa, %.preheader8915 ]
  %.150488956 = phi <16 x float> [ %i.gn, %.lr.ph8975 ], [ %.05047.lcssa, %.preheader8915 ]
  %i.fo = load <16 x bfloat>, ptr %.124018973, align 1, !tbaa !20
  %i.fp = fpext fast <16 x bfloat> %i.fo to <16 x float> ; 7 uses
  %i.fq = load <16 x bfloat>, ptr %.223828974, align 1, !tbaa !20
  %i.fr = fpext fast <16 x bfloat> %i.fq to <16 x float> ; 7 uses
  %i.fs = shufflevector <16 x float> %i.fp, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 4 uses
  %i.ft = shufflevector <16 x float> %i.fr, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 4 uses
  %i.fu = shufflevector <16 x float> %i.fp, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.fv = shufflevector <16 x float> %i.fr, <16 x float> poison, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.fw = shufflevector <16 x float> %i.fp, <16 x float> poison, <16 x i32> <i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 14, i32 15, i32 12, i32 13, i32 10, i32 11, i32 8, i32 9> ; 4 uses
  %i.fx = shufflevector <16 x float> %i.fr, <16 x float> poison, <16 x i32> <i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12, i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 4 uses
  %i.fy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %.249578971) ; 2 uses
  %i.fz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %.249628970) ; 2 uses
  %i.ga = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %.249678969) ; 2 uses
  %i.gb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %.249728968) ; 2 uses
  %i.gc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %.249778967) ; 2 uses
  %i.gd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %.249858966) ; 2 uses
  %i.ge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %.249938965) ; 2 uses
  %i.gf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %.249988964) ; 2 uses
  %i.gg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %.250038963) ; 2 uses
  %i.gh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %.250088962) ; 2 uses
  %i.gi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %.250138961) ; 2 uses
  %i.gj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %.250298960) ; 2 uses
  %i.gk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %.250348959) ; 2 uses
  %i.gl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %.250398958) ; 2 uses
  %i.gm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %.250448957) ; 2 uses
  %i.gn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %.150488956) ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.124018973, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %.223828974, i64 32 ; 2 uses
  %i.gq = add nuw nsw i32 %.124078972, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.gq, %7
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph8975, !llvm.loop !491

._crit_edge:                                      ; preds = %.lr.ph8975, %.preheader8915
  %.15048.lcssa = phi <16 x float> [ %.05047.lcssa, %.preheader8915 ], [ %i.gn, %.lr.ph8975 ] ; 3 uses
  %.25044.lcssa = phi <16 x float> [ %.15043.lcssa, %.preheader8915 ], [ %i.gm, %.lr.ph8975 ] ; 3 uses
  %.25039.lcssa = phi <16 x float> [ %.15038.lcssa, %.preheader8915 ], [ %i.gl, %.lr.ph8975 ] ; 3 uses
  %.25034.lcssa = phi <16 x float> [ %.15033.lcssa, %.preheader8915 ], [ %i.gk, %.lr.ph8975 ] ; 3 uses
  %.25029.lcssa = phi <16 x float> [ %.15028.lcssa, %.preheader8915 ], [ %i.gj, %.lr.ph8975 ] ; 3 uses
  %.25013.lcssa = phi <16 x float> [ %.15012.lcssa, %.preheader8915 ], [ %i.gi, %.lr.ph8975 ] ; 3 uses
  %.25008.lcssa = phi <16 x float> [ %.15007.lcssa, %.preheader8915 ], [ %i.gh, %.lr.ph8975 ] ; 3 uses
  %.25003.lcssa = phi <16 x float> [ %.15002.lcssa, %.preheader8915 ], [ %i.gg, %.lr.ph8975 ] ; 3 uses
  %.24998.lcssa = phi <16 x float> [ %.14997.lcssa, %.preheader8915 ], [ %i.gf, %.lr.ph8975 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  store <16 x bfloat> %i.cks, ptr %i.ckr, align 1, !tbaa !20
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckr, i64 32
  %i.cku = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cjv)
  store <16 x bfloat> %i.cku, ptr %i.ckt, align 1, !tbaa !20
  %i.ckv = getelementptr inbounds nuw i8, ptr %i.ckr, i64 64
  %i.ckw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cjw)
  store <16 x bfloat> %i.ckw, ptr %i.ckv, align 1, !tbaa !20
  %i.ckx = getelementptr inbounds nuw i8, ptr %i.ckr, i64 96
  %i.cky = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cjx)
  store <16 x bfloat> %i.cky, ptr %i.ckx, align 1, !tbaa !20
  %i.ckz = getelementptr inbounds i8, ptr %.023578995, i64 %i.ad ; 4 uses
  %i.cla = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cjy)
  store <16 x bfloat> %i.cla, ptr %i.ckz, align 1, !tbaa !20
  %i.clb = getelementptr inbounds nuw i8, ptr %i.ckz, i64 32
  %i.clc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cjz)
  store <16 x bfloat> %i.clc, ptr %i.clb, align 1, !tbaa !20
  %i.cld = getelementptr inbounds nuw i8, ptr %i.ckz, i64 64
  %i.cle = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cka)
  store <16 x bfloat> %i.cle, ptr %i.cld, align 1, !tbaa !20
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ckz, i64 96
  %i.clg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ckb)
  store <16 x bfloat> %i.clg, ptr %i.clf, align 1, !tbaa !20
  %i.clh = getelementptr inbounds nuw i8, ptr %.023578995, i64 128
  br label %.thread6903

bb.k:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2769.split
  %i.cli = shufflevector <16 x float> %.0.i2798526652855319536454245495558156785790591360516200636465396729, <16 x float> %.0.i279652875317536654225497557956805788591560496202636265416727, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clj = shufflevector <16 x float> %.0.i2798526652855319536454245495558156785790591360516200636465396729, <16 x float> %.0.i279652875317536654225497557956805788591560496202636265416727, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clk = shufflevector <16 x float> %.0.i27945321536254265493558356765792591160536198636665376731, <16 x float> %.0.i2792536854205499557756825786591760476204636065436725, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cll = shufflevector <16 x float> %.0.i27945321536254265493558356765792591160536198636665376731, <16 x float> %.0.i2792536854205499557756825786591760476204636065436725, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clm = shufflevector <16 x float> %.0.i279054285491558556745794590960556196636865356733, <16 x float> %.0.i27885501557556845784591960456206635865456723, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cln = shufflevector <16 x float> %.0.i279054285491558556745794590960556196636865356733, <16 x float> %.0.i27885501557556845784591960456206635865456723, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clo = shufflevector <16 x float> %.0.i2786558756725796590760576194637065336735, <16 x float> %.0.i278456865782592160436208635665476721, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clp = shufflevector <16 x float> %.0.i2786558756725796590760576194637065336735, <16 x float> %.0.i278456865782592160436208635665476721, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clq = shufflevector <16 x float> %.0.i27825798590560596192637265316737, <16 x float> %.0.i2780592360416210635465496719, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clr = shufflevector <16 x float> %.0.i27825798590560596192637265316737, <16 x float> %.0.i2780592360416210635465496719, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cls = shufflevector <16 x float> %.0.i277860616190637465296739, <16 x float> %.0.i27766212635265516717, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clt = shufflevector <16 x float> %.0.i277860616190637465296739, <16 x float> %.0.i27766212635265516717, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clu = shufflevector <16 x float> %.0.i2774637665276741, <16 x float> %.0.i277265536715, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clv = shufflevector <16 x float> %.0.i2774637665276741, <16 x float> %.0.i277265536715, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.clw = shufflevector <16 x float> %.0.i27706743, <16 x float> %.0.i2768, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.clx = shufflevector <16 x float> %.0.i27706743, <16 x float> %.0.i2768, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cly = shufflevector <16 x float> %i.cli, <16 x float> %i.clk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.clz = shufflevector <16 x float> %i.cli, <16 x float> %i.clk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cma = shufflevector <16 x float> %i.clj, <16 x float> %i.cll, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmb = shufflevector <16 x float> %i.clj, <16 x float> %i.cll, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmc = shufflevector <16 x float> %i.clm, <16 x float> %i.clo, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmd = shufflevector <16 x float> %i.clm, <16 x float> %i.clo, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cme = shufflevector <16 x float> %i.cln, <16 x float> %i.clp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmf = shufflevector <16 x float> %i.cln, <16 x float> %i.clp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmg = shufflevector <16 x float> %i.clq, <16 x float> %i.cls, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmh = shufflevector <16 x float> %i.clq, <16 x float> %i.cls, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmi = shufflevector <16 x float> %i.clr, <16 x float> %i.clt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmj = shufflevector <16 x float> %i.clr, <16 x float> %i.clt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmk = shufflevector <16 x float> %i.clu, <16 x float> %i.clw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cml = shufflevector <16 x float> %i.clu, <16 x float> %i.clw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmm = shufflevector <16 x float> %i.clv, <16 x float> %i.clx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cmn = shufflevector <16 x float> %i.clv, <16 x float> %i.clx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cmo = shufflevector <16 x float> %i.cly, <16 x float> %i.cmc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmp = shufflevector <16 x float> %i.cmg, <16 x float> %i.cmk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmq = shufflevector <16 x float> %i.clz, <16 x float> %i.cmd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmr = shufflevector <16 x float> %i.cmh, <16 x float> %i.cml, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cms = shufflevector <16 x float> %i.cma, <16 x float> %i.cme, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmt = shufflevector <16 x float> %i.cmi, <16 x float> %i.cmm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmu = shufflevector <16 x float> %i.cmb, <16 x float> %i.cmf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmv = shufflevector <16 x float> %i.cmj, <16 x float> %i.cmn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cmw = shufflevector <16 x float> %i.cly, <16 x float> %i.cmc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cmx = shufflevector <16 x float> %i.cmg, <16 x float> %i.cmk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cmy = shufflevector <16 x float> %i.clz, <16 x float> %i.cmd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cmz = shufflevector <16 x float> %i.cmh, <16 x float> %i.cml, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cna = shufflevector <16 x float> %i.cma, <16 x float> %i.cme, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cnb = shufflevector <16 x float> %i.cmi, <16 x float> %i.cmm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cnc = shufflevector <16 x float> %i.cmb, <16 x float> %i.cmf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cnd = shufflevector <16 x float> %i.cmj, <16 x float> %i.cmn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cne = shufflevector <16 x float> %i.cmo, <16 x float> %i.cmp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnf = shufflevector <16 x float> %i.cmq, <16 x float> %i.cmr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cng = shufflevector <16 x float> %i.cms, <16 x float> %i.cmt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnh = shufflevector <16 x float> %i.cmu, <16 x float> %i.cmv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cni = shufflevector <16 x float> %i.cmw, <16 x float> %i.cmx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnj = shufflevector <16 x float> %i.cmy, <16 x float> %i.cmz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnk = shufflevector <16 x float> %i.cna, <16 x float> %i.cnb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnl = shufflevector <16 x float> %i.cnc, <16 x float> %i.cnd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cnm = shufflevector <16 x float> %i.cmo, <16 x float> %i.cmp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnn = shufflevector <16 x float> %i.cmq, <16 x float> %i.cmr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cno = shufflevector <16 x float> %i.cms, <16 x float> %i.cmt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnp = shufflevector <16 x float> %i.cmu, <16 x float> %i.cmv, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnq = shufflevector <16 x float> %i.cmw, <16 x float> %i.cmx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnr = shufflevector <16 x float> %i.cmy, <16 x float> %i.cmz, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cns = shufflevector <16 x float> %i.cna, <16 x float> %i.cnb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnt = shufflevector <16 x float> %i.cnc, <16 x float> %i.cnd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cnu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cne)
  store <16 x bfloat> %i.cnu, ptr %.023578995, align 1, !tbaa !20
  %i.cnv = getelementptr inbounds i8, ptr %.023578995, i64 %i.p
  %i.cnw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnf)
  store <16 x bfloat> %i.cnw, ptr %i.cnv, align 1, !tbaa !20
  %i.cnx = getelementptr inbounds [2 x i8], ptr %.023578995, i64 %i.r
  %i.cny = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cng)
  store <16 x bfloat> %i.cny, ptr %i.cnx, align 1, !tbaa !20
  %i.cnz = getelementptr inbounds i8, ptr %.023578995, i64 %i.s
  %i.coa = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnh)
  store <16 x bfloat> %i.coa, ptr %i.cnz, align 1, !tbaa !20
  %i.cob = getelementptr inbounds [2 x i8], ptr %.023578995, i64 %i.u
  %i.coc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cni)
  store <16 x bfloat> %i.coc, ptr %i.cob, align 1, !tbaa !20
  %i.cod = getelementptr inbounds i8, ptr %.023578995, i64 %i.v
  %i.coe = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnj)
  store <16 x bfloat> %i.coe, ptr %i.cod, align 1, !tbaa !20
  %i.cof = getelementptr inbounds i8, ptr %.023578995, i64 %i.w
  %i.cog = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnk)
  store <16 x bfloat> %i.cog, ptr %i.cof, align 1, !tbaa !20
  %i.coh = getelementptr inbounds i8, ptr %.023578995, i64 %i.x
  %i.coi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnl)
  store <16 x bfloat> %i.coi, ptr %i.coh, align 1, !tbaa !20
  %i.coj = getelementptr inbounds [2 x i8], ptr %.023578995, i64 %i.z
  %i.cok = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnm)
  store <16 x bfloat> %i.cok, ptr %i.coj, align 1, !tbaa !20
  %i.col = getelementptr inbounds i8, ptr %.023578995, i64 %i.aa
  %i.com = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnn)
  store <16 x bfloat> %i.com, ptr %i.col, align 1, !tbaa !20
  %i.con = getelementptr inbounds i8, ptr %.023578995, i64 %i.ab
  %i.coo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cno)
  store <16 x bfloat> %i.coo, ptr %i.con, align 1, !tbaa !20
  %i.cop = getelementptr inbounds i8, ptr %.023578995, i64 %i.ac
  %i.coq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnp)
  store <16 x bfloat> %i.coq, ptr %i.cop, align 1, !tbaa !20
  %i.cor = getelementptr inbounds i8, ptr %.023578995, i64 %i.ad
  %i.cos = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnq)
  store <16 x bfloat> %i.cos, ptr %i.cor, align 1, !tbaa !20
  %i.cot = getelementptr inbounds i8, ptr %.023578995, i64 %i.ae
  %i.cou = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnr)
  store <16 x bfloat> %i.cou, ptr %i.cot, align 1, !tbaa !20
  %i.cov = getelementptr inbounds i8, ptr %.023578995, i64 %i.af
  %i.cow = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cns)
  store <16 x bfloat> %i.cow, ptr %i.cov, align 1, !tbaa !20
  %i.cox = getelementptr inbounds i8, ptr %.023578995, i64 %i.ag
  %i.coy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cnt)
  store <16 x bfloat> %i.coy, ptr %i.cox, align 1, !tbaa !20
  %i.coz = getelementptr inbounds nuw i8, ptr %.023578995, i64 32
  br label %.thread6903

bb.l:                                             ; preds = %._crit_edge
  store <16 x float> %.24957.lcssa, ptr %.123368996, align 64, !tbaa !20
  %i.cpa = getelementptr inbounds nuw i8, ptr %.123368996, i64 64
  store <16 x float> %.24962.lcssa, ptr %i.cpa, align 64, !tbaa !20
  %i.cpb = getelementptr inbounds nuw i8, ptr %.123368996, i64 128
  store <16 x float> %.24967.lcssa, ptr %i.cpb, align 64, !tbaa !20
  %i.cpc = getelementptr inbounds nuw i8, ptr %.123368996, i64 192
  store <16 x float> %.24972.lcssa, ptr %i.cpc, align 64, !tbaa !20
  %i.cpd = getelementptr inbounds nuw i8, ptr %.123368996, i64 256
  store <16 x float> %.24977.lcssa, ptr %i.cpd, align 64, !tbaa !20
  %i.cpe = getelementptr inbounds nuw i8, ptr %.123368996, i64 320
  store <16 x float> %.24985.lcssa, ptr %i.cpe, align 64, !tbaa !20
  %i.cpf = getelementptr inbounds nuw i8, ptr %.123368996, i64 384
  store <16 x float> %.24993.lcssa, ptr %i.cpf, align 64, !tbaa !20
  %i.cpg = getelementptr inbounds nuw i8, ptr %.123368996, i64 448
  store <16 x float> %.24998.lcssa, ptr %i.cpg, align 64, !tbaa !20
  %i.cph = getelementptr inbounds nuw i8, ptr %.123368996, i64 512
  store <16 x float> %.25003.lcssa, ptr %i.cph, align 64, !tbaa !20
  %i.cpi = getelementptr inbounds nuw i8, ptr %.123368996, i64 576
  store <16 x float> %.25008.lcssa, ptr %i.cpi, align 64, !tbaa !20
  %i.cpj = getelementptr inbounds nuw i8, ptr %.123368996, i64 640
  store <16 x float> %.25013.lcssa, ptr %i.cpj, align 64, !tbaa !20
  %i.cpk = getelementptr inbounds nuw i8, ptr %.123368996, i64 704
  store <16 x float> %.25029.lcssa, ptr %i.cpk, align 64, !tbaa !20
  %i.cpl = getelementptr inbounds nuw i8, ptr %.123368996, i64 768
  store <16 x float> %.25034.lcssa, ptr %i.cpl, align 64, !tbaa !20
  %i.cpm = getelementptr inbounds nuw i8, ptr %.123368996, i64 832
  store <16 x float> %.25039.lcssa, ptr %i.cpm, align 64, !tbaa !20
  %i.cpn = getelementptr inbounds nuw i8, ptr %.123368996, i64 896
  store <16 x float> %.25044.lcssa, ptr %i.cpn, align 64, !tbaa !20
  %i.cpo = getelementptr inbounds nuw i8, ptr %.123368996, i64 960
  store <16 x float> %.15048.lcssa, ptr %i.cpo, align 64, !tbaa !20
  br label %.thread6903

.thread6903:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2769, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2769.split, %bb.i, %.thread, %bb.j, %bb.k, %bb.l
  %.52362 = phi ptr [ %.023578995, %bb.l ], [ %i.coz, %bb.k ], [ %.023578995, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2769.split ], [ %i.clh, %bb.j ], [ %i.cgz, %.thread ], [ %i.civ, %bb.i ], [ %.023578995, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2769 ] ; 2 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %.123368996, i64 1024 ; 2 uses
  %i.cpq = add nuw nsw i32 %.023968993, 16        ; 2 uses
  %i.cpr = or disjoint i32 %i.cpq, 15
  %i.cps = icmp slt i32 %i.cpr, %5
  br i1 %i.cps, label %bb.c, label %.preheader8918, !llvm.loop !492

.preheader8917:                                   ; preds = %.thread7326, %.preheader8918
  %.12397.lcssa = phi i32 [ %.02396.lcssa, %.preheader8918 ], [ %i.enq, %.thread7326 ] ; 3 uses
  %.32383.lcssa = phi ptr [ %.02380.lcssa, %.preheader8918 ], [ %.52385.lcssa, %.thread7326 ] ; 2 uses
  %.62363.lcssa = phi ptr [ %.02357.lcssa, %.preheader8918 ], [ %.112368, %.thread7326 ] ; 2 uses
  %.22337.lcssa = phi ptr [ %.12336.lcssa, %.preheader8918 ], [ %i.enp, %.thread7326 ] ; 2 uses
  %i.cpt = or disjoint i32 %.12397.lcssa, 3
  %i.cpu = icmp slt i32 %i.cpt, %5
  br i1 %i.cpu, label %.lr.ph9092, label %.preheader8916

.lr.ph9092:                                       ; preds = %.preheader8917
  %.not2670 = icmp eq ptr %.12331, null
  br label %bb.w

bb.m:                                             ; preds = %.lr.ph9053, %.thread7326
  %.223379052 = phi ptr [ %.12336.lcssa, %.lr.ph9053 ], [ %i.enp, %.thread7326 ] ; 17 uses
  %.623639051 = phi ptr [ %.02357.lcssa, %.lr.ph9053 ], [ %.112368, %.thread7326 ] ; 41 uses
  %.323839050 = phi ptr [ %.02380.lcssa, %.lr.ph9053 ], [ %.52385.lcssa, %.thread7326 ] ; 3 uses
  %.123979049 = phi i32 [ %.02396.lcssa, %.lr.ph9053 ], [ %i.enq, %.thread7326 ]
  br i1 %11, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cpv = load <16 x float>, ptr %.223379052, align 64, !tbaa !20
  %i.cpw = getelementptr inbounds nuw i8, ptr %.223379052, i64 64
  %i.cpx = load <16 x float>, ptr %i.cpw, align 64, !tbaa !20
  %i.cpy = getelementptr inbounds nuw i8, ptr %.223379052, i64 128
  %i.cpz = load <16 x float>, ptr %i.cpy, align 64, !tbaa !20
  %i.cqa = getelementptr inbounds nuw i8, ptr %.223379052, i64 192
  %i.cqb = load <16 x float>, ptr %i.cqa, align 64, !tbaa !20
  %i.cqc = getelementptr inbounds nuw i8, ptr %.223379052, i64 256
  %i.cqd = load <16 x float>, ptr %i.cqc, align 64, !tbaa !20
  %i.cqe = getelementptr inbounds nuw i8, ptr %.223379052, i64 320
  %i.cqf = load <16 x float>, ptr %i.cqe, align 64, !tbaa !20
  %i.cqg = getelementptr inbounds nuw i8, ptr %.223379052, i64 384
  %i.cqh = load <16 x float>, ptr %i.cqg, align 64, !tbaa !20
  %i.cqi = getelementptr inbounds nuw i8, ptr %.223379052, i64 448
  %i.cqj = load <16 x float>, ptr %i.cqi, align 64, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.05096 = phi nsz <16 x float> [ %i.cqh, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05088 = phi nsz <16 x float> [ %i.cqf, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05083 = phi nsz <16 x float> [ %i.cqd, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05078 = phi nsz <16 x float> [ %i.cqb, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05073 = phi nsz <16 x float> [ %i.cpz, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05061 = phi nsz <16 x float> [ %i.cpx, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %.05056 = phi nsz <16 x float> [ %i.cpv, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %storemerge2684 = phi <16 x float> [ %i.cqj, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  br i1 %i.l, label %.lr.ph9015, label %.preheader8914

.preheader8914.loopexit:                          ; preds = %.lr.ph9015
  %i.cqk = getelementptr i8, ptr %.323839050, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.cqk, i64 32
  br label %.preheader8914

.preheader8914:                                   ; preds = %.preheader8914.loopexit, %bb.o
  %.05101.lcssa = phi <16 x float> [ %storemerge2684, %bb.o ], [ %i.crj, %.preheader8914.loopexit ] ; 2 uses
  %.15097.lcssa = phi <16 x float> [ %.05096, %bb.o ], [ %i.cri, %.preheader8914.loopexit ] ; 2 uses
  %.15089.lcssa = phi <16 x float> [ %.05088, %bb.o ], [ %i.crh, %.preheader8914.loopexit ] ; 2 uses
  %.15084.lcssa = phi <16 x float> [ %.05083, %bb.o ], [ %i.crf, %.preheader8914.loopexit ] ; 2 uses
  %.15079.lcssa = phi <16 x float> [ %.05078, %bb.o ], [ %i.crd, %.preheader8914.loopexit ] ; 2 uses
  %.15074.lcssa = phi <16 x float> [ %.05073, %bb.o ], [ %i.crc, %.preheader8914.loopexit ] ; 2 uses
  %.15062.lcssa = phi <16 x float> [ %.05061, %bb.o ], [ %i.cra, %.preheader8914.loopexit ] ; 2 uses
  %.15057.lcssa = phi <16 x float> [ %.05056, %bb.o ], [ %i.cqy, %.preheader8914.loopexit ] ; 2 uses
  %.02410.lcssa = phi i32 [ 0, %bb.o ], [ %i.al, %.preheader8914.loopexit ] ; 2 uses
  %.02408.lcssa = phi ptr [ %.09125, %bb.o ], [ %i.crk, %.preheader8914.loopexit ]
  %.42384.lcssa = phi ptr [ %.323839050, %bb.o ], [ %scevgep, %.preheader8914.loopexit ] ; 2 uses
  %i.cql = icmp slt i32 %.02410.lcssa, %7
  br i1 %i.cql, label %.lr.ph9038, label %._crit_edge9039

.lr.ph9015:                                       ; preds = %bb.o, %.lr.ph9015
  %.423849013 = phi ptr [ %i.crl, %.lr.ph9015 ], [ %.323839050, %bb.o ] ; 2 uses
  %.024089012 = phi ptr [ %i.crk, %.lr.ph9015 ], [ %.09125, %bb.o ] ; 2 uses
  %.024109011 = phi i32 [ %i.crm, %.lr.ph9015 ], [ 0, %bb.o ]
  %.150579010 = phi <16 x float> [ %i.cqy, %.lr.ph9015 ], [ %.05056, %bb.o ]
  %.150629009 = phi <16 x float> [ %i.cra, %.lr.ph9015 ], [ %.05061, %bb.o ]
  %.150749008 = phi <16 x float> [ %i.crc, %.lr.ph9015 ], [ %.05073, %bb.o ]
  %.150799007 = phi <16 x float> [ %i.crd, %.lr.ph9015 ], [ %.05078, %bb.o ]
  %.150849006 = phi <16 x float> [ %i.crf, %.lr.ph9015 ], [ %.05083, %bb.o ]
  %.150899005 = phi <16 x float> [ %i.crh, %.lr.ph9015 ], [ %.05088, %bb.o ]
  %.150979004 = phi <16 x float> [ %i.cri, %.lr.ph9015 ], [ %.05096, %bb.o ]
  %.051019003 = phi <16 x float> [ %i.crj, %.lr.ph9015 ], [ %storemerge2684, %bb.o ]
  %i.cqm = load <8 x i64>, ptr %.024089012, align 1, !tbaa !20 ; 2 uses
  %i.cqn = load <4 x i64>, ptr %.423849013, align 1, !tbaa !20
  %i.cqo = shufflevector <4 x i64> %i.cqn, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.cqp = bitcast <8 x i64> %i.cqo to <16 x i32>
  %i.cqq = bitcast <8 x i64> %i.cqm to <16 x i32>
  %i.cqr = shufflevector <16 x i32> %i.cqq, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.cqs = shufflevector <16 x i32> %i.cqp, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cqt = shufflevector <8 x i64> %i.cqo, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.cqu = bitcast <8 x i64> %i.cqt to <16 x i32>
  %i.cqv = shufflevector <16 x i32> %i.cqu, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.cqw = bitcast <8 x i64> %i.cqm to <32 x bfloat> ; 4 uses
  %i.cqx = bitcast <8 x i64> %i.cqo to <32 x bfloat> ; 2 uses
  %i.cqy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150579010, <32 x bfloat> nofpclass(nan inf) %i.cqw, <32 x bfloat> nofpclass(nan inf) %i.cqx) ; 2 uses
  %i.cqz = bitcast <16 x i32> %i.cqs to <32 x bfloat> ; 2 uses
  %i.cra = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150629009, <32 x bfloat> nofpclass(nan inf) %i.cqw, <32 x bfloat> nofpclass(nan inf) %i.cqz) ; 2 uses
  %i.crb = bitcast <16 x i32> %i.cqr to <32 x bfloat> ; 4 uses
  %i.crc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150749008, <32 x bfloat> nofpclass(nan inf) %i.crb, <32 x bfloat> nofpclass(nan inf) %i.cqx) ; 2 uses
  %i.crd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150799007, <32 x bfloat> nofpclass(nan inf) %i.crb, <32 x bfloat> nofpclass(nan inf) %i.cqz) ; 2 uses
  %i.cre = bitcast <8 x i64> %i.cqt to <32 x bfloat> ; 2 uses
  %i.crf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150849006, <32 x bfloat> nofpclass(nan inf) %i.cqw, <32 x bfloat> nofpclass(nan inf) %i.cre) ; 2 uses
  %i.crg = bitcast <16 x i32> %i.cqv to <32 x bfloat> ; 2 uses
  %i.crh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150899005, <32 x bfloat> nofpclass(nan inf) %i.cqw, <32 x bfloat> nofpclass(nan inf) %i.crg) ; 2 uses
  %i.cri = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.150979004, <32 x bfloat> nofpclass(nan inf) %i.crb, <32 x bfloat> nofpclass(nan inf) %i.cre) ; 2 uses
  %i.crj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.051019003, <32 x bfloat> nofpclass(nan inf) %i.crb, <32 x bfloat> nofpclass(nan inf) %i.crg) ; 2 uses
  %i.crk = getelementptr inbounds nuw i8, ptr %.024089012, i64 64 ; 2 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %.423849013, i64 32
  %i.crm = add nuw nsw i32 %.024109011, 2         ; 2 uses
  %i.crn = or disjoint i32 %i.crm, 1
  %i.cro = icmp slt i32 %i.crn, %7
  br i1 %i.cro, label %.lr.ph9015, label %.preheader8914.loopexit, !llvm.loop !493

.lr.ph9038:                                       ; preds = %.preheader8914, %.lr.ph9038
  %.523859037 = phi ptr [ %i.csh, %.lr.ph9038 ], [ %.42384.lcssa, %.preheader8914 ] ; 2 uses
  %.124099036 = phi ptr [ %i.csg, %.lr.ph9038 ], [ %.02408.lcssa, %.preheader8914 ] ; 2 uses
  %.124119035 = phi i32 [ %i.csi, %.lr.ph9038 ], [ %.02410.lcssa, %.preheader8914 ]
  %.250589034 = phi <16 x float> [ %i.cry, %.lr.ph9038 ], [ %.15057.lcssa, %.preheader8914 ]
  %.250639033 = phi <16 x float> [ %i.crz, %.lr.ph9038 ], [ %.15062.lcssa, %.preheader8914 ]
  %.250759032 = phi <16 x float> [ %i.csa, %.lr.ph9038 ], [ %.15074.lcssa, %.preheader8914 ]
  %.250809031 = phi <16 x float> [ %i.csb, %.lr.ph9038 ], [ %.15079.lcssa, %.preheader8914 ]
  %.250859030 = phi <16 x float> [ %i.csc, %.lr.ph9038 ], [ %.15084.lcssa, %.preheader8914 ]
  %.250909029 = phi <16 x float> [ %i.csd, %.lr.ph9038 ], [ %.15089.lcssa, %.preheader8914 ]
  %.250989028 = phi <16 x float> [ %i.cse, %.lr.ph9038 ], [ %.15097.lcssa, %.preheader8914 ]
  %.151029027 = phi <16 x float> [ %i.csf, %.lr.ph9038 ], [ %.05101.lcssa, %.preheader8914 ]
  %i.crp = load <16 x bfloat>, ptr %.124099036, align 1, !tbaa !20
  %i.crq = fpext fast <16 x bfloat> %i.crp to <16 x float> ; 5 uses
  %i.crr = load <8 x bfloat>, ptr %.523859037, align 1, !tbaa !20
  %i.crs = fpext fast <8 x bfloat> %i.crr to <8 x float>
  %i.crt = shufflevector <8 x float> %i.crs, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.cru = shufflevector <16 x float> %i.crq, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 4 uses
  %i.crv = shufflevector <16 x float> %i.crt, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.crw = shufflevector <16 x float> %i.crt, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.crx = shufflevector <16 x float> %i.crt, <16 x float> poison, <16 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0, i32 13, i32 14, i32 15, i32 12, i32 9, i32 10, i32 11, i32 8> ; 2 uses
  %i.cry = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.crq, <16 x float> nofpclass(nan inf) %i.crt, <16 x float> nofpclass(nan inf) %.250589034) ; 2 uses
  %i.crz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.crq, <16 x float> nofpclass(nan inf) %i.crv, <16 x float> nofpclass(nan inf) %.250639033) ; 2 uses
  %i.csa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cru, <16 x float> nofpclass(nan inf) %i.crt, <16 x float> nofpclass(nan inf) %.250759032) ; 2 uses
  %i.csb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cru, <16 x float> nofpclass(nan inf) %i.crv, <16 x float> nofpclass(nan inf) %.250809031) ; 2 uses
  %i.csc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.crq, <16 x float> nofpclass(nan inf) %i.crw, <16 x float> nofpclass(nan inf) %.250859030) ; 2 uses
  %i.csd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.crq, <16 x float> nofpclass(nan inf) %i.crx, <16 x float> nofpclass(nan inf) %.250909029) ; 2 uses
  %i.cse = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cru, <16 x float> nofpclass(nan inf) %i.crw, <16 x float> nofpclass(nan inf) %.250989028) ; 2 uses
  %i.csf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cru, <16 x float> nofpclass(nan inf) %i.crx, <16 x float> nofpclass(nan inf) %.151029027) ; 2 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %.124099036, i64 32
  %i.csh = getelementptr inbounds nuw i8, ptr %.523859037, i64 16 ; 2 uses
  %i.csi = add nuw nsw i32 %.124119035, 1         ; 2 uses
  %exitcond9985.not = icmp eq i32 %i.csi, %7
  br i1 %exitcond9985.not, label %._crit_edge9039, label %.lr.ph9038, !llvm.loop !494

._crit_edge9039:                                  ; preds = %.lr.ph9038, %.preheader8914
  %.15102.lcssa = phi <16 x float> [ %.05101.lcssa, %.preheader8914 ], [ %i.csf, %.lr.ph9038 ] ; 3 uses
  %.25098.lcssa = phi <16 x float> [ %.15097.lcssa, %.preheader8914 ], [ %i.cse, %.lr.ph9038 ] ; 3 uses
  %.25090.lcssa = phi <16 x float> [ %.15089.lcssa, %.preheader8914 ], [ %i.csd, %.lr.ph9038 ] ; 3 uses
  %.25085.lcssa = phi <16 x float> [ %.15084.lcssa, %.preheader8914 ], [ %i.csc, %.lr.ph9038 ] ; 3 uses
  %.25080.lcssa = phi <16 x float> [ %.15079.lcssa, %.preheader8914 ], [ %i.csb, %.lr.ph9038 ] ; 3 uses
  %.25075.lcssa = phi <16 x float> [ %.15074.lcssa, %.preheader8914 ], [ %i.csa, %.lr.ph9038 ] ; 3 uses
  %.25063.lcssa = phi <16 x float> [ %.15062.lcssa, %.preheader8914 ], [ %i.crz, %.lr.ph9038 ] ; 3 uses
  %.25058.lcssa = phi <16 x float> [ %.15057.lcssa, %.preheader8914 ], [ %i.cry, %.lr.ph9038 ] ; 3 uses
  %.52385.lcssa = phi ptr [ %.42384.lcssa, %.preheader8914 ], [ %i.csh, %.lr.ph9038 ] ; 2 uses
  br i1 %8, label %bb.p, label %bb.v

bb.p:                                             ; preds = %._crit_edge9039
  %i.csj = shufflevector <16 x float> %.25058.lcssa, <16 x float> %.25080.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.csk = shufflevector <16 x float> %.25058.lcssa, <16 x float> %.25080.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.csl = shufflevector <16 x float> %.25075.lcssa, <16 x float> %.25063.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.csm = shufflevector <16 x float> %.25075.lcssa, <16 x float> %.25063.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.csn = shufflevector <16 x float> %.25085.lcssa, <16 x float> %.15102.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.cso = shufflevector <16 x float> %.25085.lcssa, <16 x float> %.15102.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.csp = shufflevector <16 x float> %.25098.lcssa, <16 x float> %.25090.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.csq = shufflevector <16 x float> %.25098.lcssa, <16 x float> %.25090.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.csr = shufflevector <16 x float> %i.csj, <16 x float> %i.csl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.css = shufflevector <16 x float> %i.csj, <16 x float> %i.csl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cst = shufflevector <16 x float> %i.csm, <16 x float> %i.csk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.csu = shufflevector <16 x float> %i.csm, <16 x float> %i.csk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.csv = shufflevector <16 x float> %i.csn, <16 x float> %i.csp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.csw = shufflevector <16 x float> %i.csn, <16 x float> %i.csp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.csx = shufflevector <16 x float> %i.csq, <16 x float> %i.cso, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.csy = shufflevector <16 x float> %i.csq, <16 x float> %i.cso, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.csz = shufflevector <16 x float> %i.csr, <16 x float> %i.csv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cta = shufflevector <16 x float> %i.css, <16 x float> %i.csw, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ctb = shufflevector <16 x float> %i.cst, <16 x float> %i.csx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ctc = shufflevector <16 x float> %i.csu, <16 x float> %i.csy, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ctd = shufflevector <16 x float> %i.csv, <16 x float> %i.csr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cte = shufflevector <16 x float> %i.csw, <16 x float> %i.css, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ctf = shufflevector <16 x float> %i.csx, <16 x float> %i.cst, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ctg = shufflevector <16 x float> %i.csy, <16 x float> %i.csu, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  br i1 %.not2685, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cth = load <16 x float>, ptr %i.cs, align 1, !tbaa !20 ; 8 uses
  %i.cti = fadd fast <16 x float> %i.cth, %i.csz
  %i.ctj = fadd fast <16 x float> %i.cth, %i.cta
  %i.ctk = fadd fast <16 x float> %i.cth, %i.ctb
  %i.ctl = fadd fast <16 x float> %i.cth, %i.ctc
  %i.ctm = fadd fast <16 x float> %i.cth, %i.ctd
  %i.ctn = fadd fast <16 x float> %i.cth, %i.cte
  %i.cto = fadd fast <16 x float> %i.cth, %i.ctf
  %i.ctp = fadd fast <16 x float> %i.cth, %i.ctg
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.25103 = phi nsz <16 x float> [ %i.ctg, %bb.p ], [ %i.ctp, %bb.q ] ; 10 uses
  %.35099 = phi nsz <16 x float> [ %i.ctf, %bb.p ], [ %i.cto, %bb.q ] ; 10 uses
  %.35091 = phi nsz <16 x float> [ %i.cte, %bb.p ], [ %i.ctn, %bb.q ] ; 10 uses
  %.35086 = phi nsz <16 x float> [ %i.ctd, %bb.p ], [ %i.ctm, %bb.q ] ; 10 uses
  %.35081 = phi nsz <16 x float> [ %i.ctc, %bb.p ], [ %i.ctl, %bb.q ] ; 10 uses
  %.35076 = phi nsz <16 x float> [ %i.ctb, %bb.p ], [ %i.ctk, %bb.q ] ; 10 uses
  %.35064 = phi nsz <16 x float> [ %i.cta, %bb.p ], [ %i.ctj, %bb.q ] ; 10 uses
  %.35059 = phi nsz <16 x float> [ %i.csz, %bb.p ], [ %i.cti, %bb.q ] ; 10 uses
  switch i32 %9, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753 [
    i32 1, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread
    i32 2, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread6924
    i32 3, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread6927
    i32 4, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread6930
    i32 5, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread6933
    i32 6, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread6936
  ]

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2767.thread: ; preds = %bb.r
  %i.ctq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35059, <16 x float> zeroinitializer, i32 4)
  %i.ctr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35064, <16 x float> zeroinitializer, i32 4)
end_hunk_1
begin_hunk_2_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  br label %.thread7326

bb.u:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753.split
  %i.ehu = shufflevector <16 x float> %.0.i27666923694269767021708171527238, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ehv = shufflevector <16 x float> %.0.i2764694469747023707971547236, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ehw = shufflevector <16 x float> %.0.i276269787019708371507240, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ehx = shufflevector <16 x float> %.0.i27607025707771567234, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ehy = shufflevector <16 x float> %.0.i27666923694269767021708171527238, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ehz = shufflevector <16 x float> %.0.i2764694469747023707971547236, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eia = shufflevector <16 x float> %.0.i276269787019708371507240, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eib = shufflevector <16 x float> %.0.i27607025707771567234, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eic = shufflevector <16 x float> %.0.i27666923694269767021708171527238, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eid = shufflevector <16 x float> %.0.i2764694469747023707971547236, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eie = shufflevector <16 x float> %.0.i276269787019708371507240, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eif = shufflevector <16 x float> %.0.i27607025707771567234, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eig = shufflevector <16 x float> %.0.i27666923694269767021708171527238, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eih = shufflevector <16 x float> %.0.i2764694469747023707971547236, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eii = shufflevector <16 x float> %.0.i276269787019708371507240, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eij = shufflevector <16 x float> %.0.i27607025707771567234, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eik = shufflevector <16 x float> %.0.i2758708571487242, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eil = shufflevector <16 x float> %.0.i275671587232, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eim = shufflevector <16 x float> %.0.i27547244, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ein = shufflevector <16 x float> %.0.i2752, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eio = shufflevector <16 x float> %.0.i2758708571487242, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eip = shufflevector <16 x float> %.0.i275671587232, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eiq = shufflevector <16 x float> %.0.i27547244, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eir = shufflevector <16 x float> %.0.i2752, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eis = shufflevector <16 x float> %.0.i2758708571487242, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eit = shufflevector <16 x float> %.0.i275671587232, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eiu = shufflevector <16 x float> %.0.i27547244, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eiv = shufflevector <16 x float> %.0.i2752, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.eiw = shufflevector <16 x float> %.0.i2758708571487242, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eix = shufflevector <16 x float> %.0.i275671587232, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eiy = shufflevector <16 x float> %.0.i27547244, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eiz = shufflevector <16 x float> %.0.i2752, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.eja = shufflevector <4 x float> %i.ehu, <4 x float> %i.ehv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejb = shufflevector <4 x float> %i.ehw, <4 x float> %i.ehx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejc = shufflevector <4 x float> %i.ehu, <4 x float> %i.ehv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ejd = shufflevector <4 x float> %i.ehw, <4 x float> %i.ehx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eje = shufflevector <4 x float> %i.eja, <4 x float> %i.ejb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejf = shufflevector <4 x float> %i.ejb, <4 x float> %i.eja, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ejg = shufflevector <4 x float> %i.ejc, <4 x float> %i.ejd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejh = shufflevector <4 x float> %i.ejd, <4 x float> %i.ejc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eji = shufflevector <4 x float> %i.eik, <4 x float> %i.eil, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejj = shufflevector <4 x float> %i.eim, <4 x float> %i.ein, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejk = shufflevector <4 x float> %i.eik, <4 x float> %i.eil, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ejl = shufflevector <4 x float> %i.eim, <4 x float> %i.ein, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ejm = shufflevector <4 x float> %i.eji, <4 x float> %i.ejj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejn = shufflevector <4 x float> %i.ejj, <4 x float> %i.eji, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ejo = shufflevector <4 x float> %i.ejk, <4 x float> %i.ejl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejp = shufflevector <4 x float> %i.ejl, <4 x float> %i.ejk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ejq = shufflevector <4 x float> %i.ehy, <4 x float> %i.ehz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejr = shufflevector <4 x float> %i.eia, <4 x float> %i.eib, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejs = shufflevector <4 x float> %i.ehy, <4 x float> %i.ehz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ejt = shufflevector <4 x float> %i.eia, <4 x float> %i.eib, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eju = shufflevector <4 x float> %i.ejq, <4 x float> %i.ejr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejv = shufflevector <4 x float> %i.ejr, <4 x float> %i.ejq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ejw = shufflevector <4 x float> %i.ejs, <4 x float> %i.ejt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ejx = shufflevector <4 x float> %i.ejt, <4 x float> %i.ejs, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ejy = shufflevector <4 x float> %i.eio, <4 x float> %i.eip, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ejz = shufflevector <4 x float> %i.eiq, <4 x float> %i.eir, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eka = shufflevector <4 x float> %i.eio, <4 x float> %i.eip, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekb = shufflevector <4 x float> %i.eiq, <4 x float> %i.eir, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekc = shufflevector <4 x float> %i.ejy, <4 x float> %i.ejz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekd = shufflevector <4 x float> %i.ejz, <4 x float> %i.ejy, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eke = shufflevector <4 x float> %i.eka, <4 x float> %i.ekb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekf = shufflevector <4 x float> %i.ekb, <4 x float> %i.eka, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ekg = shufflevector <4 x float> %i.eic, <4 x float> %i.eid, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekh = shufflevector <4 x float> %i.eie, <4 x float> %i.eif, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eki = shufflevector <4 x float> %i.eic, <4 x float> %i.eid, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekj = shufflevector <4 x float> %i.eie, <4 x float> %i.eif, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekk = shufflevector <4 x float> %i.ekg, <4 x float> %i.ekh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekl = shufflevector <4 x float> %i.ekh, <4 x float> %i.ekg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ekm = shufflevector <4 x float> %i.eki, <4 x float> %i.ekj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekn = shufflevector <4 x float> %i.ekj, <4 x float> %i.eki, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eko = shufflevector <4 x float> %i.eis, <4 x float> %i.eit, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekp = shufflevector <4 x float> %i.eiu, <4 x float> %i.eiv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekq = shufflevector <4 x float> %i.eis, <4 x float> %i.eit, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekr = shufflevector <4 x float> %i.eiu, <4 x float> %i.eiv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eks = shufflevector <4 x float> %i.eko, <4 x float> %i.ekp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekt = shufflevector <4 x float> %i.ekp, <4 x float> %i.eko, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.eku = shufflevector <4 x float> %i.ekq, <4 x float> %i.ekr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ekv = shufflevector <4 x float> %i.ekr, <4 x float> %i.ekq, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ekw = shufflevector <4 x float> %i.eig, <4 x float> %i.eih, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ekx = shufflevector <4 x float> %i.eii, <4 x float> %i.eij, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eky = shufflevector <4 x float> %i.eig, <4 x float> %i.eih, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ekz = shufflevector <4 x float> %i.eii, <4 x float> %i.eij, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ela = shufflevector <4 x float> %i.ekw, <4 x float> %i.ekx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.elb = shufflevector <4 x float> %i.ekx, <4 x float> %i.ekw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.elc = shufflevector <4 x float> %i.eky, <4 x float> %i.ekz, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eld = shufflevector <4 x float> %i.ekz, <4 x float> %i.eky, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ele = shufflevector <4 x float> %i.eiw, <4 x float> %i.eix, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.elf = shufflevector <4 x float> %i.eiy, <4 x float> %i.eiz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.elg = shufflevector <4 x float> %i.eiw, <4 x float> %i.eix, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.elh = shufflevector <4 x float> %i.eiy, <4 x float> %i.eiz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eli = shufflevector <4 x float> %i.ele, <4 x float> %i.elf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.elj = shufflevector <4 x float> %i.elf, <4 x float> %i.ele, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.elk = shufflevector <4 x float> %i.elg, <4 x float> %i.elh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ell = shufflevector <4 x float> %i.elh, <4 x float> %i.elg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.elm = shufflevector <4 x float> %i.eje, <4 x float> %i.ejm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eln = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.elm)
  store <8 x bfloat> %i.eln, ptr %.623639051, align 1, !tbaa !20
  %i.elo = getelementptr inbounds i8, ptr %.623639051, i64 %i.p
  %i.elp = shufflevector <4 x float> %i.ejf, <4 x float> %i.ejn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.elq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.elp)
  store <8 x bfloat> %i.elq, ptr %i.elo, align 1, !tbaa !20
  %i.elr = getelementptr inbounds [2 x i8], ptr %.623639051, i64 %i.r
  %i.els = shufflevector <4 x float> %i.ejg, <4 x float> %i.ejo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.elt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.els)
  store <8 x bfloat> %i.elt, ptr %i.elr, align 1, !tbaa !20
  %i.elu = getelementptr inbounds i8, ptr %.623639051, i64 %i.s
  %i.elv = shufflevector <4 x float> %i.ejh, <4 x float> %i.ejp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.elw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.elv)
  store <8 x bfloat> %i.elw, ptr %i.elu, align 1, !tbaa !20
  %i.elx = getelementptr inbounds [2 x i8], ptr %.623639051, i64 %i.u
  %i.ely = shufflevector <4 x float> %i.eju, <4 x float> %i.ekc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.elz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ely)
  store <8 x bfloat> %i.elz, ptr %i.elx, align 1, !tbaa !20
  %i.ema = getelementptr inbounds i8, ptr %.623639051, i64 %i.v
  %i.emb = shufflevector <4 x float> %i.ejv, <4 x float> %i.ekd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emb)
  store <8 x bfloat> %i.emc, ptr %i.ema, align 1, !tbaa !20
  %i.emd = getelementptr inbounds i8, ptr %.623639051, i64 %i.w
  %i.eme = shufflevector <4 x float> %i.ejw, <4 x float> %i.eke, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.eme)
  store <8 x bfloat> %i.emf, ptr %i.emd, align 1, !tbaa !20
  %i.emg = getelementptr inbounds i8, ptr %.623639051, i64 %i.x
  %i.emh = shufflevector <4 x float> %i.ejx, <4 x float> %i.ekf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emh)
  store <8 x bfloat> %i.emi, ptr %i.emg, align 1, !tbaa !20
  %i.emj = getelementptr inbounds [2 x i8], ptr %.623639051, i64 %i.z
  %i.emk = shufflevector <4 x float> %i.ekk, <4 x float> %i.eks, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eml = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emk)
  store <8 x bfloat> %i.eml, ptr %i.emj, align 1, !tbaa !20
  %i.emm = getelementptr inbounds i8, ptr %.623639051, i64 %i.aa
  %i.emn = shufflevector <4 x float> %i.ekl, <4 x float> %i.ekt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emn)
  store <8 x bfloat> %i.emo, ptr %i.emm, align 1, !tbaa !20
  %i.emp = getelementptr inbounds i8, ptr %.623639051, i64 %i.ab
  %i.emq = shufflevector <4 x float> %i.ekm, <4 x float> %i.eku, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emq)
  store <8 x bfloat> %i.emr, ptr %i.emp, align 1, !tbaa !20
  %i.ems = getelementptr inbounds i8, ptr %.623639051, i64 %i.ac
  %i.emt = shufflevector <4 x float> %i.ekn, <4 x float> %i.ekv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emt)
  store <8 x bfloat> %i.emu, ptr %i.ems, align 1, !tbaa !20
  %i.emv = getelementptr inbounds i8, ptr %.623639051, i64 %i.ad
  %i.emw = shufflevector <4 x float> %i.ela, <4 x float> %i.eli, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.emx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emw)
  store <8 x bfloat> %i.emx, ptr %i.emv, align 1, !tbaa !20
  %i.emy = getelementptr inbounds i8, ptr %.623639051, i64 %i.ae
  %i.emz = shufflevector <4 x float> %i.elb, <4 x float> %i.elj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ena = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.emz)
  store <8 x bfloat> %i.ena, ptr %i.emy, align 1, !tbaa !20
  %i.enb = getelementptr inbounds i8, ptr %.623639051, i64 %i.af
  %i.enc = shufflevector <4 x float> %i.elc, <4 x float> %i.elk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.end = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.enc)
  store <8 x bfloat> %i.end, ptr %i.enb, align 1, !tbaa !20
  %i.ene = getelementptr inbounds i8, ptr %.623639051, i64 %i.ag
  %i.enf = shufflevector <4 x float> %i.eld, <4 x float> %i.ell, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eng = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.enf)
  store <8 x bfloat> %i.eng, ptr %i.ene, align 1, !tbaa !20
  %i.enh = getelementptr inbounds nuw i8, ptr %.623639051, i64 16
  br label %.thread7326

bb.v:                                             ; preds = %._crit_edge9039
  store <16 x float> %.25058.lcssa, ptr %.223379052, align 64, !tbaa !20
  %i.eni = getelementptr inbounds nuw i8, ptr %.223379052, i64 64
  store <16 x float> %.25063.lcssa, ptr %i.eni, align 64, !tbaa !20
  %i.enj = getelementptr inbounds nuw i8, ptr %.223379052, i64 128
  store <16 x float> %.25075.lcssa, ptr %i.enj, align 64, !tbaa !20
  %i.enk = getelementptr inbounds nuw i8, ptr %.223379052, i64 192
  store <16 x float> %.25080.lcssa, ptr %i.enk, align 64, !tbaa !20
  %i.enl = getelementptr inbounds nuw i8, ptr %.223379052, i64 256
  store <16 x float> %.25085.lcssa, ptr %i.enl, align 64, !tbaa !20
  %i.enm = getelementptr inbounds nuw i8, ptr %.223379052, i64 320
  store <16 x float> %.25090.lcssa, ptr %i.enm, align 64, !tbaa !20
  %i.enn = getelementptr inbounds nuw i8, ptr %.223379052, i64 384
  store <16 x float> %.25098.lcssa, ptr %i.enn, align 64, !tbaa !20
  %i.eno = getelementptr inbounds nuw i8, ptr %.223379052, i64 448
  store <16 x float> %.15102.lcssa, ptr %i.eno, align 64, !tbaa !20
  br label %.thread7326

.thread7326:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753.split, %bb.s, %.thread7320, %bb.t, %bb.u, %bb.v
  %.112368 = phi ptr [ %.623639051, %bb.v ], [ %i.enh, %bb.u ], [ %.623639051, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753.split ], [ %i.eht, %bb.t ], [ %i.efp, %.thread7320 ], [ %i.egn, %bb.s ], [ %.623639051, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2753 ] ; 2 uses
  %i.enp = getelementptr inbounds nuw i8, ptr %.223379052, i64 512 ; 2 uses
  %i.enq = add nuw nsw i32 %.123979049, 8         ; 3 uses
  %i.enr = or disjoint i32 %i.enq, 7
  %i.ens = icmp slt i32 %i.enr, %5
  br i1 %i.ens, label %bb.m, label %.preheader8917, !llvm.loop !495

.preheader8916:                                   ; preds = %.thread7435, %.preheader8917
  %.22398.lcssa = phi i32 [ %.12397.lcssa, %.preheader8917 ], [ %i.frl, %.thread7435 ] ; 2 uses
  %.62386.lcssa = phi ptr [ %.32383.lcssa, %.preheader8917 ], [ %.82388.lcssa, %.thread7435 ]
  %.122369.lcssa = phi ptr [ %.62363.lcssa, %.preheader8917 ], [ %.172374, %.thread7435 ]
  %.32338.lcssa = phi ptr [ %.22337.lcssa, %.preheader8917 ], [ %i.frk, %.thread7435 ] ; 2 uses
  %i.ent = icmp slt i32 %.22398.lcssa, %5
  br i1 %i.ent, label %.lr.ph9119, label %._crit_edge9120

.lr.ph9119:                                       ; preds = %.preheader8916
  %.not2655 = icmp eq ptr %.12331, null
  br label %bb.ag

bb.w:                                             ; preds = %.lr.ph9092, %.thread7435
  %.323389091 = phi ptr [ %.22337.lcssa, %.lr.ph9092 ], [ %i.frk, %.thread7435 ] ; 9 uses
  %.1223699090 = phi ptr [ %.62363.lcssa, %.lr.ph9092 ], [ %.172374, %.thread7435 ] ; 34 uses
  %.623869089 = phi ptr [ %.32383.lcssa, %.lr.ph9092 ], [ %.82388.lcssa, %.thread7435 ] ; 4 uses
  %.223989088 = phi i32 [ %.12397.lcssa, %.lr.ph9092 ], [ %i.frl, %.thread7435 ]
  br i1 %11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.enu = load <16 x float>, ptr %.323389091, align 64, !tbaa !20
  %i.env = getelementptr inbounds nuw i8, ptr %.323389091, i64 64
  %i.enw = load <16 x float>, ptr %i.env, align 64, !tbaa !20
  %i.enx = getelementptr inbounds nuw i8, ptr %.323389091, i64 128
  %i.eny = load <16 x float>, ptr %i.enx, align 64, !tbaa !20
  %i.enz = getelementptr inbounds nuw i8, ptr %.323389091, i64 192
  %i.eoa = load <16 x float>, ptr %i.enz, align 64, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.05115 = phi nsz <16 x float> [ %i.eny, %bb.x ], [ zeroinitializer, %bb.w ] ; 3 uses
  %.05110 = phi nsz <16 x float> [ %i.enw, %bb.x ], [ zeroinitializer, %bb.w ] ; 3 uses
  %.05105 = phi nsz <16 x float> [ %i.enu, %bb.x ], [ zeroinitializer, %bb.w ] ; 3 uses
  %storemerge2669 = phi <16 x float> [ %i.eoa, %bb.x ], [ zeroinitializer, %bb.w ] ; 3 uses
  br i1 %i.l, label %.lr.ph9066.preheader, label %.preheader8913

.lr.ph9066.preheader:                             ; preds = %bb.y
  br i1 %i.aw, label %.lr.ph9066.epil.preheader, label %.lr.ph9066

.preheader8913.loopexit.unr-lcssa:                ; preds = %.lr.ph9066
  br i1 %lcmp.mod.not.not, label %.lr.ph9066.epil.preheader, label %.preheader8913.loopexit

.lr.ph9066.epil.preheader:                        ; preds = %.preheader8913.loopexit.unr-lcssa, %.lr.ph9066.preheader
  %.723879064.epil.init = phi ptr [ %.623869089, %.lr.ph9066.preheader ], [ %i.eqq, %.preheader8913.loopexit.unr-lcssa ]
  %.024129063.epil.init = phi ptr [ %.09125, %.lr.ph9066.preheader ], [ %i.eqp, %.preheader8913.loopexit.unr-lcssa ] ; 2 uses
  %.151069061.epil.init = phi <16 x float> [ %.05105, %.lr.ph9066.preheader ], [ %i.eqi, %.preheader8913.loopexit.unr-lcssa ]
  %.151119060.epil.init = phi <16 x float> [ %.05110, %.lr.ph9066.preheader ], [ %i.eql, %.preheader8913.loopexit.unr-lcssa ]
  %.151169059.epil.init = phi <16 x float> [ %.05115, %.lr.ph9066.preheader ], [ %i.eqn, %.preheader8913.loopexit.unr-lcssa ]
  %.051209058.epil.init = phi <16 x float> [ %storemerge2669, %.lr.ph9066.preheader ], [ %i.eqo, %.preheader8913.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11092)
  %i.eob = load <8 x i64>, ptr %.024129063.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.eoc = load <4 x i32>, ptr %.723879064.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.eod = bitcast <8 x i64> %i.eob to <16 x i32>
  %i.eoe = shufflevector <16 x i32> %i.eod, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.eof = bitcast <8 x i64> %i.eob to <32 x bfloat> ; 2 uses
  %i.eog = bitcast <4 x i32> %i.eoc to <8 x bfloat>
  %i.eoh = shufflevector <8 x bfloat> %i.eog, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eoi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151069061.epil.init, <32 x bfloat> nofpclass(nan inf) %i.eof, <32 x bfloat> nofpclass(nan inf) %i.eoh)
  %i.eoj = bitcast <4 x i32> %i.eoc to <8 x bfloat>
  %i.eok = shufflevector <8 x bfloat> %i.eoj, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.eol = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151119060.epil.init, <32 x bfloat> nofpclass(nan inf) %i.eof, <32 x bfloat> nofpclass(nan inf) %i.eok)
  %i.eom = bitcast <16 x i32> %i.eoe to <32 x bfloat> ; 2 uses
  %i.eon = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151169059.epil.init, <32 x bfloat> nofpclass(nan inf) %i.eom, <32 x bfloat> nofpclass(nan inf) %i.eoh)
  %i.eoo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.051209058.epil.init, <32 x bfloat> nofpclass(nan inf) %i.eom, <32 x bfloat> nofpclass(nan inf) %i.eok)
  %i.eop = getelementptr inbounds nuw i8, ptr %.024129063.epil.init, i64 64
  br label %.preheader8913.loopexit

.preheader8913.loopexit:                          ; preds = %.preheader8913.loopexit.unr-lcssa, %.lr.ph9066.epil.preheader
  %.lcssa11073 = phi <16 x float> [ %i.eqi, %.preheader8913.loopexit.unr-lcssa ], [ %i.eoi, %.lr.ph9066.epil.preheader ]
  %.lcssa11072 = phi <16 x float> [ %i.eql, %.preheader8913.loopexit.unr-lcssa ], [ %i.eol, %.lr.ph9066.epil.preheader ]
  %.lcssa11071 = phi <16 x float> [ %i.eqn, %.preheader8913.loopexit.unr-lcssa ], [ %i.eon, %.lr.ph9066.epil.preheader ]
  %.lcssa11070 = phi <16 x float> [ %i.eqo, %.preheader8913.loopexit.unr-lcssa ], [ %i.eoo, %.lr.ph9066.epil.preheader ]
  %.lcssa11069 = phi ptr [ %i.eqp, %.preheader8913.loopexit.unr-lcssa ], [ %i.eop, %.lr.ph9066.epil.preheader ]
  %i.eoq = getelementptr i8, ptr %.623869089, i64 %i.aq
  %scevgep9986 = getelementptr i8, ptr %i.eoq, i64 16
  br label %.preheader8913

.preheader8913:                                   ; preds = %.preheader8913.loopexit, %bb.y
  %.05120.lcssa = phi <16 x float> [ %storemerge2669, %bb.y ], [ %.lcssa11070, %.preheader8913.loopexit ] ; 3 uses
  %.15116.lcssa = phi <16 x float> [ %.05115, %bb.y ], [ %.lcssa11071, %.preheader8913.loopexit ] ; 3 uses
  %.15111.lcssa = phi <16 x float> [ %.05110, %bb.y ], [ %.lcssa11072, %.preheader8913.loopexit ] ; 3 uses
  %.15106.lcssa = phi <16 x float> [ %.05105, %bb.y ], [ %.lcssa11073, %.preheader8913.loopexit ] ; 3 uses
  %.02442.lcssa = phi i32 [ 0, %bb.y ], [ %i.al, %.preheader8913.loopexit ] ; 5 uses
  %.02412.lcssa = phi ptr [ %.09125, %bb.y ], [ %.lcssa11069, %.preheader8913.loopexit ] ; 3 uses
  %.72387.lcssa = phi ptr [ %.623869089, %bb.y ], [ %scevgep9986, %.preheader8913.loopexit ] ; 4 uses
  %i.eor = icmp slt i32 %.02442.lcssa, %7
  br i1 %i.eor, label %.lr.ph9081.preheader, label %._crit_edge9082

.lr.ph9081.preheader:                             ; preds = %.preheader8913
  %i.eos = sub i32 %7, %.02442.lcssa
  %.neg11239 = add i32 %.02442.lcssa, 1
  %xtraiter11093 = and i32 %i.eos, 1
  %lcmp.mod11094.not = icmp eq i32 %xtraiter11093, 0
  br i1 %lcmp.mod11094.not, label %.lr.ph9081.prol.loopexit, label %.lr.ph9081.prol

.lr.ph9081.prol:                                  ; preds = %.lr.ph9081.preheader
  %i.eot = load <16 x bfloat>, ptr %.02412.lcssa, align 1, !tbaa !20
  %i.eou = fpext fast <16 x bfloat> %i.eot to <16 x float> ; 3 uses
  %i.eov = load i64, ptr %.72387.lcssa, align 1, !tbaa !20
  %i.eow = insertelement <2 x i64> poison, i64 %i.eov, i64 0
  %i.eox = bitcast <2 x i64> %i.eow to <8 x i16>
  %i.eoy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eoz = bitcast <8 x i16> %i.eoy to <4 x float> ; 2 uses
  %i.epa = shufflevector <4 x float> %i.eoz, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.epb = shufflevector <16 x float> %i.eou, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.epc = shufflevector <4 x float> %i.eoz, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.epd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eou, <16 x float> nofpclass(nan inf) %i.epa, <16 x float> nofpclass(nan inf) %.15106.lcssa) ; 2 uses
  %i.epe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eou, <16 x float> nofpclass(nan inf) %i.epc, <16 x float> nofpclass(nan inf) %.15111.lcssa) ; 2 uses
  %i.epf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.epb, <16 x float> nofpclass(nan inf) %i.epa, <16 x float> nofpclass(nan inf) %.15116.lcssa) ; 2 uses
  %i.epg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.epb, <16 x float> nofpclass(nan inf) %i.epc, <16 x float> nofpclass(nan inf) %.05120.lcssa) ; 2 uses
  %i.eph = getelementptr inbounds nuw i8, ptr %.02412.lcssa, i64 32
  %i.epi = getelementptr inbounds nuw i8, ptr %.72387.lcssa, i64 8 ; 2 uses
  %i.epj = add nuw nsw i32 %.02442.lcssa, 1
  br label %.lr.ph9081.prol.loopexit

.lr.ph9081.prol.loopexit:                         ; preds = %.lr.ph9081.prol, %.lr.ph9081.preheader
  %.lcssa11078.unr = phi <16 x float> [ poison, %.lr.ph9081.preheader ], [ %i.epd, %.lr.ph9081.prol ]
  %.lcssa11077.unr = phi <16 x float> [ poison, %.lr.ph9081.preheader ], [ %i.epe, %.lr.ph9081.prol ]
  %.lcssa11076.unr = phi <16 x float> [ poison, %.lr.ph9081.preheader ], [ %i.epf, %.lr.ph9081.prol ]
  %.lcssa11075.unr = phi <16 x float> [ poison, %.lr.ph9081.preheader ], [ %i.epg, %.lr.ph9081.prol ]
  %.lcssa11074.unr = phi ptr [ poison, %.lr.ph9081.preheader ], [ %i.epi, %.lr.ph9081.prol ]
  %.823889080.unr = phi ptr [ %.72387.lcssa, %.lr.ph9081.preheader ], [ %i.epi, %.lr.ph9081.prol ]
  %.124139079.unr = phi ptr [ %.02412.lcssa, %.lr.ph9081.preheader ], [ %i.eph, %.lr.ph9081.prol ]
  %.124439078.unr = phi i32 [ %.02442.lcssa, %.lr.ph9081.preheader ], [ %i.epj, %.lr.ph9081.prol ]
  %.251079077.unr = phi <16 x float> [ %.15106.lcssa, %.lr.ph9081.preheader ], [ %i.epd, %.lr.ph9081.prol ]
  %.251129076.unr = phi <16 x float> [ %.15111.lcssa, %.lr.ph9081.preheader ], [ %i.epe, %.lr.ph9081.prol ]
  %.251179075.unr = phi <16 x float> [ %.15116.lcssa, %.lr.ph9081.preheader ], [ %i.epf, %.lr.ph9081.prol ]
  %.151219074.unr = phi <16 x float> [ %.05120.lcssa, %.lr.ph9081.preheader ], [ %i.epg, %.lr.ph9081.prol ]
  %i.epk = icmp eq i32 %7, %.neg11239
  br i1 %i.epk, label %._crit_edge9082, label %.lr.ph9081

.lr.ph9066:                                       ; preds = %.lr.ph9066.preheader, %.lr.ph9066
  %.723879064 = phi ptr [ %i.eqq, %.lr.ph9066 ], [ %.623869089, %.lr.ph9066.preheader ] ; 3 uses
  %.024129063 = phi ptr [ %i.eqp, %.lr.ph9066 ], [ %.09125, %.lr.ph9066.preheader ] ; 3 uses
  %.151069061 = phi <16 x float> [ %i.eqi, %.lr.ph9066 ], [ %.05105, %.lr.ph9066.preheader ]
  %.151119060 = phi <16 x float> [ %i.eql, %.lr.ph9066 ], [ %.05110, %.lr.ph9066.preheader ]
  %.151169059 = phi <16 x float> [ %i.eqn, %.lr.ph9066 ], [ %.05115, %.lr.ph9066.preheader ]
  %.051209058 = phi <16 x float> [ %i.eqo, %.lr.ph9066 ], [ %storemerge2669, %.lr.ph9066.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph9066 ], [ 0, %.lr.ph9066.preheader ]
  %i.epl = load <8 x i64>, ptr %.024129063, align 1, !tbaa !20 ; 2 uses
  %i.epm = load <4 x i32>, ptr %.723879064, align 1, !tbaa !20 ; 2 uses
  %i.epn = bitcast <8 x i64> %i.epl to <16 x i32>
  %i.epo = shufflevector <16 x i32> %i.epn, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.epp = bitcast <8 x i64> %i.epl to <32 x bfloat> ; 2 uses
  %i.epq = bitcast <4 x i32> %i.epm to <8 x bfloat>
  %i.epr = shufflevector <8 x bfloat> %i.epq, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eps = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151069061, <32 x bfloat> nofpclass(nan inf) %i.epp, <32 x bfloat> nofpclass(nan inf) %i.epr)
  %i.ept = bitcast <4 x i32> %i.epm to <8 x bfloat>
  %i.epu = shufflevector <8 x bfloat> %i.ept, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.epv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151119060, <32 x bfloat> nofpclass(nan inf) %i.epp, <32 x bfloat> nofpclass(nan inf) %i.epu)
  %i.epw = bitcast <16 x i32> %i.epo to <32 x bfloat> ; 2 uses
  %i.epx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151169059, <32 x bfloat> nofpclass(nan inf) %i.epw, <32 x bfloat> nofpclass(nan inf) %i.epr)
  %i.epy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.051209058, <32 x bfloat> nofpclass(nan inf) %i.epw, <32 x bfloat> nofpclass(nan inf) %i.epu)
  %i.epz = getelementptr inbounds nuw i8, ptr %.024129063, i64 64
  %i.eqa = getelementptr inbounds nuw i8, ptr %.723879064, i64 16
  %i.eqb = load <8 x i64>, ptr %i.epz, align 1, !tbaa !20 ; 2 uses
  %i.eqc = load <4 x i32>, ptr %i.eqa, align 1, !tbaa !20 ; 2 uses
  %i.eqd = bitcast <8 x i64> %i.eqb to <16 x i32>
  %i.eqe = shufflevector <16 x i32> %i.eqd, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.eqf = bitcast <8 x i64> %i.eqb to <32 x bfloat> ; 2 uses
  %i.eqg = bitcast <4 x i32> %i.eqc to <8 x bfloat>
  %i.eqh = shufflevector <8 x bfloat> %i.eqg, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.eqi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.eps, <32 x bfloat> nofpclass(nan inf) %i.eqf, <32 x bfloat> nofpclass(nan inf) %i.eqh) ; 3 uses
  %i.eqj = bitcast <4 x i32> %i.eqc to <8 x bfloat>
  %i.eqk = shufflevector <8 x bfloat> %i.eqj, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.eql = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.epv, <32 x bfloat> nofpclass(nan inf) %i.eqf, <32 x bfloat> nofpclass(nan inf) %i.eqk) ; 3 uses
  %i.eqm = bitcast <16 x i32> %i.eqe to <32 x bfloat> ; 2 uses
  %i.eqn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.epx, <32 x bfloat> nofpclass(nan inf) %i.eqm, <32 x bfloat> nofpclass(nan inf) %i.eqh) ; 3 uses
  %i.eqo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.epy, <32 x bfloat> nofpclass(nan inf) %i.eqm, <32 x bfloat> nofpclass(nan inf) %i.eqk) ; 3 uses
  %i.eqp = getelementptr inbounds nuw i8, ptr %.024129063, i64 128 ; 3 uses
  %i.eqq = getelementptr inbounds nuw i8, ptr %.723879064, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader8913.loopexit.unr-lcssa, label %.lr.ph9066, !llvm.loop !496

.lr.ph9081:                                       ; preds = %.lr.ph9081.prol.loopexit, %.lr.ph9081
  %.823889080 = phi ptr [ %i.erw, %.lr.ph9081 ], [ %.823889080.unr, %.lr.ph9081.prol.loopexit ] ; 3 uses
  %.124139079 = phi ptr [ %i.erv, %.lr.ph9081 ], [ %.124139079.unr, %.lr.ph9081.prol.loopexit ] ; 3 uses
  %.124439078 = phi i32 [ %i.erx, %.lr.ph9081 ], [ %.124439078.unr, %.lr.ph9081.prol.loopexit ]
  %.251079077 = phi <16 x float> [ %i.err, %.lr.ph9081 ], [ %.251079077.unr, %.lr.ph9081.prol.loopexit ]
  %.251129076 = phi <16 x float> [ %i.ers, %.lr.ph9081 ], [ %.251129076.unr, %.lr.ph9081.prol.loopexit ]
  %.251179075 = phi <16 x float> [ %i.ert, %.lr.ph9081 ], [ %.251179075.unr, %.lr.ph9081.prol.loopexit ]
  %.151219074 = phi <16 x float> [ %i.eru, %.lr.ph9081 ], [ %.151219074.unr, %.lr.ph9081.prol.loopexit ]
  %i.eqr = load <16 x bfloat>, ptr %.124139079, align 1, !tbaa !20
  %i.eqs = fpext fast <16 x bfloat> %i.eqr to <16 x float> ; 3 uses
  %i.eqt = load i64, ptr %.823889080, align 1, !tbaa !20
  %i.equ = insertelement <2 x i64> poison, i64 %i.eqt, i64 0
  %i.eqv = bitcast <2 x i64> %i.equ to <8 x i16>
  %i.eqw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eqv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eqx = bitcast <8 x i16> %i.eqw to <4 x float> ; 2 uses
  %i.eqy = shufflevector <4 x float> %i.eqx, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.eqz = shufflevector <16 x float> %i.eqs, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.era = shufflevector <4 x float> %i.eqx, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.erb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqs, <16 x float> nofpclass(nan inf) %i.eqy, <16 x float> nofpclass(nan inf) %.251079077)
  %i.erc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqs, <16 x float> nofpclass(nan inf) %i.era, <16 x float> nofpclass(nan inf) %.251129076)
  %i.erd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqz, <16 x float> nofpclass(nan inf) %i.eqy, <16 x float> nofpclass(nan inf) %.251179075)
  %i.ere = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eqz, <16 x float> nofpclass(nan inf) %i.era, <16 x float> nofpclass(nan inf) %.151219074)
  %i.erf = getelementptr inbounds nuw i8, ptr %.124139079, i64 32
  %i.erg = getelementptr inbounds nuw i8, ptr %.823889080, i64 8
  %i.erh = load <16 x bfloat>, ptr %i.erf, align 1, !tbaa !20
  %i.eri = fpext fast <16 x bfloat> %i.erh to <16 x float> ; 3 uses
  %i.erj = load i64, ptr %i.erg, align 1, !tbaa !20
  %i.erk = insertelement <2 x i64> poison, i64 %i.erj, i64 0
  %i.erl = bitcast <2 x i64> %i.erk to <8 x i16>
  %i.erm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.erl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ern = bitcast <8 x i16> %i.erm to <4 x float> ; 2 uses
  %i.ero = shufflevector <4 x float> %i.ern, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.erp = shufflevector <16 x float> %i.eri, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.erq = shufflevector <4 x float> %i.ern, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.err = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eri, <16 x float> nofpclass(nan inf) %i.ero, <16 x float> nofpclass(nan inf) %i.erb) ; 2 uses
  %i.ers = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eri, <16 x float> nofpclass(nan inf) %i.erq, <16 x float> nofpclass(nan inf) %i.erc) ; 2 uses
  %i.ert = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.erp, <16 x float> nofpclass(nan inf) %i.ero, <16 x float> nofpclass(nan inf) %i.erd) ; 2 uses
  %i.eru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.erp, <16 x float> nofpclass(nan inf) %i.erq, <16 x float> nofpclass(nan inf) %i.ere) ; 2 uses
  %i.erv = getelementptr inbounds nuw i8, ptr %.124139079, i64 64
  %i.erw = getelementptr inbounds nuw i8, ptr %.823889080, i64 16 ; 2 uses
  %i.erx = add nuw nsw i32 %.124439078, 2         ; 2 uses
  %exitcond9987.not.1 = icmp eq i32 %i.erx, %7
  br i1 %exitcond9987.not.1, label %._crit_edge9082, label %.lr.ph9081, !llvm.loop !497
end_hunk_2
begin_hunk_3_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  store <16 x bfloat> %i.flv, ptr %i.flu, align 1, !tbaa !20
  %i.flw = getelementptr inbounds nuw i8, ptr %.1223699090, i64 128
  br label %.thread7435

bb.ac:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745.split
  %i.flx = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> %.0.i274873597389, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fly = shufflevector <16 x float> %.0.i27467393, <16 x float> %.0.i2744, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.flz = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> %.0.i274873597389, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fma = shufflevector <16 x float> %.0.i27467393, <16 x float> %.0.i2744, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fmb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.flx)
  store <16 x bfloat> %i.fmb, ptr %.1223699090, align 1, !tbaa !20
  %i.fmc = getelementptr inbounds nuw i8, ptr %.1223699090, i64 32
  %i.fmd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fly)
  store <16 x bfloat> %i.fmd, ptr %i.fmc, align 1, !tbaa !20
  %i.fme = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.z ; 2 uses
  %i.fmf = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.flz)
  store <16 x bfloat> %i.fmf, ptr %i.fme, align 1, !tbaa !20
  %i.fmg = getelementptr inbounds nuw i8, ptr %i.fme, i64 32
  %i.fmh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fma)
  store <16 x bfloat> %i.fmh, ptr %i.fmg, align 1, !tbaa !20
  %i.fmi = getelementptr inbounds nuw i8, ptr %.1223699090, i64 64
  br label %.thread7435

bb.ad:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745.split
  %i.fmj = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> %.0.i274873597389, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.fmk = shufflevector <16 x float> %.0.i27467393, <16 x float> %.0.i2744, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.fml = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> %.0.i274873597389, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fmm = shufflevector <16 x float> %.0.i27467393, <16 x float> %.0.i2744, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.fmn = shufflevector <16 x float> %i.fmj, <16 x float> %i.fmk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fmo = shufflevector <16 x float> %i.fmj, <16 x float> %i.fmk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.fmp = shufflevector <16 x float> %i.fml, <16 x float> %i.fmm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.fmq = shufflevector <16 x float> %i.fml, <16 x float> %i.fmm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.fmr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fmn)
  store <16 x bfloat> %i.fmr, ptr %.1223699090, align 1, !tbaa !20
  %i.fms = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.u
  %i.fmt = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fmo)
  store <16 x bfloat> %i.fmt, ptr %i.fms, align 1, !tbaa !20
  %i.fmu = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.z
  %i.fmv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fmp)
  store <16 x bfloat> %i.fmv, ptr %i.fmu, align 1, !tbaa !20
  %i.fmw = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ad
  %i.fmx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fmq)
  store <16 x bfloat> %i.fmx, ptr %i.fmw, align 1, !tbaa !20
  %i.fmy = getelementptr inbounds nuw i8, ptr %.1223699090, i64 32
  br label %.thread7435

bb.ae:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745.split
  %i.fmz = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fna = shufflevector <16 x float> %.0.i274873597389, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fnb = shufflevector <16 x float> %.0.i27467393, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fnc = shufflevector <16 x float> %.0.i2744, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fnd = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.fne = shufflevector <16 x float> %.0.i274873597389, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.fnf = shufflevector <16 x float> %.0.i27467393, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.fng = shufflevector <16 x float> %.0.i2744, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.fnh = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fni = shufflevector <16 x float> %.0.i274873597389, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fnj = shufflevector <16 x float> %.0.i27467393, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fnk = shufflevector <16 x float> %.0.i2744, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.fnl = shufflevector <16 x float> %.0.i2750733873577391, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.fnm = shufflevector <16 x float> %.0.i274873597389, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.fnn = shufflevector <16 x float> %.0.i27467393, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.fno = shufflevector <16 x float> %.0.i2744, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.fnp = shufflevector <4 x float> %i.fmz, <4 x float> %i.fna, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fnq = shufflevector <4 x float> %i.fnb, <4 x float> %i.fnc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fnr = shufflevector <4 x float> %i.fmz, <4 x float> %i.fna, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fns = shufflevector <4 x float> %i.fnb, <4 x float> %i.fnc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fnt = shufflevector <4 x float> %i.fnp, <4 x float> %i.fnq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fnu = shufflevector <4 x float> %i.fnq, <4 x float> %i.fnp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fnv = shufflevector <4 x float> %i.fnr, <4 x float> %i.fns, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fnw = shufflevector <4 x float> %i.fns, <4 x float> %i.fnr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fnx = shufflevector <4 x float> %i.fnd, <4 x float> %i.fne, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fny = shufflevector <4 x float> %i.fnf, <4 x float> %i.fng, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fnz = shufflevector <4 x float> %i.fnd, <4 x float> %i.fne, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.foa = shufflevector <4 x float> %i.fnf, <4 x float> %i.fng, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.fob = shufflevector <4 x float> %i.fnx, <4 x float> %i.fny, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.foc = shufflevector <4 x float> %i.fny, <4 x float> %i.fnx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fod = shufflevector <4 x float> %i.fnz, <4 x float> %i.foa, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.foe = shufflevector <4 x float> %i.foa, <4 x float> %i.fnz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fof = shufflevector <4 x float> %i.fnh, <4 x float> %i.fni, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fog = shufflevector <4 x float> %i.fnj, <4 x float> %i.fnk, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.foh = shufflevector <4 x float> %i.fnh, <4 x float> %i.fni, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.foi = shufflevector <4 x float> %i.fnj, <4 x float> %i.fnk, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.foj = shufflevector <4 x float> %i.fof, <4 x float> %i.fog, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fok = shufflevector <4 x float> %i.fog, <4 x float> %i.fof, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fol = shufflevector <4 x float> %i.foh, <4 x float> %i.foi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fom = shufflevector <4 x float> %i.foi, <4 x float> %i.foh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fon = shufflevector <4 x float> %i.fnl, <4 x float> %i.fnm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.foo = shufflevector <4 x float> %i.fnn, <4 x float> %i.fno, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.fop = shufflevector <4 x float> %i.fnl, <4 x float> %i.fnm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.foq = shufflevector <4 x float> %i.fnn, <4 x float> %i.fno, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.for = shufflevector <4 x float> %i.fon, <4 x float> %i.foo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fos = shufflevector <4 x float> %i.foo, <4 x float> %i.fon, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fot = shufflevector <4 x float> %i.fop, <4 x float> %i.foq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fou = shufflevector <4 x float> %i.foq, <4 x float> %i.fop, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.fov = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fnt)
  %i.fow = bitcast <8 x bfloat> %i.fov to <2 x i64>
  %i.fox = extractelement <2 x i64> %i.fow, i64 0
  store i64 %i.fox, ptr %.1223699090, align 1, !tbaa !20
  %i.foy = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.u
  %i.foz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fob)
  %i.fpa = bitcast <8 x bfloat> %i.foz to <2 x i64>
  %i.fpb = extractelement <2 x i64> %i.fpa, i64 0
  store i64 %i.fpb, ptr %i.foy, align 1, !tbaa !20
  %i.fpc = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.z
  %i.fpd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.foj)
  %i.fpe = bitcast <8 x bfloat> %i.fpd to <2 x i64>
  %i.fpf = extractelement <2 x i64> %i.fpe, i64 0
  store i64 %i.fpf, ptr %i.fpc, align 1, !tbaa !20
  %i.fpg = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ad
  %i.fph = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.for)
  %i.fpi = bitcast <8 x bfloat> %i.fph to <2 x i64>
  %i.fpj = extractelement <2 x i64> %i.fpi, i64 0
  store i64 %i.fpj, ptr %i.fpg, align 1, !tbaa !20
  %i.fpk = getelementptr inbounds i8, ptr %.1223699090, i64 %i.p
  %i.fpl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fnu)
  %i.fpm = bitcast <8 x bfloat> %i.fpl to <2 x i64>
  %i.fpn = extractelement <2 x i64> %i.fpm, i64 0
  store i64 %i.fpn, ptr %i.fpk, align 1, !tbaa !20
  %i.fpo = getelementptr inbounds i8, ptr %.1223699090, i64 %i.v
  %i.fpp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.foc)
  %i.fpq = bitcast <8 x bfloat> %i.fpp to <2 x i64>
  %i.fpr = extractelement <2 x i64> %i.fpq, i64 0
  store i64 %i.fpr, ptr %i.fpo, align 1, !tbaa !20
  %i.fps = getelementptr inbounds i8, ptr %.1223699090, i64 %i.aa
  %i.fpt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fok)
  %i.fpu = bitcast <8 x bfloat> %i.fpt to <2 x i64>
  %i.fpv = extractelement <2 x i64> %i.fpu, i64 0
  store i64 %i.fpv, ptr %i.fps, align 1, !tbaa !20
  %i.fpw = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ae
  %i.fpx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fos)
  %i.fpy = bitcast <8 x bfloat> %i.fpx to <2 x i64>
  %i.fpz = extractelement <2 x i64> %i.fpy, i64 0
  store i64 %i.fpz, ptr %i.fpw, align 1, !tbaa !20
  %i.fqa = getelementptr inbounds [2 x i8], ptr %.1223699090, i64 %i.r
  %i.fqb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fnv)
  %i.fqc = bitcast <8 x bfloat> %i.fqb to <2 x i64>
  %i.fqd = extractelement <2 x i64> %i.fqc, i64 0
  store i64 %i.fqd, ptr %i.fqa, align 1, !tbaa !20
  %i.fqe = getelementptr inbounds i8, ptr %.1223699090, i64 %i.w
  %i.fqf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fod)
  %i.fqg = bitcast <8 x bfloat> %i.fqf to <2 x i64>
  %i.fqh = extractelement <2 x i64> %i.fqg, i64 0
  store i64 %i.fqh, ptr %i.fqe, align 1, !tbaa !20
  %i.fqi = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ab
  %i.fqj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fol)
  %i.fqk = bitcast <8 x bfloat> %i.fqj to <2 x i64>
  %i.fql = extractelement <2 x i64> %i.fqk, i64 0
  store i64 %i.fql, ptr %i.fqi, align 1, !tbaa !20
  %i.fqm = getelementptr inbounds i8, ptr %.1223699090, i64 %i.af
  %i.fqn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fot)
  %i.fqo = bitcast <8 x bfloat> %i.fqn to <2 x i64>
  %i.fqp = extractelement <2 x i64> %i.fqo, i64 0
  store i64 %i.fqp, ptr %i.fqm, align 1, !tbaa !20
  %i.fqq = getelementptr inbounds i8, ptr %.1223699090, i64 %i.s
  %i.fqr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fnw)
  %i.fqs = bitcast <8 x bfloat> %i.fqr to <2 x i64>
  %i.fqt = extractelement <2 x i64> %i.fqs, i64 0
  store i64 %i.fqt, ptr %i.fqq, align 1, !tbaa !20
  %i.fqu = getelementptr inbounds i8, ptr %.1223699090, i64 %i.x
  %i.fqv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.foe)
  %i.fqw = bitcast <8 x bfloat> %i.fqv to <2 x i64>
  %i.fqx = extractelement <2 x i64> %i.fqw, i64 0
  store i64 %i.fqx, ptr %i.fqu, align 1, !tbaa !20
  %i.fqy = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ac
  %i.fqz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fom)
  %i.fra = bitcast <8 x bfloat> %i.fqz to <2 x i64>
  %i.frb = extractelement <2 x i64> %i.fra, i64 0
  store i64 %i.frb, ptr %i.fqy, align 1, !tbaa !20
  %i.frc = getelementptr inbounds i8, ptr %.1223699090, i64 %i.ag
  %i.frd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.fou)
  %i.fre = bitcast <8 x bfloat> %i.frd to <2 x i64>
  %i.frf = extractelement <2 x i64> %i.fre, i64 0
  store i64 %i.frf, ptr %i.frc, align 1, !tbaa !20
  %i.frg = getelementptr inbounds nuw i8, ptr %.1223699090, i64 8
  br label %.thread7435

bb.af:                                            ; preds = %._crit_edge9082
  store <16 x float> %.25107.lcssa, ptr %.323389091, align 64, !tbaa !20
  %i.frh = getelementptr inbounds nuw i8, ptr %.323389091, i64 64
  store <16 x float> %.25112.lcssa, ptr %i.frh, align 64, !tbaa !20
  %i.fri = getelementptr inbounds nuw i8, ptr %.323389091, i64 128
  store <16 x float> %.25117.lcssa, ptr %i.fri, align 64, !tbaa !20
  %i.frj = getelementptr inbounds nuw i8, ptr %.323389091, i64 192
  store <16 x float> %.15121.lcssa, ptr %i.frj, align 64, !tbaa !20
  br label %.thread7435

.thread7435:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745.split, %bb.ac, %.thread7429, %bb.ad, %bb.ae, %bb.af
  %.172374 = phi ptr [ %.1223699090, %bb.af ], [ %i.frg, %bb.ae ], [ %.1223699090, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745.split ], [ %i.fmy, %bb.ad ], [ %i.flw, %.thread7429 ], [ %i.fmi, %bb.ac ], [ %.1223699090, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2745 ] ; 2 uses
  %i.frk = getelementptr inbounds nuw i8, ptr %.323389091, i64 256 ; 2 uses
  %i.frl = add nuw nsw i32 %.223989088, 4         ; 3 uses
  %i.frm = or disjoint i32 %i.frl, 3
  %i.frn = icmp slt i32 %i.frm, %5
  br i1 %i.frn, label %bb.w, label %.preheader8916, !llvm.loop !498

bb.ag:                                            ; preds = %.lr.ph9119, %.thread7447
  %.423399118 = phi ptr [ %.32338.lcssa, %.lr.ph9119 ], [ %i.gci, %.thread7447 ] ; 3 uses
  %.1823759117 = phi ptr [ %.122369.lcssa, %.lr.ph9119 ], [ %.222379, %.thread7447 ] ; 30 uses
  %.923899116 = phi ptr [ %.62386.lcssa, %.lr.ph9119 ], [ %.112391.lcssa, %.thread7447 ] ; 4 uses
  %.323999115 = phi i32 [ %.22398.lcssa, %.lr.ph9119 ], [ %i.gcj, %.thread7447 ]
  br i1 %11, label %13, label %bb.ah

13:                                               ; preds = %bb.ag
  br i1 %.not2655, label %bb.ai, label %14

14:                                               ; preds = %13
  %15 = load <16 x float>, ptr %i.cs, align 1, !tbaa !20
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fro = load <16 x float>, ptr %.423399118, align 64, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %13, %14, %bb.ah
  %.05139 = phi nsz <16 x float> [ %i.fro, %bb.ah ], [ %15, %14 ], [ zeroinitializer, %13 ] ; 3 uses
  br i1 %i.l, label %.lr.ph9102.preheader, label %.preheader8912

.lr.ph9102.preheader:                             ; preds = %bb.ai
  br i1 %i.ay, label %.lr.ph9102.epil.preheader, label %.lr.ph9102

.preheader8912.loopexit.unr-lcssa:                ; preds = %.lr.ph9102
  br i1 %lcmp.mod11096.not, label %.preheader8912.loopexit, label %.lr.ph9102.epil.preheader

.lr.ph9102.epil.preheader:                        ; preds = %.preheader8912.loopexit.unr-lcssa, %.lr.ph9102.preheader
  %.1023909100.epil.init = phi ptr [ %.923899116, %.lr.ph9102.preheader ], [ %i.fts, %.preheader8912.loopexit.unr-lcssa ]
  %.024449099.epil.init = phi ptr [ %.09125, %.lr.ph9102.preheader ], [ %i.ftr, %.preheader8912.loopexit.unr-lcssa ]
  %.151409097.epil.init = phi <16 x float> [ %.05139, %.lr.ph9102.preheader ], [ %i.ftq, %.preheader8912.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11099)
  br label %.lr.ph9102.epil

.lr.ph9102.epil:                                  ; preds = %.lr.ph9102.epil, %.lr.ph9102.epil.preheader
  %.1023909100.epil = phi ptr [ %i.frw, %.lr.ph9102.epil ], [ %.1023909100.epil.init, %.lr.ph9102.epil.preheader ] ; 2 uses
  %.024449099.epil = phi ptr [ %i.frv, %.lr.ph9102.epil ], [ %.024449099.epil.init, %.lr.ph9102.epil.preheader ] ; 2 uses
  %.151409097.epil = phi <16 x float> [ %i.fru, %.lr.ph9102.epil ], [ %.151409097.epil.init, %.lr.ph9102.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph9102.epil ], [ 0, %.lr.ph9102.epil.preheader ]
  %i.frp = load <32 x bfloat>, ptr %.024449099.epil, align 1, !tbaa !20
  %i.frq = load i32, ptr %.1023909100.epil, align 4, !tbaa !113
  %i.frr = insertelement <16 x i32> poison, i32 %i.frq, i64 0
  %i.frs = shufflevector <16 x i32> %i.frr, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.frt = bitcast <16 x i32> %i.frs to <32 x bfloat>
  %i.fru = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151409097.epil, <32 x bfloat> nofpclass(nan inf) %i.frp, <32 x bfloat> nofpclass(nan inf) %i.frt) ; 2 uses
  %i.frv = getelementptr inbounds nuw i8, ptr %.024449099.epil, i64 64 ; 2 uses
  %i.frw = getelementptr inbounds nuw i8, ptr %.1023909100.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter11095
  br i1 %epil.iter.cmp.not, label %.preheader8912.loopexit, label %.lr.ph9102.epil, !llvm.loop !499

.preheader8912.loopexit:                          ; preds = %.lr.ph9102.epil, %.preheader8912.loopexit.unr-lcssa
  %.lcssa11082 = phi <16 x float> [ %i.ftq, %.preheader8912.loopexit.unr-lcssa ], [ %i.fru, %.lr.ph9102.epil ]
  %.lcssa11081 = phi ptr [ %i.ftr, %.preheader8912.loopexit.unr-lcssa ], [ %i.frv, %.lr.ph9102.epil ]
  %i.frx = getelementptr i8, ptr %.923899116, i64 %i.ar
  %scevgep9988 = getelementptr i8, ptr %i.frx, i64 4
  br label %.preheader8912

.preheader8912:                                   ; preds = %.preheader8912.loopexit, %bb.ai
  %.15140.lcssa = phi <16 x float> [ %.05139, %bb.ai ], [ %.lcssa11082, %.preheader8912.loopexit ] ; 3 uses
  %.02446.lcssa = phi i32 [ 0, %bb.ai ], [ %i.al, %.preheader8912.loopexit ] ; 5 uses
  %.02444.lcssa = phi ptr [ %.09125, %bb.ai ], [ %.lcssa11081, %.preheader8912.loopexit ] ; 3 uses
  %.102390.lcssa = phi ptr [ %.923899116, %bb.ai ], [ %scevgep9988, %.preheader8912.loopexit ] ; 4 uses
  %i.fry = icmp slt i32 %.02446.lcssa, %7
  br i1 %i.fry, label %.lr.ph9111.preheader, label %._crit_edge9112

.lr.ph9111.preheader:                             ; preds = %.preheader8912
  %i.frz = sub i32 %7, %.02446.lcssa
  %.neg11240 = add i32 %.02446.lcssa, 1
  %xtraiter11102 = and i32 %i.frz, 1
  %lcmp.mod11103.not = icmp eq i32 %xtraiter11102, 0
  br i1 %lcmp.mod11103.not, label %.lr.ph9111.prol.loopexit, label %.lr.ph9111.prol

.lr.ph9111.prol:                                  ; preds = %.lr.ph9111.preheader
  %i.fsa = load <16 x bfloat>, ptr %.02444.lcssa, align 1, !tbaa !20
  %i.fsb = fpext fast <16 x bfloat> %i.fsa to <16 x float>
  %i.fsc = load i16, ptr %.102390.lcssa, align 2, !tbaa !76
  %i.fsd = zext i16 %i.fsc to i32
  %i.fse = shl nuw i32 %i.fsd, 16
  %i.fsf = insertelement <16 x i32> poison, i32 %i.fse, i64 0
  %i.fsg = bitcast <16 x i32> %i.fsf to <16 x float>
  %i.fsh = shufflevector <16 x float> %i.fsg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fsi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fsb, <16 x float> nofpclass(nan inf) %i.fsh, <16 x float> nofpclass(nan inf) %.15140.lcssa) ; 2 uses
  %i.fsj = getelementptr inbounds nuw i8, ptr %.02444.lcssa, i64 32
  %i.fsk = getelementptr inbounds nuw i8, ptr %.102390.lcssa, i64 2 ; 2 uses
  %i.fsl = add nuw nsw i32 %.02446.lcssa, 1
  br label %.lr.ph9111.prol.loopexit

.lr.ph9111.prol.loopexit:                         ; preds = %.lr.ph9111.prol, %.lr.ph9111.preheader
  %.lcssa11084.unr = phi <16 x float> [ poison, %.lr.ph9111.preheader ], [ %i.fsi, %.lr.ph9111.prol ]
  %.lcssa11083.unr = phi ptr [ poison, %.lr.ph9111.preheader ], [ %i.fsk, %.lr.ph9111.prol ]
  %.1123919110.unr = phi ptr [ %.102390.lcssa, %.lr.ph9111.preheader ], [ %i.fsk, %.lr.ph9111.prol ]
  %.124459109.unr = phi ptr [ %.02444.lcssa, %.lr.ph9111.preheader ], [ %i.fsj, %.lr.ph9111.prol ]
  %.124479108.unr = phi i32 [ %.02446.lcssa, %.lr.ph9111.preheader ], [ %i.fsl, %.lr.ph9111.prol ]
  %.251419107.unr = phi <16 x float> [ %.15140.lcssa, %.lr.ph9111.preheader ], [ %i.fsi, %.lr.ph9111.prol ]
  %i.fsm = icmp eq i32 %7, %.neg11240
  br i1 %i.fsm, label %._crit_edge9112, label %.lr.ph9111

.lr.ph9102:                                       ; preds = %.lr.ph9102.preheader, %.lr.ph9102
  %.1023909100 = phi ptr [ %i.fts, %.lr.ph9102 ], [ %.923899116, %.lr.ph9102.preheader ] ; 5 uses
  %.024449099 = phi ptr [ %i.ftr, %.lr.ph9102 ], [ %.09125, %.lr.ph9102.preheader ] ; 5 uses
  %.151409097 = phi <16 x float> [ %i.ftq, %.lr.ph9102 ], [ %.05139, %.lr.ph9102.preheader ]
  %niter11101 = phi i32 [ %niter11101.next.3, %.lr.ph9102 ], [ 0, %.lr.ph9102.preheader ]
  %i.fsn = load <32 x bfloat>, ptr %.024449099, align 1, !tbaa !20
  %i.fso = load i32, ptr %.1023909100, align 4, !tbaa !113
  %i.fsp = insertelement <16 x i32> poison, i32 %i.fso, i64 0
  %i.fsq = shufflevector <16 x i32> %i.fsp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fsr = bitcast <16 x i32> %i.fsq to <32 x bfloat>
  %i.fss = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151409097, <32 x bfloat> nofpclass(nan inf) %i.fsn, <32 x bfloat> nofpclass(nan inf) %i.fsr)
  %i.fst = getelementptr inbounds nuw i8, ptr %.024449099, i64 64
  %i.fsu = getelementptr inbounds nuw i8, ptr %.1023909100, i64 4
  %i.fsv = load <32 x bfloat>, ptr %i.fst, align 1, !tbaa !20
  %i.fsw = load i32, ptr %i.fsu, align 4, !tbaa !113
  %i.fsx = insertelement <16 x i32> poison, i32 %i.fsw, i64 0
  %i.fsy = shufflevector <16 x i32> %i.fsx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fsz = bitcast <16 x i32> %i.fsy to <32 x bfloat>
  %i.fta = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.fss, <32 x bfloat> nofpclass(nan inf) %i.fsv, <32 x bfloat> nofpclass(nan inf) %i.fsz)
  %i.ftb = getelementptr inbounds nuw i8, ptr %.024449099, i64 128
  %i.ftc = getelementptr inbounds nuw i8, ptr %.1023909100, i64 8
  %i.ftd = load <32 x bfloat>, ptr %i.ftb, align 1, !tbaa !20
  %i.fte = load i32, ptr %i.ftc, align 4, !tbaa !113
  %i.ftf = insertelement <16 x i32> poison, i32 %i.fte, i64 0
  %i.ftg = shufflevector <16 x i32> %i.ftf, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.fth = bitcast <16 x i32> %i.ftg to <32 x bfloat>
  %i.fti = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.fta, <32 x bfloat> nofpclass(nan inf) %i.ftd, <32 x bfloat> nofpclass(nan inf) %i.fth)
  %i.ftj = getelementptr inbounds nuw i8, ptr %.024449099, i64 192
  %i.ftk = getelementptr inbounds nuw i8, ptr %.1023909100, i64 12
  %i.ftl = load <32 x bfloat>, ptr %i.ftj, align 1, !tbaa !20
  %i.ftm = load i32, ptr %i.ftk, align 4, !tbaa !113
  %i.ftn = insertelement <16 x i32> poison, i32 %i.ftm, i64 0
  %i.fto = shufflevector <16 x i32> %i.ftn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ftp = bitcast <16 x i32> %i.fto to <32 x bfloat>
  %i.ftq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.fti, <32 x bfloat> nofpclass(nan inf) %i.ftl, <32 x bfloat> nofpclass(nan inf) %i.ftp) ; 3 uses
  %i.ftr = getelementptr inbounds nuw i8, ptr %.024449099, i64 256 ; 3 uses
  %i.fts = getelementptr inbounds nuw i8, ptr %.1023909100, i64 16 ; 2 uses
  %niter11101.next.3 = add i32 %niter11101, 4     ; 2 uses
  %niter11101.ncmp.3.not = icmp eq i32 %niter11101.next.3, %unroll_iter11100
  br i1 %niter11101.ncmp.3.not, label %.preheader8912.loopexit.unr-lcssa, label %.lr.ph9102, !llvm.loop !500

.lr.ph9111:                                       ; preds = %.lr.ph9111.prol.loopexit, %.lr.ph9111
  %.1123919110 = phi ptr [ %i.fuo, %.lr.ph9111 ], [ %.1123919110.unr, %.lr.ph9111.prol.loopexit ] ; 3 uses
  %.124459109 = phi ptr [ %i.fun, %.lr.ph9111 ], [ %.124459109.unr, %.lr.ph9111.prol.loopexit ] ; 3 uses
  %.124479108 = phi i32 [ %i.fup, %.lr.ph9111 ], [ %.124479108.unr, %.lr.ph9111.prol.loopexit ]
  %.251419107 = phi <16 x float> [ %i.fum, %.lr.ph9111 ], [ %.251419107.unr, %.lr.ph9111.prol.loopexit ]
  %i.ftt = load <16 x bfloat>, ptr %.124459109, align 1, !tbaa !20
  %i.ftu = fpext fast <16 x bfloat> %i.ftt to <16 x float>
  %i.ftv = load i16, ptr %.1123919110, align 2, !tbaa !76
  %i.ftw = zext i16 %i.ftv to i32
  %i.ftx = shl nuw i32 %i.ftw, 16
  %i.fty = insertelement <16 x i32> poison, i32 %i.ftx, i64 0
  %i.ftz = bitcast <16 x i32> %i.fty to <16 x float>
  %i.fua = shufflevector <16 x float> %i.ftz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fub = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ftu, <16 x float> nofpclass(nan inf) %i.fua, <16 x float> nofpclass(nan inf) %.251419107)
  %i.fuc = getelementptr inbounds nuw i8, ptr %.124459109, i64 32
  %i.fud = getelementptr inbounds nuw i8, ptr %.1123919110, i64 2
  %i.fue = load <16 x bfloat>, ptr %i.fuc, align 1, !tbaa !20
  %i.fuf = fpext fast <16 x bfloat> %i.fue to <16 x float>
  %i.fug = load i16, ptr %i.fud, align 2, !tbaa !76
  %i.fuh = zext i16 %i.fug to i32
  %i.fui = shl nuw i32 %i.fuh, 16
  %i.fuj = insertelement <16 x i32> poison, i32 %i.fui, i64 0
  %i.fuk = bitcast <16 x i32> %i.fuj to <16 x float>
  %i.ful = shufflevector <16 x float> %i.fuk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fum = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fuf, <16 x float> nofpclass(nan inf) %i.ful, <16 x float> nofpclass(nan inf) %i.fub) ; 2 uses
  %i.fun = getelementptr inbounds nuw i8, ptr %.124459109, i64 64
  %i.fuo = getelementptr inbounds nuw i8, ptr %.1123919110, i64 4 ; 2 uses
  %i.fup = add nuw nsw i32 %.124479108, 2         ; 2 uses
  %exitcond9989.not.1 = icmp eq i32 %i.fup, %7
  br i1 %exitcond9989.not.1, label %._crit_edge9112, label %.lr.ph9111, !llvm.loop !501

._crit_edge9112:                                  ; preds = %.lr.ph9111.prol.loopexit, %.lr.ph9111, %.preheader8912
  %.25141.lcssa = phi <16 x float> [ %.15140.lcssa, %.preheader8912 ], [ %.lcssa11084.unr, %.lr.ph9111.prol.loopexit ], [ %i.fum, %.lr.ph9111 ] ; 11 uses
  %.112391.lcssa = phi ptr [ %.102390.lcssa, %.preheader8912 ], [ %.lcssa11083.unr, %.lr.ph9111.prol.loopexit ], [ %i.fuo, %.lr.ph9111 ]
  br i1 %8, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %._crit_edge9112
  switch i32 %9, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743 [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
    i32 5, label %bb.ao
    i32 6, label %bb.ap
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.fuq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.25141.lcssa, <16 x float> zeroinitializer, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743

bb.al:                                            ; preds = %bb.aj
  %i.fur = load ptr, ptr %10, align 8, !tbaa !9
  %i.fus = load float, ptr %i.fur, align 4, !tbaa !74
  %i.fut = fcmp fast olt <16 x float> %.25141.lcssa, zeroinitializer
  %i.fuu = insertelement <16 x float> poison, float %i.fus, i64 0
  %i.fuv = shufflevector <16 x float> %i.fuu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fuw = select fast <16 x i1> %i.fut, <16 x float> %i.fuv, <16 x float> splat (float 1.000000e+00)
  %i.fux = fmul fast <16 x float> %i.fuw, %.25141.lcssa
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743

bb.am:                                            ; preds = %bb.aj
  %i.fuy = load ptr, ptr %10, align 8, !tbaa !9   ; 2 uses
  %i.fuz = load float, ptr %i.fuy, align 4, !tbaa !74
  %i.fva = insertelement <16 x float> poison, float %i.fuz, i64 0
  %i.fvb = shufflevector <16 x float> %i.fva, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fvc = getelementptr inbounds nuw i8, ptr %i.fuy, i64 4
  %i.fvd = load float, ptr %i.fvc, align 4, !tbaa !74
  %i.fve = insertelement <16 x float> poison, float %i.fvd, i64 0
  %i.fvf = shufflevector <16 x float> %i.fve, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fvg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.25141.lcssa, <16 x float> nofpclass(nan inf) %i.fvb, i32 4)
  %i.fvh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fvg, <16 x float> nofpclass(nan inf) %i.fvf, i32 4)
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743

bb.an:                                            ; preds = %bb.aj
  %i.fvi = fneg fast <16 x float> %.25141.lcssa
  %i.fvj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fvi, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.fvk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fvj, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.fvl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fvk, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.fvm = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.fvl, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.fvn = fcmp fast ogt <16 x float> %i.fvm, %i.fvl
end_hunk_3
begin_hunk_4_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a

.thread7441:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split
  %i.fzz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i2742)
  store <16 x bfloat> %i.fzz, ptr %.1823759117, align 1, !tbaa !20
  %i.gaa = getelementptr inbounds nuw i8, ptr %.1823759117, i64 32
  br label %.thread7447

bb.aq:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split
  %i.gab = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gac = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gab)
  store <8 x bfloat> %i.gac, ptr %.1823759117, align 1, !tbaa !20
  %i.gad = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.z
  %i.gae = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gaf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gae)
  store <8 x bfloat> %i.gaf, ptr %i.gad, align 1, !tbaa !20
  %i.gag = getelementptr inbounds nuw i8, ptr %.1823759117, i64 16
  br label %.thread7447

bb.ar:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split
  %i.gah = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gai = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.gah)
  %i.gaj = bitcast <8 x bfloat> %i.gai to <2 x i64>
  %i.gak = extractelement <2 x i64> %i.gaj, i64 0
  store i64 %i.gak, ptr %.1823759117, align 1, !tbaa !20
  %i.gal = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.u
  %i.gam = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gan = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.gam)
  %i.gao = bitcast <8 x bfloat> %i.gan to <2 x i64>
  %i.gap = extractelement <2 x i64> %i.gao, i64 0
  store i64 %i.gap, ptr %i.gal, align 1, !tbaa !20
  %i.gaq = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.z
  %i.gar = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.gas = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.gar)
  %i.gat = bitcast <8 x bfloat> %i.gas to <2 x i64>
  %i.gau = extractelement <2 x i64> %i.gat, i64 0
  store i64 %i.gau, ptr %i.gaq, align 1, !tbaa !20
  %i.gav = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ad
  %i.gaw = shufflevector <16 x float> %.0.i2742, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.gax = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.gaw)
  %i.gay = bitcast <8 x bfloat> %i.gax to <2 x i64>
  %i.gaz = extractelement <2 x i64> %i.gay, i64 0
  store i64 %i.gaz, ptr %i.gav, align 1, !tbaa !20
  %i.gba = getelementptr inbounds nuw i8, ptr %.1823759117, i64 8
  br label %.thread7447

bb.as:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split
  %i.gbb = bitcast <16 x float> %.0.i2742 to <32 x i16> ; 16 uses
  %i.gbc = extractelement <32 x i16> %i.gbb, i64 1
  store i16 %i.gbc, ptr %.1823759117, align 2, !tbaa !76
  %i.gbd = extractelement <32 x i16> %i.gbb, i64 3
  %i.gbe = getelementptr inbounds i8, ptr %.1823759117, i64 %i.p
  store i16 %i.gbd, ptr %i.gbe, align 2, !tbaa !76
  %i.gbf = extractelement <32 x i16> %i.gbb, i64 5
  %i.gbg = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.r
  store i16 %i.gbf, ptr %i.gbg, align 2, !tbaa !76
  %i.gbh = extractelement <32 x i16> %i.gbb, i64 7
  %i.gbi = getelementptr inbounds i8, ptr %.1823759117, i64 %i.s
  store i16 %i.gbh, ptr %i.gbi, align 2, !tbaa !76
  %i.gbj = extractelement <32 x i16> %i.gbb, i64 9
  %i.gbk = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.u
  store i16 %i.gbj, ptr %i.gbk, align 2, !tbaa !76
  %i.gbl = extractelement <32 x i16> %i.gbb, i64 11
  %i.gbm = getelementptr inbounds i8, ptr %.1823759117, i64 %i.v
  store i16 %i.gbl, ptr %i.gbm, align 2, !tbaa !76
  %i.gbn = extractelement <32 x i16> %i.gbb, i64 13
  %i.gbo = getelementptr inbounds i8, ptr %.1823759117, i64 %i.w
  store i16 %i.gbn, ptr %i.gbo, align 2, !tbaa !76
  %i.gbp = extractelement <32 x i16> %i.gbb, i64 15
  %i.gbq = getelementptr inbounds i8, ptr %.1823759117, i64 %i.x
  store i16 %i.gbp, ptr %i.gbq, align 2, !tbaa !76
  %i.gbr = extractelement <32 x i16> %i.gbb, i64 17
  %i.gbs = getelementptr inbounds [2 x i8], ptr %.1823759117, i64 %i.z
  store i16 %i.gbr, ptr %i.gbs, align 2, !tbaa !76
  %i.gbt = extractelement <32 x i16> %i.gbb, i64 19
  %i.gbu = getelementptr inbounds i8, ptr %.1823759117, i64 %i.aa
  store i16 %i.gbt, ptr %i.gbu, align 2, !tbaa !76
  %i.gbv = extractelement <32 x i16> %i.gbb, i64 21
  %i.gbw = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ab
  store i16 %i.gbv, ptr %i.gbw, align 2, !tbaa !76
  %i.gbx = extractelement <32 x i16> %i.gbb, i64 23
  %i.gby = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ac
  store i16 %i.gbx, ptr %i.gby, align 2, !tbaa !76
  %i.gbz = extractelement <32 x i16> %i.gbb, i64 25
  %i.gca = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ad
  store i16 %i.gbz, ptr %i.gca, align 2, !tbaa !76
  %i.gcb = extractelement <32 x i16> %i.gbb, i64 27
  %i.gcc = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ae
  store i16 %i.gcb, ptr %i.gcc, align 2, !tbaa !76
  %i.gcd = extractelement <32 x i16> %i.gbb, i64 29
  %i.gce = getelementptr inbounds i8, ptr %.1823759117, i64 %i.af
  store i16 %i.gcd, ptr %i.gce, align 2, !tbaa !76
  %i.gcf = extractelement <32 x i16> %i.gbb, i64 31
  %i.gcg = getelementptr inbounds i8, ptr %.1823759117, i64 %i.ag
  store i16 %i.gcf, ptr %i.gcg, align 2, !tbaa !76
  %i.gch = getelementptr inbounds nuw i8, ptr %.1823759117, i64 2
  br label %.thread7447

bb.at:                                            ; preds = %._crit_edge9112
  store <16 x float> %.25141.lcssa, ptr %.423399118, align 64, !tbaa !20
  br label %.thread7447

.thread7447:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split, %bb.aq, %.thread7441, %bb.ar, %bb.as, %bb.at
  %.222379 = phi ptr [ %i.gch, %bb.as ], [ %.1823759117, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743.split ], [ %.1823759117, %bb.at ], [ %i.gba, %bb.ar ], [ %i.gaa, %.thread7441 ], [ %i.gag, %bb.aq ], [ %.1823759117, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2743 ]
  %i.gci = getelementptr inbounds nuw i8, ptr %.423399118, i64 64 ; 2 uses
  %i.gcj = add nuw nsw i32 %.323999115, 1         ; 2 uses
  %exitcond9990.not = icmp eq i32 %i.gcj, %5
  br i1 %exitcond9990.not, label %._crit_edge9120, label %bb.ag, !llvm.loop !502

._crit_edge9120:                                  ; preds = %.thread7447, %.preheader8916
  %.42339.lcssa = phi ptr [ %.32338.lcssa, %.preheader8916 ], [ %i.gci, %.thread7447 ] ; 2 uses
  %i.gck = getelementptr inbounds [2 x i8], ptr %.09125, i64 %i.ai ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.gcl = or disjoint i64 %indvars.iv.next, 15
  %i.gcm = icmp samesign ult i64 %i.gcl, %i.as
  br i1 %i.gcm, label %bb.b, label %.preheader8911.loopexit, !llvm.loop !503

.preheader8903.loopexit:                          ; preds = %._crit_edge9305
  %i.gcn = trunc nuw nsw i64 %indvars.iv.next10004 to i32
  br label %.preheader8903

.preheader8903:                                   ; preds = %.preheader8903.loopexit, %.preheader8911
  %.12346.lcssa = phi i32 [ %.02345.lcssa, %.preheader8911 ], [ %i.gcn, %.preheader8903.loopexit ] ; 3 uses
  %.52340.lcssa = phi ptr [ %.02335.lcssa, %.preheader8911 ], [ %.92344.lcssa, %.preheader8903.loopexit ] ; 2 uses
  %.22332.lcssa = phi ptr [ %.02330.lcssa, %.preheader8911 ], [ %.32333, %.preheader8903.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader8911 ], [ %i.ldu, %.preheader8903.loopexit ] ; 3 uses
  %i.gco = or disjoint i32 %.12346.lcssa, 3
  %i.gcp = icmp slt i32 %i.gco, %3
  br i1 %i.gcp, label %.lr.ph9463, label %.preheader8895

.lr.ph9463:                                       ; preds = %.preheader8903
  %i.gcq = mul nsw i32 %i.b, %4
  %i.gcr = sext i32 %i.gcq to i64
  %i.gcs = sext i32 %2 to i64                     ; 2 uses
  %i.gct = icmp sgt i32 %5, 15
  %i.gcu = icmp eq i32 %6, 0                      ; 4 uses
  %i.gcv = icmp sgt i32 %7, 1                     ; 4 uses
  %sext2624 = shl i64 %i.d, 32
  %i.gcw = ashr exact i64 %sext2624, 31           ; 4 uses
  %i.gcx = shl nsw i32 %i.e, 1
  %i.gcy = sext i32 %i.gcx to i64                 ; 4 uses
  %sext2625 = mul i64 %i.d, 12884901888
  %i.gcz = ashr exact i64 %sext2625, 31           ; 4 uses
  %i.gda = shl i32 %7, 2
  %i.gdb = sext i32 %i.gda to i64                 ; 2 uses
  %i.gdc = add i32 %7, -2                         ; 2 uses
  %i.gdd = and i32 %i.gdc, -2
  %i.gde = add i32 %i.gdd, 2                      ; 5 uses
  %i.gdf = and i32 %5, -16
  %i.gdg = lshr i32 %i.gdc, 1
  %i.gdh = zext nneg i32 %i.gdg to i64            ; 3 uses
  %i.gdi = shl nuw nsw i64 %i.gdh, 5
  %i.gdj = shl nuw nsw i64 %i.gdh, 4
  %i.gdk = add nuw nsw i64 %i.gdj, 16             ; 2 uses
  %scevgep10011 = getelementptr i8, ptr %.1.lcssa, i64 %i.gdk
  %i.gdl = shl nsw i64 %i.gdb, 1
  %i.gdm = shl nuw nsw i64 %i.gdh, 2
  %i.gdn = zext nneg i32 %.12346.lcssa to i64
  %i.gdo = sext i32 %3 to i64
  %sext10082 = shl i64 %i.d, 32
  %i.gdp = ashr exact i64 %sext10082, 32
  %invariant.op10310 = add nsw i64 %i.gdo, -3
  %i.gdq = add i32 %7, -2                         ; 5 uses
  %i.gdr = lshr i32 %i.gdq, 1                     ; 4 uses
  %i.gds = add nuw i32 %i.gdr, 1                  ; 8 uses
  %i.gdt = icmp eq i32 %i.gdr, 0
  %unroll_iter11135 = and i32 %i.gds, -2
  %i.gdu = and i32 %i.gdq, 2
  %lcmp.mod11127.not.not = icmp eq i32 %i.gdu, 0
  %lcmp.mod11134 = trunc i32 %i.gds to i1
  %i.gdv = icmp eq i32 %i.gdr, 0
  %unroll_iter11148 = and i32 %i.gds, -2
  %i.gdw = and i32 %i.gdq, 2
  %lcmp.mod11141.not.not = icmp eq i32 %i.gdw, 0
  %lcmp.mod11147 = trunc i32 %i.gds to i1
  %i.gdx = icmp eq i32 %i.gdr, 0
  %unroll_iter11161 = and i32 %i.gds, -2
  %i.gdy = and i32 %i.gdq, 2
  %lcmp.mod11154.not.not = icmp eq i32 %i.gdy, 0
  %lcmp.mod11160 = trunc i32 %i.gds to i1
  %xtraiter11165 = and i32 %i.gds, 3              ; 3 uses
  %i.gdz = icmp ult i32 %i.gdq, 6
  %unroll_iter11170 = and i32 %i.gds, -4
  %lcmp.mod11167.not = icmp eq i32 %xtraiter11165, 0
  %lcmp.mod11169 = icmp ne i32 %xtraiter11165, 0
  br label %bb.cj

bb.au:                                            ; preds = %.lr.ph9311, %._crit_edge9305
  %indvars.iv10003 = phi i64 [ %i.cd, %.lr.ph9311 ], [ %indvars.iv.next10004, %._crit_edge9305 ] ; 3 uses
  %indvars.iv9996 = phi ptr [ %scevgep9995, %.lr.ph9311 ], [ %scevgep9997, %._crit_edge9305 ] ; 3 uses
  %.19310 = phi ptr [ %.0.lcssa, %.lr.ph9311 ], [ %i.ldu, %._crit_edge9305 ] ; 11 uses
  %.223329309 = phi ptr [ %.02330.lcssa, %.lr.ph9311 ], [ %.32333, %._crit_edge9305 ]
  %.523409308 = phi ptr [ %.02335.lcssa, %.lr.ph9311 ], [ %.92344.lcssa, %._crit_edge9305 ] ; 2 uses
  %i.gea = load ptr, ptr %1, align 8, !tbaa !9
  %i.geb = add nsw i64 %indvars.iv10003, %i.be
  %i.gec = mul nsw i64 %i.geb, %i.cf
  %i.ged = getelementptr inbounds [2 x i8], ptr %i.gea, i64 %i.gec
  %i.gee = getelementptr inbounds [2 x i8], ptr %i.ged, i64 %i.bd ; 2 uses
  %.not2626 = icmp eq ptr %.223329309, null
  %i.gef = load ptr, ptr %0, align 8
  %i.geg = getelementptr inbounds [4 x i8], ptr %i.gef, i64 %i.be
  %i.geh = getelementptr inbounds nuw [4 x i8], ptr %i.geg, i64 %indvars.iv10003 ; 5 uses
  %.32333 = select i1 %.not2626, ptr null, ptr %i.geh ; 6 uses
  br i1 %i.bf, label %.lr.ph9183, label %.preheader8910

.lr.ph9183:                                       ; preds = %bb.au
  %.not2648 = icmp eq ptr %.32333, null
  br label %bb.av

.preheader8910:                                   ; preds = %.thread7851, %bb.au
  %.02479.lcssa = phi i32 [ 0, %bb.au ], [ %i.bv, %.thread7851 ] ; 3 uses
  %.02467.lcssa = phi ptr [ %.0.val1, %bb.au ], [ %.22469.lcssa, %.thread7851 ] ; 2 uses
  %.02448.lcssa = phi ptr [ %i.gee, %bb.au ], [ %.42452, %.thread7851 ] ; 2 uses
  %.62341.lcssa = phi ptr [ %.523409308, %bb.au ], [ %i.hyn, %.thread7851 ] ; 2 uses
  %i.gei = or disjoint i32 %.02479.lcssa, 7
  %i.gej = icmp slt i32 %i.gei, %5
  br i1 %i.gej, label %.lr.ph9238, label %.preheader8909

.lr.ph9238:                                       ; preds = %.preheader8910
  %.not2641 = icmp eq ptr %.32333, null
  br label %bb.be

bb.av:                                            ; preds = %.lr.ph9183, %.thread7851
  %.623419181 = phi ptr [ %.523409308, %.lr.ph9183 ], [ %i.hyn, %.thread7851 ] ; 17 uses
  %.024489180 = phi ptr [ %i.gee, %.lr.ph9183 ], [ %.42452, %.thread7851 ] ; 34 uses
  %.024679179 = phi ptr [ %.0.val1, %.lr.ph9183 ], [ %.22469.lcssa, %.thread7851 ] ; 2 uses
  %.024799178 = phi i32 [ 0, %.lr.ph9183 ], [ %i.hyo, %.thread7851 ]
  br i1 %12, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gek = load <16 x float>, ptr %.623419181, align 64, !tbaa !20
  %i.gel = getelementptr inbounds nuw i8, ptr %.623419181, i64 64
  %i.gem = load <16 x float>, ptr %i.gel, align 64, !tbaa !20
  %i.gen = getelementptr inbounds nuw i8, ptr %.623419181, i64 128
  %i.geo = load <16 x float>, ptr %i.gen, align 64, !tbaa !20
  %i.gep = getelementptr inbounds nuw i8, ptr %.623419181, i64 192
  %i.geq = load <16 x float>, ptr %i.gep, align 64, !tbaa !20
  %i.ger = getelementptr inbounds nuw i8, ptr %.623419181, i64 256
  %i.ges = load <16 x float>, ptr %i.ger, align 64, !tbaa !20
  %i.get = getelementptr inbounds nuw i8, ptr %.623419181, i64 320
  %i.geu = load <16 x float>, ptr %i.get, align 64, !tbaa !20
  %i.gev = getelementptr inbounds nuw i8, ptr %.623419181, i64 384
  %i.gew = load <16 x float>, ptr %i.gev, align 64, !tbaa !20
  %i.gex = getelementptr inbounds nuw i8, ptr %.623419181, i64 448
  %i.gey = load <16 x float>, ptr %i.gex, align 64, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.05172 = phi nsz <16 x float> [ %i.gew, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05167 = phi nsz <16 x float> [ %i.geu, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05162 = phi nsz <16 x float> [ %i.ges, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05157 = phi nsz <16 x float> [ %i.geq, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05152 = phi nsz <16 x float> [ %i.geo, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05147 = phi nsz <16 x float> [ %i.gem, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %.05142 = phi nsz <16 x float> [ %i.gek, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  %storemerge2647 = phi <16 x float> [ %i.gey, %bb.aw ], [ zeroinitializer, %bb.av ] ; 2 uses
  br i1 %i.bg, label %.lr.ph9144, label %.preheader8907

.preheader8907:                                   ; preds = %.lr.ph9144, %bb.ax
  %.05177.lcssa = phi <16 x float> [ %storemerge2647, %bb.ax ], [ %i.gfx, %.lr.ph9144 ] ; 2 uses
  %.15173.lcssa = phi <16 x float> [ %.05172, %bb.ax ], [ %i.gfw, %.lr.ph9144 ] ; 2 uses
  %.15168.lcssa = phi <16 x float> [ %.05167, %bb.ax ], [ %i.gfv, %.lr.ph9144 ] ; 2 uses
  %.15163.lcssa = phi <16 x float> [ %.05162, %bb.ax ], [ %i.gft, %.lr.ph9144 ] ; 2 uses
  %.15158.lcssa = phi <16 x float> [ %.05157, %bb.ax ], [ %i.gfr, %.lr.ph9144 ] ; 2 uses
  %.15153.lcssa = phi <16 x float> [ %.05152, %bb.ax ], [ %i.gfq, %.lr.ph9144 ] ; 2 uses
  %.15148.lcssa = phi <16 x float> [ %.05147, %bb.ax ], [ %i.gfo, %.lr.ph9144 ] ; 2 uses
  %.15143.lcssa = phi <16 x float> [ %.05142, %bb.ax ], [ %i.gfm, %.lr.ph9144 ] ; 2 uses
  %.02495.lcssa = phi i32 [ 0, %bb.ax ], [ %i.bu, %.lr.ph9144 ] ; 2 uses
  %.02493.lcssa = phi ptr [ %.19310, %bb.ax ], [ %i.gfy, %.lr.ph9144 ]
  %.12468.lcssa = phi ptr [ %.024679179, %bb.ax ], [ %i.gfz, %.lr.ph9144 ] ; 2 uses
  %i.gez = icmp slt i32 %.02495.lcssa, %7
  br i1 %i.gez, label %.lr.ph9167, label %._crit_edge9168

.lr.ph9144:                                       ; preds = %bb.ax, %.lr.ph9144
  %.124689142 = phi ptr [ %i.gfz, %.lr.ph9144 ], [ %.024679179, %bb.ax ] ; 2 uses
  %.024939141 = phi ptr [ %i.gfy, %.lr.ph9144 ], [ %.19310, %bb.ax ] ; 2 uses
  %.024959140 = phi i32 [ %i.gga, %.lr.ph9144 ], [ 0, %bb.ax ]
  %.151439139 = phi <16 x float> [ %i.gfm, %.lr.ph9144 ], [ %.05142, %bb.ax ]
  %.151489138 = phi <16 x float> [ %i.gfo, %.lr.ph9144 ], [ %.05147, %bb.ax ]
  %.151539137 = phi <16 x float> [ %i.gfq, %.lr.ph9144 ], [ %.05152, %bb.ax ]
  %.151589136 = phi <16 x float> [ %i.gfr, %.lr.ph9144 ], [ %.05157, %bb.ax ]
  %.151639135 = phi <16 x float> [ %i.gft, %.lr.ph9144 ], [ %.05162, %bb.ax ]
  %.151689134 = phi <16 x float> [ %i.gfv, %.lr.ph9144 ], [ %.05167, %bb.ax ]
  %.151739133 = phi <16 x float> [ %i.gfw, %.lr.ph9144 ], [ %.05172, %bb.ax ]
  %.051779132 = phi <16 x float> [ %i.gfx, %.lr.ph9144 ], [ %storemerge2647, %bb.ax ]
  %i.gfa = load <4 x i64>, ptr %.024939141, align 1, !tbaa !20
  %i.gfb = load <8 x i64>, ptr %.124689142, align 1, !tbaa !20 ; 3 uses
  %i.gfc = shufflevector <4 x i64> %i.gfa, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gfd = bitcast <8 x i64> %i.gfc to <16 x i32>
  %i.gfe = shufflevector <16 x i32> %i.gfd, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.gff = bitcast <8 x i64> %i.gfb to <16 x i32>
  %i.gfg = shufflevector <16 x i32> %i.gff, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.gfh = shufflevector <8 x i64> %i.gfb, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.gfi = bitcast <8 x i64> %i.gfh to <16 x i32>
  %i.gfj = shufflevector <16 x i32> %i.gfi, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.gfk = bitcast <8 x i64> %i.gfc to <32 x bfloat> ; 4 uses
  %i.gfl = bitcast <8 x i64> %i.gfb to <32 x bfloat> ; 2 uses
  %i.gfm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151439139, <32 x bfloat> nofpclass(nan inf) %i.gfk, <32 x bfloat> nofpclass(nan inf) %i.gfl) ; 2 uses
  %i.gfn = bitcast <16 x i32> %i.gfg to <32 x bfloat> ; 2 uses
  %i.gfo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151489138, <32 x bfloat> nofpclass(nan inf) %i.gfk, <32 x bfloat> nofpclass(nan inf) %i.gfn) ; 2 uses
  %i.gfp = bitcast <16 x i32> %i.gfe to <32 x bfloat> ; 4 uses
  %i.gfq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151539137, <32 x bfloat> nofpclass(nan inf) %i.gfp, <32 x bfloat> nofpclass(nan inf) %i.gfl) ; 2 uses
  %i.gfr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151589136, <32 x bfloat> nofpclass(nan inf) %i.gfp, <32 x bfloat> nofpclass(nan inf) %i.gfn) ; 2 uses
  %i.gfs = bitcast <8 x i64> %i.gfh to <32 x bfloat> ; 2 uses
  %i.gft = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151639135, <32 x bfloat> nofpclass(nan inf) %i.gfk, <32 x bfloat> nofpclass(nan inf) %i.gfs) ; 2 uses
  %i.gfu = bitcast <16 x i32> %i.gfj to <32 x bfloat> ; 2 uses
  %i.gfv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151689134, <32 x bfloat> nofpclass(nan inf) %i.gfk, <32 x bfloat> nofpclass(nan inf) %i.gfu) ; 2 uses
  %i.gfw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.151739133, <32 x bfloat> nofpclass(nan inf) %i.gfp, <32 x bfloat> nofpclass(nan inf) %i.gfs) ; 2 uses
  %i.gfx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.051779132, <32 x bfloat> nofpclass(nan inf) %i.gfp, <32 x bfloat> nofpclass(nan inf) %i.gfu) ; 2 uses
  %i.gfy = getelementptr inbounds nuw i8, ptr %.024939141, i64 32 ; 2 uses
  %i.gfz = getelementptr inbounds nuw i8, ptr %.124689142, i64 64 ; 2 uses
  %i.gga = add nuw nsw i32 %.024959140, 2         ; 2 uses
  %i.ggb = or disjoint i32 %i.gga, 1
  %i.ggc = icmp slt i32 %i.ggb, %7
  br i1 %i.ggc, label %.lr.ph9144, label %.preheader8907, !llvm.loop !504

.lr.ph9167:                                       ; preds = %.preheader8907, %.lr.ph9167
  %.224699166 = phi ptr [ %i.ggv, %.lr.ph9167 ], [ %.12468.lcssa, %.preheader8907 ] ; 2 uses
  %.124949165 = phi ptr [ %i.ggu, %.lr.ph9167 ], [ %.02493.lcssa, %.preheader8907 ] ; 2 uses
  %.124969164 = phi i32 [ %i.ggw, %.lr.ph9167 ], [ %.02495.lcssa, %.preheader8907 ]
  %.251449163 = phi <16 x float> [ %i.ggm, %.lr.ph9167 ], [ %.15143.lcssa, %.preheader8907 ]
  %.251499162 = phi <16 x float> [ %i.ggn, %.lr.ph9167 ], [ %.15148.lcssa, %.preheader8907 ]
  %.251549161 = phi <16 x float> [ %i.ggo, %.lr.ph9167 ], [ %.15153.lcssa, %.preheader8907 ]
  %.251599160 = phi <16 x float> [ %i.ggp, %.lr.ph9167 ], [ %.15158.lcssa, %.preheader8907 ]
  %.251649159 = phi <16 x float> [ %i.ggq, %.lr.ph9167 ], [ %.15163.lcssa, %.preheader8907 ]
  %.251699158 = phi <16 x float> [ %i.ggr, %.lr.ph9167 ], [ %.15168.lcssa, %.preheader8907 ]
  %.251749157 = phi <16 x float> [ %i.ggs, %.lr.ph9167 ], [ %.15173.lcssa, %.preheader8907 ]
  %.151789156 = phi <16 x float> [ %i.ggt, %.lr.ph9167 ], [ %.05177.lcssa, %.preheader8907 ]
  %i.ggd = load <8 x bfloat>, ptr %.124949165, align 1, !tbaa !20
  %i.gge = fpext fast <8 x bfloat> %i.ggd to <8 x float> ; 2 uses
  %i.ggf = shufflevector <8 x float> %i.gge, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ggg = load <16 x bfloat>, ptr %.224699166, align 1, !tbaa !20
  %i.ggh = fpext fast <16 x bfloat> %i.ggg to <16 x float> ; 5 uses
  %i.ggi = shufflevector <8 x float> %i.gge, <8 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.ggj = shufflevector <16 x float> %i.ggh, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.ggk = shufflevector <16 x float> %i.ggh, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ggl = shufflevector <16 x float> %i.ggh, <16 x float> poison, <16 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0, i32 13, i32 14, i32 15, i32 12, i32 9, i32 10, i32 11, i32 8> ; 2 uses
  %i.ggm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggf, <16 x float> nofpclass(nan inf) %i.ggh, <16 x float> nofpclass(nan inf) %.251449163) ; 2 uses
  %i.ggn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggf, <16 x float> nofpclass(nan inf) %i.ggj, <16 x float> nofpclass(nan inf) %.251499162) ; 2 uses
  %i.ggo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggi, <16 x float> nofpclass(nan inf) %i.ggh, <16 x float> nofpclass(nan inf) %.251549161) ; 2 uses
  %i.ggp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggi, <16 x float> nofpclass(nan inf) %i.ggj, <16 x float> nofpclass(nan inf) %.251599160) ; 2 uses
  %i.ggq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggf, <16 x float> nofpclass(nan inf) %i.ggk, <16 x float> nofpclass(nan inf) %.251649159) ; 2 uses
  %i.ggr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggf, <16 x float> nofpclass(nan inf) %i.ggl, <16 x float> nofpclass(nan inf) %.251699158) ; 2 uses
  %i.ggs = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggi, <16 x float> nofpclass(nan inf) %i.ggk, <16 x float> nofpclass(nan inf) %.251749157) ; 2 uses
  %i.ggt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggi, <16 x float> nofpclass(nan inf) %i.ggl, <16 x float> nofpclass(nan inf) %.151789156) ; 2 uses
  %i.ggu = getelementptr inbounds nuw i8, ptr %.124949165, i64 16
  %i.ggv = getelementptr inbounds nuw i8, ptr %.224699166, i64 32 ; 2 uses
  %i.ggw = add nuw nsw i32 %.124969164, 1         ; 2 uses
  %exitcond9992.not = icmp eq i32 %i.ggw, %7
  br i1 %exitcond9992.not, label %._crit_edge9168, label %.lr.ph9167, !llvm.loop !505

._crit_edge9168:                                  ; preds = %.lr.ph9167, %.preheader8907
  %.15178.lcssa = phi <16 x float> [ %.05177.lcssa, %.preheader8907 ], [ %i.ggt, %.lr.ph9167 ] ; 3 uses
  %.25174.lcssa = phi <16 x float> [ %.15173.lcssa, %.preheader8907 ], [ %i.ggs, %.lr.ph9167 ] ; 3 uses
  %.25169.lcssa = phi <16 x float> [ %.15168.lcssa, %.preheader8907 ], [ %i.ggr, %.lr.ph9167 ] ; 3 uses
  %.25164.lcssa = phi <16 x float> [ %.15163.lcssa, %.preheader8907 ], [ %i.ggq, %.lr.ph9167 ] ; 3 uses
  %.25159.lcssa = phi <16 x float> [ %.15158.lcssa, %.preheader8907 ], [ %i.ggp, %.lr.ph9167 ] ; 3 uses
  %.25154.lcssa = phi <16 x float> [ %.15153.lcssa, %.preheader8907 ], [ %i.ggo, %.lr.ph9167 ] ; 3 uses
  %.25149.lcssa = phi <16 x float> [ %.15148.lcssa, %.preheader8907 ], [ %i.ggn, %.lr.ph9167 ] ; 3 uses
  %.25144.lcssa = phi <16 x float> [ %.15143.lcssa, %.preheader8907 ], [ %i.ggm, %.lr.ph9167 ] ; 3 uses
  %.22469.lcssa = phi ptr [ %.12468.lcssa, %.preheader8907 ], [ %i.ggv, %.lr.ph9167 ] ; 2 uses
  br i1 %8, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %._crit_edge9168
  %i.ggx = shufflevector <16 x float> %.25144.lcssa, <16 x float> %.25159.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.ggy = shufflevector <16 x float> %.25144.lcssa, <16 x float> %.25159.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ggz = shufflevector <16 x float> %.25154.lcssa, <16 x float> %.25149.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.gha = shufflevector <16 x float> %.25154.lcssa, <16 x float> %.25149.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ghb = shufflevector <16 x float> %.25164.lcssa, <16 x float> %.15178.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.ghc = shufflevector <16 x float> %.25164.lcssa, <16 x float> %.15178.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ghd = shufflevector <16 x float> %.25174.lcssa, <16 x float> %.25169.lcssa, <16 x i32> <i32 0, i32 19, i32 1, i32 16, i32 4, i32 23, i32 5, i32 20, i32 8, i32 27, i32 9, i32 24, i32 12, i32 31, i32 13, i32 28> ; 2 uses
  %i.ghe = shufflevector <16 x float> %.25174.lcssa, <16 x float> %.25169.lcssa, <16 x i32> <i32 2, i32 17, i32 3, i32 18, i32 6, i32 21, i32 7, i32 22, i32 10, i32 25, i32 11, i32 26, i32 14, i32 29, i32 15, i32 30> ; 2 uses
  %i.ghf = shufflevector <16 x float> %i.ggx, <16 x float> %i.ggz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ghg = shufflevector <16 x float> %i.ggx, <16 x float> %i.ggz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ghh = shufflevector <16 x float> %i.gha, <16 x float> %i.ggy, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ghi = shufflevector <16 x float> %i.gha, <16 x float> %i.ggy, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ghj = shufflevector <16 x float> %i.ghb, <16 x float> %i.ghd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ghk = shufflevector <16 x float> %i.ghb, <16 x float> %i.ghd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ghl = shufflevector <16 x float> %i.ghe, <16 x float> %i.ghc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ghm = shufflevector <16 x float> %i.ghe, <16 x float> %i.ghc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ghn = shufflevector <16 x float> %i.ghf, <16 x float> %i.ghj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.gho = shufflevector <16 x float> %i.ghg, <16 x float> %i.ghk, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ghp = shufflevector <16 x float> %i.ghh, <16 x float> %i.ghl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ghq = shufflevector <16 x float> %i.ghi, <16 x float> %i.ghm, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ghr = shufflevector <16 x float> %i.ghj, <16 x float> %i.ghf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ghs = shufflevector <16 x float> %i.ghk, <16 x float> %i.ghg, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  %i.ght = shufflevector <16 x float> %i.ghl, <16 x float> %i.ghh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 8, i32 9, i32 10, i32 11, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ghu = shufflevector <16 x float> %i.ghm, <16 x float> %i.ghi, <16 x i32> <i32 3, i32 0, i32 1, i32 2, i32 23, i32 20, i32 21, i32 22, i32 11, i32 8, i32 9, i32 10, i32 31, i32 28, i32 29, i32 30> ; 2 uses
  br i1 %.not2648, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ghv = load <4 x i64>, ptr %i.geh, align 1, !tbaa !20
  %i.ghw = shufflevector <4 x i64> %i.ghv, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ghx = bitcast <8 x i64> %i.ghw to <16 x float> ; 8 uses
  %i.ghy = fadd fast <16 x float> %i.ghn, %i.ghx
  %i.ghz = fadd fast <16 x float> %i.gho, %i.ghx
  %i.gia = fadd fast <16 x float> %i.ghp, %i.ghx
  %i.gib = fadd fast <16 x float> %i.ghq, %i.ghx
  %i.gic = fadd fast <16 x float> %i.ghr, %i.ghx
  %i.gid = fadd fast <16 x float> %i.ghs, %i.ghx
  %i.gie = fadd fast <16 x float> %i.ght, %i.ghx
  %i.gif = fadd fast <16 x float> %i.ghu, %i.ghx
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.25179 = phi nsz <16 x float> [ %i.ghu, %bb.ay ], [ %i.gif, %bb.az ] ; 10 uses
  %.35175 = phi nsz <16 x float> [ %i.ght, %bb.ay ], [ %i.gie, %bb.az ] ; 10 uses
  %.35170 = phi nsz <16 x float> [ %i.ghs, %bb.ay ], [ %i.gid, %bb.az ] ; 10 uses
  %.35165 = phi nsz <16 x float> [ %i.ghr, %bb.ay ], [ %i.gic, %bb.az ] ; 10 uses
  %.35160 = phi nsz <16 x float> [ %i.ghq, %bb.ay ], [ %i.gib, %bb.az ] ; 10 uses
  %.35155 = phi nsz <16 x float> [ %i.ghp, %bb.ay ], [ %i.gia, %bb.az ] ; 10 uses
  %.35150 = phi nsz <16 x float> [ %i.gho, %bb.ay ], [ %i.ghz, %bb.az ] ; 10 uses
  %.35145 = phi nsz <16 x float> [ %i.ghn, %bb.ay ], [ %i.ghy, %bb.az ] ; 10 uses
  switch i32 %9, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2727 [
    i32 1, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread
    i32 2, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread7452
    i32 3, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread7455
    i32 4, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread7458
    i32 5, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread7461
    i32 6, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread7464
  ]

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2741.thread: ; preds = %bb.ba
  %i.gig = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35145, <16 x float> zeroinitializer, i32 4)
  %i.gih = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35150, <16 x float> zeroinitializer, i32 4)
  %i.gii = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35155, <16 x float> zeroinitializer, i32 4)
  %i.gij = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35160, <16 x float> zeroinitializer, i32 4)
  %i.gik = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.35165, <16 x float> zeroinitializer, i32 4)
end_hunk_4
begin_hunk_5_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.htu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i2732761376767770)
  %i.htv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i273076867760)
  %i.htw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i27287772)
  %i.htx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %.0.i2726)
  %i.hty = bitcast <16 x bfloat> %i.htq to <8 x i32> ; 2 uses
  %i.htz = shufflevector <8 x i32> %i.hty, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.htz, ptr %.024489180, align 1, !tbaa !20
  %i.hua = getelementptr inbounds nuw i8, ptr %.024489180, i64 16
  %i.hub = bitcast <16 x bfloat> %i.htr to <8 x i32> ; 2 uses
  %i.huc = shufflevector <8 x i32> %i.hub, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.huc, ptr %i.hua, align 1, !tbaa !20
  %i.hud = getelementptr inbounds nuw i8, ptr %.024489180, i64 32
  %i.hue = bitcast <16 x bfloat> %i.hts to <8 x i32> ; 2 uses
  %i.huf = shufflevector <8 x i32> %i.hue, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.huf, ptr %i.hud, align 1, !tbaa !20
  %i.hug = getelementptr inbounds nuw i8, ptr %.024489180, i64 48
  %i.huh = bitcast <16 x bfloat> %i.htt to <8 x i32> ; 2 uses
  %i.hui = shufflevector <8 x i32> %i.huh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hui, ptr %i.hug, align 1, !tbaa !20
  %i.huj = getelementptr inbounds nuw i8, ptr %.024489180, i64 64
  %i.huk = bitcast <16 x bfloat> %i.htu to <8 x i32> ; 2 uses
  %i.hul = shufflevector <8 x i32> %i.huk, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hul, ptr %i.huj, align 1, !tbaa !20
  %i.hum = getelementptr inbounds nuw i8, ptr %.024489180, i64 80
  %i.hun = bitcast <16 x bfloat> %i.htv to <8 x i32> ; 2 uses
  %i.huo = shufflevector <8 x i32> %i.hun, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.huo, ptr %i.hum, align 1, !tbaa !20
  %i.hup = getelementptr inbounds nuw i8, ptr %.024489180, i64 96
  %i.huq = bitcast <16 x bfloat> %i.htw to <8 x i32> ; 2 uses
  %i.hur = shufflevector <8 x i32> %i.huq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hur, ptr %i.hup, align 1, !tbaa !20
  %i.hus = getelementptr inbounds nuw i8, ptr %.024489180, i64 112
  %i.hut = bitcast <16 x bfloat> %i.htx to <8 x i32> ; 2 uses
  %i.huu = shufflevector <8 x i32> %i.hut, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.huu, ptr %i.hus, align 1, !tbaa !20
  %i.huv = getelementptr inbounds nuw i8, ptr %.024489180, i64 128
  %i.huw = shufflevector <8 x i32> %i.hty, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.huw, ptr %i.huv, align 1, !tbaa !20
  %i.hux = getelementptr inbounds nuw i8, ptr %.024489180, i64 144
  %i.huy = shufflevector <8 x i32> %i.hub, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.huy, ptr %i.hux, align 1, !tbaa !20
  %i.huz = getelementptr inbounds nuw i8, ptr %.024489180, i64 160
  %i.hva = shufflevector <8 x i32> %i.hue, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hva, ptr %i.huz, align 1, !tbaa !20
  %i.hvb = getelementptr inbounds nuw i8, ptr %.024489180, i64 176
  %i.hvc = shufflevector <8 x i32> %i.huh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hvc, ptr %i.hvb, align 1, !tbaa !20
  %i.hvd = getelementptr inbounds nuw i8, ptr %.024489180, i64 192
  %i.hve = shufflevector <8 x i32> %i.huk, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hve, ptr %i.hvd, align 1, !tbaa !20
  %i.hvf = getelementptr inbounds nuw i8, ptr %.024489180, i64 208
  %i.hvg = shufflevector <8 x i32> %i.hun, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hvg, ptr %i.hvf, align 1, !tbaa !20
  %i.hvh = getelementptr inbounds nuw i8, ptr %.024489180, i64 224
  %i.hvi = shufflevector <8 x i32> %i.huq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hvi, ptr %i.hvh, align 1, !tbaa !20
  %i.hvj = getelementptr inbounds nuw i8, ptr %.024489180, i64 240
  %i.hvk = shufflevector <8 x i32> %i.hut, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.hvk, ptr %i.hvj, align 1, !tbaa !20
  %i.hvl = getelementptr inbounds nuw i8, ptr %.024489180, i64 256
  br label %.thread7851

bb.bb:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2727
  %i.hvm = shufflevector <16 x float> %.0.i27407451747075047549760976807766, <16 x float> %.0.i2738747275027551760776827764, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hvn = shufflevector <16 x float> %.0.i273675067547761176787768, <16 x float> %.0.i27347553760576847762, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hvo = shufflevector <16 x float> %.0.i2732761376767770, <16 x float> %.0.i273076867760, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hvp = shufflevector <16 x float> %.0.i27287772, <16 x float> %.0.i2726, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.hvq = shufflevector <16 x float> %.0.i27407451747075047549760976807766, <16 x float> %.0.i2738747275027551760776827764, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hvr = shufflevector <16 x float> %.0.i273675067547761176787768, <16 x float> %.0.i27347553760576847762, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hvs = shufflevector <16 x float> %.0.i2732761376767770, <16 x float> %.0.i273076867760, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hvt = shufflevector <16 x float> %.0.i27287772, <16 x float> %.0.i2726, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.hvu = shufflevector <16 x float> %i.hvm, <16 x float> %i.hvn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.hvv = shufflevector <16 x float> %i.hvo, <16 x float> %i.hvp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.hvw = shufflevector <16 x float> %i.hvm, <16 x float> %i.hvn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.hvx = shufflevector <16 x float> %i.hvo, <16 x float> %i.hvp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.hvy = shufflevector <16 x float> %i.hvq, <16 x float> %i.hvr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.hvz = shufflevector <16 x float> %i.hvs, <16 x float> %i.hvt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.hwa = shufflevector <16 x float> %i.hvq, <16 x float> %i.hvr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.hwb = shufflevector <16 x float> %i.hvs, <16 x float> %i.hvt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.hwc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvu)
  store <16 x bfloat> %i.hwc, ptr %.024489180, align 1, !tbaa !20
  %i.hwd = getelementptr inbounds nuw i8, ptr %.024489180, i64 32
  %i.hwe = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvv)
  store <16 x bfloat> %i.hwe, ptr %i.hwd, align 1, !tbaa !20
  %i.hwf = getelementptr inbounds nuw i8, ptr %.024489180, i64 64
  %i.hwg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvw)
  store <16 x bfloat> %i.hwg, ptr %i.hwf, align 1, !tbaa !20
  %i.hwh = getelementptr inbounds nuw i8, ptr %.024489180, i64 96
  %i.hwi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvx)
  store <16 x bfloat> %i.hwi, ptr %i.hwh, align 1, !tbaa !20
  %i.hwj = getelementptr inbounds [2 x i8], ptr %.024489180, i64 %i.bm ; 4 uses
  %i.hwk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvy)
  store <16 x bfloat> %i.hwk, ptr %i.hwj, align 1, !tbaa !20
  %i.hwl = getelementptr inbounds nuw i8, ptr %i.hwj, i64 32
  %i.hwm = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hvz)
  store <16 x bfloat> %i.hwm, ptr %i.hwl, align 1, !tbaa !20
  %i.hwn = getelementptr inbounds nuw i8, ptr %i.hwj, i64 64
  %i.hwo = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hwa)
  store <16 x bfloat> %i.hwo, ptr %i.hwn, align 1, !tbaa !20
  %i.hwp = getelementptr inbounds nuw i8, ptr %i.hwj, i64 96
  %i.hwq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hwb)
  store <16 x bfloat> %i.hwq, ptr %i.hwp, align 1, !tbaa !20
  %i.hwr = getelementptr inbounds nuw i8, ptr %.024489180, i64 128
  br label %.thread7851

bb.bc:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2727
  %i.hws = shufflevector <16 x float> %.0.i27407451747075047549760976807766, <16 x float> %.0.i2738747275027551760776827764, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hwt = shufflevector <16 x float> %.0.i273675067547761176787768, <16 x float> %.0.i27347553760576847762, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hwu = shufflevector <16 x float> %.0.i2732761376767770, <16 x float> %.0.i273076867760, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hwv = shufflevector <16 x float> %.0.i27287772, <16 x float> %.0.i2726, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.hww = shufflevector <16 x float> %.0.i27407451747075047549760976807766, <16 x float> %.0.i2738747275027551760776827764, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hwx = shufflevector <16 x float> %.0.i273675067547761176787768, <16 x float> %.0.i27347553760576847762, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hwy = shufflevector <16 x float> %.0.i2732761376767770, <16 x float> %.0.i273076867760, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hwz = shufflevector <16 x float> %.0.i27287772, <16 x float> %.0.i2726, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.hxa = shufflevector <16 x float> %i.hws, <16 x float> %i.hwt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.hxb = shufflevector <16 x float> %i.hwu, <16 x float> %i.hwv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.hxc = shufflevector <16 x float> %i.hws, <16 x float> %i.hwt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.hxd = shufflevector <16 x float> %i.hwu, <16 x float> %i.hwv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.hxe = shufflevector <16 x float> %i.hww, <16 x float> %i.hwx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.hxf = shufflevector <16 x float> %i.hwy, <16 x float> %i.hwz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.hxg = shufflevector <16 x float> %i.hww, <16 x float> %i.hwx, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.hxh = shufflevector <16 x float> %i.hwy, <16 x float> %i.hwz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.hxi = shufflevector <16 x float> %i.hxa, <16 x float> %i.hxb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.hxj = shufflevector <16 x float> %i.hxc, <16 x float> %i.hxd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.hxk = shufflevector <16 x float> %i.hxe, <16 x float> %i.hxf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.hxl = shufflevector <16 x float> %i.hxg, <16 x float> %i.hxh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 24, i32 25, i32 26, i32 27>
  %i.hxm = shufflevector <16 x float> %i.hxa, <16 x float> %i.hxb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.hxn = shufflevector <16 x float> %i.hxc, <16 x float> %i.hxd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.hxo = shufflevector <16 x float> %i.hxe, <16 x float> %i.hxf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.hxp = shufflevector <16 x float> %i.hxg, <16 x float> %i.hxh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 20, i32 21, i32 22, i32 23, i32 12, i32 13, i32 14, i32 15, i32 28, i32 29, i32 30, i32 31>
  %i.hxq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxi)
  store <16 x bfloat> %i.hxq, ptr %.024489180, align 1, !tbaa !20
  %i.hxr = getelementptr inbounds i8, ptr %.024489180, i64 %i.bh
  %i.hxs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxj)
  store <16 x bfloat> %i.hxs, ptr %i.hxr, align 1, !tbaa !20
  %i.hxt = getelementptr inbounds [2 x i8], ptr %.024489180, i64 %i.bj
  %i.hxu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxk)
  store <16 x bfloat> %i.hxu, ptr %i.hxt, align 1, !tbaa !20
  %i.hxv = getelementptr inbounds i8, ptr %.024489180, i64 %i.bk
  %i.hxw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxl)
  store <16 x bfloat> %i.hxw, ptr %i.hxv, align 1, !tbaa !20
  %i.hxx = getelementptr inbounds [2 x i8], ptr %.024489180, i64 %i.bm
  %i.hxy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxm)
  store <16 x bfloat> %i.hxy, ptr %i.hxx, align 1, !tbaa !20
  %i.hxz = getelementptr inbounds i8, ptr %.024489180, i64 %i.bn
  %i.hya = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxn)
  store <16 x bfloat> %i.hya, ptr %i.hxz, align 1, !tbaa !20
  %i.hyb = getelementptr inbounds i8, ptr %.024489180, i64 %i.bo
  %i.hyc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxo)
  store <16 x bfloat> %i.hyc, ptr %i.hyb, align 1, !tbaa !20
  %i.hyd = getelementptr inbounds i8, ptr %.024489180, i64 %i.bp
  %i.hye = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.hxp)
  store <16 x bfloat> %i.hye, ptr %i.hyd, align 1, !tbaa !20
  %i.hyf = getelementptr inbounds nuw i8, ptr %.024489180, i64 32
  br label %.thread7851

bb.bd:                                            ; preds = %._crit_edge9168
  store <16 x float> %.25144.lcssa, ptr %.623419181, align 64, !tbaa !20
  %i.hyg = getelementptr inbounds nuw i8, ptr %.623419181, i64 64
  store <16 x float> %.25149.lcssa, ptr %i.hyg, align 64, !tbaa !20
  %i.hyh = getelementptr inbounds nuw i8, ptr %.623419181, i64 128
  store <16 x float> %.25154.lcssa, ptr %i.hyh, align 64, !tbaa !20
  %i.hyi = getelementptr inbounds nuw i8, ptr %.623419181, i64 192
  store <16 x float> %.25159.lcssa, ptr %i.hyi, align 64, !tbaa !20
  %i.hyj = getelementptr inbounds nuw i8, ptr %.623419181, i64 256
  store <16 x float> %.25164.lcssa, ptr %i.hyj, align 64, !tbaa !20
  %i.hyk = getelementptr inbounds nuw i8, ptr %.623419181, i64 320
  store <16 x float> %.25169.lcssa, ptr %i.hyk, align 64, !tbaa !20
  %i.hyl = getelementptr inbounds nuw i8, ptr %.623419181, i64 384
  store <16 x float> %.25174.lcssa, ptr %i.hyl, align 64, !tbaa !20
  %i.hym = getelementptr inbounds nuw i8, ptr %.623419181, i64 448
  store <16 x float> %.15178.lcssa, ptr %i.hym, align 64, !tbaa !20
  br label %.thread7851

.thread7851:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2727, %bb.bb, %.thread7848, %bb.bc, %bb.bd
  %.42452 = phi ptr [ %.024489180, %bb.bd ], [ %i.hyf, %bb.bc ], [ %.024489180, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit2727 ], [ %i.hvl, %.thread7848 ], [ %i.hwr, %bb.bb ] ; 2 uses
  %i.hyn = getelementptr inbounds nuw i8, ptr %.623419181, i64 512 ; 2 uses
  %i.hyo = add nuw nsw i32 %.024799178, 16        ; 2 uses
  %i.hyp = or disjoint i32 %i.hyo, 15
  %i.hyq = icmp slt i32 %i.hyp, %5
  br i1 %i.hyq, label %bb.av, label %.preheader8910, !llvm.loop !506

.preheader8909:                                   ; preds = %.thread8263, %.preheader8910
  %.12480.lcssa = phi i32 [ %.02479.lcssa, %.preheader8910 ], [ %i.jst, %.thread8263 ] ; 3 uses
  %.32470.lcssa = phi ptr [ %.02467.lcssa, %.preheader8910 ], [ %.52472.lcssa, %.thread8263 ] ; 2 uses
  %.52453.lcssa = phi ptr [ %.02448.lcssa, %.preheader8910 ], [ %.92457, %.thread8263 ] ; 2 uses
  %.72342.lcssa = phi ptr [ %.62341.lcssa, %.preheader8910 ], [ %i.jss, %.thread8263 ] ; 2 uses
  %i.hyr = or disjoint i32 %.12480.lcssa, 3
  %i.hys = icmp slt i32 %i.hyr, %5
  br i1 %i.hys, label %.lr.ph9277, label %.preheader8908

.lr.ph9277:                                       ; preds = %.preheader8909
  %.not2634 = icmp eq ptr %.32333, null
  br label %bb.bn

bb.be:                                            ; preds = %.lr.ph9238, %.thread8263
  %.723429237 = phi ptr [ %.62341.lcssa, %.lr.ph9238 ], [ %i.jss, %.thread8263 ] ; 17 uses
  %.524539236 = phi ptr [ %.02448.lcssa, %.lr.ph9238 ], [ %.92457, %.thread8263 ] ; 26 uses
  %.324709235 = phi ptr [ %.02467.lcssa, %.lr.ph9238 ], [ %.52472.lcssa, %.thread8263 ] ; 3 uses
  %.124809234 = phi i32 [ %.02479.lcssa, %.lr.ph9238 ], [ %i.jst, %.thread8263 ]
  br i1 %12, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hyt = load <8 x float>, ptr %.723429237, align 32, !tbaa !20
  %i.hyu = getelementptr inbounds nuw i8, ptr %.723429237, i64 32
  %i.hyv = load <8 x float>, ptr %i.hyu, align 32, !tbaa !20
  %i.hyw = getelementptr inbounds nuw i8, ptr %.723429237, i64 64
  %i.hyx = load <8 x float>, ptr %i.hyw, align 32, !tbaa !20
  %i.hyy = getelementptr inbounds nuw i8, ptr %.723429237, i64 96
  %i.hyz = load <8 x float>, ptr %i.hyy, align 32, !tbaa !20
  %i.hza = getelementptr inbounds nuw i8, ptr %.723429237, i64 128
  %i.hzb = load <8 x float>, ptr %i.hza, align 32, !tbaa !20
  %i.hzc = getelementptr inbounds nuw i8, ptr %.723429237, i64 160
  %i.hzd = load <8 x float>, ptr %i.hzc, align 32, !tbaa !20
  %i.hze = getelementptr inbounds nuw i8, ptr %.723429237, i64 192
  %i.hzf = load <8 x float>, ptr %i.hze, align 32, !tbaa !20
  %i.hzg = getelementptr inbounds nuw i8, ptr %.723429237, i64 224
  %i.hzh = load <8 x float>, ptr %i.hzg, align 32, !tbaa !20
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.05205 = phi nsz <8 x float> [ %i.hzf, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05201 = phi nsz <8 x float> [ %i.hzd, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05197 = phi nsz <8 x float> [ %i.hzb, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05193 = phi nsz <8 x float> [ %i.hyz, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05189 = phi nsz <8 x float> [ %i.hyx, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05185 = phi nsz <8 x float> [ %i.hyv, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %.05181 = phi nsz <8 x float> [ %i.hyt, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  %storemerge2640 = phi <8 x float> [ %i.hzh, %bb.bf ], [ zeroinitializer, %bb.be ] ; 2 uses
  br i1 %i.bg, label %.lr.ph9200, label %.preheader8906

.preheader8906.loopexit:                          ; preds = %.lr.ph9200
  %scevgep9993 = getelementptr i8, ptr %.324709235, i64 %i.bz
  br label %.preheader8906

.preheader8906:                                   ; preds = %.preheader8906.loopexit, %bb.bg
  %.05209.lcssa = phi <8 x float> [ %storemerge2640, %bb.bg ], [ %i.iaf, %.preheader8906.loopexit ] ; 2 uses
  %.15206.lcssa = phi <8 x float> [ %.05205, %bb.bg ], [ %i.iae, %.preheader8906.loopexit ] ; 2 uses
  %.15202.lcssa = phi <8 x float> [ %.05201, %bb.bg ], [ %i.iad, %.preheader8906.loopexit ] ; 2 uses
  %.15198.lcssa = phi <8 x float> [ %.05197, %bb.bg ], [ %i.iab, %.preheader8906.loopexit ] ; 2 uses
  %.15194.lcssa = phi <8 x float> [ %.05193, %bb.bg ], [ %i.hzz, %.preheader8906.loopexit ] ; 2 uses
  %.15190.lcssa = phi <8 x float> [ %.05189, %bb.bg ], [ %i.hzy, %.preheader8906.loopexit ] ; 2 uses
  %.15186.lcssa = phi <8 x float> [ %.05185, %bb.bg ], [ %i.hzw, %.preheader8906.loopexit ] ; 2 uses
  %.15182.lcssa = phi <8 x float> [ %.05181, %bb.bg ], [ %i.hzu, %.preheader8906.loopexit ] ; 2 uses
  %.02499.lcssa = phi i32 [ 0, %bb.bg ], [ %i.bu, %.preheader8906.loopexit ] ; 2 uses
  %.02497.lcssa = phi ptr [ %.19310, %bb.bg ], [ %i.iag, %.preheader8906.loopexit ]
  %.42471.lcssa = phi ptr [ %.324709235, %bb.bg ], [ %scevgep9993, %.preheader8906.loopexit ] ; 2 uses
  %i.hzi = icmp slt i32 %.02499.lcssa, %7
  br i1 %i.hzi, label %.lr.ph9223, label %._crit_edge9224

.lr.ph9200:                                       ; preds = %bb.bg, %.lr.ph9200
  %.424719198 = phi ptr [ %i.iah, %.lr.ph9200 ], [ %.324709235, %bb.bg ] ; 2 uses
  %.024979197 = phi ptr [ %i.iag, %.lr.ph9200 ], [ %.19310, %bb.bg ] ; 2 uses
  %.024999196 = phi i32 [ %i.iai, %.lr.ph9200 ], [ 0, %bb.bg ]
  %.151829195 = phi <8 x float> [ %i.hzu, %.lr.ph9200 ], [ %.05181, %bb.bg ]
  %.151869194 = phi <8 x float> [ %i.hzw, %.lr.ph9200 ], [ %.05185, %bb.bg ]
  %.151909193 = phi <8 x float> [ %i.hzy, %.lr.ph9200 ], [ %.05189, %bb.bg ]
  %.151949192 = phi <8 x float> [ %i.hzz, %.lr.ph9200 ], [ %.05193, %bb.bg ]
  %.151989191 = phi <8 x float> [ %i.iab, %.lr.ph9200 ], [ %.05197, %bb.bg ]
  %.152029190 = phi <8 x float> [ %i.iad, %.lr.ph9200 ], [ %.05201, %bb.bg ]
  %.152069189 = phi <8 x float> [ %i.iae, %.lr.ph9200 ], [ %.05205, %bb.bg ]
  %.052099188 = phi <8 x float> [ %i.iaf, %.lr.ph9200 ], [ %storemerge2640, %bb.bg ]
  %i.hzj = load <4 x i64>, ptr %.024979197, align 1, !tbaa !20 ; 2 uses
  %i.hzk = load <4 x i64>, ptr %.424719198, align 1, !tbaa !20 ; 3 uses
  %i.hzl = bitcast <4 x i64> %i.hzj to <8 x i32>
  %i.hzm = shufflevector <8 x i32> %i.hzl, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.hzn = bitcast <4 x i64> %i.hzk to <8 x i32>
  %i.hzo = shufflevector <8 x i32> %i.hzn, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.hzp = shufflevector <4 x i64> %i.hzk, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.hzq = bitcast <4 x i64> %i.hzp to <8 x i32>
  %i.hzr = shufflevector <8 x i32> %i.hzq, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.hzs = bitcast <4 x i64> %i.hzj to <16 x bfloat> ; 4 uses
  %i.hzt = bitcast <4 x i64> %i.hzk to <16 x bfloat> ; 2 uses
  %i.hzu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.151829195, <16 x bfloat> nofpclass(nan inf) %i.hzs, <16 x bfloat> nofpclass(nan inf) %i.hzt) ; 2 uses
  %i.hzv = bitcast <8 x i32> %i.hzo to <16 x bfloat> ; 2 uses
  %i.hzw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.151869194, <16 x bfloat> nofpclass(nan inf) %i.hzs, <16 x bfloat> nofpclass(nan inf) %i.hzv) ; 2 uses
  %i.hzx = bitcast <8 x i32> %i.hzm to <16 x bfloat> ; 4 uses
  %i.hzy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.151909193, <16 x bfloat> nofpclass(nan inf) %i.hzx, <16 x bfloat> nofpclass(nan inf) %i.hzt) ; 2 uses
  %i.hzz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.151949192, <16 x bfloat> nofpclass(nan inf) %i.hzx, <16 x bfloat> nofpclass(nan inf) %i.hzv) ; 2 uses
  %i.iaa = bitcast <4 x i64> %i.hzp to <16 x bfloat> ; 2 uses
  %i.iab = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.151989191, <16 x bfloat> nofpclass(nan inf) %i.hzs, <16 x bfloat> nofpclass(nan inf) %i.iaa) ; 2 uses
  %i.iac = bitcast <8 x i32> %i.hzr to <16 x bfloat> ; 2 uses
  %i.iad = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152029190, <16 x bfloat> nofpclass(nan inf) %i.hzs, <16 x bfloat> nofpclass(nan inf) %i.iac) ; 2 uses
  %i.iae = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152069189, <16 x bfloat> nofpclass(nan inf) %i.hzx, <16 x bfloat> nofpclass(nan inf) %i.iaa) ; 2 uses
  %i.iaf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.052099188, <16 x bfloat> nofpclass(nan inf) %i.hzx, <16 x bfloat> nofpclass(nan inf) %i.iac) ; 2 uses
  %i.iag = getelementptr inbounds nuw i8, ptr %.024979197, i64 32 ; 2 uses
  %i.iah = getelementptr inbounds nuw i8, ptr %.424719198, i64 32
  %i.iai = add nuw nsw i32 %.024999196, 2         ; 2 uses
  %i.iaj = or disjoint i32 %i.iai, 1
  %i.iak = icmp slt i32 %i.iaj, %7
  br i1 %i.iak, label %.lr.ph9200, label %.preheader8906.loopexit, !llvm.loop !507

.lr.ph9223:                                       ; preds = %.preheader8906, %.lr.ph9223
  %.524729222 = phi ptr [ %i.ibc, %.lr.ph9223 ], [ %.42471.lcssa, %.preheader8906 ] ; 2 uses
  %.124989221 = phi ptr [ %i.ibb, %.lr.ph9223 ], [ %.02497.lcssa, %.preheader8906 ] ; 2 uses
  %.125009220 = phi i32 [ %i.ibd, %.lr.ph9223 ], [ %.02499.lcssa, %.preheader8906 ]
  %.251839219 = phi <8 x float> [ %i.iat, %.lr.ph9223 ], [ %.15182.lcssa, %.preheader8906 ]
  %.251879218 = phi <8 x float> [ %i.iau, %.lr.ph9223 ], [ %.15186.lcssa, %.preheader8906 ]
  %.251919217 = phi <8 x float> [ %i.iav, %.lr.ph9223 ], [ %.15190.lcssa, %.preheader8906 ]
  %.251959216 = phi <8 x float> [ %i.iaw, %.lr.ph9223 ], [ %.15194.lcssa, %.preheader8906 ]
  %.251999215 = phi <8 x float> [ %i.iax, %.lr.ph9223 ], [ %.15198.lcssa, %.preheader8906 ]
  %.252039214 = phi <8 x float> [ %i.iay, %.lr.ph9223 ], [ %.15202.lcssa, %.preheader8906 ]
  %.252079213 = phi <8 x float> [ %i.iaz, %.lr.ph9223 ], [ %.15206.lcssa, %.preheader8906 ]
  %.152109212 = phi <8 x float> [ %i.iba, %.lr.ph9223 ], [ %.05209.lcssa, %.preheader8906 ]
  %i.ial = load <8 x bfloat>, ptr %.124989221, align 1, !tbaa !20
  %i.iam = fpext fast <8 x bfloat> %i.ial to <8 x float> ; 5 uses
  %i.ian = load <8 x bfloat>, ptr %.524729222, align 1, !tbaa !20
  %i.iao = fpext fast <8 x bfloat> %i.ian to <8 x float> ; 5 uses
  %i.iap = shufflevector <8 x float> %i.iam, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.iaq = shufflevector <8 x float> %i.iao, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.iar = shufflevector <8 x float> %i.iao, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ias = shufflevector <8 x float> %i.iao, <8 x float> poison, <8 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.iat = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iam, <8 x float> nofpclass(nan inf) %i.iao, <8 x float> nofpclass(nan inf) %.251839219) ; 2 uses
  %i.iau = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iam, <8 x float> nofpclass(nan inf) %i.iaq, <8 x float> nofpclass(nan inf) %.251879218) ; 2 uses
  %i.iav = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iap, <8 x float> nofpclass(nan inf) %i.iao, <8 x float> nofpclass(nan inf) %.251919217) ; 2 uses
  %i.iaw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iap, <8 x float> nofpclass(nan inf) %i.iaq, <8 x float> nofpclass(nan inf) %.251959216) ; 2 uses
  %i.iax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iam, <8 x float> nofpclass(nan inf) %i.iar, <8 x float> nofpclass(nan inf) %.251999215) ; 2 uses
  %i.iay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iam, <8 x float> nofpclass(nan inf) %i.ias, <8 x float> nofpclass(nan inf) %.252039214) ; 2 uses
  %i.iaz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iap, <8 x float> nofpclass(nan inf) %i.iar, <8 x float> nofpclass(nan inf) %.252079213) ; 2 uses
  %i.iba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.iap, <8 x float> nofpclass(nan inf) %i.ias, <8 x float> nofpclass(nan inf) %.152109212) ; 2 uses
  %i.ibb = getelementptr inbounds nuw i8, ptr %.124989221, i64 16
  %i.ibc = getelementptr inbounds nuw i8, ptr %.524729222, i64 16 ; 2 uses
  %i.ibd = add nuw nsw i32 %.125009220, 1         ; 2 uses
  %exitcond9994.not = icmp eq i32 %i.ibd, %7
  br i1 %exitcond9994.not, label %._crit_edge9224, label %.lr.ph9223, !llvm.loop !508

._crit_edge9224:                                  ; preds = %.lr.ph9223, %.preheader8906
  %.15210.lcssa = phi <8 x float> [ %.05209.lcssa, %.preheader8906 ], [ %i.iba, %.lr.ph9223 ] ; 3 uses
  %.25207.lcssa = phi <8 x float> [ %.15206.lcssa, %.preheader8906 ], [ %i.iaz, %.lr.ph9223 ] ; 3 uses
  %.25203.lcssa = phi <8 x float> [ %.15202.lcssa, %.preheader8906 ], [ %i.iay, %.lr.ph9223 ] ; 3 uses
  %.25199.lcssa = phi <8 x float> [ %.15198.lcssa, %.preheader8906 ], [ %i.iax, %.lr.ph9223 ] ; 3 uses
  %.25195.lcssa = phi <8 x float> [ %.15194.lcssa, %.preheader8906 ], [ %i.iaw, %.lr.ph9223 ] ; 3 uses
  %.25191.lcssa = phi <8 x float> [ %.15190.lcssa, %.preheader8906 ], [ %i.iav, %.lr.ph9223 ] ; 3 uses
  %.25187.lcssa = phi <8 x float> [ %.15186.lcssa, %.preheader8906 ], [ %i.iau, %.lr.ph9223 ] ; 3 uses
  %.25183.lcssa = phi <8 x float> [ %.15182.lcssa, %.preheader8906 ], [ %i.iat, %.lr.ph9223 ] ; 3 uses
  %.52472.lcssa = phi ptr [ %.42471.lcssa, %.preheader8906 ], [ %i.ibc, %.lr.ph9223 ] ; 2 uses
  br i1 %8, label %bb.bh, label %bb.bm

bb.bh:                                            ; preds = %._crit_edge9224
  %i.ibe = shufflevector <8 x float> %.25183.lcssa, <8 x float> %.25195.lcssa, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12> ; 2 uses
  %i.ibf = shufflevector <8 x float> %.25183.lcssa, <8 x float> %.25195.lcssa, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14> ; 2 uses
  %i.ibg = shufflevector <8 x float> %.25191.lcssa, <8 x float> %.25187.lcssa, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12> ; 2 uses
  %i.ibh = shufflevector <8 x float> %.25191.lcssa, <8 x float> %.25187.lcssa, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14> ; 2 uses
  %i.ibi = shufflevector <8 x float> %.25199.lcssa, <8 x float> %.15210.lcssa, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12> ; 2 uses
  %i.ibj = shufflevector <8 x float> %.25199.lcssa, <8 x float> %.15210.lcssa, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14> ; 2 uses
  %i.ibk = shufflevector <8 x float> %.25207.lcssa, <8 x float> %.25203.lcssa, <8 x i32> <i32 0, i32 11, i32 1, i32 8, i32 4, i32 15, i32 5, i32 12> ; 2 uses
  %i.ibl = shufflevector <8 x float> %.25207.lcssa, <8 x float> %.25203.lcssa, <8 x i32> <i32 2, i32 9, i32 3, i32 10, i32 6, i32 13, i32 7, i32 14> ; 2 uses
  %i.ibm = shufflevector <8 x float> %i.ibe, <8 x float> %i.ibg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ibn = shufflevector <8 x float> %i.ibe, <8 x float> %i.ibg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ibo = shufflevector <8 x float> %i.ibh, <8 x float> %i.ibf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ibp = shufflevector <8 x float> %i.ibh, <8 x float> %i.ibf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ibq = shufflevector <8 x float> %i.ibi, <8 x float> %i.ibk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ibr = shufflevector <8 x float> %i.ibi, <8 x float> %i.ibk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ibs = shufflevector <8 x float> %i.ibl, <8 x float> %i.ibj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ibt = shufflevector <8 x float> %i.ibl, <8 x float> %i.ibj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ibu = shufflevector <8 x float> %i.ibm, <8 x float> %i.ibq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ibv = shufflevector <8 x float> %i.ibn, <8 x float> %i.ibr, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.ibw = shufflevector <8 x float> %i.ibo, <8 x float> %i.ibs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ibx = shufflevector <8 x float> %i.ibp, <8 x float> %i.ibt, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.iby = shufflevector <8 x float> %i.ibq, <8 x float> %i.ibm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ibz = shufflevector <8 x float> %i.ibr, <8 x float> %i.ibn, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  %i.ica = shufflevector <8 x float> %i.ibs, <8 x float> %i.ibo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.icb = shufflevector <8 x float> %i.ibt, <8 x float> %i.ibp, <8 x i32> <i32 3, i32 0, i32 1, i32 2, i32 15, i32 12, i32 13, i32 14> ; 2 uses
  br i1 %.not2641, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.icc = load <8 x float>, ptr %i.geh, align 1, !tbaa !20 ; 8 uses
  %i.icd = fadd fast <8 x float> %i.icc, %i.ibu
  %i.ice = fadd fast <8 x float> %i.icc, %i.ibv
  %i.icf = fadd fast <8 x float> %i.icc, %i.ibw
  %i.icg = fadd fast <8 x float> %i.icc, %i.ibx
  %i.ich = fadd fast <8 x float> %i.icc, %i.iby
  %i.ici = fadd fast <8 x float> %i.icc, %i.ibz
  %i.icj = fadd fast <8 x float> %i.icc, %i.ica
  %i.ick = fadd fast <8 x float> %i.icc, %i.icb
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.25211 = phi nsz <8 x float> [ %i.icb, %bb.bh ], [ %i.ick, %bb.bi ] ; 10 uses
  %.35208 = phi nsz <8 x float> [ %i.ica, %bb.bh ], [ %i.icj, %bb.bi ] ; 10 uses
  %.35204 = phi nsz <8 x float> [ %i.ibz, %bb.bh ], [ %i.ici, %bb.bi ] ; 10 uses
  %.35200 = phi nsz <8 x float> [ %i.iby, %bb.bh ], [ %i.ich, %bb.bi ] ; 10 uses
  %.35196 = phi nsz <8 x float> [ %i.ibx, %bb.bh ], [ %i.icg, %bb.bi ] ; 10 uses
  %.35192 = phi nsz <8 x float> [ %i.ibw, %bb.bh ], [ %i.icf, %bb.bi ] ; 10 uses
  %.35188 = phi nsz <8 x float> [ %i.ibv, %bb.bh ], [ %i.ice, %bb.bi ] ; 10 uses
  %.35184 = phi nsz <8 x float> [ %i.ibu, %bb.bh ], [ %i.icd, %bb.bi ] ; 10 uses
  switch i32 %9, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820 [
    i32 1, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread
    i32 2, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864
    i32 3, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867
    i32 4, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870
    i32 5, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873
    i32 6, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876
  ]

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread: ; preds = %bb.bj
  %i.icl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.35184, <8 x float> zeroinitializer)
  %i.icm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.35188, <8 x float> zeroinitializer)
  %i.icn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.35192, <8 x float> zeroinitializer)
  %i.ico = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.35196, <8 x float> zeroinitializer)
  %i.icp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.35200, <8 x float> zeroinitializer)
end_hunk_5
begin_hunk_6_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.joa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.jnz, <8 x float> zeroinitializer)
  %i.job = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.joa, <8 x float> splat (float 1.000000e+00))
  %i.joc = fmul fast <8 x float> %i.job, %.25211
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820:  ; preds = %bb.bj, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876
  %.0.i28218184 = phi <8 x float> [ %i.jny, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icr, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.idy, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.iey, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.ima, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.jjj, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35208, %bb.bj ] ; 5 uses
  %.0.i2825802580888182 = phi <8 x float> [ %i.jnq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.idq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.ieu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.ika, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.jcz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35200, %bb.bj ] ; 5 uses
  %.0.i282979187959802380908180 = phi <8 x float> [ %i.jni, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icn, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.idi, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.ieq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.iia, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.iwp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35192, %bb.bj ] ; 5 uses
  %.0.i28337863788279167961802180928178 = phi <8 x float> [ %i.jna, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icl, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.ida, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.iem, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.iga, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.iqf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35184, %bb.bj ] ; 5 uses
  %.0.i2831788479147963801980948176 = phi <8 x float> [ %i.jne, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.ide, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.ieo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.iha, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.itk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35188, %bb.bj ] ; 5 uses
  %.0.i28277965801780968174 = phi <8 x float> [ %i.jnm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.ico, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.idm, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.ies, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.ija, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.izu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35196, %bb.bj ] ; 5 uses
  %.0.i282380988172 = phi <8 x float> [ %i.jnu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.icq, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.idu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.iew, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.ila, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.jge, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.35204, %bb.bj ] ; 5 uses
  %.0.i2819 = phi nsz <8 x float> [ %i.joc, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7876 ], [ %i.ics, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread ], [ %i.iec, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7864 ], [ %i.ifa, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7867 ], [ %i.ina, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7870 ], [ %i.jmo, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2834.thread7873 ], [ %.25211, %bb.bj ] ; 5 uses
  switch i32 %i.b, label %.thread8263 [
    i32 8, label %.thread8260
    i32 4, label %bb.bk
    i32 1, label %bb.bl
  ]

.thread8260:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820
  %i.jod = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i28337863788279167961802180928178)
  store <8 x bfloat> %i.jod, ptr %.524539236, align 1, !tbaa !20
  %i.joe = getelementptr inbounds nuw i8, ptr %.524539236, i64 16
  %i.jof = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i2831788479147963801980948176)
  store <8 x bfloat> %i.jof, ptr %i.joe, align 1, !tbaa !20
  %i.jog = getelementptr inbounds nuw i8, ptr %.524539236, i64 32
  %i.joh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i282979187959802380908180)
  store <8 x bfloat> %i.joh, ptr %i.jog, align 1, !tbaa !20
  %i.joi = getelementptr inbounds nuw i8, ptr %.524539236, i64 48
  %i.joj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i28277965801780968174)
  store <8 x bfloat> %i.joj, ptr %i.joi, align 1, !tbaa !20
  %i.jok = getelementptr inbounds nuw i8, ptr %.524539236, i64 64
  %i.jol = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i2825802580888182)
  store <8 x bfloat> %i.jol, ptr %i.jok, align 1, !tbaa !20
  %i.jom = getelementptr inbounds nuw i8, ptr %.524539236, i64 80
  %i.jon = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i282380988172)
  store <8 x bfloat> %i.jon, ptr %i.jom, align 1, !tbaa !20
  %i.joo = getelementptr inbounds nuw i8, ptr %.524539236, i64 96
  %i.jop = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i28218184)
  store <8 x bfloat> %i.jop, ptr %i.joo, align 1, !tbaa !20
  %i.joq = getelementptr inbounds nuw i8, ptr %.524539236, i64 112
  %i.jor = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i2819)
  store <8 x bfloat> %i.jor, ptr %i.joq, align 1, !tbaa !20
  %i.jos = getelementptr inbounds nuw i8, ptr %.524539236, i64 128
  br label %.thread8263

bb.bk:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820
  %i.jot = shufflevector <8 x float> %.0.i28337863788279167961802180928178, <8 x float> %.0.i2831788479147963801980948176, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jou = shufflevector <8 x float> %.0.i282979187959802380908180, <8 x float> %.0.i28277965801780968174, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jov = shufflevector <8 x float> %.0.i2825802580888182, <8 x float> %.0.i282380988172, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jow = shufflevector <8 x float> %.0.i28218184, <8 x float> %.0.i2819, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jox = shufflevector <8 x float> %.0.i28337863788279167961802180928178, <8 x float> %.0.i2831788479147963801980948176, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.joy = shufflevector <8 x float> %.0.i282979187959802380908180, <8 x float> %.0.i28277965801780968174, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.joz = shufflevector <8 x float> %.0.i2825802580888182, <8 x float> %.0.i282380988172, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jpa = shufflevector <8 x float> %.0.i28218184, <8 x float> %.0.i2819, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jpb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jot)
  store <8 x bfloat> %i.jpb, ptr %.524539236, align 1, !tbaa !20
  %i.jpc = getelementptr inbounds nuw i8, ptr %.524539236, i64 16
  %i.jpd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jou)
  store <8 x bfloat> %i.jpd, ptr %i.jpc, align 1, !tbaa !20
  %i.jpe = getelementptr inbounds nuw i8, ptr %.524539236, i64 32
  %i.jpf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jov)
  store <8 x bfloat> %i.jpf, ptr %i.jpe, align 1, !tbaa !20
  %i.jpg = getelementptr inbounds nuw i8, ptr %.524539236, i64 48
  %i.jph = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jow)
  store <8 x bfloat> %i.jph, ptr %i.jpg, align 1, !tbaa !20
  %i.jpi = getelementptr inbounds [2 x i8], ptr %.524539236, i64 %i.bm ; 4 uses
  %i.jpj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jox)
  store <8 x bfloat> %i.jpj, ptr %i.jpi, align 1, !tbaa !20
  %i.jpk = getelementptr inbounds nuw i8, ptr %i.jpi, i64 16
  %i.jpl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.joy)
  store <8 x bfloat> %i.jpl, ptr %i.jpk, align 1, !tbaa !20
  %i.jpm = getelementptr inbounds nuw i8, ptr %i.jpi, i64 32
  %i.jpn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.joz)
  store <8 x bfloat> %i.jpn, ptr %i.jpm, align 1, !tbaa !20
  %i.jpo = getelementptr inbounds nuw i8, ptr %i.jpi, i64 48
  %i.jpp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jpa)
  store <8 x bfloat> %i.jpp, ptr %i.jpo, align 1, !tbaa !20
  %i.jpq = getelementptr inbounds nuw i8, ptr %.524539236, i64 64
  br label %.thread8263

bb.bl:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820
  %i.jpr = shufflevector <8 x float> %.0.i28337863788279167961802180928178, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jps = shufflevector <8 x float> %.0.i2831788479147963801980948176, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpt = shufflevector <8 x float> %.0.i282979187959802380908180, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpu = shufflevector <8 x float> %.0.i28277965801780968174, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpv = shufflevector <8 x float> %.0.i2825802580888182, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpw = shufflevector <8 x float> %.0.i282380988172, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpx = shufflevector <8 x float> %.0.i28218184, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpy = shufflevector <8 x float> %.0.i2819, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jpz = shufflevector <8 x float> %.0.i28337863788279167961802180928178, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqa = shufflevector <8 x float> %.0.i2831788479147963801980948176, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqb = shufflevector <8 x float> %.0.i282979187959802380908180, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqc = shufflevector <8 x float> %.0.i28277965801780968174, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqd = shufflevector <8 x float> %.0.i2825802580888182, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqe = shufflevector <8 x float> %.0.i282380988172, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqf = shufflevector <8 x float> %.0.i28218184, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqg = shufflevector <8 x float> %.0.i2819, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jqh = shufflevector <4 x float> %i.jpr, <4 x float> %i.jps, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqi = shufflevector <4 x float> %i.jpt, <4 x float> %i.jpu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqj = shufflevector <4 x float> %i.jpr, <4 x float> %i.jps, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jqk = shufflevector <4 x float> %i.jpt, <4 x float> %i.jpu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jql = shufflevector <4 x float> %i.jqh, <4 x float> %i.jqi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jqm = shufflevector <4 x float> %i.jqi, <4 x float> %i.jqh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jqn = shufflevector <4 x float> %i.jqj, <4 x float> %i.jqk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jqo = shufflevector <4 x float> %i.jqk, <4 x float> %i.jqj, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jqp = shufflevector <4 x float> %i.jpv, <4 x float> %i.jpw, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqq = shufflevector <4 x float> %i.jpx, <4 x float> %i.jpy, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqr = shufflevector <4 x float> %i.jpv, <4 x float> %i.jpw, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jqs = shufflevector <4 x float> %i.jpx, <4 x float> %i.jpy, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jqt = shufflevector <4 x float> %i.jqp, <4 x float> %i.jqq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jqu = shufflevector <4 x float> %i.jqq, <4 x float> %i.jqp, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jqv = shufflevector <4 x float> %i.jqr, <4 x float> %i.jqs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jqw = shufflevector <4 x float> %i.jqs, <4 x float> %i.jqr, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jqx = shufflevector <4 x float> %i.jpz, <4 x float> %i.jqa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqy = shufflevector <4 x float> %i.jqb, <4 x float> %i.jqc, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jqz = shufflevector <4 x float> %i.jpz, <4 x float> %i.jqa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jra = shufflevector <4 x float> %i.jqb, <4 x float> %i.jqc, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jrb = shufflevector <4 x float> %i.jqx, <4 x float> %i.jqy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jrc = shufflevector <4 x float> %i.jqy, <4 x float> %i.jqx, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jrd = shufflevector <4 x float> %i.jqz, <4 x float> %i.jra, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jre = shufflevector <4 x float> %i.jra, <4 x float> %i.jqz, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jrf = shufflevector <4 x float> %i.jqd, <4 x float> %i.jqe, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jrg = shufflevector <4 x float> %i.jqf, <4 x float> %i.jqg, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jrh = shufflevector <4 x float> %i.jqd, <4 x float> %i.jqe, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jri = shufflevector <4 x float> %i.jqf, <4 x float> %i.jqg, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.jrj = shufflevector <4 x float> %i.jrf, <4 x float> %i.jrg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jrk = shufflevector <4 x float> %i.jrg, <4 x float> %i.jrf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jrl = shufflevector <4 x float> %i.jrh, <4 x float> %i.jri, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jrm = shufflevector <4 x float> %i.jri, <4 x float> %i.jrh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.jrn = shufflevector <4 x float> %i.jql, <4 x float> %i.jqt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jro = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jrn)
  store <8 x bfloat> %i.jro, ptr %.524539236, align 1, !tbaa !20
  %i.jrp = getelementptr inbounds i8, ptr %.524539236, i64 %i.bh
  %i.jrq = shufflevector <4 x float> %i.jqm, <4 x float> %i.jqu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jrr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jrq)
  store <8 x bfloat> %i.jrr, ptr %i.jrp, align 1, !tbaa !20
  %i.jrs = getelementptr inbounds [2 x i8], ptr %.524539236, i64 %i.bj
  %i.jrt = shufflevector <4 x float> %i.jqn, <4 x float> %i.jqv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jru = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jrt)
  store <8 x bfloat> %i.jru, ptr %i.jrs, align 1, !tbaa !20
  %i.jrv = getelementptr inbounds i8, ptr %.524539236, i64 %i.bk
  %i.jrw = shufflevector <4 x float> %i.jqo, <4 x float> %i.jqw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jrx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jrw)
  store <8 x bfloat> %i.jrx, ptr %i.jrv, align 1, !tbaa !20
  %i.jry = getelementptr inbounds [2 x i8], ptr %.524539236, i64 %i.bm
  %i.jrz = shufflevector <4 x float> %i.jrb, <4 x float> %i.jrj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jsa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jrz)
  store <8 x bfloat> %i.jsa, ptr %i.jry, align 1, !tbaa !20
  %i.jsb = getelementptr inbounds i8, ptr %.524539236, i64 %i.bn
  %i.jsc = shufflevector <4 x float> %i.jrc, <4 x float> %i.jrk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jsd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jsc)
  store <8 x bfloat> %i.jsd, ptr %i.jsb, align 1, !tbaa !20
  %i.jse = getelementptr inbounds i8, ptr %.524539236, i64 %i.bo
  %i.jsf = shufflevector <4 x float> %i.jrd, <4 x float> %i.jrl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jsg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jsf)
  store <8 x bfloat> %i.jsg, ptr %i.jse, align 1, !tbaa !20
  %i.jsh = getelementptr inbounds i8, ptr %.524539236, i64 %i.bp
  %i.jsi = shufflevector <4 x float> %i.jre, <4 x float> %i.jrm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jsj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jsi)
  store <8 x bfloat> %i.jsj, ptr %i.jsh, align 1, !tbaa !20
  %i.jsk = getelementptr inbounds nuw i8, ptr %.524539236, i64 16
  br label %.thread8263

bb.bm:                                            ; preds = %._crit_edge9224
  store <8 x float> %.25183.lcssa, ptr %.723429237, align 32, !tbaa !20
  %i.jsl = getelementptr inbounds nuw i8, ptr %.723429237, i64 32
  store <8 x float> %.25187.lcssa, ptr %i.jsl, align 32, !tbaa !20
  %i.jsm = getelementptr inbounds nuw i8, ptr %.723429237, i64 64
  store <8 x float> %.25191.lcssa, ptr %i.jsm, align 32, !tbaa !20
  %i.jsn = getelementptr inbounds nuw i8, ptr %.723429237, i64 96
  store <8 x float> %.25195.lcssa, ptr %i.jsn, align 32, !tbaa !20
  %i.jso = getelementptr inbounds nuw i8, ptr %.723429237, i64 128
  store <8 x float> %.25199.lcssa, ptr %i.jso, align 32, !tbaa !20
  %i.jsp = getelementptr inbounds nuw i8, ptr %.723429237, i64 160
  store <8 x float> %.25203.lcssa, ptr %i.jsp, align 32, !tbaa !20
  %i.jsq = getelementptr inbounds nuw i8, ptr %.723429237, i64 192
  store <8 x float> %.25207.lcssa, ptr %i.jsq, align 32, !tbaa !20
  %i.jsr = getelementptr inbounds nuw i8, ptr %.723429237, i64 224
  store <8 x float> %.15210.lcssa, ptr %i.jsr, align 32, !tbaa !20
  br label %.thread8263

.thread8263:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820, %bb.bk, %.thread8260, %bb.bl, %bb.bm
  %.92457 = phi ptr [ %.524539236, %bb.bm ], [ %i.jsk, %bb.bl ], [ %.524539236, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2820 ], [ %i.jos, %.thread8260 ], [ %i.jpq, %bb.bk ] ; 2 uses
  %i.jss = getelementptr inbounds nuw i8, ptr %.723429237, i64 256 ; 2 uses
  %i.jst = add nuw nsw i32 %.124809234, 8         ; 3 uses
  %i.jsu = or disjoint i32 %i.jst, 7
  %i.jsv = icmp slt i32 %i.jsu, %5
  br i1 %i.jsv, label %bb.be, label %.preheader8909, !llvm.loop !509

.preheader8908:                                   ; preds = %.thread8361, %.preheader8909
  %.22481.lcssa = phi i32 [ %.12480.lcssa, %.preheader8909 ], [ %i.kua, %.thread8361 ] ; 2 uses
  %.62473.lcssa = phi ptr [ %.32470.lcssa, %.preheader8909 ], [ %.82475.lcssa, %.thread8361 ]
  %.102458.lcssa = phi ptr [ %.52453.lcssa, %.preheader8909 ], [ %.142462, %.thread8361 ]
  %.82343.lcssa = phi ptr [ %.72342.lcssa, %.preheader8909 ], [ %i.ktz, %.thread8361 ] ; 2 uses
  %i.jsw = icmp slt i32 %.22481.lcssa, %5
  br i1 %i.jsw, label %.lr.ph9304, label %._crit_edge9305

.lr.ph9304:                                       ; preds = %.preheader8908
  %.not2627 = icmp eq ptr %.32333, null
  br label %bb.bw

bb.bn:                                            ; preds = %.lr.ph9277, %.thread8361
  %.823439276 = phi ptr [ %.72342.lcssa, %.lr.ph9277 ], [ %i.ktz, %.thread8361 ] ; 9 uses
  %.1024589275 = phi ptr [ %.52453.lcssa, %.lr.ph9277 ], [ %.142462, %.thread8361 ] ; 20 uses
  %.624739274 = phi ptr [ %.32470.lcssa, %.lr.ph9277 ], [ %.82475.lcssa, %.thread8361 ] ; 4 uses
  %.224819273 = phi i32 [ %.12480.lcssa, %.lr.ph9277 ], [ %i.kua, %.thread8361 ]
  br i1 %12, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jsx = load <8 x float>, ptr %.823439276, align 32, !tbaa !20
  %i.jsy = getelementptr inbounds nuw i8, ptr %.823439276, i64 32
  %i.jsz = load <8 x float>, ptr %i.jsy, align 32, !tbaa !20
  %i.jta = getelementptr inbounds nuw i8, ptr %.823439276, i64 64
  %i.jtb = load <8 x float>, ptr %i.jta, align 32, !tbaa !20
  %i.jtc = getelementptr inbounds nuw i8, ptr %.823439276, i64 96
  %i.jtd = load <8 x float>, ptr %i.jtc, align 32, !tbaa !20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.05220 = phi nsz <8 x float> [ %i.jtb, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 3 uses
  %.05216 = phi nsz <8 x float> [ %i.jsz, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 3 uses
  %.05212 = phi nsz <8 x float> [ %i.jsx, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 3 uses
  %storemerge2633 = phi <8 x float> [ %i.jtd, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 3 uses
  br i1 %i.bg, label %.lr.ph9251.preheader, label %.preheader8905

.lr.ph9251.preheader:                             ; preds = %bb.bp
  br i1 %i.ci, label %.lr.ph9251.epil.preheader, label %.lr.ph9251

.preheader8905.loopexit.unr-lcssa:                ; preds = %.lr.ph9251
  br i1 %lcmp.mod11106.not.not, label %.lr.ph9251.epil.preheader, label %.preheader8905.loopexit

.lr.ph9251.epil.preheader:                        ; preds = %.preheader8905.loopexit.unr-lcssa, %.lr.ph9251.preheader
  %.724749249.epil.init = phi ptr [ %.624739274, %.lr.ph9251.preheader ], [ %i.jvv, %.preheader8905.loopexit.unr-lcssa ]
  %.025019248.epil.init = phi ptr [ %.19310, %.lr.ph9251.preheader ], [ %i.jvu, %.preheader8905.loopexit.unr-lcssa ]
  %.152139246.epil.init = phi <8 x float> [ %.05212, %.lr.ph9251.preheader ], [ %i.jvo, %.preheader8905.loopexit.unr-lcssa ]
  %.152179245.epil.init = phi <8 x float> [ %.05216, %.lr.ph9251.preheader ], [ %i.jvq, %.preheader8905.loopexit.unr-lcssa ]
  %.152219244.epil.init = phi <8 x float> [ %.05220, %.lr.ph9251.preheader ], [ %i.jvs, %.preheader8905.loopexit.unr-lcssa ]
  %.052249243.epil.init = phi <8 x float> [ %storemerge2633, %.lr.ph9251.preheader ], [ %i.jvt, %.preheader8905.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11111)
  %i.jte = load <4 x i64>, ptr %.025019248.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.jtf = load <2 x i64>, ptr %.724749249.epil.init, align 1, !tbaa !20
  %i.jtg = shufflevector <2 x i64> %i.jtf, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jth = bitcast <4 x i64> %i.jte to <8 x i32>
  %i.jti = shufflevector <8 x i32> %i.jth, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.jtj = bitcast <4 x i64> %i.jtg to <8 x i32>
  %i.jtk = shufflevector <8 x i32> %i.jtj, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.jtl = bitcast <4 x i64> %i.jte to <16 x bfloat> ; 2 uses
  %i.jtm = bitcast <4 x i64> %i.jtg to <16 x bfloat> ; 2 uses
  %i.jtn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152139246.epil.init, <16 x bfloat> nofpclass(nan inf) %i.jtl, <16 x bfloat> nofpclass(nan inf) %i.jtm)
  %i.jto = bitcast <8 x i32> %i.jtk to <16 x bfloat> ; 2 uses
  %i.jtp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152179245.epil.init, <16 x bfloat> nofpclass(nan inf) %i.jtl, <16 x bfloat> nofpclass(nan inf) %i.jto)
  %i.jtq = bitcast <8 x i32> %i.jti to <16 x bfloat> ; 2 uses
  %i.jtr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152219244.epil.init, <16 x bfloat> nofpclass(nan inf) %i.jtq, <16 x bfloat> nofpclass(nan inf) %i.jtm)
  %i.jts = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.052249243.epil.init, <16 x bfloat> nofpclass(nan inf) %i.jtq, <16 x bfloat> nofpclass(nan inf) %i.jto)
  br label %.preheader8905.loopexit

.preheader8905.loopexit:                          ; preds = %.preheader8905.loopexit.unr-lcssa, %.lr.ph9251.epil.preheader
  %.lcssa11000 = phi <8 x float> [ %i.jvo, %.preheader8905.loopexit.unr-lcssa ], [ %i.jtn, %.lr.ph9251.epil.preheader ]
  %.lcssa10999 = phi <8 x float> [ %i.jvq, %.preheader8905.loopexit.unr-lcssa ], [ %i.jtp, %.lr.ph9251.epil.preheader ]
  %.lcssa10998 = phi <8 x float> [ %i.jvs, %.preheader8905.loopexit.unr-lcssa ], [ %i.jtr, %.lr.ph9251.epil.preheader ]
  %.lcssa10997 = phi <8 x float> [ %i.jvt, %.preheader8905.loopexit.unr-lcssa ], [ %i.jts, %.lr.ph9251.epil.preheader ]
  %i.jtt = getelementptr i8, ptr %.624739274, i64 %i.cb
  %scevgep9998 = getelementptr i8, ptr %i.jtt, i64 16
  br label %.preheader8905

.preheader8905:                                   ; preds = %.preheader8905.loopexit, %bb.bp
  %.05224.lcssa = phi <8 x float> [ %storemerge2633, %bb.bp ], [ %.lcssa10997, %.preheader8905.loopexit ] ; 3 uses
  %.15221.lcssa = phi <8 x float> [ %.05220, %bb.bp ], [ %.lcssa10998, %.preheader8905.loopexit ] ; 3 uses
  %.15217.lcssa = phi <8 x float> [ %.05216, %bb.bp ], [ %.lcssa10999, %.preheader8905.loopexit ] ; 3 uses
  %.15213.lcssa = phi <8 x float> [ %.05212, %bb.bp ], [ %.lcssa11000, %.preheader8905.loopexit ] ; 3 uses
  %.02503.lcssa = phi i32 [ 0, %bb.bp ], [ %i.bu, %.preheader8905.loopexit ] ; 5 uses
  %.02501.lcssa = phi ptr [ %.19310, %bb.bp ], [ %indvars.iv9996, %.preheader8905.loopexit ] ; 3 uses
  %.72474.lcssa = phi ptr [ %.624739274, %bb.bp ], [ %scevgep9998, %.preheader8905.loopexit ] ; 4 uses
  %i.jtu = icmp slt i32 %.02503.lcssa, %7
  br i1 %i.jtu, label %.lr.ph9266.preheader, label %._crit_edge9267

.lr.ph9266.preheader:                             ; preds = %.preheader8905
  %i.jtv = sub i32 %7, %.02503.lcssa
  %.neg11241 = add i32 %.02503.lcssa, 1
  %xtraiter11114 = and i32 %i.jtv, 1
  %lcmp.mod11115.not = icmp eq i32 %xtraiter11114, 0
  br i1 %lcmp.mod11115.not, label %.lr.ph9266.prol.loopexit, label %.lr.ph9266.prol

.lr.ph9266.prol:                                  ; preds = %.lr.ph9266.preheader
  %i.jtw = load <8 x bfloat>, ptr %.02501.lcssa, align 1, !tbaa !20
  %i.jtx = fpext fast <8 x bfloat> %i.jtw to <8 x float> ; 3 uses
  %i.jty = load i64, ptr %.72474.lcssa, align 1, !tbaa !20
  %i.jtz = insertelement <2 x i64> poison, i64 %i.jty, i64 0
  %i.jua = bitcast <2 x i64> %i.jtz to <8 x i16>
  %i.jub = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jua, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.juc = bitcast <8 x i16> %i.jub to <4 x float> ; 2 uses
  %i.jud = shufflevector <4 x float> %i.juc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jue = shufflevector <8 x float> %i.jtx, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.juf = shufflevector <4 x float> %i.juc, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.jug = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jtx, <8 x float> nofpclass(nan inf) %i.jud, <8 x float> nofpclass(nan inf) %.15213.lcssa) ; 2 uses
  %i.juh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jtx, <8 x float> nofpclass(nan inf) %i.juf, <8 x float> nofpclass(nan inf) %.15217.lcssa) ; 2 uses
  %i.jui = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jue, <8 x float> nofpclass(nan inf) %i.jud, <8 x float> nofpclass(nan inf) %.15221.lcssa) ; 2 uses
  %i.juj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jue, <8 x float> nofpclass(nan inf) %i.juf, <8 x float> nofpclass(nan inf) %.05224.lcssa) ; 2 uses
  %i.juk = getelementptr inbounds nuw i8, ptr %.02501.lcssa, i64 16
  %i.jul = getelementptr inbounds nuw i8, ptr %.72474.lcssa, i64 8 ; 2 uses
  %i.jum = add nuw nsw i32 %.02503.lcssa, 1
  br label %.lr.ph9266.prol.loopexit

.lr.ph9266.prol.loopexit:                         ; preds = %.lr.ph9266.prol, %.lr.ph9266.preheader
  %.lcssa11005.unr = phi <8 x float> [ poison, %.lr.ph9266.preheader ], [ %i.jug, %.lr.ph9266.prol ]
  %.lcssa11004.unr = phi <8 x float> [ poison, %.lr.ph9266.preheader ], [ %i.juh, %.lr.ph9266.prol ]
  %.lcssa11003.unr = phi <8 x float> [ poison, %.lr.ph9266.preheader ], [ %i.jui, %.lr.ph9266.prol ]
  %.lcssa11002.unr = phi <8 x float> [ poison, %.lr.ph9266.preheader ], [ %i.juj, %.lr.ph9266.prol ]
  %.lcssa11001.unr = phi ptr [ poison, %.lr.ph9266.preheader ], [ %i.jul, %.lr.ph9266.prol ]
  %.824759265.unr = phi ptr [ %.72474.lcssa, %.lr.ph9266.preheader ], [ %i.jul, %.lr.ph9266.prol ]
  %.125029264.unr = phi ptr [ %.02501.lcssa, %.lr.ph9266.preheader ], [ %i.juk, %.lr.ph9266.prol ]
  %.125049263.unr = phi i32 [ %.02503.lcssa, %.lr.ph9266.preheader ], [ %i.jum, %.lr.ph9266.prol ]
  %.252149262.unr = phi <8 x float> [ %.15213.lcssa, %.lr.ph9266.preheader ], [ %i.jug, %.lr.ph9266.prol ]
  %.252189261.unr = phi <8 x float> [ %.15217.lcssa, %.lr.ph9266.preheader ], [ %i.juh, %.lr.ph9266.prol ]
  %.252229260.unr = phi <8 x float> [ %.15221.lcssa, %.lr.ph9266.preheader ], [ %i.jui, %.lr.ph9266.prol ]
  %.152259259.unr = phi <8 x float> [ %.05224.lcssa, %.lr.ph9266.preheader ], [ %i.juj, %.lr.ph9266.prol ]
  %i.jun = icmp eq i32 %7, %.neg11241
  br i1 %i.jun, label %._crit_edge9267, label %.lr.ph9266

.lr.ph9251:                                       ; preds = %.lr.ph9251.preheader, %.lr.ph9251
  %.724749249 = phi ptr [ %i.jvv, %.lr.ph9251 ], [ %.624739274, %.lr.ph9251.preheader ] ; 3 uses
  %.025019248 = phi ptr [ %i.jvu, %.lr.ph9251 ], [ %.19310, %.lr.ph9251.preheader ] ; 3 uses
  %.152139246 = phi <8 x float> [ %i.jvo, %.lr.ph9251 ], [ %.05212, %.lr.ph9251.preheader ]
  %.152179245 = phi <8 x float> [ %i.jvq, %.lr.ph9251 ], [ %.05216, %.lr.ph9251.preheader ]
  %.152219244 = phi <8 x float> [ %i.jvs, %.lr.ph9251 ], [ %.05220, %.lr.ph9251.preheader ]
  %.052249243 = phi <8 x float> [ %i.jvt, %.lr.ph9251 ], [ %storemerge2633, %.lr.ph9251.preheader ]
  %niter11113 = phi i32 [ %niter11113.next.1, %.lr.ph9251 ], [ 0, %.lr.ph9251.preheader ]
  %i.juo = load <4 x i64>, ptr %.025019248, align 1, !tbaa !20 ; 2 uses
  %i.jup = load <2 x i64>, ptr %.724749249, align 1, !tbaa !20
  %i.juq = shufflevector <2 x i64> %i.jup, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jur = bitcast <4 x i64> %i.juo to <8 x i32>
  %i.jus = shufflevector <8 x i32> %i.jur, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.jut = bitcast <4 x i64> %i.juq to <8 x i32>
  %i.juu = shufflevector <8 x i32> %i.jut, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.juv = bitcast <4 x i64> %i.juo to <16 x bfloat> ; 2 uses
  %i.juw = bitcast <4 x i64> %i.juq to <16 x bfloat> ; 2 uses
  %i.jux = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152139246, <16 x bfloat> nofpclass(nan inf) %i.juv, <16 x bfloat> nofpclass(nan inf) %i.juw)
  %i.juy = bitcast <8 x i32> %i.juu to <16 x bfloat> ; 2 uses
  %i.juz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152179245, <16 x bfloat> nofpclass(nan inf) %i.juv, <16 x bfloat> nofpclass(nan inf) %i.juy)
  %i.jva = bitcast <8 x i32> %i.jus to <16 x bfloat> ; 2 uses
  %i.jvb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152219244, <16 x bfloat> nofpclass(nan inf) %i.jva, <16 x bfloat> nofpclass(nan inf) %i.juw)
  %i.jvc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.052249243, <16 x bfloat> nofpclass(nan inf) %i.jva, <16 x bfloat> nofpclass(nan inf) %i.juy)
  %i.jvd = getelementptr inbounds nuw i8, ptr %.025019248, i64 32
  %i.jve = getelementptr inbounds nuw i8, ptr %.724749249, i64 16
  %i.jvf = load <4 x i64>, ptr %i.jvd, align 1, !tbaa !20 ; 2 uses
  %i.jvg = load <2 x i64>, ptr %i.jve, align 1, !tbaa !20
  %i.jvh = shufflevector <2 x i64> %i.jvg, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jvi = bitcast <4 x i64> %i.jvf to <8 x i32>
  %i.jvj = shufflevector <8 x i32> %i.jvi, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.jvk = bitcast <4 x i64> %i.jvh to <8 x i32>
  %i.jvl = shufflevector <8 x i32> %i.jvk, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.jvm = bitcast <4 x i64> %i.jvf to <16 x bfloat> ; 2 uses
  %i.jvn = bitcast <4 x i64> %i.jvh to <16 x bfloat> ; 2 uses
  %i.jvo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.jux, <16 x bfloat> nofpclass(nan inf) %i.jvm, <16 x bfloat> nofpclass(nan inf) %i.jvn) ; 3 uses
  %i.jvp = bitcast <8 x i32> %i.jvl to <16 x bfloat> ; 2 uses
  %i.jvq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.juz, <16 x bfloat> nofpclass(nan inf) %i.jvm, <16 x bfloat> nofpclass(nan inf) %i.jvp) ; 3 uses
  %i.jvr = bitcast <8 x i32> %i.jvj to <16 x bfloat> ; 2 uses
  %i.jvs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.jvb, <16 x bfloat> nofpclass(nan inf) %i.jvr, <16 x bfloat> nofpclass(nan inf) %i.jvn) ; 3 uses
  %i.jvt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.jvc, <16 x bfloat> nofpclass(nan inf) %i.jvr, <16 x bfloat> nofpclass(nan inf) %i.jvp) ; 3 uses
  %i.jvu = getelementptr inbounds nuw i8, ptr %.025019248, i64 64 ; 2 uses
  %i.jvv = getelementptr inbounds nuw i8, ptr %.724749249, i64 32 ; 2 uses
  %niter11113.next.1 = add nuw nsw i32 %niter11113, 2 ; 2 uses
  %niter11113.ncmp.1.not = icmp eq i32 %niter11113.next.1, %unroll_iter11112
  br i1 %niter11113.ncmp.1.not, label %.preheader8905.loopexit.unr-lcssa, label %.lr.ph9251, !llvm.loop !510

.lr.ph9266:                                       ; preds = %.lr.ph9266.prol.loopexit, %.lr.ph9266
  %.824759265 = phi ptr [ %i.jxb, %.lr.ph9266 ], [ %.824759265.unr, %.lr.ph9266.prol.loopexit ] ; 3 uses
  %.125029264 = phi ptr [ %i.jxa, %.lr.ph9266 ], [ %.125029264.unr, %.lr.ph9266.prol.loopexit ] ; 3 uses
  %.125049263 = phi i32 [ %i.jxc, %.lr.ph9266 ], [ %.125049263.unr, %.lr.ph9266.prol.loopexit ]
  %.252149262 = phi <8 x float> [ %i.jww, %.lr.ph9266 ], [ %.252149262.unr, %.lr.ph9266.prol.loopexit ]
  %.252189261 = phi <8 x float> [ %i.jwx, %.lr.ph9266 ], [ %.252189261.unr, %.lr.ph9266.prol.loopexit ]
  %.252229260 = phi <8 x float> [ %i.jwy, %.lr.ph9266 ], [ %.252229260.unr, %.lr.ph9266.prol.loopexit ]
  %.152259259 = phi <8 x float> [ %i.jwz, %.lr.ph9266 ], [ %.152259259.unr, %.lr.ph9266.prol.loopexit ]
  %i.jvw = load <8 x bfloat>, ptr %.125029264, align 1, !tbaa !20
  %i.jvx = fpext fast <8 x bfloat> %i.jvw to <8 x float> ; 3 uses
  %i.jvy = load i64, ptr %.824759265, align 1, !tbaa !20
  %i.jvz = insertelement <2 x i64> poison, i64 %i.jvy, i64 0
  %i.jwa = bitcast <2 x i64> %i.jvz to <8 x i16>
  %i.jwb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jwa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jwc = bitcast <8 x i16> %i.jwb to <4 x float> ; 2 uses
  %i.jwd = shufflevector <4 x float> %i.jwc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jwe = shufflevector <8 x float> %i.jvx, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.jwf = shufflevector <4 x float> %i.jwc, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.jwg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jvx, <8 x float> nofpclass(nan inf) %i.jwd, <8 x float> nofpclass(nan inf) %.252149262)
  %i.jwh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jvx, <8 x float> nofpclass(nan inf) %i.jwf, <8 x float> nofpclass(nan inf) %.252189261)
  %i.jwi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwe, <8 x float> nofpclass(nan inf) %i.jwd, <8 x float> nofpclass(nan inf) %.252229260)
  %i.jwj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwe, <8 x float> nofpclass(nan inf) %i.jwf, <8 x float> nofpclass(nan inf) %.152259259)
  %i.jwk = getelementptr inbounds nuw i8, ptr %.125029264, i64 16
  %i.jwl = getelementptr inbounds nuw i8, ptr %.824759265, i64 8
  %i.jwm = load <8 x bfloat>, ptr %i.jwk, align 1, !tbaa !20
  %i.jwn = fpext fast <8 x bfloat> %i.jwm to <8 x float> ; 3 uses
  %i.jwo = load i64, ptr %i.jwl, align 1, !tbaa !20
  %i.jwp = insertelement <2 x i64> poison, i64 %i.jwo, i64 0
  %i.jwq = bitcast <2 x i64> %i.jwp to <8 x i16>
  %i.jwr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jwq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jws = bitcast <8 x i16> %i.jwr to <4 x float> ; 2 uses
  %i.jwt = shufflevector <4 x float> %i.jws, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.jwu = shufflevector <8 x float> %i.jwn, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.jwv = shufflevector <4 x float> %i.jws, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.jww = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwn, <8 x float> nofpclass(nan inf) %i.jwt, <8 x float> nofpclass(nan inf) %i.jwg) ; 2 uses
  %i.jwx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwn, <8 x float> nofpclass(nan inf) %i.jwv, <8 x float> nofpclass(nan inf) %i.jwh) ; 2 uses
  %i.jwy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwu, <8 x float> nofpclass(nan inf) %i.jwt, <8 x float> nofpclass(nan inf) %i.jwi) ; 2 uses
  %i.jwz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jwu, <8 x float> nofpclass(nan inf) %i.jwv, <8 x float> nofpclass(nan inf) %i.jwj) ; 2 uses
  %i.jxa = getelementptr inbounds nuw i8, ptr %.125029264, i64 32
  %i.jxb = getelementptr inbounds nuw i8, ptr %.824759265, i64 16 ; 2 uses
  %i.jxc = add nuw nsw i32 %.125049263, 2         ; 2 uses
  %exitcond9999.not.1 = icmp eq i32 %i.jxc, %7
end_hunk_6
begin_hunk_7_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %i.kor = fmul fast <8 x float> %i.koi, %i.koh
  %i.kos = fmul fast <8 x float> %i.kor, %i.koq
  %i.kot = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kog, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kos)
  %i.kou = fneg fast <8 x float> %i.koi
  %i.kov = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kou, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.kot)
  %i.kow = fadd fast <8 x float> %i.kov, %i.koh
  %i.kox = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kog, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kow)
  %.neg8835 = fmul fast <8 x float> %i.kox, splat (float -2.000000e+00)
  %i.koy = select fast <8 x i1> %i.knt, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg8835
  %i.koz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.koy, <8 x float> splat (float f0x42B0C0A5))
  %i.kpa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.koz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kpb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpa, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.kpc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kpb, i32 1) ; 2 uses
  %i.kpd = fcmp fast ogt <8 x float> %i.kpc, %i.kpb
  %i.kpe = select <8 x i1> %i.kpd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.kpf = fsub fast <8 x float> %i.kpc, %i.kpe   ; 2 uses
  %i.kpg = fneg fast <8 x float> %i.kpf           ; 2 uses
  %i.kph = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kpg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.kpa)
  %i.kpi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.kpg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.kph) ; 8 uses
  %i.kpj = fmul fast <8 x float> %i.kpi, %i.kpi
  %i.kpk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.kpl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpk, <8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.kpm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpl, <8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.kpn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpm, <8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.kpo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpn, <8 x float> nofpclass(nan inf) %i.kpi, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.kpp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpo, <8 x float> nofpclass(nan inf) %i.kpj, <8 x float> nofpclass(nan inf) %i.kpi)
  %i.kpq = fadd fast <8 x float> %i.kpp, splat (float 1.000000e+00)
  %i.kpr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kpf)
  %i.kps = shl <8 x i32> %i.kpr, splat (i32 23)
  %i.kpt = add <8 x i32> %i.kps, splat (i32 1065353216)
  %i.kpu = bitcast <8 x i32> %i.kpt to <8 x float>
  %i.kpv = fmul fast <8 x float> %i.kpq, %i.kpu
  %i.kpw = fadd fast <8 x float> %i.kpv, splat (float 1.000000e+00)
  %i.kpx = fdiv fast <8 x float> splat (float 1.000000e+00), %i.kpw
  %i.kpy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kpx, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.kpz = fmul fast <8 x float> %i.kpy, %.25226
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280: ; preds = %bb.bs
  %i.kqa = load ptr, ptr %10, align 8, !tbaa !9   ; 2 uses
  %i.kqb = load float, ptr %i.kqa, align 4, !tbaa !74
  %i.kqc = insertelement <8 x float> poison, float %i.kqb, i64 0
  %i.kqd = shufflevector <8 x float> %i.kqc, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.kqa, i64 4
  %i.kqf = load float, ptr %i.kqe, align 4, !tbaa !74
  %i.kqg = insertelement <8 x float> poison, float %i.kqf, i64 0
  %i.kqh = shufflevector <8 x float> %i.kqg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.kqi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.35215, <8 x float> nofpclass(nan inf) %i.kqd, <8 x float> nofpclass(nan inf) %i.kqh)
  %i.kqj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kqi, <8 x float> zeroinitializer)
  %i.kqk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kqj, <8 x float> splat (float 1.000000e+00))
  %i.kql = fmul fast <8 x float> %i.kqk, %.35215
  %i.kqm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.35219, <8 x float> nofpclass(nan inf) %i.kqd, <8 x float> nofpclass(nan inf) %i.kqh)
  %i.kqn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kqm, <8 x float> zeroinitializer)
  %i.kqo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kqn, <8 x float> splat (float 1.000000e+00))
  %i.kqp = fmul fast <8 x float> %i.kqo, %.35219
  %i.kqq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.35223, <8 x float> nofpclass(nan inf) %i.kqd, <8 x float> nofpclass(nan inf) %i.kqh)
  %i.kqr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kqq, <8 x float> zeroinitializer)
  %i.kqs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kqr, <8 x float> splat (float 1.000000e+00))
  %i.kqt = fmul fast <8 x float> %i.kqs, %.35223
  %i.kqu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.25226, <8 x float> nofpclass(nan inf) %i.kqd, <8 x float> nofpclass(nan inf) %i.kqh)
  %i.kqv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kqu, <8 x float> zeroinitializer)
  %i.kqw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kqv, <8 x float> splat (float 1.000000e+00))
  %i.kqx = fmul fast <8 x float> %i.kqw, %.25226
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812:  ; preds = %bb.bs, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8268, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8271, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8274, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8277, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280
  %.0.i28138322 = phi <8 x float> [ %i.kqt, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280 ], [ %i.jxu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread ], [ %i.jyl, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8268 ], [ %i.jzd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8271 ], [ %i.kcf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8274 ], [ %i.kmu, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8277 ], [ %.35223, %bb.bs ] ; 5 uses
  %.0.i2817826782868320 = phi <8 x float> [ %i.kql, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280 ], [ %i.jxs, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread ], [ %i.jyd, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8268 ], [ %i.jyz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8271 ], [ %i.kaf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8274 ], [ %i.kgk, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8277 ], [ %.35215, %bb.bs ] ; 5 uses
  %.0.i281582888318 = phi <8 x float> [ %i.kqp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280 ], [ %i.jxt, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread ], [ %i.jyh, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8268 ], [ %i.jzb, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8271 ], [ %i.kbf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8274 ], [ %i.kjp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8277 ], [ %.35219, %bb.bs ] ; 5 uses
  %.0.i2811 = phi nsz <8 x float> [ %i.kqx, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8280 ], [ %i.jxv, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread ], [ %i.jyp, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8268 ], [ %i.jzf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8271 ], [ %i.kdf, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8274 ], [ %i.kpz, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2818.thread8277 ], [ %.25226, %bb.bs ] ; 5 uses
  switch i32 %i.b, label %.thread8361 [
    i32 8, label %.thread8358
    i32 4, label %bb.bt
    i32 1, label %bb.bu
  ]

.thread8358:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812
  %i.kqy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i2817826782868320)
  store <8 x bfloat> %i.kqy, ptr %.1024589275, align 1, !tbaa !20
  %i.kqz = getelementptr inbounds nuw i8, ptr %.1024589275, i64 16
  %i.kra = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i281582888318)
  store <8 x bfloat> %i.kra, ptr %i.kqz, align 1, !tbaa !20
  %i.krb = getelementptr inbounds nuw i8, ptr %.1024589275, i64 32
  %i.krc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i28138322)
  store <8 x bfloat> %i.krc, ptr %i.krb, align 1, !tbaa !20
  %i.krd = getelementptr inbounds nuw i8, ptr %.1024589275, i64 48
  %i.kre = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i2811)
  store <8 x bfloat> %i.kre, ptr %i.krd, align 1, !tbaa !20
  %i.krf = getelementptr inbounds nuw i8, ptr %.1024589275, i64 64
  br label %.thread8361

bb.bt:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812
  %i.krg = shufflevector <8 x float> %.0.i2817826782868320, <8 x float> %.0.i281582888318, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.krh = shufflevector <8 x float> %.0.i28138322, <8 x float> %.0.i2811, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kri = shufflevector <8 x float> %.0.i2817826782868320, <8 x float> %.0.i281582888318, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.krj = shufflevector <8 x float> %.0.i28138322, <8 x float> %.0.i2811, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.krk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.krg)
  store <8 x bfloat> %i.krk, ptr %.1024589275, align 1, !tbaa !20
  %i.krl = getelementptr inbounds nuw i8, ptr %.1024589275, i64 16
  %i.krm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.krh)
  store <8 x bfloat> %i.krm, ptr %i.krl, align 1, !tbaa !20
  %i.krn = getelementptr inbounds [2 x i8], ptr %.1024589275, i64 %i.bm ; 2 uses
  %i.kro = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kri)
  store <8 x bfloat> %i.kro, ptr %i.krn, align 1, !tbaa !20
  %i.krp = getelementptr inbounds nuw i8, ptr %i.krn, i64 16
  %i.krq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.krj)
  store <8 x bfloat> %i.krq, ptr %i.krp, align 1, !tbaa !20
  %i.krr = getelementptr inbounds nuw i8, ptr %.1024589275, i64 32
  br label %.thread8361

bb.bu:                                            ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812
  %i.krs = shufflevector <8 x float> %.0.i2817826782868320, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.krt = shufflevector <8 x float> %.0.i281582888318, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.kru = shufflevector <8 x float> %.0.i28138322, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.krv = shufflevector <8 x float> %.0.i2811, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.krw = shufflevector <8 x float> %.0.i2817826782868320, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.krx = shufflevector <8 x float> %.0.i281582888318, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.kry = shufflevector <8 x float> %.0.i28138322, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.krz = shufflevector <8 x float> %.0.i2811, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ksa = shufflevector <4 x float> %i.krs, <4 x float> %i.krt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ksb = shufflevector <4 x float> %i.kru, <4 x float> %i.krv, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ksc = shufflevector <4 x float> %i.krs, <4 x float> %i.krt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ksd = shufflevector <4 x float> %i.kru, <4 x float> %i.krv, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.kse = shufflevector <4 x float> %i.ksa, <4 x float> %i.ksb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ksf = shufflevector <4 x float> %i.ksb, <4 x float> %i.ksa, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ksg = shufflevector <4 x float> %i.ksc, <4 x float> %i.ksd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ksh = shufflevector <4 x float> %i.ksd, <4 x float> %i.ksc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ksi = shufflevector <4 x float> %i.krw, <4 x float> %i.krx, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ksj = shufflevector <4 x float> %i.kry, <4 x float> %i.krz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ksk = shufflevector <4 x float> %i.krw, <4 x float> %i.krx, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ksl = shufflevector <4 x float> %i.kry, <4 x float> %i.krz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ksm = shufflevector <4 x float> %i.ksi, <4 x float> %i.ksj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ksn = shufflevector <4 x float> %i.ksj, <4 x float> %i.ksi, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.kso = shufflevector <4 x float> %i.ksk, <4 x float> %i.ksl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ksp = shufflevector <4 x float> %i.ksl, <4 x float> %i.ksk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ksq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.kse)
  %i.ksr = bitcast <8 x bfloat> %i.ksq to <2 x i64>
  %i.kss = extractelement <2 x i64> %i.ksr, i64 0
  store i64 %i.kss, ptr %.1024589275, align 1, !tbaa !20
  %i.kst = getelementptr inbounds i8, ptr %.1024589275, i64 %i.bh
  %i.ksu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksf)
  %i.ksv = bitcast <8 x bfloat> %i.ksu to <2 x i64>
  %i.ksw = extractelement <2 x i64> %i.ksv, i64 0
  store i64 %i.ksw, ptr %i.kst, align 1, !tbaa !20
  %i.ksx = getelementptr inbounds [2 x i8], ptr %.1024589275, i64 %i.bj
  %i.ksy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksg)
  %i.ksz = bitcast <8 x bfloat> %i.ksy to <2 x i64>
  %i.kta = extractelement <2 x i64> %i.ksz, i64 0
  store i64 %i.kta, ptr %i.ksx, align 1, !tbaa !20
  %i.ktb = getelementptr inbounds i8, ptr %.1024589275, i64 %i.bk
  %i.ktc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksh)
  %i.ktd = bitcast <8 x bfloat> %i.ktc to <2 x i64>
  %i.kte = extractelement <2 x i64> %i.ktd, i64 0
  store i64 %i.kte, ptr %i.ktb, align 1, !tbaa !20
  %i.ktf = getelementptr inbounds [2 x i8], ptr %.1024589275, i64 %i.bm
  %i.ktg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksm)
  %i.kth = bitcast <8 x bfloat> %i.ktg to <2 x i64>
  %i.kti = extractelement <2 x i64> %i.kth, i64 0
  store i64 %i.kti, ptr %i.ktf, align 1, !tbaa !20
  %i.ktj = getelementptr inbounds i8, ptr %.1024589275, i64 %i.bn
  %i.ktk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksn)
  %i.ktl = bitcast <8 x bfloat> %i.ktk to <2 x i64>
  %i.ktm = extractelement <2 x i64> %i.ktl, i64 0
  store i64 %i.ktm, ptr %i.ktj, align 1, !tbaa !20
  %i.ktn = getelementptr inbounds i8, ptr %.1024589275, i64 %i.bo
  %i.kto = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.kso)
  %i.ktp = bitcast <8 x bfloat> %i.kto to <2 x i64>
  %i.ktq = extractelement <2 x i64> %i.ktp, i64 0
  store i64 %i.ktq, ptr %i.ktn, align 1, !tbaa !20
  %i.ktr = getelementptr inbounds i8, ptr %.1024589275, i64 %i.bp
  %i.kts = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.ksp)
  %i.ktt = bitcast <8 x bfloat> %i.kts to <2 x i64>
  %i.ktu = extractelement <2 x i64> %i.ktt, i64 0
  store i64 %i.ktu, ptr %i.ktr, align 1, !tbaa !20
  %i.ktv = getelementptr inbounds nuw i8, ptr %.1024589275, i64 8
  br label %.thread8361

bb.bv:                                            ; preds = %._crit_edge9267
  store <8 x float> %.25214.lcssa, ptr %.823439276, align 32, !tbaa !20
  %i.ktw = getelementptr inbounds nuw i8, ptr %.823439276, i64 32
  store <8 x float> %.25218.lcssa, ptr %i.ktw, align 32, !tbaa !20
  %i.ktx = getelementptr inbounds nuw i8, ptr %.823439276, i64 64
  store <8 x float> %.25222.lcssa, ptr %i.ktx, align 32, !tbaa !20
  %i.kty = getelementptr inbounds nuw i8, ptr %.823439276, i64 96
  store <8 x float> %.15225.lcssa, ptr %i.kty, align 32, !tbaa !20
  br label %.thread8361

.thread8361:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812, %bb.bt, %.thread8358, %bb.bu, %bb.bv
  %.142462 = phi ptr [ %.1024589275, %bb.bv ], [ %i.ktv, %bb.bu ], [ %.1024589275, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2812 ], [ %i.krf, %.thread8358 ], [ %i.krr, %bb.bt ] ; 2 uses
  %i.ktz = getelementptr inbounds nuw i8, ptr %.823439276, i64 128 ; 2 uses
  %i.kua = add nuw nsw i32 %.224819273, 4         ; 3 uses
  %i.kub = or disjoint i32 %i.kua, 3
  %i.kuc = icmp slt i32 %i.kub, %5
  br i1 %i.kuc, label %bb.bn, label %.preheader8908, !llvm.loop !512

bb.bw:                                            ; preds = %.lr.ph9304, %.thread8366
  %.923449303 = phi ptr [ %.82343.lcssa, %.lr.ph9304 ], [ %i.lds, %.thread8366 ] ; 3 uses
  %.1524639302 = phi ptr [ %.102458.lcssa, %.lr.ph9304 ], [ %.182466, %.thread8366 ] ; 16 uses
  %.924769301 = phi ptr [ %.62473.lcssa, %.lr.ph9304 ], [ %.112478.lcssa, %.thread8366 ] ; 4 uses
  %.324829300 = phi i32 [ %.22481.lcssa, %.lr.ph9304 ], [ %i.ldt, %.thread8366 ]
  br i1 %12, label %16, label %bb.bx

16:                                               ; preds = %bb.bw
  br i1 %.not2627, label %bb.by, label %17

17:                                               ; preds = %16
  %18 = load <8 x float>, ptr %i.geh, align 1, !tbaa !20
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kud = load <8 x float>, ptr %.923449303, align 32, !tbaa !20
  br label %bb.by

bb.by:                                            ; preds = %16, %17, %bb.bx
  %.05227 = phi nsz <8 x float> [ %i.kud, %bb.bx ], [ %18, %17 ], [ zeroinitializer, %16 ] ; 3 uses
  br i1 %i.bg, label %.lr.ph9287.preheader, label %.preheader8904

.lr.ph9287.preheader:                             ; preds = %bb.by
  br i1 %i.ck, label %.lr.ph9287.epil.preheader, label %.lr.ph9287

.preheader8904.loopexit.unr-lcssa:                ; preds = %.lr.ph9287
  br i1 %lcmp.mod11118.not, label %.preheader8904.loopexit, label %.lr.ph9287.epil.preheader

.lr.ph9287.epil.preheader:                        ; preds = %.preheader8904.loopexit.unr-lcssa, %.lr.ph9287.preheader
  %.1024779285.epil.init = phi ptr [ %.924769301, %.lr.ph9287.preheader ], [ %i.kwh, %.preheader8904.loopexit.unr-lcssa ]
  %.025099284.epil.init = phi ptr [ %.19310, %.lr.ph9287.preheader ], [ %i.kwg, %.preheader8904.loopexit.unr-lcssa ]
  %.152289282.epil.init = phi <8 x float> [ %.05227, %.lr.ph9287.preheader ], [ %i.kwf, %.preheader8904.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod11120)
  br label %.lr.ph9287.epil

.lr.ph9287.epil:                                  ; preds = %.lr.ph9287.epil, %.lr.ph9287.epil.preheader
  %.1024779285.epil = phi ptr [ %i.kul, %.lr.ph9287.epil ], [ %.1024779285.epil.init, %.lr.ph9287.epil.preheader ] ; 2 uses
  %.025099284.epil = phi ptr [ %i.kuk, %.lr.ph9287.epil ], [ %.025099284.epil.init, %.lr.ph9287.epil.preheader ] ; 2 uses
  %.152289282.epil = phi <8 x float> [ %i.kuj, %.lr.ph9287.epil ], [ %.152289282.epil.init, %.lr.ph9287.epil.preheader ]
  %epil.iter11117 = phi i32 [ %epil.iter11117.next, %.lr.ph9287.epil ], [ 0, %.lr.ph9287.epil.preheader ]
  %i.kue = load <16 x bfloat>, ptr %.025099284.epil, align 1, !tbaa !20
  %i.kuf = load i32, ptr %.1024779285.epil, align 4, !tbaa !113
  %i.kug = insertelement <8 x i32> poison, i32 %i.kuf, i64 0
  %i.kuh = shufflevector <8 x i32> %i.kug, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kui = bitcast <8 x i32> %i.kuh to <16 x bfloat>
  %i.kuj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152289282.epil, <16 x bfloat> nofpclass(nan inf) %i.kue, <16 x bfloat> nofpclass(nan inf) %i.kui) ; 2 uses
  %i.kuk = getelementptr inbounds nuw i8, ptr %.025099284.epil, i64 32
  %i.kul = getelementptr inbounds nuw i8, ptr %.1024779285.epil, i64 4
  %epil.iter11117.next = add i32 %epil.iter11117, 1 ; 2 uses
  %epil.iter11117.cmp.not = icmp eq i32 %epil.iter11117.next, %xtraiter11116
  br i1 %epil.iter11117.cmp.not, label %.preheader8904.loopexit, label %.lr.ph9287.epil, !llvm.loop !513

.preheader8904.loopexit:                          ; preds = %.lr.ph9287.epil, %.preheader8904.loopexit.unr-lcssa
  %.lcssa11008 = phi <8 x float> [ %i.kwf, %.preheader8904.loopexit.unr-lcssa ], [ %i.kuj, %.lr.ph9287.epil ]
  %i.kum = getelementptr i8, ptr %.924769301, i64 %i.cc
  %scevgep10000 = getelementptr i8, ptr %i.kum, i64 4
  br label %.preheader8904

.preheader8904:                                   ; preds = %.preheader8904.loopexit, %bb.by
  %.15228.lcssa = phi <8 x float> [ %.05227, %bb.by ], [ %.lcssa11008, %.preheader8904.loopexit ] ; 3 uses
  %.02511.lcssa = phi i32 [ 0, %bb.by ], [ %i.bu, %.preheader8904.loopexit ] ; 5 uses
  %.02509.lcssa = phi ptr [ %.19310, %bb.by ], [ %indvars.iv9996, %.preheader8904.loopexit ] ; 3 uses
  %.102477.lcssa = phi ptr [ %.924769301, %bb.by ], [ %scevgep10000, %.preheader8904.loopexit ] ; 4 uses
  %i.kun = icmp slt i32 %.02511.lcssa, %7
  br i1 %i.kun, label %.lr.ph9296.preheader, label %._crit_edge9297

.lr.ph9296.preheader:                             ; preds = %.preheader8904
  %i.kuo = sub i32 %7, %.02511.lcssa
  %.neg11242 = add i32 %.02511.lcssa, 1
  %xtraiter11123 = and i32 %i.kuo, 1
  %lcmp.mod11124.not = icmp eq i32 %xtraiter11123, 0
  br i1 %lcmp.mod11124.not, label %.lr.ph9296.prol.loopexit, label %.lr.ph9296.prol

.lr.ph9296.prol:                                  ; preds = %.lr.ph9296.preheader
  %i.kup = load <8 x bfloat>, ptr %.02509.lcssa, align 1, !tbaa !20
  %i.kuq = fpext fast <8 x bfloat> %i.kup to <8 x float>
  %i.kur = load i16, ptr %.102477.lcssa, align 2, !tbaa !76
  %i.kus = zext i16 %i.kur to i32
  %i.kut = shl nuw i32 %i.kus, 16
  %i.kuu = insertelement <8 x i32> poison, i32 %i.kut, i64 0
  %i.kuv = bitcast <8 x i32> %i.kuu to <8 x float>
  %i.kuw = shufflevector <8 x float> %i.kuv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kux = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kuq, <8 x float> nofpclass(nan inf) %i.kuw, <8 x float> nofpclass(nan inf) %.15228.lcssa) ; 2 uses
  %i.kuy = getelementptr inbounds nuw i8, ptr %.02509.lcssa, i64 16
  %i.kuz = getelementptr inbounds nuw i8, ptr %.102477.lcssa, i64 2 ; 2 uses
  %i.kva = add nuw nsw i32 %.02511.lcssa, 1
  br label %.lr.ph9296.prol.loopexit

.lr.ph9296.prol.loopexit:                         ; preds = %.lr.ph9296.prol, %.lr.ph9296.preheader
  %.lcssa11010.unr = phi <8 x float> [ poison, %.lr.ph9296.preheader ], [ %i.kux, %.lr.ph9296.prol ]
  %.lcssa11009.unr = phi ptr [ poison, %.lr.ph9296.preheader ], [ %i.kuz, %.lr.ph9296.prol ]
  %.1124789295.unr = phi ptr [ %.102477.lcssa, %.lr.ph9296.preheader ], [ %i.kuz, %.lr.ph9296.prol ]
  %.125109294.unr = phi ptr [ %.02509.lcssa, %.lr.ph9296.preheader ], [ %i.kuy, %.lr.ph9296.prol ]
  %.125129293.unr = phi i32 [ %.02511.lcssa, %.lr.ph9296.preheader ], [ %i.kva, %.lr.ph9296.prol ]
  %.252299292.unr = phi <8 x float> [ %.15228.lcssa, %.lr.ph9296.preheader ], [ %i.kux, %.lr.ph9296.prol ]
  %i.kvb = icmp eq i32 %7, %.neg11242
  br i1 %i.kvb, label %._crit_edge9297, label %.lr.ph9296

.lr.ph9287:                                       ; preds = %.lr.ph9287.preheader, %.lr.ph9287
  %.1024779285 = phi ptr [ %i.kwh, %.lr.ph9287 ], [ %.924769301, %.lr.ph9287.preheader ] ; 5 uses
  %.025099284 = phi ptr [ %i.kwg, %.lr.ph9287 ], [ %.19310, %.lr.ph9287.preheader ] ; 5 uses
  %.152289282 = phi <8 x float> [ %i.kwf, %.lr.ph9287 ], [ %.05227, %.lr.ph9287.preheader ]
  %niter11122 = phi i32 [ %niter11122.next.3, %.lr.ph9287 ], [ 0, %.lr.ph9287.preheader ]
  %i.kvc = load <16 x bfloat>, ptr %.025099284, align 1, !tbaa !20
  %i.kvd = load i32, ptr %.1024779285, align 4, !tbaa !113
  %i.kve = insertelement <8 x i32> poison, i32 %i.kvd, i64 0
  %i.kvf = shufflevector <8 x i32> %i.kve, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kvg = bitcast <8 x i32> %i.kvf to <16 x bfloat>
  %i.kvh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.152289282, <16 x bfloat> nofpclass(nan inf) %i.kvc, <16 x bfloat> nofpclass(nan inf) %i.kvg)
  %i.kvi = getelementptr inbounds nuw i8, ptr %.025099284, i64 32
  %i.kvj = getelementptr inbounds nuw i8, ptr %.1024779285, i64 4
  %i.kvk = load <16 x bfloat>, ptr %i.kvi, align 1, !tbaa !20
  %i.kvl = load i32, ptr %i.kvj, align 4, !tbaa !113
  %i.kvm = insertelement <8 x i32> poison, i32 %i.kvl, i64 0
  %i.kvn = shufflevector <8 x i32> %i.kvm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kvo = bitcast <8 x i32> %i.kvn to <16 x bfloat>
  %i.kvp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.kvh, <16 x bfloat> nofpclass(nan inf) %i.kvk, <16 x bfloat> nofpclass(nan inf) %i.kvo)
  %i.kvq = getelementptr inbounds nuw i8, ptr %.025099284, i64 64
  %i.kvr = getelementptr inbounds nuw i8, ptr %.1024779285, i64 8
  %i.kvs = load <16 x bfloat>, ptr %i.kvq, align 1, !tbaa !20
  %i.kvt = load i32, ptr %i.kvr, align 4, !tbaa !113
  %i.kvu = insertelement <8 x i32> poison, i32 %i.kvt, i64 0
  %i.kvv = shufflevector <8 x i32> %i.kvu, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kvw = bitcast <8 x i32> %i.kvv to <16 x bfloat>
  %i.kvx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.kvp, <16 x bfloat> nofpclass(nan inf) %i.kvs, <16 x bfloat> nofpclass(nan inf) %i.kvw)
  %i.kvy = getelementptr inbounds nuw i8, ptr %.025099284, i64 96
  %i.kvz = getelementptr inbounds nuw i8, ptr %.1024779285, i64 12
  %i.kwa = load <16 x bfloat>, ptr %i.kvy, align 1, !tbaa !20
  %i.kwb = load i32, ptr %i.kvz, align 4, !tbaa !113
  %i.kwc = insertelement <8 x i32> poison, i32 %i.kwb, i64 0
  %i.kwd = shufflevector <8 x i32> %i.kwc, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kwe = bitcast <8 x i32> %i.kwd to <16 x bfloat>
  %i.kwf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.kvx, <16 x bfloat> nofpclass(nan inf) %i.kwa, <16 x bfloat> nofpclass(nan inf) %i.kwe) ; 3 uses
  %i.kwg = getelementptr inbounds nuw i8, ptr %.025099284, i64 128 ; 2 uses
  %i.kwh = getelementptr inbounds nuw i8, ptr %.1024779285, i64 16 ; 2 uses
  %niter11122.next.3 = add i32 %niter11122, 4     ; 2 uses
  %niter11122.ncmp.3.not = icmp eq i32 %niter11122.next.3, %unroll_iter11121
  br i1 %niter11122.ncmp.3.not, label %.preheader8904.loopexit.unr-lcssa, label %.lr.ph9287, !llvm.loop !514

.lr.ph9296:                                       ; preds = %.lr.ph9296.prol.loopexit, %.lr.ph9296
  %.1124789295 = phi ptr [ %i.kxd, %.lr.ph9296 ], [ %.1124789295.unr, %.lr.ph9296.prol.loopexit ] ; 3 uses
  %.125109294 = phi ptr [ %i.kxc, %.lr.ph9296 ], [ %.125109294.unr, %.lr.ph9296.prol.loopexit ] ; 3 uses
  %.125129293 = phi i32 [ %i.kxe, %.lr.ph9296 ], [ %.125129293.unr, %.lr.ph9296.prol.loopexit ]
  %.252299292 = phi <8 x float> [ %i.kxb, %.lr.ph9296 ], [ %.252299292.unr, %.lr.ph9296.prol.loopexit ]
  %i.kwi = load <8 x bfloat>, ptr %.125109294, align 1, !tbaa !20
  %i.kwj = fpext fast <8 x bfloat> %i.kwi to <8 x float>
  %i.kwk = load i16, ptr %.1124789295, align 2, !tbaa !76
  %i.kwl = zext i16 %i.kwk to i32
  %i.kwm = shl nuw i32 %i.kwl, 16
  %i.kwn = insertelement <8 x i32> poison, i32 %i.kwm, i64 0
  %i.kwo = bitcast <8 x i32> %i.kwn to <8 x float>
  %i.kwp = shufflevector <8 x float> %i.kwo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kwq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwj, <8 x float> nofpclass(nan inf) %i.kwp, <8 x float> nofpclass(nan inf) %.252299292)
  %i.kwr = getelementptr inbounds nuw i8, ptr %.125109294, i64 16
  %i.kws = getelementptr inbounds nuw i8, ptr %.1124789295, i64 2
  %i.kwt = load <8 x bfloat>, ptr %i.kwr, align 1, !tbaa !20
  %i.kwu = fpext fast <8 x bfloat> %i.kwt to <8 x float>
  %i.kwv = load i16, ptr %i.kws, align 2, !tbaa !76
  %i.kww = zext i16 %i.kwv to i32
  %i.kwx = shl nuw i32 %i.kww, 16
  %i.kwy = insertelement <8 x i32> poison, i32 %i.kwx, i64 0
  %i.kwz = bitcast <8 x i32> %i.kwy to <8 x float>
  %i.kxa = shufflevector <8 x float> %i.kwz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kxb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kwu, <8 x float> nofpclass(nan inf) %i.kxa, <8 x float> nofpclass(nan inf) %i.kwq) ; 2 uses
  %i.kxc = getelementptr inbounds nuw i8, ptr %.125109294, i64 32
  %i.kxd = getelementptr inbounds nuw i8, ptr %.1124789295, i64 4 ; 2 uses
  %i.kxe = add nuw nsw i32 %.125129293, 2         ; 2 uses
  %exitcond10001.not.1 = icmp eq i32 %i.kxe, %7
  br i1 %exitcond10001.not.1, label %._crit_edge9297, label %.lr.ph9296, !llvm.loop !515

._crit_edge9297:                                  ; preds = %.lr.ph9296.prol.loopexit, %.lr.ph9296, %.preheader8904
  %.25229.lcssa = phi <8 x float> [ %.15228.lcssa, %.preheader8904 ], [ %.lcssa11010.unr, %.lr.ph9296.prol.loopexit ], [ %i.kxb, %.lr.ph9296 ] ; 11 uses
  %.112478.lcssa = phi ptr [ %.102477.lcssa, %.preheader8904 ], [ %.lcssa11009.unr, %.lr.ph9296.prol.loopexit ], [ %i.kxd, %.lr.ph9296 ]
  br i1 %8, label %bb.bz, label %bb.ci

bb.bz:                                            ; preds = %._crit_edge9297
  switch i32 %9, label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2810 [
    i32 1, label %bb.ca
    i32 2, label %bb.cb
    i32 3, label %bb.cc
    i32 4, label %bb.cd
    i32 5, label %bb.ce
    i32 6, label %bb.cf
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.kxf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.25229.lcssa, <8 x float> zeroinitializer)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2810

bb.cb:                                            ; preds = %bb.bz
  %i.kxg = load ptr, ptr %10, align 8, !tbaa !9
  %i.kxh = load float, ptr %i.kxg, align 4, !tbaa !74
  %i.kxi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.25229.lcssa)
  %i.kxj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> zeroinitializer, <8 x float> nofpclass(nan inf) %.25229.lcssa)
  %i.kxk = insertelement <8 x float> poison, float %i.kxh, i64 0
  %i.kxl = shufflevector <8 x float> %i.kxk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kxm = fmul fast <8 x float> %i.kxl, %i.kxj
  %i.kxn = fadd fast <8 x float> %i.kxm, %i.kxi
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2810

bb.cc:                                            ; preds = %bb.bz
  %i.kxo = load ptr, ptr %10, align 8, !tbaa !9   ; 2 uses
  %i.kxp = load float, ptr %i.kxo, align 4, !tbaa !74
  %i.kxq = insertelement <8 x float> poison, float %i.kxp, i64 0
  %i.kxr = shufflevector <8 x float> %i.kxq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kxs = getelementptr inbounds nuw i8, ptr %i.kxo, i64 4
  %i.kxt = load float, ptr %i.kxs, align 4, !tbaa !74
  %i.kxu = insertelement <8 x float> poison, float %i.kxt, i64 0
  %i.kxv = shufflevector <8 x float> %i.kxu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kxw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.25229.lcssa, <8 x float> nofpclass(nan inf) %i.kxr)
  %i.kxx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kxw, <8 x float> nofpclass(nan inf) %i.kxv)
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit2810

bb.cd:                                            ; preds = %bb.bz
  %i.kxy = fneg fast <8 x float> %.25229.lcssa
  %i.kxz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.kxy, <8 x float> splat (float f0x42B0C0A5))
  %i.kya = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.kxz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kyb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.kya, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.kyc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.kyb, i32 1) ; 2 uses
  %i.kyd = fcmp fast ogt <8 x float> %i.kyc, %i.kyb
end_hunk_7
