Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rotaryembed_x86_avx512?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn22RotaryEmbed_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined:bb.a
  %i.rf = add nuw nsw i32 %.3278469, 2            ; 2 uses
  %exitcond520.not.1 = icmp eq i32 %i.rf, %.lcssa367
  br i1 %exitcond520.not.1, label %.loopexit, label %.lr.ph470, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %.lr.ph470.prol.loopexit, %.lr.ph470, %middle.block754, %vec.epilog.middle.block776, %middle.block, %vec.epilog.middle.block, %.preheader362, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rg = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.rh = sext i32 %i.rg to i64
  %i.ri = icmp slt i64 %indvars.iv.next, %i.rh
  br i1 %i.ri, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !78

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !47 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float>, <16 x float>, <16 x float>, i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn28rotaryembed_bf16s_avx512bf16ERKNS_3MatES2_S2_RS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL17rotaryembed_bf16sERKNS_3MatES2_S2_RS0_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !21     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.h = load i32, ptr %0, align 4, !tbaa !21     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !21
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !21
  %i.k = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %.not524 = icmp sgt i32 %i.k, %i.j
  br i1 %.not524, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !21     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.z = phi i32 [ %i.v, %.noexc.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv573 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next574, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !25, !noalias !113
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !26, !noalias !113
  %i.ac = mul i64 %i.ab, %indvars.iv573
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !113 ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load ptr, ptr %4, align 8, !tbaa !25, !noalias !114
  %i.ah = load i64, ptr %i.p, align 8, !tbaa !26, !noalias !114
  %i.ai = mul i64 %i.ah, %indvars.iv573
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !114 ; 2 uses
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak ; 2 uses
  %i.am = icmp sgt i32 %i.z, 0
  br i1 %i.am, label %.lr.ph523, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph523:                                        ; preds = %.noexc
  %i.an = load i32, ptr %i.o, align 4, !tbaa !20, !noalias !114
  %i.ao = sext i32 %i.an to i64
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !20, !noalias !113
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul i64 %i.ad, %i.aq
  %i.as = mul i64 %i.aj, %i.ao                    ; 2 uses
  br label %bb.c

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit, %.noexc
  %i.at = phi i32 [ %i.z, %.noexc ], [ %i.yn, %.loopexit ]
  %indvars.iv.next574 = add nsw i64 %indvars.iv573, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next574 to i32
  %exitcond576.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond576.not, label %._crit_edge, label %.noexc, !llvm.loop !93

bb.c:                                             ; preds = %.lr.ph523, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph523 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %i.au = load i32, ptr %6, align 4, !tbaa !21
  %.not297 = icmp eq i32 %i.au, 0
  %i.av = mul i64 %i.ar, %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.av ; 5 uses
  br i1 %.not297, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %7, align 8, !tbaa !25
  %i.ay = load i32, ptr %i.r, align 4, !tbaa !20
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %indvars.iv, %i.az
  %i.bb = load i64, ptr %i.s, align 8, !tbaa !19
  %i.bc = mul i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !25
  %i.bf = load i32, ptr %i.t, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %indvars.iv, %i.bg
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !19
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 2 uses
  %i.bl = mul i64 %i.as, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 31
  br i1 %i.bo, label %.lr.ph, label %..preheader417_crit_edge

..preheader417_crit_edge:                         ; preds = %bb.d
  %.pre = sdiv i32 %i.bn, 2
  br label %.preheader417

.preheader417:                                    ; preds = %.lr.ph, %..preheader417_crit_edge
  %.pre-phi580 = phi i32 [ %.pre, %..preheader417_crit_edge ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.0292.lcssa = phi ptr [ %i.bm, %..preheader417_crit_edge ], [ %i.du, %.lr.ph ] ; 2 uses
  %.0287.lcssa = phi i32 [ 0, %..preheader417_crit_edge ], [ %i.dx, %.lr.ph ] ; 3 uses
  %.0282.lcssa = phi ptr [ %i.bk, %..preheader417_crit_edge ], [ %i.dw, %.lr.ph ] ; 2 uses
  %.0277.lcssa = phi ptr [ %i.bd, %..preheader417_crit_edge ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.0273.lcssa = phi ptr [ %i.aw, %..preheader417_crit_edge ], [ %i.dt, %.lr.ph ] ; 2 uses
  %i.bp = or disjoint i32 %.0287.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %.pre-phi580
  br i1 %i.bq, label %.lr.ph433, label %.preheader416

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.0273423 = phi ptr [ %i.dt, %.lr.ph ], [ %i.aw, %bb.d ] ; 3 uses
  %.0277422 = phi ptr [ %i.dv, %.lr.ph ], [ %i.bd, %bb.d ] ; 2 uses
  %.0282421 = phi ptr [ %i.dw, %.lr.ph ], [ %i.bk, %bb.d ] ; 2 uses
  %.0287420 = phi i32 [ %i.dx, %.lr.ph ], [ 0, %bb.d ]
  %.0292419 = phi ptr [ %i.du, %.lr.ph ], [ %i.bm, %bb.d ] ; 3 uses
  %i.br = load <16 x i16>, ptr %.0273423, align 1, !tbaa !42 ; 2 uses
  %10 = shufflevector <16 x i16> %i.br, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %11 = shufflevector <16 x i16> %i.br, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bs = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bt = shufflevector <16 x i16> %10, <16 x i16> %11, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bu = bitcast <16 x i16> %i.bs to <8 x i32>
  %i.bv = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.bw = shufflevector <8 x i32> %i.bu, <8 x i32> %i.bv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = bitcast <16 x i32> %i.bw to <16 x float> ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0273423, i64 32
  %i.bz = load <16 x i16>, ptr %i.by, align 1, !tbaa !42 ; 2 uses
  %12 = shufflevector <16 x i16> %i.bz, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %13 = shufflevector <16 x i16> %i.bz, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ca = shufflevector <16 x i16> %12, <16 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cb = shufflevector <16 x i16> %12, <16 x i16> %13, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cc = bitcast <16 x i16> %i.ca to <8 x i32>
  %i.cd = bitcast <16 x i16> %i.cb to <8 x i32>
  %i.ce = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cf = bitcast <16 x i32> %i.ce to <16 x float> ; 2 uses
  %i.cg = load <16 x i16>, ptr %.0277422, align 1, !tbaa !42 ; 2 uses
  %14 = shufflevector <16 x i16> %i.cg, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %15 = shufflevector <16 x i16> %i.cg, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ch = shufflevector <16 x i16> %14, <16 x i16> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ci = shufflevector <16 x i16> %14, <16 x i16> %15, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cj = bitcast <16 x i16> %i.ch to <8 x i32>
  %i.ck = bitcast <16 x i16> %i.ci to <8 x i32>
  %i.cl = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cm = bitcast <16 x i32> %i.cl to <16 x float> ; 2 uses
  %i.cn = load <16 x i16>, ptr %.0282421, align 1, !tbaa !42 ; 2 uses
  %16 = shufflevector <16 x i16> %i.cn, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %17 = shufflevector <16 x i16> %i.cn, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.co = shufflevector <16 x i16> %16, <16 x i16> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cp = shufflevector <16 x i16> %16, <16 x i16> %17, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cq = bitcast <16 x i16> %i.co to <8 x i32>
  %i.cr = bitcast <16 x i16> %i.cp to <8 x i32>
  %i.cs = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i32> %i.cs to <16 x float> ; 2 uses
  %i.cu = shufflevector <16 x float> %i.cm, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.cv = shufflevector <16 x float> %i.cm, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.cw = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.cx = shufflevector <16 x float> %i.ct, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.cy = shufflevector <16 x float> %i.bx, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.cz = shufflevector <16 x float> %i.cf, <16 x float> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  %i.da = fmul fast <16 x float> %i.cw, %i.cy
  %i.db = fmul fast <16 x float> %i.cx, %i.cz
  %i.dc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.da, i32 4)
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.vfmaddsub.ps.512(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.db, i32 4)
  %i.de = bitcast <16 x float> %i.dc to <16 x i32>
  %i.df = lshr <16 x i32> %i.de, splat (i32 16)   ; 2 uses
  %i.dg = shufflevector <16 x i32> %i.df, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = shufflevector <16 x i32> %i.df, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.di = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dg, <8 x i32> %i.dh)
  %i.dj = bitcast <16 x i16> %i.di to <4 x i64>
  %i.dk = shufflevector <4 x i64> %i.dj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.dk, ptr %.0292419, align 1, !tbaa !42
  %i.dl = bitcast <16 x float> %i.dd to <16 x i32>
  %i.dm = lshr <16 x i32> %i.dl, splat (i32 16)   ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.dm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <16 x i32> %i.dm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dp = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dn, <8 x i32> %i.do)
  %i.dq = bitcast <16 x i16> %i.dp to <4 x i64>
  %i.dr = shufflevector <4 x i64> %i.dq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ds = getelementptr inbounds nuw i8, ptr %.0292419, i64 32
  store <4 x i64> %i.dr, ptr %i.ds, align 1, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %.0273423, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0292419, i64 64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0277422, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0282421, i64 32 ; 2 uses
  %i.dx = add nuw nsw i32 %.0287420, 16           ; 3 uses
  %i.dy = or disjoint i32 %i.dx, 15
  %i.dz = load i32, ptr %9, align 4, !tbaa !21
  %i.ea = sdiv i32 %i.dz, 2                       ; 2 uses
  %i.eb = icmp slt i32 %i.dy, %i.ea
  br i1 %i.eb, label %.lr.ph, label %.preheader417, !llvm.loop !94

.preheader416:                                    ; preds = %.lr.ph433, %.preheader417
  %.pre-phi578 = phi i32 [ %.pre-phi580, %.preheader417 ], [ %i.ft, %.lr.ph433 ] ; 2 uses
  %.1293.lcssa = phi ptr [ %.0292.lcssa, %.preheader417 ], [ %i.fn, %.lr.ph433 ] ; 2 uses
  %.1288.lcssa = phi i32 [ %.0287.lcssa, %.preheader417 ], [ %i.fq, %.lr.ph433 ] ; 3 uses
  %.1283.lcssa = phi ptr [ %.0282.lcssa, %.preheader417 ], [ %i.fp, %.lr.ph433 ] ; 2 uses
  %.1278.lcssa = phi ptr [ %.0277.lcssa, %.preheader417 ], [ %i.fo, %.lr.ph433 ] ; 2 uses
  %.1274.lcssa = phi ptr [ %.0273.lcssa, %.preheader417 ], [ %i.fm, %.lr.ph433 ] ; 2 uses
  %i.ec = or disjoint i32 %.1288.lcssa, 3
  %i.ed = icmp slt i32 %i.ec, %.pre-phi578
  br i1 %i.ed, label %.lr.ph444, label %.preheader415

.lr.ph433:                                        ; preds = %.preheader417, %.lr.ph433
  %.1274432 = phi ptr [ %i.fm, %.lr.ph433 ], [ %.0273.lcssa, %.preheader417 ] ; 3 uses
  %.1278431 = phi ptr [ %i.fo, %.lr.ph433 ], [ %.0277.lcssa, %.preheader417 ] ; 2 uses
  %.1283430 = phi ptr [ %i.fp, %.lr.ph433 ], [ %.0282.lcssa, %.preheader417 ] ; 2 uses
  %.1288429 = phi i32 [ %i.fq, %.lr.ph433 ], [ %.0287.lcssa, %.preheader417 ]
  %.1293428 = phi ptr [ %i.fn, %.lr.ph433 ], [ %.0292.lcssa, %.preheader417 ] ; 3 uses
  %i.ee = load <8 x i16>, ptr %.1274432, align 1, !tbaa !42 ; 2 uses
  %18 = shufflevector <8 x i16> %i.ee, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %19 = shufflevector <8 x i16> %i.ee, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ef = shufflevector <8 x i16> %18, <8 x i16> %19, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = bitcast <16 x i16> %i.ef to <8 x float> ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1274432, i64 16
  %i.ei = load <8 x i16>, ptr %i.eh, align 1, !tbaa !42 ; 2 uses
  %20 = shufflevector <8 x i16> %i.ei, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %21 = shufflevector <8 x i16> %i.ei, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ej = shufflevector <8 x i16> %20, <8 x i16> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = bitcast <16 x i16> %i.ej to <8 x float> ; 2 uses
  %i.el = load <8 x i16>, ptr %.1278431, align 1, !tbaa !42 ; 2 uses
  %22 = shufflevector <8 x i16> %i.el, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %23 = shufflevector <8 x i16> %i.el, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.em = shufflevector <8 x i16> %22, <8 x i16> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.en = bitcast <16 x i16> %i.em to <8 x float> ; 2 uses
  %i.eo = load <8 x i16>, ptr %.1283430, align 1, !tbaa !42 ; 2 uses
  %24 = shufflevector <8 x i16> %i.eo, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %25 = shufflevector <8 x i16> %i.eo, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ep = shufflevector <8 x i16> %24, <8 x i16> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = bitcast <16 x i16> %i.ep to <8 x float> ; 2 uses
  %i.er = shufflevector <8 x float> %i.en, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.es = shufflevector <8 x float> %i.en, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.et = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.eu = shufflevector <8 x float> %i.eq, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.ev = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ew = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.ex = fmul fast <8 x float> %i.et, %i.ev
  %i.ey = fmul fast <8 x float> %i.eu, %i.ew
  %i.ez = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> nofpclass(nan inf) %i.er, <8 x float> nofpclass(nan inf) %i.ex)
  %i.fa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> nofpclass(nan inf) %i.ek, <8 x float> nofpclass(nan inf) %i.es, <8 x float> nofpclass(nan inf) %i.ey)
  %i.fb = bitcast <8 x float> %i.ez to <8 x i32>
  %i.fc = lshr <8 x i32> %i.fb, splat (i32 16)    ; 2 uses
  %i.fd = shufflevector <8 x i32> %i.fc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fe = shufflevector <8 x i32> %i.fc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ff = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fd, <4 x i32> %i.fe)
  store <8 x i16> %i.ff, ptr %.1293428, align 1, !tbaa !42
  %i.fg = bitcast <8 x float> %i.fa to <8 x i32>
  %i.fh = lshr <8 x i32> %i.fg, splat (i32 16)    ; 2 uses
  %i.fi = shufflevector <8 x i32> %i.fh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fj = shufflevector <8 x i32> %i.fh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.fi, <4 x i32> %i.fj)
  %i.fl = getelementptr inbounds nuw i8, ptr %.1293428, i64 16
  store <8 x i16> %i.fk, ptr %i.fl, align 1, !tbaa !42
  %i.fm = getelementptr inbounds nuw i8, ptr %.1274432, i64 32 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1293428, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1278431, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1283430, i64 16 ; 2 uses
  %i.fq = add nuw nsw i32 %.1288429, 8            ; 3 uses
  %i.fr = or disjoint i32 %i.fq, 7
  %i.fs = load i32, ptr %9, align 4, !tbaa !21
  %i.ft = sdiv i32 %i.fs, 2                       ; 2 uses
  %i.fu = icmp slt i32 %i.fr, %i.ft
  br i1 %i.fu, label %.lr.ph433, label %.preheader416, !llvm.loop !95

.preheader415:                                    ; preds = %.lr.ph444, %.preheader416
  %.pre-phi579 = phi i32 [ %.pre-phi578, %.preheader416 ], [ %i.hk, %.lr.ph444 ] ; 2 uses
  %.2294.lcssa = phi ptr [ %.1293.lcssa, %.preheader416 ], [ %i.he, %.lr.ph444 ] ; 2 uses
  %.2289.lcssa = phi i32 [ %.1288.lcssa, %.preheader416 ], [ %i.hh, %.lr.ph444 ] ; 3 uses
  %.2284.lcssa = phi ptr [ %.1283.lcssa, %.preheader416 ], [ %i.hg, %.lr.ph444 ] ; 2 uses
  %.2279.lcssa = phi ptr [ %.1278.lcssa, %.preheader416 ], [ %i.hf, %.lr.ph444 ] ; 2 uses
  %.2275.lcssa = phi ptr [ %.1274.lcssa, %.preheader416 ], [ %i.hd, %.lr.ph444 ] ; 2 uses
  %i.fv = or disjoint i32 %.2289.lcssa, 1
  %i.fw = icmp slt i32 %i.fv, %.pre-phi579
  br i1 %i.fw, label %.lr.ph455, label %.preheader413

.lr.ph444:                                        ; preds = %.preheader416, %.lr.ph444
  %.2275443 = phi ptr [ %i.hd, %.lr.ph444 ], [ %.1274.lcssa, %.preheader416 ] ; 3 uses
  %.2279442 = phi ptr [ %i.hf, %.lr.ph444 ], [ %.1278.lcssa, %.preheader416 ] ; 2 uses
  %.2284441 = phi ptr [ %i.hg, %.lr.ph444 ], [ %.1283.lcssa, %.preheader416 ] ; 2 uses
  %.2289440 = phi i32 [ %i.hh, %.lr.ph444 ], [ %.1288.lcssa, %.preheader416 ]
  %.2294439 = phi ptr [ %i.he, %.lr.ph444 ], [ %.1293.lcssa, %.preheader416 ] ; 2 uses
  %i.fx = load i64, ptr %.2275443, align 1, !tbaa !42
  %i.fy = insertelement <2 x i64> poison, i64 %i.fx, i64 0
  %i.fz = bitcast <2 x i64> %i.fy to <8 x i16>
  %26 = shufflevector <8 x i16> %i.fz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ga = bitcast <8 x i16> %26 to <4 x float>    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.2275443, i64 8
  %i.gc = load i64, ptr %i.gb, align 1, !tbaa !42
  %i.gd = insertelement <2 x i64> poison, i64 %i.gc, i64 0
  %i.ge = bitcast <2 x i64> %i.gd to <8 x i16>
  %27 = shufflevector <8 x i16> %i.ge, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gf = bitcast <8 x i16> %27 to <4 x float>    ; 2 uses
  %i.gg = load i64, ptr %.2279442, align 1, !tbaa !42
  %i.gh = insertelement <2 x i64> poison, i64 %i.gg, i64 0
  %i.gi = load i64, ptr %.2284441, align 1, !tbaa !42
  %i.gj = insertelement <2 x i64> poison, i64 %i.gi, i64 0
  %i.gk = bitcast <2 x i64> %i.gh to <8 x i16>
  %28 = shufflevector <8 x i16> %i.gk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gl = bitcast <8 x i16> %28 to <4 x float>    ; 2 uses
  %i.gm = bitcast <2 x i64> %i.gj to <8 x i16>
  %29 = shufflevector <8 x i16> %i.gm, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.gn = bitcast <8 x i16> %29 to <4 x float>    ; 2 uses
  %i.go = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gp = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gr = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.gs = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.gt = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.gu = fmul fast <4 x float> %i.gq, %i.gs
  %i.gv = fmul fast <4 x float> %i.gr, %i.gt
  %i.gw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.ga, <4 x float> nofpclass(nan inf) %i.go, <4 x float> nofpclass(nan inf) %i.gu)
  %i.gx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.gf, <4 x float> nofpclass(nan inf) %i.gp, <4 x float> nofpclass(nan inf) %i.gv)
  %i.gy = bitcast <4 x float> %i.gw to <4 x i32>
  %i.gz = lshr <4 x i32> %i.gy, splat (i32 16)
  %i.ha = bitcast <4 x float> %i.gx to <4 x i32>
  %i.hb = lshr <4 x i32> %i.ha, splat (i32 16)
  %i.hc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.gz, <4 x i32> %i.hb)
  store <8 x i16> %i.hc, ptr %.2294439, align 1, !tbaa !42
  %i.hd = getelementptr inbounds nuw i8, ptr %.2275443, i64 16 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.2294439, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.2279442, i64 8 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.2284441, i64 8 ; 2 uses
  %i.hh = add nuw nsw i32 %.2289440, 4            ; 3 uses
  %i.hi = or disjoint i32 %i.hh, 3
  %i.hj = load i32, ptr %9, align 4, !tbaa !21
  %i.hk = sdiv i32 %i.hj, 2                       ; 2 uses
  %i.hl = icmp slt i32 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph444, label %.preheader415, !llvm.loop !96

.preheader413:                                    ; preds = %.lr.ph455, %.preheader415
  %.3295.lcssa = phi ptr [ %.2294.lcssa, %.preheader415 ], [ %i.lr, %.lr.ph455 ] ; 10 uses
  %.3290.lcssa = phi i32 [ %.2289.lcssa, %.preheader415 ], [ %i.lu, %.lr.ph455 ] ; 7 uses
  %.3285.lcssa = phi ptr [ %.2284.lcssa, %.preheader415 ], [ %i.lt, %.lr.ph455 ] ; 8 uses
  %.3280.lcssa = phi ptr [ %.2279.lcssa, %.preheader415 ], [ %i.ls, %.lr.ph455 ] ; 8 uses
  %.3276.lcssa = phi ptr [ %.2275.lcssa, %.preheader415 ], [ %i.lq, %.lr.ph455 ] ; 8 uses
  %.lcssa = phi i32 [ %.pre-phi579, %.preheader415 ], [ %i.lx, %.lr.ph455 ] ; 4 uses
  %i.hm = icmp slt i32 %.3290.lcssa, %.lcssa
  br i1 %i.hm, label %iter.check807, label %.loopexit

iter.check807:                                    ; preds = %.preheader413
  %i.hn = xor i32 %.3290.lcssa, -1
  %i.ho = add i32 %.lcssa, %i.hn                  ; 3 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %i.hp, 1                ; 5 uses
  %min.iters.check781 = icmp ult i32 %i.ho, 7
  br i1 %min.iters.check781, label %.lr.ph467.preheader, label %vector.memcheck782

vector.memcheck782:                               ; preds = %iter.check807
  %i.hr = xor i32 %.3290.lcssa, -1
  %i.hs = add i32 %.lcssa, %i.hr
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = shl nuw nsw i64 %i.ht, 2
  %i.hv = add nuw nsw i64 %i.hu, 4                ; 2 uses
  %i.hw = getelementptr i8, ptr %.3295.lcssa, i64 %i.hv ; 3 uses
  %i.hx = getelementptr i8, ptr %.3276.lcssa, i64 %i.hv
  %i.hy = shl nuw nsw i64 %i.ht, 1
  %i.hz = add nuw nsw i64 %i.hy, 2                ; 2 uses
  %i.ia = getelementptr i8, ptr %.3280.lcssa, i64 %i.hz
  %i.ib = getelementptr i8, ptr %.3285.lcssa, i64 %i.hz
  %bound0 = icmp ult ptr %.3295.lcssa, %i.hx
  %bound1 = icmp ult ptr %.3276.lcssa, %i.hw
  %found.conflict = and i1 %bound0, %bound1
  %bound0783 = icmp ult ptr %.3295.lcssa, %i.ia
  %bound1784 = icmp ult ptr %.3280.lcssa, %i.hw
  %found.conflict785 = and i1 %bound0783, %bound1784
  %conflict.rdx786 = or i1 %found.conflict, %found.conflict785
  %bound0787 = icmp ult ptr %.3295.lcssa, %i.ib
  %bound1788 = icmp ult ptr %.3285.lcssa, %i.hw
  %found.conflict789 = and i1 %bound0787, %bound1788
  %conflict.rdx790 = or i1 %conflict.rdx786, %found.conflict789
  br i1 %conflict.rdx790, label %.lr.ph467.preheader, label %vector.main.loop.iter.check791

vector.main.loop.iter.check791:                   ; preds = %vector.memcheck782
  %min.iters.check792 = icmp ult i32 %i.ho, 31
  br i1 %min.iters.check792, label %vec.epilog.ph811, label %vector.ph793

vector.ph793:                                     ; preds = %vector.main.loop.iter.check791
  %i.ic = and i64 %i.hq, 24
  %n.vec794 = and i64 %i.hq, 8589934560           ; 6 uses
  %i.id = shl nuw nsw i64 %n.vec794, 2            ; 2 uses
  %i.ie = getelementptr i8, ptr %.3276.lcssa, i64 %i.id
  %i.if = shl nuw nsw i64 %n.vec794, 1            ; 2 uses
  %i.ig = getelementptr i8, ptr %.3280.lcssa, i64 %i.if
  %i.ih = getelementptr i8, ptr %.3285.lcssa, i64 %i.if
  %i.ii = trunc i64 %n.vec794 to i32
  %i.ij = add i32 %.3290.lcssa, %i.ii
  %i.ik = getelementptr i8, ptr %.3295.lcssa, i64 %i.id
  br label %vector.body795

vector.body795:                                   ; preds = %vector.ph793, %vector.body795
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next804, %vector.body795 ] ; 3 uses
  %i.il = shl i64 %index796, 2                    ; 2 uses
  %next.gep797 = getelementptr i8, ptr %.3276.lcssa, i64 %i.il
  %i.im = shl i64 %index796, 1                    ; 2 uses
  %next.gep798 = getelementptr i8, ptr %.3280.lcssa, i64 %i.im
  %next.gep799 = getelementptr i8, ptr %.3285.lcssa, i64 %i.im
  %next.gep800 = getelementptr i8, ptr %.3295.lcssa, i64 %i.il
  %wide.vec = load <64 x i16>, ptr %next.gep797, align 2, !tbaa !116, !alias.scope !117
  %i.in = freeze <64 x i16> %wide.vec             ; 2 uses
  %i.io = bitcast <64 x i16> %i.in to <32 x i32>
  %i.ip = bitcast <64 x i16> %i.in to <32 x i32>
  %i.iq = and <32 x i32> %i.ip, splat (i32 -65536)
  %i.ir = shl <32 x i32> %i.io, splat (i32 16)
  %i.is = bitcast <32 x i32> %i.ir to <32 x float> ; 2 uses
  %i.it = bitcast <32 x i32> %i.iq to <32 x float> ; 2 uses
  %wide.load802 = load <32 x i16>, ptr %next.gep798, align 2, !tbaa !116, !alias.scope !118
  %i.iu = zext <32 x i16> %wide.load802 to <32 x i32>
  %i.iv = shl nuw <32 x i32> %i.iu, splat (i32 16)
  %i.iw = bitcast <32 x i32> %i.iv to <32 x float> ; 2 uses
  %wide.load803 = load <32 x i16>, ptr %next.gep799, align 2, !tbaa !116, !alias.scope !119
  %i.ix = zext <32 x i16> %wide.load803 to <32 x i32>
  %i.iy = shl nuw <32 x i32> %i.ix, splat (i32 16)
  %i.iz = bitcast <32 x i32> %i.iy to <32 x float> ; 2 uses
  %i.ja = fmul fast <32 x float> %i.iw, %i.is
  %i.jb = fmul fast <32 x float> %i.iz, %i.it
  %i.jc = fsub fast <32 x float> %i.ja, %i.jb
  %i.jd = bitcast <32 x float> %i.jc to <32 x i32>
  %i.je = lshr <32 x i32> %i.jd, splat (i32 16)
  %i.jf = trunc nuw <32 x i32> %i.je to <32 x i16>
  %i.jg = fmul fast <32 x float> %i.iz, %i.is
  %i.jh = fmul fast <32 x float> %i.iw, %i.it
  %i.ji = fadd fast <32 x float> %i.jg, %i.jh
  %i.jj = bitcast <32 x float> %i.ji to <32 x i32>
  %i.jk = lshr <32 x i32> %i.jj, splat (i32 16)
  %i.jl = trunc nuw <32 x i32> %i.jk to <32 x i16>
  %interleaved.vec = shufflevector <32 x i16> %i.jf, <32 x i16> %i.jl, <64 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  store <64 x i16> %interleaved.vec, ptr %next.gep800, align 2, !tbaa !116, !alias.scope !120, !noalias !121
  %index.next804 = add nuw i64 %index796, 32      ; 2 uses
  %i.jm = icmp eq i64 %index.next804, %n.vec794
  br i1 %i.jm, label %middle.block805, label %vector.body795, !llvm.loop !102

middle.block805:                                  ; preds = %vector.body795
  %cmp.n806 = icmp eq i64 %i.hq, %n.vec794
  br i1 %cmp.n806, label %.loopexit, label %vec.epilog.iter.check808

vec.epilog.iter.check808:                         ; preds = %middle.block805
  %min.epilog.iters.check810 = icmp eq i64 %i.ic, 0
  br i1 %min.epilog.iters.check810, label %.lr.ph467.preheader, label %vec.epilog.ph811, !prof !122

vec.epilog.ph811:                                 ; preds = %vector.main.loop.iter.check791, %vec.epilog.iter.check808
  %vec.epilog.resume.val812 = phi i64 [ %n.vec794, %vec.epilog.iter.check808 ], [ 0, %vector.main.loop.iter.check791 ]
  %n.vec813 = and i64 %i.hq, 8589934584           ; 5 uses
  %i.jn = shl nuw nsw i64 %n.vec813, 2            ; 2 uses
  %i.jo = getelementptr i8, ptr %.3276.lcssa, i64 %i.jn
  %i.jp = shl nuw nsw i64 %n.vec813, 1            ; 2 uses
  %i.jq = getelementptr i8, ptr %.3280.lcssa, i64 %i.jp
  %i.jr = getelementptr i8, ptr %.3285.lcssa, i64 %i.jp
  %i.js = trunc i64 %n.vec813 to i32
  %i.jt = add i32 %.3290.lcssa, %i.js
  %i.ju = getelementptr i8, ptr %.3295.lcssa, i64 %i.jn
  br label %vec.epilog.vector.body814

vec.epilog.vector.body814:                        ; preds = %vec.epilog.vector.body814, %vec.epilog.ph811
  %index815 = phi i64 [ %vec.epilog.resume.val812, %vec.epilog.ph811 ], [ %index.next826, %vec.epilog.vector.body814 ] ; 3 uses
  %i.jv = shl i64 %index815, 2                    ; 2 uses
  %next.gep816 = getelementptr i8, ptr %.3276.lcssa, i64 %i.jv
  %i.jw = shl i64 %index815, 1                    ; 2 uses
  %next.gep817 = getelementptr i8, ptr %.3280.lcssa, i64 %i.jw
  %next.gep818 = getelementptr i8, ptr %.3285.lcssa, i64 %i.jw
  %next.gep819 = getelementptr i8, ptr %.3295.lcssa, i64 %i.jv
  %wide.vec820 = load <16 x i16>, ptr %next.gep816, align 2, !tbaa !116, !alias.scope !117
  %i.jx = freeze <16 x i16> %wide.vec820          ; 2 uses
  %i.jy = bitcast <16 x i16> %i.jx to <8 x i32>
  %i.jz = bitcast <16 x i16> %i.jx to <8 x i32>
  %i.ka = and <8 x i32> %i.jz, splat (i32 -65536)
  %i.kb = shl <8 x i32> %i.jy, splat (i32 16)
  %i.kc = bitcast <8 x i32> %i.kb to <8 x float>  ; 2 uses
  %i.kd = bitcast <8 x i32> %i.ka to <8 x float>  ; 2 uses
  %wide.load823 = load <8 x i16>, ptr %next.gep817, align 2, !tbaa !116, !alias.scope !118
  %i.ke = zext <8 x i16> %wide.load823 to <8 x i32>
  %i.kf = shl nuw <8 x i32> %i.ke, splat (i32 16)
  %i.kg = bitcast <8 x i32> %i.kf to <8 x float>  ; 2 uses
  %wide.load824 = load <8 x i16>, ptr %next.gep818, align 2, !tbaa !116, !alias.scope !119
  %i.kh = zext <8 x i16> %wide.load824 to <8 x i32>
  %i.ki = shl nuw <8 x i32> %i.kh, splat (i32 16)
  %i.kj = bitcast <8 x i32> %i.ki to <8 x float>  ; 2 uses
  %i.kk = fmul fast <8 x float> %i.kg, %i.kc
  %i.kl = fmul fast <8 x float> %i.kj, %i.kd
  %i.km = fsub fast <8 x float> %i.kk, %i.kl
  %i.kn = fmul fast <8 x float> %i.kj, %i.kc
  %i.ko = fmul fast <8 x float> %i.kg, %i.kd
  %i.kp = fadd fast <8 x float> %i.kn, %i.ko
  %i.kq = shufflevector <8 x float> %i.km, <8 x float> %i.kp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.kr = bitcast <16 x float> %i.kq to <16 x i32>
  %i.ks = lshr <16 x i32> %i.kr, splat (i32 16)
  %interleaved.vec825 = trunc nuw <16 x i32> %i.ks to <16 x i16>
  store <16 x i16> %interleaved.vec825, ptr %next.gep819, align 2, !tbaa !116, !alias.scope !120, !noalias !121
  %index.next826 = add nuw i64 %index815, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next826, %n.vec813
  br i1 %i.kt, label %vec.epilog.middle.block827, label %vec.epilog.vector.body814, !llvm.loop !103

vec.epilog.middle.block827:                       ; preds = %vec.epilog.vector.body814
  %cmp.n828 = icmp eq i64 %i.hq, %n.vec813
  br i1 %cmp.n828, label %.loopexit, label %.lr.ph467.preheader

.lr.ph467.preheader:                              ; preds = %iter.check807, %vector.memcheck782, %vec.epilog.iter.check808, %vec.epilog.middle.block827
  %.4466.ph = phi ptr [ %.3276.lcssa, %iter.check807 ], [ %.3276.lcssa, %vector.memcheck782 ], [ %i.ie, %vec.epilog.iter.check808 ], [ %i.jo, %vec.epilog.middle.block827 ]
  %.4281465.ph = phi ptr [ %.3280.lcssa, %iter.check807 ], [ %.3280.lcssa, %vector.memcheck782 ], [ %i.ig, %vec.epilog.iter.check808 ], [ %i.jq, %vec.epilog.middle.block827 ]
  %.4286464.ph = phi ptr [ %.3285.lcssa, %iter.check807 ], [ %.3285.lcssa, %vector.memcheck782 ], [ %i.ih, %vec.epilog.iter.check808 ], [ %i.jr, %vec.epilog.middle.block827 ]
  %.4291463.ph = phi i32 [ %.3290.lcssa, %iter.check807 ], [ %.3290.lcssa, %vector.memcheck782 ], [ %i.ij, %vec.epilog.iter.check808 ], [ %i.jt, %vec.epilog.middle.block827 ]
  %.4296462.ph = phi ptr [ %.3295.lcssa, %iter.check807 ], [ %.3295.lcssa, %vector.memcheck782 ], [ %i.ik, %vec.epilog.iter.check808 ], [ %i.ju, %vec.epilog.middle.block827 ]
  br label %.lr.ph467

.lr.ph455:                                        ; preds = %.preheader415, %.lr.ph455
  %.3276454 = phi ptr [ %i.lq, %.lr.ph455 ], [ %.2275.lcssa, %.preheader415 ] ; 2 uses
  %.3280453 = phi ptr [ %i.ls, %.lr.ph455 ], [ %.2279.lcssa, %.preheader415 ] ; 2 uses
  %.3285452 = phi ptr [ %i.lt, %.lr.ph455 ], [ %.2284.lcssa, %.preheader415 ] ; 2 uses
  %.3290451 = phi i32 [ %i.lu, %.lr.ph455 ], [ %.2289.lcssa, %.preheader415 ]
  %.3295450 = phi ptr [ %i.lr, %.lr.ph455 ], [ %.2294.lcssa, %.preheader415 ] ; 2 uses
  %i.ku = load i64, ptr %.3276454, align 1, !tbaa !42
  %i.kv = insertelement <2 x i64> poison, i64 %i.ku, i64 0
  %i.kw = bitcast <2 x i64> %i.kv to <8 x i16>
  %30 = shufflevector <8 x i16> %i.kw, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.kx = bitcast <8 x i16> %30 to <4 x float>    ; 2 uses
  %i.ky = load <2 x i16>, ptr %.3280453, align 2, !tbaa !116
  %i.kz = zext <2 x i16> %i.ky to <2 x i32>
  %i.la = shl nuw <2 x i32> %i.kz, splat (i32 16)
  %i.lb = bitcast <2 x i32> %i.la to <2 x float>
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ld = load <2 x i16>, ptr %.3285452, align 2, !tbaa !116
  %i.le = zext <2 x i16> %i.ld to <2 x i32>
  %i.lf = shl nuw <2 x i32> %i.le, splat (i32 16)
  %i.lg = bitcast <2 x i32> %i.lf to <2 x float>
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.li = shufflevector <4 x float> %i.kx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.lj = fmul fast <4 x float> %i.lh, %i.li
  %i.lk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> nofpclass(nan inf) %i.kx, <4 x float> nofpclass(nan inf) %i.lc, <4 x float> nofpclass(nan inf) %i.lj)
  %i.ll = bitcast <4 x float> %i.lk to <4 x i32>
  %i.lm = lshr <4 x i32> %i.ll, splat (i32 16)
  %i.ln = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.lm, <4 x i32> poison)
  %i.lo = bitcast <8 x i16> %i.ln to <2 x i64>
  %i.lp = extractelement <2 x i64> %i.lo, i64 0
  store i64 %i.lp, ptr %.3295450, align 1, !tbaa !42
  %i.lq = getelementptr inbounds nuw i8, ptr %.3276454, i64 8 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.3295450, i64 8 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.3280453, i64 4 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.3285452, i64 4 ; 2 uses
  %i.lu = add nuw nsw i32 %.3290451, 2            ; 3 uses
  %i.lv = or disjoint i32 %i.lu, 1
  %i.lw = load i32, ptr %9, align 4, !tbaa !21
  %i.lx = sdiv i32 %i.lw, 2                       ; 2 uses
  %i.ly = icmp slt i32 %i.lv, %i.lx
  br i1 %i.ly, label %.lr.ph455, label %.preheader413, !llvm.loop !104

.lr.ph467:                                        ; preds = %.lr.ph467.preheader, %.lr.ph467
  %.4466 = phi ptr [ %i.nb, %.lr.ph467 ], [ %.4466.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4281465 = phi ptr [ %i.lz, %.lr.ph467 ], [ %.4281465.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4286464 = phi ptr [ %i.mb, %.lr.ph467 ], [ %.4286464.ph, %.lr.ph467.preheader ] ; 2 uses
  %.4291463 = phi i32 [ %i.nd, %.lr.ph467 ], [ %.4291463.ph, %.lr.ph467.preheader ]
  %.4296462 = phi ptr [ %i.nc, %.lr.ph467 ], [ %.4296462.ph, %.lr.ph467.preheader ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.4281465, i64 2
  %i.ma = load i16, ptr %.4281465, align 2, !tbaa !116
  %i.mb = getelementptr inbounds nuw i8, ptr %.4286464, i64 2
  %i.mc = load i16, ptr %.4286464, align 2, !tbaa !116
  %i.md = load <2 x i16>, ptr %.4466, align 2, !tbaa !116
  %i.me = zext <2 x i16> %i.md to <2 x i32>
  %i.mf = shl nuw <2 x i32> %i.me, splat (i32 16) ; 2 uses
  %i.mg = bitcast <2 x i32> %i.mf to <2 x float>
  %i.mh = zext i16 %i.ma to i32
  %i.mi = shl nuw i32 %i.mh, 16
  %i.mj = zext i16 %i.mc to i32
  %i.mk = shl nuw i32 %i.mj, 16
  %i.ml = insertelement <2 x i32> poison, i32 %i.mk, i64 0
  %i.mm = bitcast <2 x i32> %i.ml to <2 x float>
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mo = bitcast <2 x i32> %i.mf to <2 x float>
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = fmul fast <2 x float> %i.mn, %i.mp      ; 2 uses
  %i.mr = insertelement <2 x i32> poison, i32 %i.mi, i64 0
  %i.ms = bitcast <2 x i32> %i.mr to <2 x float>
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul fast <2 x float> %i.mt, %i.mg      ; 2 uses
  %i.mv = fsub fast <2 x float> %i.mu, %i.mq
  %i.mw = fadd fast <2 x float> %i.mu, %i.mq
  %i.mx = shufflevector <2 x float> %i.mv, <2 x float> %i.mw, <2 x i32> <i32 0, i32 3>
  %i.my = bitcast <2 x float> %i.mx to <2 x i32>
  %i.mz = lshr <2 x i32> %i.my, splat (i32 16)
  %i.na = trunc nuw <2 x i32> %i.mz to <2 x i16>
  store <2 x i16> %i.na, ptr %.4296462, align 2, !tbaa !116
  %i.nb = getelementptr inbounds nuw i8, ptr %.4466, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.4296462, i64 4
  %i.nd = add nuw nsw i32 %.4291463, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nd, %.lcssa
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph467, !llvm.loop !105

bb.e:                                             ; preds = %bb.c
  %i.ne = load i32, ptr %9, align 4, !tbaa !21    ; 2 uses
  %i.nf = sdiv i32 %i.ne, 2                       ; 2 uses
  %i.ng = sext i32 %i.nf to i64                   ; 2 uses
  %i.nh = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ng ; 2 uses
  %i.ni = load ptr, ptr %7, align 8, !tbaa !25
  %i.nj = load i32, ptr %i.r, align 4, !tbaa !20
  %i.nk = sext i32 %i.nj to i64
  %i.nl = mul nsw i64 %indvars.iv, %i.nk
  %i.nm = load i64, ptr %i.s, align 8, !tbaa !19
  %i.nn = mul i64 %i.nl, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nn ; 2 uses
  %i.np = load ptr, ptr %8, align 8, !tbaa !25
  %i.nq = load i32, ptr %i.t, align 4, !tbaa !20
  %i.nr = sext i32 %i.nq to i64
  %i.ns = mul nsw i64 %indvars.iv, %i.nr
  %i.nt = load i64, ptr %i.u, align 8, !tbaa !19
  %i.nu = mul i64 %i.ns, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nu ; 2 uses
  %i.nw = mul i64 %i.as, %indvars.iv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.nw ; 3 uses
  %i.ny = getelementptr inbounds [2 x i8], ptr %i.nx, i64 %i.ng ; 2 uses
  %i.nz = icmp sgt i32 %i.ne, 31
  br i1 %i.nz, label %.lr.ph475, label %.preheader412

.preheader412:                                    ; preds = %.lr.ph475, %bb.e
  %.pre-phi = phi i32 [ %i.nf, %bb.e ], [ %i.qg, %.lr.ph475 ] ; 2 uses
  %.0268.lcssa = phi ptr [ %i.aw, %bb.e ], [ %i.px, %.lr.ph475 ] ; 2 uses
  %.0264.lcssa = phi ptr [ %i.nh, %bb.e ], [ %i.py, %.lr.ph475 ] ; 2 uses
  %.0260.lcssa = phi ptr [ %i.no, %bb.e ], [ %i.pz, %.lr.ph475 ] ; 2 uses
  %.0256.lcssa = phi ptr [ %i.nv, %bb.e ], [ %i.qa, %.lr.ph475 ] ; 2 uses
  %.0252.lcssa = phi ptr [ %i.nx, %bb.e ], [ %i.qb, %.lr.ph475 ] ; 2 uses
  %.0248.lcssa = phi ptr [ %i.ny, %bb.e ], [ %i.qc, %.lr.ph475 ] ; 2 uses
  %.0247.lcssa = phi i32 [ 0, %bb.e ], [ %i.qd, %.lr.ph475 ] ; 3 uses
  %i.oa = or disjoint i32 %.0247.lcssa, 7
  %i.ob = icmp slt i32 %i.oa, %.pre-phi
  br i1 %i.ob, label %.lr.ph490, label %.preheader411

.lr.ph475:                                        ; preds = %bb.e, %.lr.ph475
  %.0247474 = phi i32 [ %i.qd, %.lr.ph475 ], [ 0, %bb.e ]
  %.0248473 = phi ptr [ %i.qc, %.lr.ph475 ], [ %i.ny, %bb.e ] ; 2 uses
  %.0252472 = phi ptr [ %i.qb, %.lr.ph475 ], [ %i.nx, %bb.e ] ; 2 uses
  %.0256471 = phi ptr [ %i.qa, %.lr.ph475 ], [ %i.nv, %bb.e ] ; 2 uses
  %.0260470 = phi ptr [ %i.pz, %.lr.ph475 ], [ %i.no, %bb.e ] ; 2 uses
  %.0264469 = phi ptr [ %i.py, %.lr.ph475 ], [ %i.nh, %bb.e ] ; 2 uses
  %.0268468 = phi ptr [ %i.px, %.lr.ph475 ], [ %i.aw, %bb.e ] ; 2 uses
  %i.oc = load <16 x i16>, ptr %.0268468, align 1, !tbaa !42 ; 2 uses
  %31 = shufflevector <16 x i16> %i.oc, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %32 = shufflevector <16 x i16> %i.oc, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.od = shufflevector <16 x i16> %31, <16 x i16> %32, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oe = shufflevector <16 x i16> %31, <16 x i16> %32, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.of = bitcast <16 x i16> %i.od to <8 x i32>
  %i.og = bitcast <16 x i16> %i.oe to <8 x i32>
  %i.oh = shufflevector <8 x i32> %i.of, <8 x i32> %i.og, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oi = bitcast <16 x i32> %i.oh to <16 x float> ; 2 uses
  %i.oj = load <16 x i16>, ptr %.0264469, align 1, !tbaa !42 ; 2 uses
  %33 = shufflevector <16 x i16> %i.oj, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %34 = shufflevector <16 x i16> %i.oj, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ok = shufflevector <16 x i16> %33, <16 x i16> %34, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ol = shufflevector <16 x i16> %33, <16 x i16> %34, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.om = bitcast <16 x i16> %i.ok to <8 x i32>
  %i.on = bitcast <16 x i16> %i.ol to <8 x i32>
  %i.oo = shufflevector <8 x i32> %i.om, <8 x i32> %i.on, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.op = bitcast <16 x i32> %i.oo to <16 x float> ; 2 uses
  %i.oq = load <16 x i16>, ptr %.0260470, align 1, !tbaa !42 ; 2 uses
  %35 = shufflevector <16 x i16> %i.oq, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %36 = shufflevector <16 x i16> %i.oq, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.or = shufflevector <16 x i16> %35, <16 x i16> %36, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.os = shufflevector <16 x i16> %35, <16 x i16> %36, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ot = bitcast <16 x i16> %i.or to <8 x i32>
  %i.ou = bitcast <16 x i16> %i.os to <8 x i32>
  %i.ov = shufflevector <8 x i32> %i.ot, <8 x i32> %i.ou, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ow = bitcast <16 x i32> %i.ov to <16 x float> ; 2 uses
  %i.ox = load <16 x i16>, ptr %.0256471, align 1, !tbaa !42 ; 2 uses
  %37 = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %38 = shufflevector <16 x i16> %i.ox, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.oy = shufflevector <16 x i16> %37, <16 x i16> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.oz = shufflevector <16 x i16> %37, <16 x i16> %38, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pa = bitcast <16 x i16> %i.oy to <8 x i32>
  %i.pb = bitcast <16 x i16> %i.oz to <8 x i32>
  %i.pc = shufflevector <8 x i32> %i.pa, <8 x i32> %i.pb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pd = bitcast <16 x i32> %i.pc to <16 x float> ; 2 uses
  %i.pe = fmul fast <16 x float> %i.ow, %i.oi
  %i.pf = fneg fast <16 x float> %i.op
  %i.pg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.pf, <16 x float> nofpclass(nan inf) %i.pd, <16 x float> nofpclass(nan inf) %i.pe)
  %i.ph = fmul fast <16 x float> %i.ow, %i.op
  %i.pi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.oi, <16 x float> nofpclass(nan inf) %i.pd, <16 x float> nofpclass(nan inf) %i.ph)
  %i.pj = bitcast <16 x float> %i.pg to <16 x i32>
  %i.pk = lshr <16 x i32> %i.pj, splat (i32 16)   ; 2 uses
  %i.pl = shufflevector <16 x i32> %i.pk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pm = shufflevector <16 x i32> %i.pk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pn = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.pl, <8 x i32> %i.pm)
  %i.po = bitcast <16 x i16> %i.pn to <4 x i64>
  %i.pp = shufflevector <4 x i64> %i.po, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.pp, ptr %.0252472, align 1, !tbaa !42
  %i.pq = bitcast <16 x float> %i.pi to <16 x i32>
  %i.pr = lshr <16 x i32> %i.pq, splat (i32 16)   ; 2 uses
  %i.ps = shufflevector <16 x i32> %i.pr, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pt = shufflevector <16 x i32> %i.pr, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.pu = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ps, <8 x i32> %i.pt)
  %i.pv = bitcast <16 x i16> %i.pu to <4 x i64>
  %i.pw = shufflevector <4 x i64> %i.pv, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.pw, ptr %.0248473, align 1, !tbaa !42
  %i.px = getelementptr inbounds nuw i8, ptr %.0268468, i64 32 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.0264469, i64 32 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.0260470, i64 32 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.0256471, i64 32 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.0252472, i64 32 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.0248473, i64 32 ; 2 uses
  %i.qd = add nuw nsw i32 %.0247474, 16           ; 3 uses
  %i.qe = or disjoint i32 %i.qd, 15
  %i.qf = load i32, ptr %9, align 4, !tbaa !21
  %i.qg = sdiv i32 %i.qf, 2                       ; 2 uses
  %i.qh = icmp slt i32 %i.qe, %i.qg
  br i1 %i.qh, label %.lr.ph475, label %.preheader412, !llvm.loop !106

.preheader411:                                    ; preds = %.lr.ph490, %.preheader412
  %.pre-phi577 = phi i32 [ %.pre-phi, %.preheader412 ], [ %i.ru, %.lr.ph490 ] ; 2 uses
  %.1269.lcssa = phi ptr [ %.0268.lcssa, %.preheader412 ], [ %i.rl, %.lr.ph490 ] ; 2 uses
  %.1265.lcssa = phi ptr [ %.0264.lcssa, %.preheader412 ], [ %i.rm, %.lr.ph490 ] ; 2 uses
  %.1261.lcssa = phi ptr [ %.0260.lcssa, %.preheader412 ], [ %i.rn, %.lr.ph490 ] ; 2 uses
  %.1257.lcssa = phi ptr [ %.0256.lcssa, %.preheader412 ], [ %i.ro, %.lr.ph490 ] ; 2 uses
  %.1253.lcssa = phi ptr [ %.0252.lcssa, %.preheader412 ], [ %i.rp, %.lr.ph490 ] ; 2 uses
  %.1249.lcssa = phi ptr [ %.0248.lcssa, %.preheader412 ], [ %i.rq, %.lr.ph490 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0247.lcssa, %.preheader412 ], [ %i.rr, %.lr.ph490 ] ; 3 uses
  %i.qi = or disjoint i32 %.1.lcssa, 3
  %i.qj = icmp slt i32 %i.qi, %.pre-phi577
  br i1 %i.qj, label %.lr.ph505, label %.preheader

.lr.ph490:                                        ; preds = %.preheader412, %.lr.ph490
  %.1489 = phi i32 [ %i.rr, %.lr.ph490 ], [ %.0247.lcssa, %.preheader412 ]
  %.1249488 = phi ptr [ %i.rq, %.lr.ph490 ], [ %.0248.lcssa, %.preheader412 ] ; 2 uses
  %.1253487 = phi ptr [ %i.rp, %.lr.ph490 ], [ %.0252.lcssa, %.preheader412 ] ; 2 uses
  %.1257486 = phi ptr [ %i.ro, %.lr.ph490 ], [ %.0256.lcssa, %.preheader412 ] ; 2 uses
  %.1261485 = phi ptr [ %i.rn, %.lr.ph490 ], [ %.0260.lcssa, %.preheader412 ] ; 2 uses
  %.1265484 = phi ptr [ %i.rm, %.lr.ph490 ], [ %.0264.lcssa, %.preheader412 ] ; 2 uses
  %.1269483 = phi ptr [ %i.rl, %.lr.ph490 ], [ %.0268.lcssa, %.preheader412 ] ; 2 uses
  %i.qk = load <8 x i16>, ptr %.1269483, align 1, !tbaa !42 ; 2 uses
  %39 = shufflevector <8 x i16> %i.qk, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %40 = shufflevector <8 x i16> %i.qk, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.ql = shufflevector <8 x i16> %39, <8 x i16> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qm = bitcast <16 x i16> %i.ql to <8 x float> ; 2 uses
  %i.qn = load <8 x i16>, ptr %.1265484, align 1, !tbaa !42 ; 2 uses
  %41 = shufflevector <8 x i16> %i.qn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %42 = shufflevector <8 x i16> %i.qn, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.qo = shufflevector <8 x i16> %41, <8 x i16> %42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qp = bitcast <16 x i16> %i.qo to <8 x float> ; 2 uses
  %i.qq = load <8 x i16>, ptr %.1261485, align 1, !tbaa !42 ; 2 uses
  %43 = shufflevector <8 x i16> %i.qq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %44 = shufflevector <8 x i16> %i.qq, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.qr = shufflevector <8 x i16> %43, <8 x i16> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qs = bitcast <16 x i16> %i.qr to <8 x float> ; 2 uses
  %i.qt = load <8 x i16>, ptr %.1257486, align 1, !tbaa !42 ; 2 uses
  %45 = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %46 = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.qu = shufflevector <8 x i16> %45, <8 x i16> %46, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qv = bitcast <16 x i16> %i.qu to <8 x float> ; 2 uses
  %i.qw = fmul fast <8 x float> %i.qs, %i.qm
  %i.qx = fneg fast <8 x float> %i.qp
  %i.qy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.qx, <8 x float> nofpclass(nan inf) %i.qv, <8 x float> nofpclass(nan inf) %i.qw)
  %i.qz = fmul fast <8 x float> %i.qs, %i.qp
  %i.ra = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qm, <8 x float> nofpclass(nan inf) %i.qv, <8 x float> nofpclass(nan inf) %i.qz)
  %i.rb = bitcast <8 x float> %i.qy to <8 x i32>
  %i.rc = lshr <8 x i32> %i.rb, splat (i32 16)    ; 2 uses
  %i.rd = shufflevector <8 x i32> %i.rc, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.re = shufflevector <8 x i32> %i.rc, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.rf = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.rd, <4 x i32> %i.re)
  store <8 x i16> %i.rf, ptr %.1253487, align 1, !tbaa !42
  %i.rg = bitcast <8 x float> %i.ra to <8 x i32>
  %i.rh = lshr <8 x i32> %i.rg, splat (i32 16)    ; 2 uses
  %i.ri = shufflevector <8 x i32> %i.rh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rj = shufflevector <8 x i32> %i.rh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.rk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ri, <4 x i32> %i.rj)
  store <8 x i16> %i.rk, ptr %.1249488, align 1, !tbaa !42
  %i.rl = getelementptr inbounds nuw i8, ptr %.1269483, i64 16 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.1265484, i64 16 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.1261485, i64 16 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.1257486, i64 16 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.1253487, i64 16 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.1249488, i64 16 ; 2 uses
  %i.rr = add nuw nsw i32 %.1489, 8               ; 3 uses
  %i.rs = or disjoint i32 %i.rr, 7
  %i.rt = load i32, ptr %9, align 4, !tbaa !21
  %i.ru = sdiv i32 %i.rt, 2                       ; 2 uses
  %i.rv = icmp slt i32 %i.rs, %i.ru
  br i1 %i.rv, label %.lr.ph490, label %.preheader411, !llvm.loop !107

.preheader:                                       ; preds = %.lr.ph505, %.preheader411
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %.preheader411 ], [ %i.wt, %.lr.ph505 ] ; 7 uses
  %.2266.lcssa = phi ptr [ %.1265.lcssa, %.preheader411 ], [ %i.wu, %.lr.ph505 ] ; 7 uses
  %.2262.lcssa = phi ptr [ %.1261.lcssa, %.preheader411 ], [ %i.wv, %.lr.ph505 ] ; 7 uses
  %.2258.lcssa = phi ptr [ %.1257.lcssa, %.preheader411 ], [ %i.ww, %.lr.ph505 ] ; 7 uses
  %.2254.lcssa = phi ptr [ %.1253.lcssa, %.preheader411 ], [ %i.wx, %.lr.ph505 ] ; 7 uses
  %.2250.lcssa = phi ptr [ %.1249.lcssa, %.preheader411 ], [ %i.wy, %.lr.ph505 ] ; 7 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader411 ], [ %i.wz, %.lr.ph505 ] ; 6 uses
  %.lcssa418 = phi i32 [ %.pre-phi577, %.preheader411 ], [ %i.xc, %.lr.ph505 ] ; 3 uses
  %.2258.lcssa715 = ptrtoaddr ptr %.2258.lcssa to i64 ; 2 uses
  %.2262.lcssa716 = ptrtoaddr ptr %.2262.lcssa to i64 ; 2 uses
  %.2270.lcssa717 = ptrtoaddr ptr %.2270.lcssa to i64 ; 2 uses
  %.2266.lcssa718 = ptrtoaddr ptr %.2266.lcssa to i64 ; 2 uses
  %.2254.lcssa719 = ptrtoaddr ptr %.2254.lcssa to i64 ; 2 uses
  %.2250.lcssa720 = ptrtoaddr ptr %.2250.lcssa to i64 ; 5 uses
  %i.rw = icmp slt i32 %.2.lcssa, %.lcssa418
  br i1 %i.rw, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.rx = xor i32 %.2.lcssa, -1
  %i.ry = add i32 %.lcssa418, %i.rx               ; 3 uses
  %i.rz = zext i32 %i.ry to i64
  %i.sa = add nuw nsw i64 %i.rz, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ry, 3
  br i1 %min.iters.check, label %.lr.ph521.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.sb = sub i64 %.2254.lcssa719, %.2250.lcssa720
  %i.sc = insertelement <8 x i64> poison, i64 %.2266.lcssa718, i64 0
  %i.sd = insertelement <8 x i64> %i.sc, i64 %.2270.lcssa717, i64 1
  %i.se = insertelement <8 x i64> %i.sd, i64 %.2262.lcssa716, i64 2
  %i.sf = insertelement <8 x i64> %i.se, i64 %.2258.lcssa715, i64 3
  %i.sg = insertelement <4 x i64> poison, i64 %.2254.lcssa719, i64 0
  %i.sh = sub i64 %.2266.lcssa718, %.2250.lcssa720
  %i.si = sub i64 %.2270.lcssa717, %.2250.lcssa720
  %i.sj = sub i64 %.2262.lcssa716, %.2250.lcssa720
  %i.sk = insertelement <8 x i64> poison, i64 %i.sb, i64 0
  %i.sl = shufflevector <4 x i64> %i.sg, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = sub <8 x i64> %i.sf, %i.sl
  %i.sn = shufflevector <8 x i64> %i.sk, <8 x i64> %i.sm, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.so = insertelement <8 x i64> %i.sn, i64 %i.sh, i64 5
  %i.sp = insertelement <8 x i64> %i.so, i64 %i.si, i64 6
  %i.sq = insertelement <8 x i64> %i.sp, i64 %i.sj, i64 7
  %i.sr = icmp ugt <8 x i64> %i.sq, splat (i64 -64)
  %i.ss = sub i64 %.2258.lcssa715, %.2250.lcssa720
  %diff.check734 = icmp ugt i64 %i.ss, -64
  %i.st = bitcast <8 x i1> %i.sr to i8
  %i.su = icmp ne i8 %i.st, 0
  %op.rdx = or i1 %i.su, %diff.check734
  br i1 %op.rdx, label %.lr.ph521.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check736 = icmp ult i32 %i.ry, 31
  br i1 %min.iters.check736, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sv = and i64 %i.sa, 28
  %n.vec = and i64 %i.sa, 8589934560              ; 5 uses
  %i.sw = trunc i64 %n.vec to i32
  %i.sx = add i32 %.2.lcssa, %i.sw
  %i.sy = shl nuw nsw i64 %n.vec, 1               ; 6 uses
  %i.sz = getelementptr i8, ptr %.2250.lcssa, i64 %i.sy
  %i.ta = getelementptr i8, ptr %.2254.lcssa, i64 %i.sy
  %i.tb = getelementptr i8, ptr %.2258.lcssa, i64 %i.sy
  %i.tc = getelementptr i8, ptr %.2262.lcssa, i64 %i.sy
  %i.td = getelementptr i8, ptr %.2266.lcssa, i64 %i.sy
  %i.te = getelementptr i8, ptr %.2270.lcssa, i64 %i.sy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tf = shl i64 %index, 1                       ; 6 uses
  %next.gep = getelementptr i8, ptr %.2250.lcssa, i64 %i.tf
  %next.gep737 = getelementptr i8, ptr %.2254.lcssa, i64 %i.tf
  %next.gep738 = getelementptr i8, ptr %.2258.lcssa, i64 %i.tf
  %next.gep739 = getelementptr i8, ptr %.2262.lcssa, i64 %i.tf
  %next.gep740 = getelementptr i8, ptr %.2266.lcssa, i64 %i.tf
  %next.gep741 = getelementptr i8, ptr %.2270.lcssa, i64 %i.tf
  %wide.load = load <32 x i16>, ptr %next.gep741, align 2, !tbaa !116
  %i.tg = zext <32 x i16> %wide.load to <32 x i32>
  %i.th = shl nuw <32 x i32> %i.tg, splat (i32 16)
  %i.ti = bitcast <32 x i32> %i.th to <32 x float> ; 2 uses
  %wide.load742 = load <32 x i16>, ptr %next.gep740, align 2, !tbaa !116
  %i.tj = zext <32 x i16> %wide.load742 to <32 x i32>
  %i.tk = shl nuw <32 x i32> %i.tj, splat (i32 16)
  %i.tl = bitcast <32 x i32> %i.tk to <32 x float> ; 2 uses
  %wide.load743 = load <32 x i16>, ptr %next.gep739, align 2, !tbaa !116
  %i.tm = zext <32 x i16> %wide.load743 to <32 x i32>
  %i.tn = shl nuw <32 x i32> %i.tm, splat (i32 16)
  %i.to = bitcast <32 x i32> %i.tn to <32 x float> ; 2 uses
  %wide.load744 = load <32 x i16>, ptr %next.gep738, align 2, !tbaa !116
  %i.tp = zext <32 x i16> %wide.load744 to <32 x i32>
  %i.tq = shl nuw <32 x i32> %i.tp, splat (i32 16)
  %i.tr = bitcast <32 x i32> %i.tq to <32 x float> ; 2 uses
  %i.ts = fmul fast <32 x float> %i.to, %i.ti
  %i.tt = fmul fast <32 x float> %i.tr, %i.tl
  %i.tu = fsub fast <32 x float> %i.ts, %i.tt
  %i.tv = bitcast <32 x float> %i.tu to <32 x i32>
  %i.tw = lshr <32 x i32> %i.tv, splat (i32 16)
  %i.tx = trunc nuw <32 x i32> %i.tw to <32 x i16>
  store <32 x i16> %i.tx, ptr %next.gep737, align 2, !tbaa !116
  %i.ty = fmul fast <32 x float> %i.tr, %i.ti
  %i.tz = fmul fast <32 x float> %i.to, %i.tl
  %i.ua = fadd fast <32 x float> %i.ty, %i.tz
  %i.ub = bitcast <32 x float> %i.ua to <32 x i32>
  %i.uc = lshr <32 x i32> %i.ub, splat (i32 16)
  %i.ud = trunc nuw <32 x i32> %i.uc to <32 x i16>
  store <32 x i16> %i.ud, ptr %next.gep, align 2, !tbaa !116
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ue = icmp eq i64 %index.next, %n.vec
  br i1 %i.ue, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph521.preheader, label %vec.epilog.ph, !prof !123

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec745 = and i64 %i.sa, 8589934588           ; 4 uses
  %i.uf = trunc i64 %n.vec745 to i32
  %i.ug = add i32 %.2.lcssa, %i.uf
  %i.uh = shl nuw nsw i64 %n.vec745, 1            ; 6 uses
  %i.ui = getelementptr i8, ptr %.2250.lcssa, i64 %i.uh
  %i.uj = getelementptr i8, ptr %.2254.lcssa, i64 %i.uh
  %i.uk = getelementptr i8, ptr %.2258.lcssa, i64 %i.uh
  %i.ul = getelementptr i8, ptr %.2262.lcssa, i64 %i.uh
  %i.um = getelementptr i8, ptr %.2266.lcssa, i64 %i.uh
  %i.un = getelementptr i8, ptr %.2270.lcssa, i64 %i.uh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index746 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next757, %vec.epilog.vector.body ] ; 2 uses
  %i.uo = shl i64 %index746, 1                    ; 6 uses
  %next.gep747 = getelementptr i8, ptr %.2250.lcssa, i64 %i.uo
  %next.gep748 = getelementptr i8, ptr %.2254.lcssa, i64 %i.uo
  %next.gep749 = getelementptr i8, ptr %.2258.lcssa, i64 %i.uo
  %next.gep750 = getelementptr i8, ptr %.2262.lcssa, i64 %i.uo
  %next.gep751 = getelementptr i8, ptr %.2266.lcssa, i64 %i.uo
  %next.gep752 = getelementptr i8, ptr %.2270.lcssa, i64 %i.uo
  %wide.load753 = load <4 x i16>, ptr %next.gep752, align 2, !tbaa !116
  %i.up = zext <4 x i16> %wide.load753 to <4 x i32>
  %i.uq = shl nuw <4 x i32> %i.up, splat (i32 16)
  %i.ur = bitcast <4 x i32> %i.uq to <4 x float>  ; 2 uses
  %wide.load754 = load <4 x i16>, ptr %next.gep751, align 2, !tbaa !116
  %i.us = zext <4 x i16> %wide.load754 to <4 x i32>
  %i.ut = shl nuw <4 x i32> %i.us, splat (i32 16)
  %i.uu = bitcast <4 x i32> %i.ut to <4 x float>  ; 2 uses
  %wide.load755 = load <4 x i16>, ptr %next.gep750, align 2, !tbaa !116
  %i.uv = zext <4 x i16> %wide.load755 to <4 x i32>
  %i.uw = shl nuw <4 x i32> %i.uv, splat (i32 16)
  %i.ux = bitcast <4 x i32> %i.uw to <4 x float>  ; 2 uses
  %wide.load756 = load <4 x i16>, ptr %next.gep749, align 2, !tbaa !116
  %i.uy = zext <4 x i16> %wide.load756 to <4 x i32>
  %i.uz = shl nuw <4 x i32> %i.uy, splat (i32 16)
  %i.va = bitcast <4 x i32> %i.uz to <4 x float>  ; 2 uses
  %i.vb = fmul fast <4 x float> %i.ux, %i.ur
  %i.vc = fmul fast <4 x float> %i.va, %i.uu
  %i.vd = fsub fast <4 x float> %i.vb, %i.vc
  %i.ve = bitcast <4 x float> %i.vd to <4 x i32>
  %i.vf = lshr <4 x i32> %i.ve, splat (i32 16)
  %i.vg = trunc nuw <4 x i32> %i.vf to <4 x i16>
  store <4 x i16> %i.vg, ptr %next.gep748, align 2, !tbaa !116
  %i.vh = fmul fast <4 x float> %i.va, %i.ur
  %i.vi = fmul fast <4 x float> %i.ux, %i.uu
  %i.vj = fadd fast <4 x float> %i.vh, %i.vi
  %i.vk = bitcast <4 x float> %i.vj to <4 x i32>
  %i.vl = lshr <4 x i32> %i.vk, splat (i32 16)
  %i.vm = trunc nuw <4 x i32> %i.vl to <4 x i16>
  store <4 x i16> %i.vm, ptr %next.gep747, align 2, !tbaa !116
  %index.next757 = add nuw i64 %index746, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next757, %n.vec745
  br i1 %i.vn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n758 = icmp eq i64 %i.sa, %n.vec745
  br i1 %cmp.n758, label %.loopexit, label %.lr.ph521.preheader

.lr.ph521.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3520.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.sx, %vec.epilog.iter.check ], [ %i.ug, %vec.epilog.middle.block ]
  %.3251519.ph = phi ptr [ %.2250.lcssa, %iter.check ], [ %.2250.lcssa, %vector.memcheck ], [ %i.sz, %vec.epilog.iter.check ], [ %i.ui, %vec.epilog.middle.block ]
  %.3255518.ph = phi ptr [ %.2254.lcssa, %iter.check ], [ %.2254.lcssa, %vector.memcheck ], [ %i.ta, %vec.epilog.iter.check ], [ %i.uj, %vec.epilog.middle.block ]
  %.3259517.ph = phi ptr [ %.2258.lcssa, %iter.check ], [ %.2258.lcssa, %vector.memcheck ], [ %i.tb, %vec.epilog.iter.check ], [ %i.uk, %vec.epilog.middle.block ]
  %.3263516.ph = phi ptr [ %.2262.lcssa, %iter.check ], [ %.2262.lcssa, %vector.memcheck ], [ %i.tc, %vec.epilog.iter.check ], [ %i.ul, %vec.epilog.middle.block ]
  %.3267515.ph = phi ptr [ %.2266.lcssa, %iter.check ], [ %.2266.lcssa, %vector.memcheck ], [ %i.td, %vec.epilog.iter.check ], [ %i.um, %vec.epilog.middle.block ]
  %.3271514.ph = phi ptr [ %.2270.lcssa, %iter.check ], [ %.2270.lcssa, %vector.memcheck ], [ %i.te, %vec.epilog.iter.check ], [ %i.un, %vec.epilog.middle.block ]
  br label %.lr.ph521

.lr.ph505:                                        ; preds = %.preheader411, %.lr.ph505
  %.2504 = phi i32 [ %i.wz, %.lr.ph505 ], [ %.1.lcssa, %.preheader411 ]
  %.2250503 = phi ptr [ %i.wy, %.lr.ph505 ], [ %.1249.lcssa, %.preheader411 ] ; 2 uses
  %.2254502 = phi ptr [ %i.wx, %.lr.ph505 ], [ %.1253.lcssa, %.preheader411 ] ; 2 uses
  %.2258501 = phi ptr [ %i.ww, %.lr.ph505 ], [ %.1257.lcssa, %.preheader411 ] ; 2 uses
  %.2262500 = phi ptr [ %i.wv, %.lr.ph505 ], [ %.1261.lcssa, %.preheader411 ] ; 2 uses
  %.2266499 = phi ptr [ %i.wu, %.lr.ph505 ], [ %.1265.lcssa, %.preheader411 ] ; 2 uses
  %.2270498 = phi ptr [ %i.wt, %.lr.ph505 ], [ %.1269.lcssa, %.preheader411 ] ; 2 uses
  %i.vo = load i64, ptr %.2270498, align 1, !tbaa !42
  %i.vp = insertelement <2 x i64> poison, i64 %i.vo, i64 0
  %i.vq = bitcast <2 x i64> %i.vp to <8 x i16>
  %47 = shufflevector <8 x i16> %i.vq, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.vr = bitcast <8 x i16> %47 to <4 x float>    ; 2 uses
  %i.vs = load i64, ptr %.2266499, align 1, !tbaa !42
  %i.vt = insertelement <2 x i64> poison, i64 %i.vs, i64 0
  %i.vu = bitcast <2 x i64> %i.vt to <8 x i16>
  %48 = shufflevector <8 x i16> %i.vu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.vv = bitcast <8 x i16> %48 to <4 x float>    ; 2 uses
  %i.vw = load i64, ptr %.2262500, align 1, !tbaa !42
  %i.vx = insertelement <2 x i64> poison, i64 %i.vw, i64 0
  %i.vy = bitcast <2 x i64> %i.vx to <8 x i16>
  %49 = shufflevector <8 x i16> %i.vy, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.vz = bitcast <8 x i16> %49 to <4 x float>    ; 2 uses
  %i.wa = load i64, ptr %.2258501, align 1, !tbaa !42
  %i.wb = insertelement <2 x i64> poison, i64 %i.wa, i64 0
  %i.wc = bitcast <2 x i64> %i.wb to <8 x i16>
  %50 = shufflevector <8 x i16> %i.wc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.wd = bitcast <8 x i16> %50 to <4 x float>    ; 2 uses
  %i.we = fmul fast <4 x float> %i.vz, %i.vr
  %i.wf = fneg fast <4 x float> %i.vv
  %i.wg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wf, <4 x float> nofpclass(nan inf) %i.wd, <4 x float> nofpclass(nan inf) %i.we)
  %i.wh = fmul fast <4 x float> %i.vz, %i.vv
  %i.wi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.vr, <4 x float> nofpclass(nan inf) %i.wd, <4 x float> nofpclass(nan inf) %i.wh)
  %i.wj = bitcast <4 x float> %i.wg to <4 x i32>
  %i.wk = lshr <4 x i32> %i.wj, splat (i32 16)
  %i.wl = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wk, <4 x i32> poison)
  %i.wm = bitcast <8 x i16> %i.wl to <2 x i64>
  %i.wn = extractelement <2 x i64> %i.wm, i64 0
  store i64 %i.wn, ptr %.2254502, align 1, !tbaa !42
  %i.wo = bitcast <4 x float> %i.wi to <4 x i32>
  %i.wp = lshr <4 x i32> %i.wo, splat (i32 16)
  %i.wq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.wp, <4 x i32> poison)
  %i.wr = bitcast <8 x i16> %i.wq to <2 x i64>
  %i.ws = extractelement <2 x i64> %i.wr, i64 0
  store i64 %i.ws, ptr %.2250503, align 1, !tbaa !42
  %i.wt = getelementptr inbounds nuw i8, ptr %.2270498, i64 8 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.2266499, i64 8 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.2262500, i64 8 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.2258501, i64 8 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.2254502, i64 8 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.2250503, i64 8 ; 2 uses
  %i.wz = add nuw nsw i32 %.2504, 4               ; 3 uses
  %i.xa = or disjoint i32 %i.wz, 3
  %i.xb = load i32, ptr %9, align 4, !tbaa !21
  %i.xc = sdiv i32 %i.xb, 2                       ; 2 uses
  %i.xd = icmp slt i32 %i.xa, %i.xc
  br i1 %i.xd, label %.lr.ph505, label %.preheader, !llvm.loop !110

.lr.ph521:                                        ; preds = %.lr.ph521.preheader, %.lr.ph521
  %.3520 = phi i32 [ %i.ym, %.lr.ph521 ], [ %.3520.ph, %.lr.ph521.preheader ]
  %.3251519 = phi ptr [ %i.yl, %.lr.ph521 ], [ %.3251519.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3255518 = phi ptr [ %i.ye, %.lr.ph521 ], [ %.3255518.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3259517 = phi ptr [ %i.xt, %.lr.ph521 ], [ %.3259517.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3263516 = phi ptr [ %i.xo, %.lr.ph521 ], [ %.3263516.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3267515 = phi ptr [ %i.xj, %.lr.ph521 ], [ %.3267515.ph, %.lr.ph521.preheader ] ; 2 uses
  %.3271514 = phi ptr [ %i.xe, %.lr.ph521 ], [ %.3271514.ph, %.lr.ph521.preheader ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.3271514, i64 2
  %i.xf = load i16, ptr %.3271514, align 2, !tbaa !116
  %i.xg = zext i16 %i.xf to i32
  %i.xh = shl nuw i32 %i.xg, 16
  %i.xi = bitcast i32 %i.xh to float              ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.3267515, i64 2
  %i.xk = load i16, ptr %.3267515, align 2, !tbaa !116
  %i.xl = zext i16 %i.xk to i32
  %i.xm = shl nuw i32 %i.xl, 16
  %i.xn = bitcast i32 %i.xm to float              ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.3263516, i64 2
  %i.xp = load i16, ptr %.3263516, align 2, !tbaa !116
  %i.xq = zext i16 %i.xp to i32
  %i.xr = shl nuw i32 %i.xq, 16
  %i.xs = bitcast i32 %i.xr to float              ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.3259517, i64 2
  %i.xu = load i16, ptr %.3259517, align 2, !tbaa !116
  %i.xv = zext i16 %i.xu to i32
  %i.xw = shl nuw i32 %i.xv, 16
  %i.xx = bitcast i32 %i.xw to float              ; 2 uses
  %i.xy = fmul fast float %i.xs, %i.xi
  %i.xz = fmul fast float %i.xx, %i.xn
  %i.ya = fsub fast float %i.xy, %i.xz
  %i.yb = bitcast float %i.ya to i32
  %i.yc = lshr i32 %i.yb, 16
  %i.yd = trunc nuw i32 %i.yc to i16
  %i.ye = getelementptr inbounds nuw i8, ptr %.3255518, i64 2
  store i16 %i.yd, ptr %.3255518, align 2, !tbaa !116
  %i.yf = fmul fast float %i.xx, %i.xi
  %i.yg = fmul fast float %i.xs, %i.xn
  %i.yh = fadd fast float %i.yf, %i.yg
  %i.yi = bitcast float %i.yh to i32
  %i.yj = lshr i32 %i.yi, 16
  %i.yk = trunc nuw i32 %i.yj to i16
  %i.yl = getelementptr inbounds nuw i8, ptr %.3251519, i64 2
  store i16 %i.yk, ptr %.3251519, align 2, !tbaa !116
  %i.ym = add nuw nsw i32 %.3520, 1               ; 2 uses
  %exitcond571.not = icmp eq i32 %i.ym, %.lcssa418
  br i1 %exitcond571.not, label %.loopexit, label %.lr.ph521, !llvm.loop !111

.loopexit:                                        ; preds = %.lr.ph467, %.lr.ph521, %middle.block805, %vec.epilog.middle.block827, %middle.block, %vec.epilog.middle.block, %.preheader413, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.yn = load i32, ptr %5, align 4, !tbaa !21    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = icmp slt i64 %indvars.iv.next, %i.yo
  br i1 %i.yp, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !112

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!12 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !11, i64 8, !11, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!13 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !16, i64 8, !17, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!19 = !{!18, !17, i64 16}
!20 = !{!18, !6, i64 44}
!21 = !{!6, !6, i64 0}
!22 = !{!18, !6, i64 48}
!23 = !{!18, !6, i64 56}
!24 = !{!12, !11, i64 8}
!25 = !{!18, !10, i64 0}
!26 = !{!18, !17, i64 64}
!27 = !{!12, !6, i64 4}
!28 = !{!"p1 omnipotent char", !10, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !17, i64 8, !5, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIiSaIiEE", !33, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !14, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !36, i64 0}
!38 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !30, i64 48, !30, i64 80, !34, i64 112, !34, i64 136, !37, i64 160, !37, i64 184}
!39 = !{!"_ZTSN4ncnn11RotaryEmbedE", !38, i64 0, !6, i64 208}
!40 = !{!39, !6, i64 208}
!41 = !{!"llvm.loop.unswitch.partial.disable"}
!42 = !{!5, !5, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
!47 = !{!46}
!48 = !{!12, !9, i64 32}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!18, !6, i64 24}
!52 = !{!"vtable pointer", !4, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!38, !9, i64 12}
!55 = distinct !{!55, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!56 = distinct !{!56, !55, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!58 = distinct !{!58, !57, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !43}
!61 = distinct !{!61, !43}
!62 = distinct !{!62, !43}
!63 = distinct !{!63, i1 false, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !43, !44, !45}
!69 = distinct !{!69, !43, !44, !45}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43, !44}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
end_hunk_0
