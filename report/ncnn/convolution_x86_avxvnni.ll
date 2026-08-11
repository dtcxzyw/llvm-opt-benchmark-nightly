inline.NumInlined: 76
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.aos = insertelement <8 x i16> poison, i16 %i.aor, i64 0
  %i.aot = shufflevector <8 x i16> %i.aos, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aou = load <8 x i8>, ptr %.56362016.us.epil.init, align 1, !tbaa !43
  %i.aov = sext <8 x i8> %i.aou to <8 x i16>
  %i.aow = mul <8 x i16> %i.aot, %i.aov
  %i.aox = sext <8 x i16> %i.aow to <8 x i32>
  %i.aoy = add <8 x i32> %.515532015.us.epil.init, %i.aox
  br label %._crit_edge2019.us

._crit_edge2019.us:                               ; preds = %._crit_edge2019.us.unr-lcssa, %.epil.preheader2346
  %.lcssa2343 = phi <8 x i32> [ %i.aok, %._crit_edge2019.us.unr-lcssa ], [ %i.aoy, %.epil.preheader2346 ] ; 2 uses
  %scevgep2197 = getelementptr i8, ptr %.46352023.us, i64 8
  %scevgep2198 = getelementptr i8, ptr %scevgep2197, i64 %i.anf
  %indvars.iv.next2203 = add nuw nsw i64 %indvars.iv2202, 1 ; 2 uses
  %i.aoz = trunc nuw i64 %indvars.iv.next2203 to i32
  %i.apa = icmp sgt i32 %i.aeo, %i.aoz
  br i1 %i.apa, label %.noexc668.us, label %._crit_edge2025, !llvm.loop !293

._crit_edge2025:                                  ; preds = %._crit_edge2019.us, %.noexc668.lr.ph, %.preheader
  %.41552.lcssa.in = phi <8 x i32> [ %.21550.lcssa.in, %.preheader ], [ %.21550.lcssa.in, %.noexc668.lr.ph ], [ %.lcssa2343, %._crit_edge2019.us ] ; 10 uses
  %.41552.lcssa = bitcast <8 x i32> %.41552.lcssa.in to <4 x i64> ; 2 uses
  %i.apb = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.apc = icmp eq i32 %i.apb, 8
  br i1 %i.apc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge2025
  store <8 x i32> %.41552.lcssa.in, ptr %.82034, align 32, !tbaa !43
  %i.apd = getelementptr inbounds nuw i8, ptr %.82034, i64 32
  %.pr1673 = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge2025
  %i.ape = phi i32 [ %.pr1673, %bb.y ], [ %i.apb, %._crit_edge2025 ] ; 2 uses
  %.9 = phi ptr [ %i.apd, %bb.y ], [ %.82034, %._crit_edge2025 ] ; 4 uses
  %i.apf = icmp eq i32 %i.ape, 4
  br i1 %i.apf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.apg = shufflevector <4 x i64> %.41552.lcssa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.apg, ptr %.9, align 16, !tbaa !43
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %.9, i64 %i.ag
  %i.api = shufflevector <4 x i64> %.41552.lcssa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.api, ptr %i.aph, align 16, !tbaa !43
  %i.apj = getelementptr inbounds nuw i8, ptr %.9, i64 16
  %.pre2207 = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.apk = phi i32 [ %.pre2207, %bb.aa ], [ %i.ape, %bb.z ]
  %.10 = phi ptr [ %i.apj, %bb.aa ], [ %.9, %bb.z ] ; 10 uses
  %i.apl = icmp eq i32 %i.apk, 1
  br i1 %i.apl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0.0.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 0
  store i32 %.sroa.0.0.vec.extract, ptr %.10, align 4, !tbaa !9
  %.sroa.0.4.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 1
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.10, i64 %i.ag
  store i32 %.sroa.0.4.vec.extract, ptr %i.apm, align 4, !tbaa !9
  %.sroa.0.8.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 2
  %i.apn = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx
  store i32 %.sroa.0.8.vec.extract, ptr %i.apn, align 4, !tbaa !9
  %.sroa.0.12.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 3
  %i.apo = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx639
  store i32 %.sroa.0.12.vec.extract, ptr %i.apo, align 4, !tbaa !9
  %.sroa.0.16.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 4
  %i.app = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx640
  store i32 %.sroa.0.16.vec.extract, ptr %i.app, align 4, !tbaa !9
  %.sroa.0.20.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 5
  %i.apq = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx641
  store i32 %.sroa.0.20.vec.extract, ptr %i.apq, align 4, !tbaa !9
  %.sroa.0.24.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 6
  %i.apr = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx642
  store i32 %.sroa.0.24.vec.extract, ptr %i.apr, align 4, !tbaa !9
  %.sroa.0.28.vec.extract = extractelement <8 x i32> %.41552.lcssa.in, i64 7
  %i.aps = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx643
  store i32 %.sroa.0.28.vec.extract, ptr %i.aps, align 4, !tbaa !9
  %i.apt = getelementptr inbounds nuw i8, ptr %.10, i64 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.11 = phi ptr [ %i.apt, %bb.ac ], [ %.10, %bb.ab ]
  %i.apu = add nuw nsw i32 %.26002033, 1          ; 2 uses
  %exitcond2205.not = icmp eq i32 %i.apu, %i.ao
  br i1 %exitcond2205.not, label %._crit_edge2035, label %.noexc673, !llvm.loop !294

._crit_edge2035:                                  ; preds = %bb.ad, %.preheader1690
  %i.apv = add nsw i32 %.02037, 1
  %i.apw = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.02037, %i.apw
  br i1 %.not.not, label %.noexc, label %._crit_edge2038

._crit_edge2038:                                  ; preds = %._crit_edge2035, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge2038, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #3 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !callback !295 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32>, <16 x i16>, <16 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32>, <8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  br label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %6, 1                        ; 2 uses
  %i.c = icmp eq i32 %7, 1
  %i.d = icmp eq i32 %8, 1
  %i.e = and i1 %i.c, %i.d
  %i.f = icmp eq i32 %9, 1
  %i.g = and i1 %i.e, %i.f
  %i.h = icmp eq i32 %10, 1                       ; 4 uses
  %i.i = icmp eq i32 %11, 1
  %i.j = and i1 %i.g, %i.i
  %i.k = and i1 %i.b, %i.j
  %or.cond9.i = and i1 %i.h, %i.k
  %.val.i = load ptr, ptr %1, align 8, !tbaa !32  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 71 uses
  br i1 %or.cond9.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16   ; 4 uses
  %i.p = icmp sgt i32 %3, 7
  br i1 %i.p, label %.lr.ph158.i.i, label %.preheader129.i.i

.lr.ph158.i.i:                                    ; preds = %bb.d
  %i.q = sdiv i32 %4, 8
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = lshr i32 %5, 3
  %i.t = shl i64 %i.m, 3
  %i.u = sext i32 %4 to i64
  %i.v = icmp sgt i32 %5, 3
  %i.w = shl i64 %i.m, 1                          ; 2 uses
  %i.x = mul i64 %i.m, 3
  %i.y = shl i64 %i.m, 2
  %i.z = and i32 %5, -4
  %i.aa = zext nneg i32 %3 to i64                 ; 4 uses
  %i.ab = sext i32 %2 to i64                      ; 2 uses
  switch i32 %i.o, label %.loopexit131.i.preheader.i [
    i32 8, label %.lr.ph158.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit402.i.us.i
  ]

.loopexit131.i.preheader.i:                       ; preds = %.lr.ph158.i.i
  %umax250.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 15)
  %i.ac = and i64 %umax250.i, 2147483640
  br label %.preheader129.loopexit.i.i

.lr.ph158.i.split.us.i:                           ; preds = %.lr.ph158.i.i
  %i.ad = icmp sgt i32 %5, 7
  br i1 %i.ad, label %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit403.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit403.i.us.preheader.i:        ; preds = %.lr.ph158.i.split.us.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 15)
  %i.ae = and i64 %umax.i, 2147483640
  br label %.preheader129.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit403.i.us.us.i:               ; preds = %.lr.ph158.i.split.us.i, %.loopexit131.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit131.i.loopexit.us.us.i ], [ 0, %.lr.ph158.i.split.us.i ] ; 2 uses
  %.0365157.i.us.us.i = phi ptr [ %i.bk, %.loopexit131.i.loopexit.us.us.i ], [ %.val.i, %.lr.ph158.i.split.us.i ]
  %i.af = load ptr, ptr %0, align 8, !tbaa !32, !noalias !297
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !297
  %i.ah = mul i64 %i.ag, %i.r
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !297
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = add nsw i64 %indvars.iv.i.us.us.i, %i.ab
  %i.am = shl nsw i64 %i.al, 3
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i
  %.1366136.i.us.us.i = phi ptr [ %i.bk, %.lr.ph.i.us.us.i ], [ %.0365157.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i ] ; 5 uses
  %.0379135.i.us.us.i = phi ptr [ %i.bl, %.lr.ph.i.us.us.i ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i ] ; 5 uses
  %.0380134.i.us.us.i = phi i32 [ %i.bm, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i ]
  %i.ao = load <4 x i32>, ptr %.0379135.i.us.us.i, align 1, !tbaa !43 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0379135.i.us.us.i, i64 16
  %i.aq = load <4 x i32>, ptr %i.ap, align 1, !tbaa !43 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0379135.i.us.us.i, i64 32
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !43 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0379135.i.us.us.i, i64 48
  %i.au = load <4 x i32>, ptr %i.at, align 1, !tbaa !43 ; 2 uses
  %i.av = shufflevector <4 x i32> %i.ao, <4 x i32> %i.aq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aw = shufflevector <4 x i32> %i.as, <4 x i32> %i.au, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ax = shufflevector <4 x i32> %i.ao, <4 x i32> %i.aq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ay = shufflevector <4 x i32> %i.as, <4 x i32> %i.au, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.az = bitcast <4 x i32> %i.av to <16 x i8>
  %i.ba = add <16 x i8> %i.az, splat (i8 127)
  %i.bb = bitcast <4 x i32> %i.aw to <16 x i8>
  %i.bc = add <16 x i8> %i.bb, splat (i8 127)
  %i.bd = bitcast <4 x i32> %i.ax to <16 x i8>
  %i.be = add <16 x i8> %i.bd, splat (i8 127)
  %i.bf = bitcast <4 x i32> %i.ay to <16 x i8>
  %i.bg = add <16 x i8> %i.bf, splat (i8 127)
  store <16 x i8> %i.ba, ptr %.1366136.i.us.us.i, align 16, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %.1366136.i.us.us.i, i64 16
  store <16 x i8> %i.bc, ptr %i.bh, align 16, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %.1366136.i.us.us.i, i64 32
  store <16 x i8> %i.be, ptr %i.bi, align 16, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %.1366136.i.us.us.i, i64 48
  store <16 x i8> %i.bg, ptr %i.bj, align 16, !tbaa !43
  %i.bk = getelementptr inbounds nuw i8, ptr %.1366136.i.us.us.i, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0379135.i.us.us.i, i64 %i.t
  %i.bm = add nuw nsw i32 %.0380134.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.bm, %12
  br i1 %exitcond.not.i.us.us.i, label %.loopexit131.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !300

.loopexit131.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.bn = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.bo = icmp samesign ult i64 %i.bn, %i.aa
  br i1 %i.bo, label %_ZN4ncnn3MatD2Ev.exit403.i.us.us.i, label %.preheader129.loopexit.i.i, !llvm.loop !301

_ZN4ncnn3MatD2Ev.exit402.i.us.i:                  ; preds = %.lr.ph158.i.i, %.loopexit131.i.us139.i
  %indvars.iv.i.us137.i = phi i64 [ %indvars.iv.next.i.us141.i, %.loopexit131.i.us139.i ], [ 0, %.lr.ph158.i.i ] ; 2 uses
  %.0365157.i.us138.i = phi ptr [ %.6.i.us140.i, %.loopexit131.i.us139.i ], [ %.val.i, %.lr.ph158.i.i ] ; 2 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !32, !noalias !302
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !302
  %i.br = mul i64 %i.bq, %i.u
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !302
  %i.bt = mul i64 %i.br, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 %indvars.iv.i.us137.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.ab  ; 2 uses
  br i1 %i.v, label %.lr.ph140.i.us.i, label %.preheader132.i.us.i

.lr.ph140.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit402.i.us.i, %.lr.ph140.i.us.i
  %.3139.i.us.i = phi ptr [ %i.ct, %.lr.ph140.i.us.i ], [ %.0365157.i.us138.i, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ] ; 3 uses
  %.0381138.i.us.i = phi ptr [ %i.cu, %.lr.ph140.i.us.i ], [ %i.bw, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ] ; 5 uses
  %.0392137.i.us.i = phi i32 [ %i.cv, %.lr.ph140.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ]
  %i.bx = load i64, ptr %.0381138.i.us.i, align 1, !tbaa !43
  %i.by = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %.0381138.i.us.i, i64 %i.m
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !43
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %.0381138.i.us.i, i64 %i.w
  %i.cd = load i64, ptr %i.cc, align 1, !tbaa !43
  %i.ce = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cf = getelementptr inbounds nuw i8, ptr %.0381138.i.us.i, i64 %i.x
  %i.cg = load i64, ptr %i.cf, align 1, !tbaa !43
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = bitcast <2 x i64> %i.by to <16 x i8>
  %i.cj = bitcast <2 x i64> %i.cb to <16 x i8>
  %i.ck = shufflevector <16 x i8> %i.ci, <16 x i8> %i.cj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cl = bitcast <2 x i64> %i.ce to <16 x i8>
  %i.cm = bitcast <2 x i64> %i.ch to <16 x i8>
  %i.cn = shufflevector <16 x i8> %i.cl, <16 x i8> %i.cm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.co = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.cp = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cn, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.cq = add <16 x i8> %i.co, splat (i8 127)
  %i.cr = add <16 x i8> %i.cp, splat (i8 127)
  store <16 x i8> %i.cq, ptr %.3139.i.us.i, align 1, !tbaa !43
  %i.cs = getelementptr inbounds nuw i8, ptr %.3139.i.us.i, i64 16
  store <16 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %.3139.i.us.i, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0381138.i.us.i, i64 %i.y ; 2 uses
  %i.cv = add nuw nsw i32 %.0392137.i.us.i, 4     ; 2 uses
  %i.cw = or disjoint i32 %i.cv, 3
  %i.cx = icmp slt i32 %i.cw, %5
  br i1 %i.cx, label %.lr.ph140.i.us.i, label %.preheader132.i.us.i, !llvm.loop !305

.preheader132.i.us.i:                             ; preds = %.lr.ph140.i.us.i, %_ZN4ncnn3MatD2Ev.exit402.i.us.i
  %.0392.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ], [ %i.z, %.lr.ph140.i.us.i ] ; 3 uses
  %.0381.lcssa.i.us.i = phi ptr [ %i.bw, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ], [ %i.cu, %.lr.ph140.i.us.i ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0365157.i.us138.i, %_ZN4ncnn3MatD2Ev.exit402.i.us.i ], [ %i.ct, %.lr.ph140.i.us.i ] ; 2 uses
  %i.cy = or disjoint i32 %.0392.lcssa.i.us.i, 1
  %i.cz = icmp slt i32 %i.cy, %5
  br i1 %i.cz, label %.lr.ph147.i.us.i, label %.preheader130.i.us.i

.lr.ph147.i.us.i:                                 ; preds = %.preheader132.i.us.i, %.lr.ph147.i.us.i
  %.4146.i.us.i = phi ptr [ %i.di, %.lr.ph147.i.us.i ], [ %.3.lcssa.i.us.i, %.preheader132.i.us.i ] ; 2 uses
  %.1382145.i.us.i = phi ptr [ %i.dj, %.lr.ph147.i.us.i ], [ %.0381.lcssa.i.us.i, %.preheader132.i.us.i ] ; 3 uses
  %.1393144.i.us.i = phi i32 [ %i.dk, %.lr.ph147.i.us.i ], [ %.0392.lcssa.i.us.i, %.preheader132.i.us.i ]
  %i.da = load i64, ptr %.1382145.i.us.i, align 1, !tbaa !43
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.1382145.i.us.i, i64 %i.m
  %i.dd = load i64, ptr %i.dc, align 1, !tbaa !43
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = bitcast <2 x i64> %i.db to <16 x i8>
  %i.dg = bitcast <2 x i64> %i.de to <16 x i8>
  %i.dh = shufflevector <16 x i8> %i.df, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.dh, ptr %.4146.i.us.i, align 1, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %.4146.i.us.i, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.1382145.i.us.i, i64 %i.w ; 2 uses
  %i.dk = add nuw nsw i32 %.1393144.i.us.i, 2     ; 3 uses
  %i.dl = or disjoint i32 %i.dk, 1
  %i.dm = icmp slt i32 %i.dl, %5
  br i1 %i.dm, label %.lr.ph147.i.us.i, label %.preheader130.i.us.i, !llvm.loop !306

.preheader130.i.us.i:                             ; preds = %.lr.ph147.i.us.i, %.preheader132.i.us.i
  %.1393.lcssa.i.us.i = phi i32 [ %.0392.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.dk, %.lr.ph147.i.us.i ] ; 5 uses
  %.1382.lcssa.i.us.i = phi ptr [ %.0381.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.dj, %.lr.ph147.i.us.i ] ; 2 uses
  %.4.lcssa.i.us.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader132.i.us.i ], [ %i.di, %.lr.ph147.i.us.i ] ; 3 uses
  %i.dn = icmp slt i32 %.1393.lcssa.i.us.i, %5
  br i1 %i.dn, label %.lr.ph154.i.us.i.preheader, label %.loopexit131.i.us139.i

.lr.ph154.i.us.i.preheader:                       ; preds = %.preheader130.i.us.i
  %i.do = sub i32 %5, %.1393.lcssa.i.us.i
  %xtraiter = and i32 %i.do, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph154.i.us.i.prol.loopexit, label %.lr.ph154.i.us.i.prol

.lr.ph154.i.us.i.prol:                            ; preds = %.lr.ph154.i.us.i.preheader, %.lr.ph154.i.us.i.prol
  %.5153.i.us.i.prol = phi ptr [ %i.dq, %.lr.ph154.i.us.i.prol ], [ %.4.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ] ; 2 uses
  %.2383152.i.us.i.prol = phi ptr [ %i.dr, %.lr.ph154.i.us.i.prol ], [ %.1382.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ] ; 2 uses
  %.2394151.i.us.i.prol = phi i32 [ %i.ds, %.lr.ph154.i.us.i.prol ], [ %.1393.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph154.i.us.i.prol ], [ 0, %.lr.ph154.i.us.i.preheader ]
  %i.dp = load i64, ptr %.2383152.i.us.i.prol, align 1, !tbaa !43
  store i64 %i.dp, ptr %.5153.i.us.i.prol, align 1, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %.5153.i.us.i.prol, i64 8 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.2383152.i.us.i.prol, i64 %i.m ; 2 uses
  %i.ds = add nuw nsw i32 %.2394151.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph154.i.us.i.prol.loopexit, label %.lr.ph154.i.us.i.prol, !llvm.loop !307

.lr.ph154.i.us.i.prol.loopexit:                   ; preds = %.lr.ph154.i.us.i.prol, %.lr.ph154.i.us.i.preheader
  %.lcssa432.unr = phi ptr [ poison, %.lr.ph154.i.us.i.preheader ], [ %i.dq, %.lr.ph154.i.us.i.prol ]
  %.5153.i.us.i.unr = phi ptr [ %.4.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.dq, %.lr.ph154.i.us.i.prol ]
  %.2383152.i.us.i.unr = phi ptr [ %.1382.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.dr, %.lr.ph154.i.us.i.prol ]
  %.2394151.i.us.i.unr = phi i32 [ %.1393.lcssa.i.us.i, %.lr.ph154.i.us.i.preheader ], [ %i.ds, %.lr.ph154.i.us.i.prol ]
  %i.dt = sub i32 %.1393.lcssa.i.us.i, %5
  %i.du = icmp ugt i32 %i.dt, -8
  br i1 %i.du, label %.loopexit131.i.us139.i, label %.lr.ph154.i.us.i

.lr.ph154.i.us.i:                                 ; preds = %.lr.ph154.i.us.i.prol.loopexit, %.lr.ph154.i.us.i
  %.5153.i.us.i = phi ptr [ %i.er, %.lr.ph154.i.us.i ], [ %.5153.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ] ; 9 uses
  %.2383152.i.us.i = phi ptr [ %i.es, %.lr.ph154.i.us.i ], [ %.2383152.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ] ; 2 uses
  %.2394151.i.us.i = phi i32 [ %i.et, %.lr.ph154.i.us.i ], [ %.2394151.i.us.i.unr, %.lr.ph154.i.us.i.prol.loopexit ]
  %i.dv = load i64, ptr %.2383152.i.us.i, align 1, !tbaa !43
  store i64 %i.dv, ptr %.5153.i.us.i, align 1, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %.2383152.i.us.i, i64 %i.m ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 1, !tbaa !43
  store i64 %i.dy, ptr %i.dw, align 1, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.m ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 1, !tbaa !43
  store i64 %i.eb, ptr %i.dz, align 1, !tbaa !43
  %i.ec = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.m ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 1, !tbaa !43
  store i64 %i.ee, ptr %i.ec, align 1, !tbaa !43
  %i.ef = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.m ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 1, !tbaa !43
  store i64 %i.eh, ptr %i.ef, align 1, !tbaa !43
  %i.ei = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.m ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 1, !tbaa !43
  store i64 %i.ek, ptr %i.ei, align 1, !tbaa !43
  %i.el = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.m ; 2 uses
  %i.en = load i64, ptr %i.em, align 1, !tbaa !43
  store i64 %i.en, ptr %i.el, align 1, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.m ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 1, !tbaa !43
  store i64 %i.eq, ptr %i.eo, align 1, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %.5153.i.us.i, i64 64 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.m
  %i.et = add nuw nsw i32 %.2394151.i.us.i, 8     ; 2 uses
  %exitcond270.not.i.us.i.7 = icmp eq i32 %i.et, %5
  br i1 %exitcond270.not.i.us.i.7, label %.loopexit131.i.us139.i, label %.lr.ph154.i.us.i, !llvm.loop !309

.loopexit131.i.us139.i:                           ; preds = %.lr.ph154.i.us.i.prol.loopexit, %.lr.ph154.i.us.i, %.preheader130.i.us.i
  %.6.i.us140.i = phi ptr [ %.4.lcssa.i.us.i, %.preheader130.i.us.i ], [ %.lcssa432.unr, %.lr.ph154.i.us.i.prol.loopexit ], [ %i.er, %.lr.ph154.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us141.i = add nuw nsw i64 %indvars.iv.i.us137.i, 8 ; 3 uses
  %i.eu = or disjoint i64 %indvars.iv.next.i.us141.i, 7
  %i.ev = icmp samesign ult i64 %i.eu, %i.aa
  br i1 %i.ev, label %_ZN4ncnn3MatD2Ev.exit402.i.us.i, label %.preheader129.loopexit.i.i, !llvm.loop !301

.preheader129.loopexit.i.i:                       ; preds = %.loopexit131.i.us139.i, %.loopexit131.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit403.i.us.preheader.i, %.loopexit131.i.preheader.i
  %.us-phi.i = phi ptr [ %i.bk, %.loopexit131.i.loopexit.us.us.i ], [ %.val.i, %.loopexit131.i.preheader.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit403.i.us.preheader.i ], [ %.6.i.us140.i, %.loopexit131.i.us139.i ]
  %.us-phi135.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit131.i.loopexit.us.us.i ], [ %i.ac, %.loopexit131.i.preheader.i ], [ %i.ae, %_ZN4ncnn3MatD2Ev.exit403.i.us.preheader.i ], [ %indvars.iv.next.i.us141.i, %.loopexit131.i.us139.i ]
  %i.ew = trunc nuw nsw i64 %.us-phi135.i to i32
  br label %.preheader129.i.i

.preheader129.i.i:                                ; preds = %.preheader129.loopexit.i.i, %bb.d
  %.0367.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.ew, %.preheader129.loopexit.i.i ] ; 3 uses
  %.0365.lcssa.i.i = phi ptr [ %.val.i, %bb.d ], [ %.us-phi.i, %.preheader129.loopexit.i.i ] ; 5 uses
  %i.ex = or disjoint i32 %.0367.lcssa.i.i, 3
  %i.ey = icmp slt i32 %i.ex, %3
  br i1 %i.ey, label %.lr.ph187.i.i, label %.preheader124.i.i

.lr.ph187.i.i:                                    ; preds = %.preheader129.i.i
  %i.ez = sdiv i32 %4, 8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = lshr i32 %5, 3                            ; 3 uses
  %i.fc = shl i64 %i.m, 3                         ; 2 uses
  %i.fd = sext i32 %4 to i64
  %i.fe = icmp sgt i32 %5, 3
  %i.ff = shl i64 %i.m, 1                         ; 2 uses
  %i.fg = mul i64 %i.m, 3
  %i.fh = shl i64 %i.m, 2
  %i.fi = and i32 %5, -4
  %i.fj = zext i32 %.0367.lcssa.i.i to i64        ; 6 uses
  %i.fk = sext i32 %3 to i64
  %i.fl = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.fk, -3       ; 4 uses
  switch i32 %i.o, label %.loopexit126.i.preheader.i [
    i32 8, label %.lr.ph187.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit400.i.us.i
  ]

.loopexit126.i.preheader.i:                       ; preds = %.lr.ph187.i.i
  %i.fm = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %smax251.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fm)
  %i.fn = xor i64 %i.fj, -1
  %i.fo = add nsw i64 %smax251.i, %i.fn
  %i.fp = and i64 %i.fo, -4
  %i.fq = add i64 %i.fm, %i.fp
  br label %.preheader124.loopexit.i.i

.lr.ph187.i.split.us.i:                           ; preds = %.lr.ph187.i.i
  %i.fr = icmp sgt i32 %5, 7
  br i1 %i.fr, label %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit401.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit401.i.us.us.i.preheader:     ; preds = %.lr.ph187.i.split.us.i
  %14 = icmp eq i32 %13, 1
  %i.fs = and i32 %13, 268435454
  %unroll_iter = and i32 %5, 8
  %lcmp.mod493.not = icmp eq i32 %unroll_iter, 0
  %lcmp.mod495 = trunc i32 %13 to i1
  br label %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i

_ZN4ncnn3MatD2Ev.exit401.i.us.preheader.i:        ; preds = %.lr.ph187.i.split.us.i
  %i.ft = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ft)
  %i.fu = xor i64 %i.fj, -1
  %i.fv = add nsw i64 %smax.i, %i.fu
  %i.fw = and i64 %i.fv, -4
  %i.fx = add i64 %i.ft, %i.fw
  br label %.preheader124.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit401.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i.preheader, %.loopexit126.i.loopexit.us.us.i
  %indvars.iv274.i.us.us.i = phi i64 [ %indvars.iv.next275.i.us.us.i, %.loopexit126.i.loopexit.us.us.i ], [ %i.fj, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i.preheader ] ; 2 uses
  %.7186.i.us.us.i = phi ptr [ %.lcssa417, %.loopexit126.i.loopexit.us.us.i ], [ %.0365.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i.preheader ] ; 2 uses
  %i.fy = load ptr, ptr %0, align 8, !tbaa !32, !noalias !310
  %i.fz = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !310
  %i.ga = mul i64 %i.fz, %i.fa
  %i.gb = load i64, ptr %i.fb, align 8, !tbaa !36, !noalias !310
  %i.gc = mul i64 %i.ga, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gc
  %i.ge = add nsw i64 %indvars.iv274.i.us.us.i, %i.fl
  %i.gf = shl nsw i64 %i.ge, 3
  %i.gg = getelementptr inbounds i8, ptr %i.gd, i64 %i.gf ; 2 uses
  br i1 %14, label %.lr.ph164.i.us.us.i.epil.preheader, label %.lr.ph164.i.us.us.i

.lr.ph164.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i, %.lr.ph164.i.us.us.i
  %.8163.i.us.us.i = phi ptr [ %i.hd, %.lr.ph164.i.us.us.i ], [ %.7186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i ] ; 5 uses
  %.0395162.i.us.us.i = phi ptr [ %i.he, %.lr.ph164.i.us.us.i ], [ %i.gg, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph164.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i ]
  %i.gh = load <4 x i32>, ptr %.0395162.i.us.us.i, align 1, !tbaa !43 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0395162.i.us.us.i, i64 16
  %i.gj = load <4 x i32>, ptr %i.gi, align 1, !tbaa !43 ; 2 uses
  %i.gk = shufflevector <4 x i32> %i.gh, <4 x i32> %i.gj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gl = shufflevector <4 x i32> %i.gh, <4 x i32> %i.gj, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gm = bitcast <4 x i32> %i.gk to <16 x i8>
  %i.gn = add <16 x i8> %i.gm, splat (i8 127)
  %i.go = bitcast <4 x i32> %i.gl to <16 x i8>
  %i.gp = add <16 x i8> %i.go, splat (i8 127)
  store <16 x i8> %i.gn, ptr %.8163.i.us.us.i, align 16, !tbaa !43
  %i.gq = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 16
  store <16 x i8> %i.gp, ptr %i.gq, align 16, !tbaa !43
  %i.gr = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %.0395162.i.us.us.i, i64 %i.fc ; 3 uses
  %i.gt = load <4 x i32>, ptr %i.gs, align 1, !tbaa !43 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gv = load <4 x i32>, ptr %i.gu, align 1, !tbaa !43 ; 2 uses
  %i.gw = shufflevector <4 x i32> %i.gt, <4 x i32> %i.gv, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.gx = shufflevector <4 x i32> %i.gt, <4 x i32> %i.gv, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gy = bitcast <4 x i32> %i.gw to <16 x i8>
  %i.gz = add <16 x i8> %i.gy, splat (i8 127)
  %i.ha = bitcast <4 x i32> %i.gx to <16 x i8>
  %i.hb = add <16 x i8> %i.ha, splat (i8 127)
  store <16 x i8> %i.gz, ptr %i.gr, align 16, !tbaa !43
  %i.hc = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 48
  store <16 x i8> %i.hb, ptr %i.hc, align 16, !tbaa !43
  %i.hd = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i, i64 64 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.fc ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %i.fs
  br i1 %niter.ncmp.1, label %.loopexit126.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph164.i.us.us.i, !llvm.loop !313

.loopexit126.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph164.i.us.us.i
  br i1 %lcmp.mod493.not, label %.loopexit126.i.loopexit.us.us.i, label %.lr.ph164.i.us.us.i.epil.preheader

.lr.ph164.i.us.us.i.epil.preheader:               ; preds = %.loopexit126.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i
  %.8163.i.us.us.i.epil.init = phi ptr [ %.7186.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i ], [ %i.hd, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0395162.i.us.us.i.epil.init = phi ptr [ %i.gg, %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i ], [ %i.he, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod495)
  %i.hf = load <4 x i32>, ptr %.0395162.i.us.us.i.epil.init, align 1, !tbaa !43 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0395162.i.us.us.i.epil.init, i64 16
  %i.hh = load <4 x i32>, ptr %i.hg, align 1, !tbaa !43 ; 2 uses
  %i.hi = shufflevector <4 x i32> %i.hf, <4 x i32> %i.hh, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hj = shufflevector <4 x i32> %i.hf, <4 x i32> %i.hh, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hk = bitcast <4 x i32> %i.hi to <16 x i8>
  %i.hl = add <16 x i8> %i.hk, splat (i8 127)
  %i.hm = bitcast <4 x i32> %i.hj to <16 x i8>
  %i.hn = add <16 x i8> %i.hm, splat (i8 127)
  store <16 x i8> %i.hl, ptr %.8163.i.us.us.i.epil.init, align 16, !tbaa !43
  %i.ho = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i.epil.init, i64 16
  store <16 x i8> %i.hn, ptr %i.ho, align 16, !tbaa !43
  %i.hp = getelementptr inbounds nuw i8, ptr %.8163.i.us.us.i.epil.init, i64 32
  br label %.loopexit126.i.loopexit.us.us.i

.loopexit126.i.loopexit.us.us.i:                  ; preds = %.loopexit126.i.loopexit.us.us.i.unr-lcssa, %.lr.ph164.i.us.us.i.epil.preheader
  %.lcssa417 = phi ptr [ %i.hd, %.loopexit126.i.loopexit.us.us.i.unr-lcssa ], [ %i.hp, %.lr.ph164.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next275.i.us.us.i = add nuw nsw i64 %indvars.iv274.i.us.us.i, 4 ; 3 uses
  %i.hq = icmp slt i64 %indvars.iv.next275.i.us.us.i, %invariant.op.i.i
  br i1 %i.hq, label %_ZN4ncnn3MatD2Ev.exit401.i.us.us.i, label %.preheader124.loopexit.i.i, !llvm.loop !314

_ZN4ncnn3MatD2Ev.exit400.i.us.i:                  ; preds = %.lr.ph187.i.i, %.loopexit126.i.us153.i
  %indvars.iv274.i.us151.i = phi i64 [ %indvars.iv.next275.i.us155.i, %.loopexit126.i.us153.i ], [ %i.fj, %.lr.ph187.i.i ] ; 2 uses
  %.7186.i.us152.i = phi ptr [ %.13.i.us154.i, %.loopexit126.i.us153.i ], [ %.0365.lcssa.i.i, %.lr.ph187.i.i ] ; 2 uses
  %i.hr = load ptr, ptr %0, align 8, !tbaa !32, !noalias !315
  %i.hs = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !315
  %i.ht = mul i64 %i.hs, %i.fd
  %i.hu = load i64, ptr %i.fb, align 8, !tbaa !36, !noalias !315
  %i.hv = mul i64 %i.ht, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 %indvars.iv274.i.us151.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 %i.fl  ; 2 uses
  br i1 %i.fe, label %.lr.ph169.i.us.i, label %.preheader127.i.us.i

.lr.ph169.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit400.i.us.i, %.lr.ph169.i.us.i
  %.10168.i.us.i = phi ptr [ %i.kj, %.lr.ph169.i.us.i ], [ %.7186.i.us152.i, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ] ; 17 uses
  %.0386167.i.us.i = phi i32 [ %i.kl, %.lr.ph169.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ]
  %.0389166.i.us.i = phi ptr [ %i.kk, %.lr.ph169.i.us.i ], [ %i.hy, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ] ; 8 uses
  %i.hz = load i8, ptr %.0389166.i.us.i, align 1, !tbaa !43
  %i.ia = add i8 %i.hz, 127
  store i8 %i.ia, ptr %.10168.i.us.i, align 1, !tbaa !43
  %i.ib = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 %i.m ; 4 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !43
  %i.id = add i8 %i.ic, 127
  %i.ie = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 1
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 %i.ff ; 4 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !43
  %i.ih = add i8 %i.ig, 127
  %i.ii = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 2
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !43
  %i.ij = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 %i.fg ; 4 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !43
  %i.il = add i8 %i.ik, 127
  %i.im = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 3
  store i8 %i.il, ptr %i.im, align 1, !tbaa !43
  %i.in = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !43
  %i.ip = add i8 %i.io, 127
  %i.iq = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 4
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !43
  %i.ir = getelementptr i8, ptr %i.ib, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !43
  %i.it = add i8 %i.is, 127
  %i.iu = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 5
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !43
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !43
  %i.ix = add i8 %i.iw, 127
  %i.iy = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 6
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !43
  %i.iz = getelementptr i8, ptr %i.ij, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !43
  %i.jb = add i8 %i.ja, 127
  %i.jc = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 7
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !43
  %i.jd = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 2
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !43
  %i.jf = add i8 %i.je, 127
  %i.jg = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 8
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !43
  %i.jh = getelementptr i8, ptr %i.ib, i64 2
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !43
  %i.jj = add i8 %i.ji, 127
  %i.jk = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 9
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !43
  %i.jl = getelementptr i8, ptr %i.if, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !43
  %i.jn = add i8 %i.jm, 127
  %i.jo = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 10
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !43
  %i.jp = getelementptr i8, ptr %i.ij, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !43
  %i.jr = add i8 %i.jq, 127
  %i.js = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 11
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !43
  %i.jt = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !43
  %i.jv = add i8 %i.ju, 127
  %i.jw = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 12
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !43
  %i.jx = getelementptr i8, ptr %i.ib, i64 3
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !43
  %i.jz = add i8 %i.jy, 127
  %i.ka = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 13
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !43
  %i.kb = getelementptr i8, ptr %i.if, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !43
  %i.kd = add i8 %i.kc, 127
  %i.ke = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 14
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !43
  %i.kf = getelementptr i8, ptr %i.ij, i64 3
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !43
  %i.kh = add i8 %i.kg, 127
  %i.ki = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 15
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !43
  %i.kj = getelementptr inbounds nuw i8, ptr %.10168.i.us.i, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.0389166.i.us.i, i64 %i.fh ; 2 uses
  %i.kl = add nuw nsw i32 %.0386167.i.us.i, 4     ; 2 uses
  %i.km = or disjoint i32 %i.kl, 3
  %i.kn = icmp slt i32 %i.km, %5
  br i1 %i.kn, label %.lr.ph169.i.us.i, label %.preheader127.i.us.i, !llvm.loop !318

.preheader127.i.us.i:                             ; preds = %.lr.ph169.i.us.i, %_ZN4ncnn3MatD2Ev.exit400.i.us.i
  %.0389.lcssa.i.us.i = phi ptr [ %i.hy, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ], [ %i.kk, %.lr.ph169.i.us.i ] ; 2 uses
  %.0386.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ], [ %i.fi, %.lr.ph169.i.us.i ] ; 3 uses
  %.10.lcssa.i.us.i = phi ptr [ %.7186.i.us152.i, %_ZN4ncnn3MatD2Ev.exit400.i.us.i ], [ %i.kj, %.lr.ph169.i.us.i ] ; 2 uses
  %i.ko = or disjoint i32 %.0386.lcssa.i.us.i, 1
  %i.kp = icmp slt i32 %i.ko, %5
  br i1 %i.kp, label %.lr.ph176.i.us.i, label %.preheader125.i.us.i

.lr.ph176.i.us.i:                                 ; preds = %.preheader127.i.us.i, %.lr.ph176.i.us.i
  %.11175.i.us.i = phi ptr [ %i.lm, %.lr.ph176.i.us.i ], [ %.10.lcssa.i.us.i, %.preheader127.i.us.i ] ; 9 uses
  %.1387174.i.us.i = phi i32 [ %i.lo, %.lr.ph176.i.us.i ], [ %.0386.lcssa.i.us.i, %.preheader127.i.us.i ]
  %.1390173.i.us.i = phi ptr [ %i.ln, %.lr.ph176.i.us.i ], [ %.0389.lcssa.i.us.i, %.preheader127.i.us.i ] ; 6 uses
  %i.kq = load i8, ptr %.1390173.i.us.i, align 1, !tbaa !43
  store i8 %i.kq, ptr %.11175.i.us.i, align 1, !tbaa !43
  %i.kr = getelementptr inbounds nuw i8, ptr %.1390173.i.us.i, i64 %i.m ; 4 uses
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !43
  %i.kt = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 1
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !43
  %i.ku = getelementptr inbounds nuw i8, ptr %.1390173.i.us.i, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !43
  %i.kw = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 2
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !43
  %i.kx = getelementptr i8, ptr %i.kr, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !43
  %i.kz = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 3
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !43
  %i.la = getelementptr inbounds nuw i8, ptr %.1390173.i.us.i, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !43
  %i.lc = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 4
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !43
  %i.ld = getelementptr i8, ptr %i.kr, i64 2
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !43
  %i.lf = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 5
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !43
  %i.lg = getelementptr inbounds nuw i8, ptr %.1390173.i.us.i, i64 3
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !43
  %i.li = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 6
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !43
  %i.lj = getelementptr i8, ptr %i.kr, i64 3
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !43
  %i.ll = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 7
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !43
  %i.lm = getelementptr inbounds nuw i8, ptr %.11175.i.us.i, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.1390173.i.us.i, i64 %i.ff ; 2 uses
  %i.lo = add nuw nsw i32 %.1387174.i.us.i, 2     ; 3 uses
  %i.lp = or disjoint i32 %i.lo, 1
  %i.lq = icmp slt i32 %i.lp, %5
  br i1 %i.lq, label %.lr.ph176.i.us.i, label %.preheader125.i.us.i, !llvm.loop !319

.preheader125.i.us.i:                             ; preds = %.lr.ph176.i.us.i, %.preheader127.i.us.i
  %.1390.lcssa.i.us.i = phi ptr [ %.0389.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.ln, %.lr.ph176.i.us.i ] ; 6 uses
  %.1387.lcssa.i.us.i = phi i32 [ %.0386.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.lo, %.lr.ph176.i.us.i ] ; 5 uses
  %.11.lcssa.i.us.i = phi ptr [ %.10.lcssa.i.us.i, %.preheader127.i.us.i ], [ %i.lm, %.lr.ph176.i.us.i ] ; 7 uses
  %i.lr = icmp slt i32 %.1387.lcssa.i.us.i, %5
  br i1 %i.lr, label %.lr.ph183.i.us.i.preheader, label %.loopexit126.i.us153.i

.lr.ph183.i.us.i.preheader:                       ; preds = %.preheader125.i.us.i
  %i.ls = sub i32 %5, %.1387.lcssa.i.us.i
  %.neg = add i32 %.1387.lcssa.i.us.i, 1
  %xtraiter489 = and i32 %i.ls, 1
  %lcmp.mod490.not = icmp eq i32 %xtraiter489, 0
  br i1 %lcmp.mod490.not, label %.lr.ph183.i.us.i.prol.loopexit, label %.lr.ph183.i.us.i.prol

.lr.ph183.i.us.i.prol:                            ; preds = %.lr.ph183.i.us.i.preheader
  %i.lt = load i8, ptr %.1390.lcssa.i.us.i, align 1, !tbaa !43
  store i8 %i.lt, ptr %.11.lcssa.i.us.i, align 1, !tbaa !43
  %i.lu = getelementptr inbounds nuw i8, ptr %.1390.lcssa.i.us.i, i64 1
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !43
  %i.lw = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 1
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !43
  %i.lx = getelementptr inbounds nuw i8, ptr %.1390.lcssa.i.us.i, i64 2
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !43
  %i.lz = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 2
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !43
  %i.ma = getelementptr inbounds nuw i8, ptr %.1390.lcssa.i.us.i, i64 3
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !43
  %i.mc = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 3
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !43
  %i.md = getelementptr inbounds nuw i8, ptr %.11.lcssa.i.us.i, i64 4 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1390.lcssa.i.us.i, i64 %i.m
  %i.mf = add nuw nsw i32 %.1387.lcssa.i.us.i, 1
  br label %.lr.ph183.i.us.i.prol.loopexit

.lr.ph183.i.us.i.prol.loopexit:                   ; preds = %.lr.ph183.i.us.i.prol, %.lr.ph183.i.us.i.preheader
  %.lcssa424.unr = phi ptr [ poison, %.lr.ph183.i.us.i.preheader ], [ %i.md, %.lr.ph183.i.us.i.prol ]
  %.12182.i.us.i.unr = phi ptr [ %.11.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.md, %.lr.ph183.i.us.i.prol ]
  %.2388181.i.us.i.unr = phi i32 [ %.1387.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.mf, %.lr.ph183.i.us.i.prol ]
  %.2391180.i.us.i.unr = phi ptr [ %.1390.lcssa.i.us.i, %.lr.ph183.i.us.i.preheader ], [ %i.me, %.lr.ph183.i.us.i.prol ]
  %i.mg = icmp eq i32 %5, %.neg
  br i1 %i.mg, label %.loopexit126.i.us153.i, label %.lr.ph183.i.us.i

.lr.ph183.i.us.i:                                 ; preds = %.lr.ph183.i.us.i.prol.loopexit, %.lr.ph183.i.us.i
  %.12182.i.us.i = phi ptr [ %i.nd, %.lr.ph183.i.us.i ], [ %.12182.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ] ; 9 uses
  %.2388181.i.us.i = phi i32 [ %i.nf, %.lr.ph183.i.us.i ], [ %.2388181.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ]
  %.2391180.i.us.i = phi ptr [ %i.ne, %.lr.ph183.i.us.i ], [ %.2391180.i.us.i.unr, %.lr.ph183.i.us.i.prol.loopexit ] ; 5 uses
  %i.mh = load i8, ptr %.2391180.i.us.i, align 1, !tbaa !43
  store i8 %i.mh, ptr %.12182.i.us.i, align 1, !tbaa !43
  %i.mi = getelementptr inbounds nuw i8, ptr %.2391180.i.us.i, i64 1
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !43
  %i.mk = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 1
  store i8 %i.mj, ptr %i.mk, align 1, !tbaa !43
  %i.ml = getelementptr inbounds nuw i8, ptr %.2391180.i.us.i, i64 2
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !43
  %i.mn = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 2
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !43
  %i.mo = getelementptr inbounds nuw i8, ptr %.2391180.i.us.i, i64 3
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !43
  %i.mq = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 3
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !43
  %i.mr = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 4
  %i.ms = getelementptr inbounds nuw i8, ptr %.2391180.i.us.i, i64 %i.m ; 5 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !43
  store i8 %i.mt, ptr %i.mr, align 1, !tbaa !43
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !43
  %i.mw = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 5
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !43
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !43
  %i.mz = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 6
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !43
  %i.na = getelementptr inbounds nuw i8, ptr %i.ms, i64 3
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !43
  %i.nc = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 7
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !43
  %i.nd = getelementptr inbounds nuw i8, ptr %.12182.i.us.i, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.m
  %i.nf = add nuw nsw i32 %.2388181.i.us.i, 2     ; 2 uses
  %exitcond273.not.i.us.i.1 = icmp eq i32 %i.nf, %5
  br i1 %exitcond273.not.i.us.i.1, label %.loopexit126.i.us153.i, label %.lr.ph183.i.us.i, !llvm.loop !320

.loopexit126.i.us153.i:                           ; preds = %.lr.ph183.i.us.i.prol.loopexit, %.lr.ph183.i.us.i, %.preheader125.i.us.i
  %.13.i.us154.i = phi ptr [ %.11.lcssa.i.us.i, %.preheader125.i.us.i ], [ %.lcssa424.unr, %.lr.ph183.i.us.i.prol.loopexit ], [ %i.nd, %.lr.ph183.i.us.i ] ; 2 uses
  %indvars.iv.next275.i.us155.i = add nuw nsw i64 %indvars.iv274.i.us151.i, 4 ; 3 uses
  %i.ng = icmp slt i64 %indvars.iv.next275.i.us155.i, %invariant.op.i.i
  br i1 %i.ng, label %_ZN4ncnn3MatD2Ev.exit400.i.us.i, label %.preheader124.loopexit.i.i, !llvm.loop !314

.preheader124.loopexit.i.i:                       ; preds = %.loopexit126.i.us153.i, %.loopexit126.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit401.i.us.preheader.i, %.loopexit126.i.preheader.i
  %.us-phi148.i = phi ptr [ %.lcssa417, %.loopexit126.i.loopexit.us.us.i ], [ %.0365.lcssa.i.i, %.loopexit126.i.preheader.i ], [ %.0365.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit401.i.us.preheader.i ], [ %.13.i.us154.i, %.loopexit126.i.us153.i ]
  %.us-phi149.i = phi i64 [ %indvars.iv.next275.i.us.us.i, %.loopexit126.i.loopexit.us.us.i ], [ %i.fq, %.loopexit126.i.preheader.i ], [ %i.fx, %_ZN4ncnn3MatD2Ev.exit401.i.us.preheader.i ], [ %indvars.iv.next275.i.us155.i, %.loopexit126.i.us153.i ]
  %i.nh = trunc nuw nsw i64 %.us-phi149.i to i32
  br label %.preheader124.i.i

.preheader124.i.i:                                ; preds = %.preheader124.loopexit.i.i, %.preheader129.i.i
  %.1368.lcssa.i.i = phi i32 [ %.0367.lcssa.i.i, %.preheader129.i.i ], [ %i.nh, %.preheader124.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0365.lcssa.i.i, %.preheader129.i.i ], [ %.us-phi148.i, %.preheader124.loopexit.i.i ] ; 5 uses
  %i.ni = or disjoint i32 %.1368.lcssa.i.i, 1
  %i.nj = icmp slt i32 %i.ni, %3
  br i1 %i.nj, label %.lr.ph216.i.i, label %.preheader119.i.i

.lr.ph216.i.i:                                    ; preds = %.preheader124.i.i
  %i.nk = sdiv i32 %4, 8
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %15 = lshr i32 %5, 3                            ; 3 uses
  %i.nn = shl i64 %i.m, 3                         ; 2 uses
  %i.no = sext i32 %4 to i64
  %i.np = icmp sgt i32 %5, 3
  %i.nq = shl i64 %i.m, 1                         ; 2 uses
  %i.nr = mul i64 %i.m, 3
  %i.ns = shl i64 %i.m, 2
  %i.nt = and i32 %5, -4
  %i.nu = zext i32 %.1368.lcssa.i.i to i64        ; 8 uses
  %i.nv = sext i32 %3 to i64
  %i.nw = sext i32 %2 to i64                      ; 2 uses
  %invariant.op327.i.i = add nsw i64 %i.nv, -1    ; 4 uses
  switch i32 %i.o, label %.loopexit121.i.i.preheader [
    i32 8, label %.lr.ph216.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit398.i.i.us
  ]

.loopexit121.i.i.preheader:                       ; preds = %.lr.ph216.i.i
  %i.nx = add nuw nsw i64 %i.nu, 2
  %smax202 = tail call i64 @llvm.smax.i64(i64 %invariant.op327.i.i, i64 %i.nx)
  %i.ny = xor i64 %i.nu, -1
  %i.nz = add nsw i64 %smax202, %i.ny
  %i.oa = and i64 %i.nz, -2
  %i.ob = add i64 %i.oa, %i.nu
  %i.oc = add i64 %i.ob, 2
  br label %.preheader119.loopexit.i.i

.lr.ph216.i.i.split.us:                           ; preds = %.lr.ph216.i.i
  %i.od = icmp sgt i32 %5, 7
  br i1 %i.od, label %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us.preheader, label %_ZN4ncnn3MatD2Ev.exit399.i.i.us.preheader

_ZN4ncnn3MatD2Ev.exit399.i.i.us.us.preheader:     ; preds = %.lr.ph216.i.i.split.us
  %16 = icmp eq i32 %15, 1
  %i.oe = and i32 %15, 268435454
  %unroll_iter503 = and i32 %5, 8
  %lcmp.mod500.not = icmp eq i32 %unroll_iter503, 0
  %lcmp.mod502 = trunc i32 %15 to i1
  br label %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us

_ZN4ncnn3MatD2Ev.exit399.i.i.us.preheader:        ; preds = %.lr.ph216.i.i.split.us
  %i.of = add nuw nsw i64 %i.nu, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op327.i.i, i64 %i.of)
  %i.og = xor i64 %i.nu, -1
  %i.oh = add nsw i64 %smax, %i.og
  %i.oi = and i64 %i.oh, -2
  %i.oj = add i64 %i.oi, %i.nu
  %i.ok = add i64 %i.oj, 2
  br label %.preheader119.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit399.i.i.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us.preheader, %.loopexit121.i.i.loopexit.us.us
  %indvars.iv279.i.i.us.us = phi i64 [ %indvars.iv.next280.i.i.us.us, %.loopexit121.i.i.loopexit.us.us ], [ %i.nu, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us.preheader ] ; 2 uses
  %.14215.i.i.us.us = phi ptr [ %.lcssa409, %.loopexit121.i.i.loopexit.us.us ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us.preheader ] ; 2 uses
  %i.ol = load ptr, ptr %0, align 8, !tbaa !32, !noalias !321
  %i.om = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !321
  %i.on = mul i64 %i.om, %i.nl
  %i.oo = load i64, ptr %i.nm, align 8, !tbaa !36, !noalias !321
  %i.op = mul i64 %i.on, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.op
  %i.or = add nsw i64 %indvars.iv279.i.i.us.us, %i.nw
  %i.os = shl nsw i64 %i.or, 3
  %i.ot = getelementptr inbounds i8, ptr %i.oq, i64 %i.os ; 2 uses
  br i1 %16, label %.lr.ph193.i.i.us.us.epil.preheader, label %.lr.ph193.i.i.us.us

.lr.ph193.i.i.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us, %.lr.ph193.i.i.us.us
  %.15192.i.i.us.us = phi ptr [ %i.pq, %.lr.ph193.i.i.us.us ], [ %.14215.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us ] ; 3 uses
  %.0385190.i.i.us.us = phi ptr [ %i.pr, %.lr.ph193.i.i.us.us ], [ %i.ot, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us ] ; 3 uses
  %niter504 = phi i32 [ %niter504.next.1, %.lr.ph193.i.i.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us ]
  %i.ou = load i64, ptr %.0385190.i.i.us.us, align 1, !tbaa !43
  %i.ov = insertelement <2 x i64> poison, i64 %i.ou, i64 0
  %i.ow = getelementptr inbounds nuw i8, ptr %.0385190.i.i.us.us, i64 8
  %i.ox = load i64, ptr %i.ow, align 1, !tbaa !43
  %i.oy = insertelement <2 x i64> poison, i64 %i.ox, i64 0
  %i.oz = bitcast <2 x i64> %i.ov to <4 x i32>
  %i.pa = bitcast <2 x i64> %i.oy to <4 x i32>
  %i.pb = shufflevector <4 x i32> %i.oz, <4 x i32> %i.pa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.pc = bitcast <4 x i32> %i.pb to <16 x i8>
  %i.pd = add <16 x i8> %i.pc, splat (i8 127)
  store <16 x i8> %i.pd, ptr %.15192.i.i.us.us, align 1, !tbaa !43
  %i.pe = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 16
  %i.pf = getelementptr inbounds nuw i8, ptr %.0385190.i.i.us.us, i64 %i.nn ; 3 uses
  %i.pg = load i64, ptr %i.pf, align 1, !tbaa !43
  %i.ph = insertelement <2 x i64> poison, i64 %i.pg, i64 0
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pj = load i64, ptr %i.pi, align 1, !tbaa !43
  %i.pk = insertelement <2 x i64> poison, i64 %i.pj, i64 0
  %i.pl = bitcast <2 x i64> %i.ph to <4 x i32>
  %i.pm = bitcast <2 x i64> %i.pk to <4 x i32>
  %i.pn = shufflevector <4 x i32> %i.pl, <4 x i32> %i.pm, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.po = bitcast <4 x i32> %i.pn to <16 x i8>
  %i.pp = add <16 x i8> %i.po, splat (i8 127)
  store <16 x i8> %i.pp, ptr %i.pe, align 1, !tbaa !43
  %i.pq = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us, i64 32 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.nn ; 2 uses
  %niter504.next.1 = add i32 %niter504, 2         ; 2 uses
  %niter504.ncmp.1 = icmp eq i32 %niter504.next.1, %i.oe
  br i1 %niter504.ncmp.1, label %.loopexit121.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph193.i.i.us.us, !llvm.loop !324

.loopexit121.i.i.loopexit.us.us.unr-lcssa:        ; preds = %.lr.ph193.i.i.us.us
  br i1 %lcmp.mod500.not, label %.loopexit121.i.i.loopexit.us.us, label %.lr.ph193.i.i.us.us.epil.preheader

.lr.ph193.i.i.us.us.epil.preheader:               ; preds = %.loopexit121.i.i.loopexit.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us
  %.15192.i.i.us.us.epil.init = phi ptr [ %.14215.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us ], [ %i.pq, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0385190.i.i.us.us.epil.init = phi ptr [ %i.ot, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us ], [ %i.pr, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod502)
  %i.ps = load i64, ptr %.0385190.i.i.us.us.epil.init, align 1, !tbaa !43
  %i.pt = insertelement <2 x i64> poison, i64 %i.ps, i64 0
  %i.pu = getelementptr inbounds nuw i8, ptr %.0385190.i.i.us.us.epil.init, i64 8
  %i.pv = load i64, ptr %i.pu, align 1, !tbaa !43
  %i.pw = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %i.px = bitcast <2 x i64> %i.pt to <4 x i32>
  %i.py = bitcast <2 x i64> %i.pw to <4 x i32>
  %i.pz = shufflevector <4 x i32> %i.px, <4 x i32> %i.py, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.qa = bitcast <4 x i32> %i.pz to <16 x i8>
  %i.qb = add <16 x i8> %i.qa, splat (i8 127)
  store <16 x i8> %i.qb, ptr %.15192.i.i.us.us.epil.init, align 1, !tbaa !43
  %i.qc = getelementptr inbounds nuw i8, ptr %.15192.i.i.us.us.epil.init, i64 16
  br label %.loopexit121.i.i.loopexit.us.us

.loopexit121.i.i.loopexit.us.us:                  ; preds = %.loopexit121.i.i.loopexit.us.us.unr-lcssa, %.lr.ph193.i.i.us.us.epil.preheader
  %.lcssa409 = phi ptr [ %i.pq, %.loopexit121.i.i.loopexit.us.us.unr-lcssa ], [ %i.qc, %.lr.ph193.i.i.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next280.i.i.us.us = add nuw nsw i64 %indvars.iv279.i.i.us.us, 2 ; 3 uses
  %i.qd = icmp slt i64 %indvars.iv.next280.i.i.us.us, %invariant.op327.i.i
  br i1 %i.qd, label %_ZN4ncnn3MatD2Ev.exit399.i.i.us.us, label %.preheader119.loopexit.i.i, !llvm.loop !325

_ZN4ncnn3MatD2Ev.exit398.i.i.us:                  ; preds = %.lr.ph216.i.i, %.loopexit121.i.i.us99
  %indvars.iv279.i.i.us97 = phi i64 [ %indvars.iv.next280.i.i.us101, %.loopexit121.i.i.us99 ], [ %i.nu, %.lr.ph216.i.i ] ; 2 uses
  %.14215.i.i.us98 = phi ptr [ %.20.i.i.us100, %.loopexit121.i.i.us99 ], [ %.7.lcssa.i.i, %.lr.ph216.i.i ] ; 2 uses
  %i.qe = load ptr, ptr %0, align 8, !tbaa !32, !noalias !326
  %i.qf = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !326
  %i.qg = mul i64 %i.qf, %i.no
  %i.qh = load i64, ptr %i.nm, align 8, !tbaa !36, !noalias !326
  %i.qi = mul i64 %i.qg, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 %indvars.iv279.i.i.us97
  %i.ql = getelementptr i8, ptr %i.qk, i64 %i.nw  ; 2 uses
  br i1 %i.np, label %.lr.ph198.i.i.us, label %.preheader122.i.i.us

.lr.ph198.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit398.i.i.us, %.lr.ph198.i.i.us
  %.17197.i.i.us = phi ptr [ %i.rq, %.lr.ph198.i.i.us ], [ %.14215.i.i.us98, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ] ; 9 uses
  %.0373196.i.i.us = phi i32 [ %i.rs, %.lr.ph198.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ]
  %.0376195.i.i.us = phi ptr [ %i.rr, %.lr.ph198.i.i.us ], [ %i.ql, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ] ; 6 uses
  %i.qm = load i8, ptr %.0376195.i.i.us, align 1, !tbaa !43
  %i.qn = add i8 %i.qm, 127
  store i8 %i.qn, ptr %.17197.i.i.us, align 1, !tbaa !43
  %i.qo = getelementptr inbounds nuw i8, ptr %.0376195.i.i.us, i64 %i.m ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !43
  %i.qq = add i8 %i.qp, 127
  %i.qr = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 1
  store i8 %i.qq, ptr %i.qr, align 1, !tbaa !43
  %i.qs = getelementptr inbounds nuw i8, ptr %.0376195.i.i.us, i64 %i.nq ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !43
  %i.qu = add i8 %i.qt, 127
  %i.qv = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 2
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !43
  %i.qw = getelementptr inbounds nuw i8, ptr %.0376195.i.i.us, i64 %i.nr ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !43
  %i.qy = add i8 %i.qx, 127
  %i.qz = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 3
  store i8 %i.qy, ptr %i.qz, align 1, !tbaa !43
  %i.ra = getelementptr inbounds nuw i8, ptr %.0376195.i.i.us, i64 1
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !43
  %i.rc = add i8 %i.rb, 127
  %i.rd = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 4
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !43
  %i.re = getelementptr i8, ptr %i.qo, i64 1
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !43
  %i.rg = add i8 %i.rf, 127
  %i.rh = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 5
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !43
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qs, i64 1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !43
  %i.rk = add i8 %i.rj, 127
  %i.rl = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 6
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !43
  %i.rm = getelementptr i8, ptr %i.qw, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !43
  %i.ro = add i8 %i.rn, 127
  %i.rp = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 7
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !43
  %i.rq = getelementptr inbounds nuw i8, ptr %.17197.i.i.us, i64 8 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0376195.i.i.us, i64 %i.ns ; 2 uses
  %i.rs = add nuw nsw i32 %.0373196.i.i.us, 4     ; 2 uses
  %i.rt = or disjoint i32 %i.rs, 3
  %i.ru = icmp slt i32 %i.rt, %5
  br i1 %i.ru, label %.lr.ph198.i.i.us, label %.preheader122.i.i.us, !llvm.loop !329

.preheader122.i.i.us:                             ; preds = %.lr.ph198.i.i.us, %_ZN4ncnn3MatD2Ev.exit398.i.i.us
  %.0376.lcssa.i.i.us = phi ptr [ %i.ql, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ], [ %i.rr, %.lr.ph198.i.i.us ] ; 2 uses
  %.0373.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ], [ %i.nt, %.lr.ph198.i.i.us ] ; 3 uses
  %.17.lcssa.i.i.us = phi ptr [ %.14215.i.i.us98, %_ZN4ncnn3MatD2Ev.exit398.i.i.us ], [ %i.rq, %.lr.ph198.i.i.us ] ; 2 uses
  %i.rv = or disjoint i32 %.0373.lcssa.i.i.us, 1
  %i.rw = icmp slt i32 %i.rv, %5
  br i1 %i.rw, label %.lr.ph205.i.i.us, label %.preheader120.i.i.us

.lr.ph205.i.i.us:                                 ; preds = %.preheader122.i.i.us, %.lr.ph205.i.i.us
  %.18204.i.i.us = phi ptr [ %i.sh, %.lr.ph205.i.i.us ], [ %.17.lcssa.i.i.us, %.preheader122.i.i.us ] ; 5 uses
  %.1374203.i.i.us = phi i32 [ %i.sj, %.lr.ph205.i.i.us ], [ %.0373.lcssa.i.i.us, %.preheader122.i.i.us ]
  %.1377202.i.i.us = phi ptr [ %i.si, %.lr.ph205.i.i.us ], [ %.0376.lcssa.i.i.us, %.preheader122.i.i.us ] ; 4 uses
  %i.rx = load i8, ptr %.1377202.i.i.us, align 1, !tbaa !43
  store i8 %i.rx, ptr %.18204.i.i.us, align 1, !tbaa !43
  %i.ry = getelementptr inbounds nuw i8, ptr %.1377202.i.i.us, i64 %i.m ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !43
  %i.sa = getelementptr inbounds nuw i8, ptr %.18204.i.i.us, i64 1
  store i8 %i.rz, ptr %i.sa, align 1, !tbaa !43
  %i.sb = getelementptr inbounds nuw i8, ptr %.1377202.i.i.us, i64 1
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !43
  %i.sd = getelementptr inbounds nuw i8, ptr %.18204.i.i.us, i64 2
  store i8 %i.sc, ptr %i.sd, align 1, !tbaa !43
  %i.se = getelementptr i8, ptr %i.ry, i64 1
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !43
  %i.sg = getelementptr inbounds nuw i8, ptr %.18204.i.i.us, i64 3
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !43
  %i.sh = getelementptr inbounds nuw i8, ptr %.18204.i.i.us, i64 4 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.1377202.i.i.us, i64 %i.nq ; 2 uses
  %i.sj = add nuw nsw i32 %.1374203.i.i.us, 2     ; 3 uses
  %i.sk = or disjoint i32 %i.sj, 1
  %i.sl = icmp slt i32 %i.sk, %5
  br i1 %i.sl, label %.lr.ph205.i.i.us, label %.preheader120.i.i.us, !llvm.loop !330

.preheader120.i.i.us:                             ; preds = %.lr.ph205.i.i.us, %.preheader122.i.i.us
  %.1377.lcssa.i.i.us = phi ptr [ %.0376.lcssa.i.i.us, %.preheader122.i.i.us ], [ %i.si, %.lr.ph205.i.i.us ] ; 2 uses
  %.1374.lcssa.i.i.us = phi i32 [ %.0373.lcssa.i.i.us, %.preheader122.i.i.us ], [ %i.sj, %.lr.ph205.i.i.us ] ; 5 uses
  %.18.lcssa.i.i.us = phi ptr [ %.17.lcssa.i.i.us, %.preheader122.i.i.us ], [ %i.sh, %.lr.ph205.i.i.us ] ; 3 uses
  %i.sm = icmp slt i32 %.1374.lcssa.i.i.us, %5
  br i1 %i.sm, label %.lr.ph212.i.i.us.preheader, label %.loopexit121.i.i.us99

.lr.ph212.i.i.us.preheader:                       ; preds = %.preheader120.i.i.us
  %i.sn = sub i32 %5, %.1374.lcssa.i.i.us
  %xtraiter496 = and i32 %i.sn, 3                 ; 2 uses
  %lcmp.mod497.not = icmp eq i32 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph212.i.i.us.prol.loopexit, label %.lr.ph212.i.i.us.prol

.lr.ph212.i.i.us.prol:                            ; preds = %.lr.ph212.i.i.us.preheader, %.lr.ph212.i.i.us.prol
  %.19211.i.i.us.prol = phi ptr [ %i.ss, %.lr.ph212.i.i.us.prol ], [ %.18.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ] ; 3 uses
  %.2375210.i.i.us.prol = phi i32 [ %i.su, %.lr.ph212.i.i.us.prol ], [ %.1374.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ]
  %.2378209.i.i.us.prol = phi ptr [ %i.st, %.lr.ph212.i.i.us.prol ], [ %.1377.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ] ; 3 uses
  %prol.iter498 = phi i32 [ %prol.iter498.next, %.lr.ph212.i.i.us.prol ], [ 0, %.lr.ph212.i.i.us.preheader ]
  %i.so = load i8, ptr %.2378209.i.i.us.prol, align 1, !tbaa !43
  store i8 %i.so, ptr %.19211.i.i.us.prol, align 1, !tbaa !43
  %i.sp = getelementptr inbounds nuw i8, ptr %.2378209.i.i.us.prol, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !43
  %i.sr = getelementptr inbounds nuw i8, ptr %.19211.i.i.us.prol, i64 1
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !43
  %i.ss = getelementptr inbounds nuw i8, ptr %.19211.i.i.us.prol, i64 2 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.2378209.i.i.us.prol, i64 %i.m ; 2 uses
  %i.su = add nuw nsw i32 %.2375210.i.i.us.prol, 1 ; 2 uses
  %prol.iter498.next = add i32 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i32 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %.lr.ph212.i.i.us.prol.loopexit, label %.lr.ph212.i.i.us.prol, !llvm.loop !331

.lr.ph212.i.i.us.prol.loopexit:                   ; preds = %.lr.ph212.i.i.us.prol, %.lr.ph212.i.i.us.preheader
  %.lcssa416.unr = phi ptr [ poison, %.lr.ph212.i.i.us.preheader ], [ %i.ss, %.lr.ph212.i.i.us.prol ]
  %.19211.i.i.us.unr = phi ptr [ %.18.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ], [ %i.ss, %.lr.ph212.i.i.us.prol ]
  %.2375210.i.i.us.unr = phi i32 [ %.1374.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ], [ %i.su, %.lr.ph212.i.i.us.prol ]
  %.2378209.i.i.us.unr = phi ptr [ %.1377.lcssa.i.i.us, %.lr.ph212.i.i.us.preheader ], [ %i.st, %.lr.ph212.i.i.us.prol ]
  %i.sv = sub i32 %.1374.lcssa.i.i.us, %5
  %i.sw = icmp ugt i32 %i.sv, -4
  br i1 %i.sw, label %.loopexit121.i.i.us99, label %.lr.ph212.i.i.us

.lr.ph212.i.i.us:                                 ; preds = %.lr.ph212.i.i.us.prol.loopexit, %.lr.ph212.i.i.us
  %.19211.i.i.us = phi ptr [ %i.tt, %.lr.ph212.i.i.us ], [ %.19211.i.i.us.unr, %.lr.ph212.i.i.us.prol.loopexit ] ; 9 uses
  %.2375210.i.i.us = phi i32 [ %i.tv, %.lr.ph212.i.i.us ], [ %.2375210.i.i.us.unr, %.lr.ph212.i.i.us.prol.loopexit ]
  %.2378209.i.i.us = phi ptr [ %i.tu, %.lr.ph212.i.i.us ], [ %.2378209.i.i.us.unr, %.lr.ph212.i.i.us.prol.loopexit ] ; 3 uses
  %i.sx = load i8, ptr %.2378209.i.i.us, align 1, !tbaa !43
  store i8 %i.sx, ptr %.19211.i.i.us, align 1, !tbaa !43
  %i.sy = getelementptr inbounds nuw i8, ptr %.2378209.i.i.us, i64 1
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !43
  %i.ta = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 1
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !43
  %i.tb = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 2
  %i.tc = getelementptr inbounds nuw i8, ptr %.2378209.i.i.us, i64 %i.m ; 3 uses
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !43
  store i8 %i.td, ptr %i.tb, align 1, !tbaa !43
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !43
  %i.tg = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 3
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !43
  %i.th = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.m ; 3 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !43
  store i8 %i.tj, ptr %i.th, align 1, !tbaa !43
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !43
  %i.tm = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 5
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !43
  %i.tn = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 6
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.m ; 3 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !43
  store i8 %i.tp, ptr %i.tn, align 1, !tbaa !43
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !43
  %i.ts = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 7
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !43
  %i.tt = getelementptr inbounds nuw i8, ptr %.19211.i.i.us, i64 8 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.m
  %i.tv = add nuw nsw i32 %.2375210.i.i.us, 4     ; 2 uses
  %exitcond278.not.i.i.us.3 = icmp eq i32 %i.tv, %5
  br i1 %exitcond278.not.i.i.us.3, label %.loopexit121.i.i.us99, label %.lr.ph212.i.i.us, !llvm.loop !332

.loopexit121.i.i.us99:                            ; preds = %.lr.ph212.i.i.us.prol.loopexit, %.lr.ph212.i.i.us, %.preheader120.i.i.us
  %.20.i.i.us100 = phi ptr [ %.18.lcssa.i.i.us, %.preheader120.i.i.us ], [ %.lcssa416.unr, %.lr.ph212.i.i.us.prol.loopexit ], [ %i.tt, %.lr.ph212.i.i.us ] ; 2 uses
  %indvars.iv.next280.i.i.us101 = add nuw nsw i64 %indvars.iv279.i.i.us97, 2 ; 3 uses
  %i.tw = icmp slt i64 %indvars.iv.next280.i.i.us101, %invariant.op327.i.i
  br i1 %i.tw, label %_ZN4ncnn3MatD2Ev.exit398.i.i.us, label %.preheader119.loopexit.i.i, !llvm.loop !325

.preheader119.loopexit.i.i:                       ; preds = %.loopexit121.i.i.us99, %.loopexit121.i.i.loopexit.us.us, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.preheader, %.loopexit121.i.i.preheader
  %.us-phi = phi ptr [ %.lcssa409, %.loopexit121.i.i.loopexit.us.us ], [ %.7.lcssa.i.i, %.loopexit121.i.i.preheader ], [ %.7.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.preheader ], [ %.20.i.i.us100, %.loopexit121.i.i.us99 ]
  %.us-phi95 = phi i64 [ %indvars.iv.next280.i.i.us.us, %.loopexit121.i.i.loopexit.us.us ], [ %i.oc, %.loopexit121.i.i.preheader ], [ %i.ok, %_ZN4ncnn3MatD2Ev.exit399.i.i.us.preheader ], [ %indvars.iv.next280.i.i.us101, %.loopexit121.i.i.us99 ]
  %i.tx = trunc nsw i64 %.us-phi95 to i32
  br label %.preheader119.i.i

.preheader119.i.i:                                ; preds = %.preheader119.loopexit.i.i, %.preheader124.i.i
  %.2369.lcssa.i.i = phi i32 [ %.1368.lcssa.i.i, %.preheader124.i.i ], [ %i.tx, %.preheader119.loopexit.i.i ] ; 2 uses
  %.14.lcssa.i.i = phi ptr [ %.7.lcssa.i.i, %.preheader124.i.i ], [ %.us-phi, %.preheader119.loopexit.i.i ] ; 2 uses
  %i.ty = icmp slt i32 %.2369.lcssa.i.i, %3
  br i1 %i.ty, label %.lr.ph238.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph238.i.i:                                    ; preds = %.preheader119.i.i
  %i.tz = sdiv i32 %4, 8
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %17 = lshr i32 %5, 3                            ; 3 uses
  %i.uc = shl i64 %i.m, 3                         ; 5 uses
  %i.ud = sext i32 %4 to i64
  %i.ue = icmp sgt i32 %5, 3
  %i.uf = shl i64 %i.m, 1
  %i.ug = mul i64 %i.m, 3
  %i.uh = shl i64 %i.m, 2
  %i.ui = and i32 %5, -4
  %i.uj = sext i32 %.2369.lcssa.i.i to i64        ; 2 uses
  %i.uk = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count.i.i = sext i32 %3 to i64       ; 2 uses
  switch i32 %i.o, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit [
    i32 8, label %.lr.ph238.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit.i.i.us
  ]

.lr.ph238.i.i.split.us:                           ; preds = %.lr.ph238.i.i
  %i.ul = icmp sgt i32 %5, 7
  br i1 %i.ul, label %_ZN4ncnn3MatD2Ev.exit397.i.i.us.preheader, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

_ZN4ncnn3MatD2Ev.exit397.i.i.us.preheader:        ; preds = %.lr.ph238.i.i.split.us
  %i.um = add nsw i32 %17, -1
  %xtraiter508 = and i32 %17, 3                   ; 3 uses
  %i.un = icmp ult i32 %i.um, 3
  %unroll_iter512 = and i32 %17, 268435452
  %lcmp.mod509.not = icmp eq i32 %xtraiter508, 0
  %lcmp.mod511 = icmp ne i32 %xtraiter508, 0
  br label %_ZN4ncnn3MatD2Ev.exit397.i.i.us

_ZN4ncnn3MatD2Ev.exit397.i.i.us:                  ; preds = %_ZN4ncnn3MatD2Ev.exit397.i.i.us.preheader, %.loopexit.i.i.loopexit.us
  %indvars.iv284.i.i.us = phi i64 [ %indvars.iv.next285.i.i.us, %.loopexit.i.i.loopexit.us ], [ %i.uj, %_ZN4ncnn3MatD2Ev.exit397.i.i.us.preheader ] ; 2 uses
  %.21237.i.i.us = phi ptr [ %.lcssa, %.loopexit.i.i.loopexit.us ], [ %.14.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit397.i.i.us.preheader ] ; 2 uses
  %i.uo = load ptr, ptr %0, align 8, !tbaa !32, !noalias !333
  %i.up = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !333
  %i.uq = mul i64 %i.up, %i.ua
  %i.ur = load i64, ptr %i.ub, align 8, !tbaa !36, !noalias !333
  %i.us = mul i64 %i.uq, %i.ur
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.us
  %i.uu = add nsw i64 %indvars.iv284.i.i.us, %i.uk
  %i.uv = shl nsw i64 %i.uu, 3
  %i.uw = getelementptr inbounds i8, ptr %i.ut, i64 %i.uv ; 2 uses
  br i1 %i.un, label %.lr.ph222.i.i.us.epil.preheader, label %.lr.ph222.i.i.us

.lr.ph222.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit397.i.i.us, %.lr.ph222.i.i.us
  %.22221.i.i.us = phi ptr [ %i.wb, %.lr.ph222.i.i.us ], [ %.21237.i.i.us, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ] ; 5 uses
  %.0372219.i.i.us = phi ptr [ %i.wc, %.lr.ph222.i.i.us ], [ %i.uw, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ] ; 2 uses
  %niter513 = phi i32 [ %niter513.next.3, %.lr.ph222.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ]
  %i.ux = load i64, ptr %.0372219.i.i.us, align 1, !tbaa !43
  %i.uy = insertelement <2 x i64> poison, i64 %i.ux, i64 0
  %i.uz = bitcast <2 x i64> %i.uy to <16 x i8>
  %i.va = add <16 x i8> %i.uz, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vb = bitcast <16 x i8> %i.va to <2 x i64>
  %i.vc = extractelement <2 x i64> %i.vb, i64 0
  store i64 %i.vc, ptr %.22221.i.i.us, align 1, !tbaa !43
  %i.vd = getelementptr inbounds nuw i8, ptr %.22221.i.i.us, i64 8
  %i.ve = getelementptr inbounds nuw i8, ptr %.0372219.i.i.us, i64 %i.uc ; 2 uses
  %i.vf = load i64, ptr %i.ve, align 1, !tbaa !43
  %i.vg = insertelement <2 x i64> poison, i64 %i.vf, i64 0
  %i.vh = bitcast <2 x i64> %i.vg to <16 x i8>
  %i.vi = add <16 x i8> %i.vh, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vj = bitcast <16 x i8> %i.vi to <2 x i64>
  %i.vk = extractelement <2 x i64> %i.vj, i64 0
  store i64 %i.vk, ptr %i.vd, align 1, !tbaa !43
  %i.vl = getelementptr inbounds nuw i8, ptr %.22221.i.i.us, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.uc ; 2 uses
  %i.vn = load i64, ptr %i.vm, align 1, !tbaa !43
  %i.vo = insertelement <2 x i64> poison, i64 %i.vn, i64 0
  %i.vp = bitcast <2 x i64> %i.vo to <16 x i8>
  %i.vq = add <16 x i8> %i.vp, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vr = bitcast <16 x i8> %i.vq to <2 x i64>
  %i.vs = extractelement <2 x i64> %i.vr, i64 0
  store i64 %i.vs, ptr %i.vl, align 1, !tbaa !43
  %i.vt = getelementptr inbounds nuw i8, ptr %.22221.i.i.us, i64 24
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 %i.uc ; 2 uses
  %i.vv = load i64, ptr %i.vu, align 1, !tbaa !43
  %i.vw = insertelement <2 x i64> poison, i64 %i.vv, i64 0
  %i.vx = bitcast <2 x i64> %i.vw to <16 x i8>
  %i.vy = add <16 x i8> %i.vx, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vz = bitcast <16 x i8> %i.vy to <2 x i64>
  %i.wa = extractelement <2 x i64> %i.vz, i64 0
  store i64 %i.wa, ptr %i.vt, align 1, !tbaa !43
  %i.wb = getelementptr inbounds nuw i8, ptr %.22221.i.i.us, i64 32 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.uc ; 2 uses
  %niter513.next.3 = add i32 %niter513, 4         ; 2 uses
  %niter513.ncmp.3 = icmp eq i32 %niter513.next.3, %unroll_iter512
  br i1 %niter513.ncmp.3, label %.loopexit.i.i.loopexit.us.unr-lcssa, label %.lr.ph222.i.i.us, !llvm.loop !336

.loopexit.i.i.loopexit.us.unr-lcssa:              ; preds = %.lr.ph222.i.i.us
  br i1 %lcmp.mod509.not, label %.loopexit.i.i.loopexit.us, label %.lr.ph222.i.i.us.epil.preheader

.lr.ph222.i.i.us.epil.preheader:                  ; preds = %.loopexit.i.i.loopexit.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit397.i.i.us
  %.22221.i.i.us.epil.init = phi ptr [ %.21237.i.i.us, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ], [ %i.wb, %.loopexit.i.i.loopexit.us.unr-lcssa ]
  %.0372219.i.i.us.epil.init = phi ptr [ %i.uw, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ], [ %i.wc, %.loopexit.i.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod511)
  br label %.lr.ph222.i.i.us.epil

.lr.ph222.i.i.us.epil:                            ; preds = %.lr.ph222.i.i.us.epil, %.lr.ph222.i.i.us.epil.preheader
  %.22221.i.i.us.epil = phi ptr [ %i.wj, %.lr.ph222.i.i.us.epil ], [ %.22221.i.i.us.epil.init, %.lr.ph222.i.i.us.epil.preheader ] ; 2 uses
  %.0372219.i.i.us.epil = phi ptr [ %i.wk, %.lr.ph222.i.i.us.epil ], [ %.0372219.i.i.us.epil.init, %.lr.ph222.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph222.i.i.us.epil ], [ 0, %.lr.ph222.i.i.us.epil.preheader ]
  %i.wd = load i64, ptr %.0372219.i.i.us.epil, align 1, !tbaa !43
  %i.we = insertelement <2 x i64> poison, i64 %i.wd, i64 0
  %i.wf = bitcast <2 x i64> %i.we to <16 x i8>
  %i.wg = add <16 x i8> %i.wf, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.wh = bitcast <16 x i8> %i.wg to <2 x i64>
  %i.wi = extractelement <2 x i64> %i.wh, i64 0
  store i64 %i.wi, ptr %.22221.i.i.us.epil, align 1, !tbaa !43
  %i.wj = getelementptr inbounds nuw i8, ptr %.22221.i.i.us.epil, i64 8 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.0372219.i.i.us.epil, i64 %i.uc
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter508
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.loopexit.us, label %.lr.ph222.i.i.us.epil, !llvm.loop !337

.loopexit.i.i.loopexit.us:                        ; preds = %.lr.ph222.i.i.us.epil, %.loopexit.i.i.loopexit.us.unr-lcssa
  %.lcssa = phi ptr [ %i.wb, %.loopexit.i.i.loopexit.us.unr-lcssa ], [ %i.wj, %.lr.ph222.i.i.us.epil ]
  %indvars.iv.next285.i.i.us = add nsw i64 %indvars.iv284.i.i.us, 1 ; 2 uses
  %exitcond287.not.i.i.us = icmp eq i64 %indvars.iv.next285.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond287.not.i.i.us, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit397.i.i.us, !llvm.loop !338

_ZN4ncnn3MatD2Ev.exit.i.i.us:                     ; preds = %.lr.ph238.i.i, %.loopexit.i.i.us111
  %indvars.iv284.i.i.us109 = phi i64 [ %indvars.iv.next285.i.i.us113, %.loopexit.i.i.us111 ], [ %i.uj, %.lr.ph238.i.i ] ; 2 uses
  %.21237.i.i.us110 = phi ptr [ %.26.i.i.us112, %.loopexit.i.i.us111 ], [ %.14.lcssa.i.i, %.lr.ph238.i.i ] ; 2 uses
  %i.wl = load ptr, ptr %0, align 8, !tbaa !32, !noalias !339
  %i.wm = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !339
  %i.wn = mul i64 %i.wm, %i.ud
  %i.wo = load i64, ptr %i.ub, align 8, !tbaa !36, !noalias !339
  %i.wp = mul i64 %i.wn, %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wp
  %i.wr = getelementptr i8, ptr %i.wq, i64 %indvars.iv284.i.i.us109
  %i.ws = getelementptr i8, ptr %i.wr, i64 %i.uk  ; 2 uses
  br i1 %i.ue, label %.lr.ph227.i.i.us, label %.preheader.i.i.us

.lr.ph227.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.us, %.lr.ph227.i.i.us
  %.0226.i.i.us = phi i32 [ %i.xj, %.lr.ph227.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i.us ]
  %.0363225.i.i.us = phi ptr [ %i.xi, %.lr.ph227.i.i.us ], [ %i.ws, %_ZN4ncnn3MatD2Ev.exit.i.i.us ] ; 5 uses
  %.24224.i.i.us = phi ptr [ %i.xh, %.lr.ph227.i.i.us ], [ %.21237.i.i.us110, %_ZN4ncnn3MatD2Ev.exit.i.i.us ] ; 5 uses
  %i.wt = load i8, ptr %.0363225.i.i.us, align 1, !tbaa !43
  %i.wu = add i8 %i.wt, 127
  store i8 %i.wu, ptr %.24224.i.i.us, align 1, !tbaa !43
  %i.wv = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.m
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !43
  %i.wx = add i8 %i.ww, 127
  %i.wy = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 1
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !43
  %i.wz = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.uf
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !43
  %i.xb = add i8 %i.xa, 127
  %i.xc = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 2
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !43
  %i.xd = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.ug
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !43
  %i.xf = add i8 %i.xe, 127
  %i.xg = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 3
  store i8 %i.xf, ptr %i.xg, align 1, !tbaa !43
  %i.xh = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 4 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.uh ; 2 uses
  %i.xj = add nuw nsw i32 %.0226.i.i.us, 4        ; 2 uses
  %i.xk = or disjoint i32 %i.xj, 3
  %i.xl = icmp slt i32 %i.xk, %5
  br i1 %i.xl, label %.lr.ph227.i.i.us, label %.preheader.i.i.us, !llvm.loop !342

.preheader.i.i.us:                                ; preds = %.lr.ph227.i.i.us, %_ZN4ncnn3MatD2Ev.exit.i.i.us
  %.24.lcssa.i.i.us = phi ptr [ %.21237.i.i.us110, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.xh, %.lr.ph227.i.i.us ] ; 3 uses
  %.0363.lcssa.i.i.us = phi ptr [ %i.ws, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.xi, %.lr.ph227.i.i.us ] ; 2 uses
  %.0.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.ui, %.lr.ph227.i.i.us ] ; 5 uses
  %i.xm = icmp slt i32 %.0.lcssa.i.i.us, %5
  br i1 %i.xm, label %.lr.ph234.i.i.us.preheader, label %.loopexit.i.i.us111

.lr.ph234.i.i.us.preheader:                       ; preds = %.preheader.i.i.us
  %i.xn = sub i32 %5, %.0.lcssa.i.i.us
  %xtraiter505 = and i32 %i.xn, 7                 ; 2 uses
  %lcmp.mod506.not = icmp eq i32 %xtraiter505, 0
  br i1 %lcmp.mod506.not, label %.lr.ph234.i.i.us.prol.loopexit, label %.lr.ph234.i.i.us.prol

.lr.ph234.i.i.us.prol:                            ; preds = %.lr.ph234.i.i.us.preheader, %.lr.ph234.i.i.us.prol
  %.1233.i.i.us.prol = phi i32 [ %i.xr, %.lr.ph234.i.i.us.prol ], [ %.0.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ]
  %.1364232.i.i.us.prol = phi ptr [ %i.xq, %.lr.ph234.i.i.us.prol ], [ %.0363.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ] ; 2 uses
  %.25231.i.i.us.prol = phi ptr [ %i.xp, %.lr.ph234.i.i.us.prol ], [ %.24.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ] ; 2 uses
  %prol.iter507 = phi i32 [ %prol.iter507.next, %.lr.ph234.i.i.us.prol ], [ 0, %.lr.ph234.i.i.us.preheader ]
  %i.xo = load i8, ptr %.1364232.i.i.us.prol, align 1, !tbaa !43
  store i8 %i.xo, ptr %.25231.i.i.us.prol, align 1, !tbaa !43
  %i.xp = getelementptr inbounds nuw i8, ptr %.25231.i.i.us.prol, i64 1 ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.1364232.i.i.us.prol, i64 %i.m ; 2 uses
  %i.xr = add nuw nsw i32 %.1233.i.i.us.prol, 1   ; 2 uses
  %prol.iter507.next = add i32 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i32 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.lr.ph234.i.i.us.prol.loopexit, label %.lr.ph234.i.i.us.prol, !llvm.loop !343

.lr.ph234.i.i.us.prol.loopexit:                   ; preds = %.lr.ph234.i.i.us.prol, %.lr.ph234.i.i.us.preheader
  %.lcssa408.unr = phi ptr [ poison, %.lr.ph234.i.i.us.preheader ], [ %i.xp, %.lr.ph234.i.i.us.prol ]
  %.1233.i.i.us.unr = phi i32 [ %.0.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xr, %.lr.ph234.i.i.us.prol ]
  %.1364232.i.i.us.unr = phi ptr [ %.0363.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xq, %.lr.ph234.i.i.us.prol ]
  %.25231.i.i.us.unr = phi ptr [ %.24.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xp, %.lr.ph234.i.i.us.prol ]
  %i.xs = sub i32 %.0.lcssa.i.i.us, %5
  %i.xt = icmp ugt i32 %i.xs, -8
  br i1 %i.xt, label %.loopexit.i.i.us111, label %.lr.ph234.i.i.us

.lr.ph234.i.i.us:                                 ; preds = %.lr.ph234.i.i.us.prol.loopexit, %.lr.ph234.i.i.us
  %.1233.i.i.us = phi i32 [ %i.ys, %.lr.ph234.i.i.us ], [ %.1233.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ]
  %.1364232.i.i.us = phi ptr [ %i.yr, %.lr.ph234.i.i.us ], [ %.1364232.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ] ; 2 uses
  %.25231.i.i.us = phi ptr [ %i.yq, %.lr.ph234.i.i.us ], [ %.25231.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.bbn = mul <4 x i32> %i.bbm, %i.adg
  %i.bbo = sub <4 x i32> %i.bax, %i.bbn           ; 4 uses
  %i.bbp = bitcast <4 x i32> %i.bbo to <2 x i64>
  %i.bbq = bitcast <4 x i32> %i.bbo to <2 x i64>
  %i.bbr = and <2 x i64> %i.bbq, splat (i64 4294967295)
  %i.bbs = mul nuw <2 x i64> %i.bbr, %i.adi
  %i.bbt = lshr <2 x i64> %i.bbs, splat (i64 32)
  %i.bbu = lshr <2 x i64> %i.bbp, splat (i64 32)
  %i.bbv = mul nuw <2 x i64> %i.bbu, %i.adi
  %i.bbw = bitcast <2 x i64> %i.bbt to <8 x i16>
  %i.bbx = bitcast <2 x i64> %i.bbv to <8 x i16>
  %i.bby = shufflevector <8 x i16> %i.bbw, <8 x i16> %i.bbx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bbz = bitcast <8 x i16> %i.bby to <4 x i32>  ; 2 uses
  %i.bca = sub <4 x i32> %i.bbo, %i.bbz
  %i.bcb = lshr <4 x i32> %i.bca, %i.adj
  %i.bcc = add <4 x i32> %i.bcb, %i.bbz
  %i.bcd = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bcc, <4 x i32> %i.abh) ; 2 uses
  %i.bce = mul <4 x i32> %i.bcd, %i.adl
  %i.bcf = sub <4 x i32> %i.bbo, %i.bce
  %i.bcg = mul <4 x i32> %i.bbm, %i.ado
  %i.bch = mul <4 x i32> %i.bcf, %i.adq
  %i.bci = mul <4 x i32> %i.bcd, %i.ads
  %i.bcj = add <4 x i32> %i.bci, %i.bcg
  %i.bck = add <4 x i32> %i.bcj, %i.bch           ; 4 uses
  %i.bcl = shufflevector <4 x i32> %i.bck, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bcm = add <4 x i32> %i.bcl, %i.auh
  %i.bcn = shufflevector <4 x i32> %i.bck, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bco = add <4 x i32> %i.bcn, %i.auh
  %i.bcp = shufflevector <4 x i32> %i.bck, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bcq = add <4 x i32> %i.bcp, %i.auh
  %i.bcr = shufflevector <4 x i32> %i.bck, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bcs = add <4 x i32> %i.bcr, %i.auh
  %i.bct = load ptr, ptr %0, align 8, !tbaa !32   ; 4 uses
  %i.bcu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bct, <4 x i32> %i.bcm, <4 x i32> splat (i32 -1), i8 1)
  %i.bcv = bitcast <4 x i32> %i.bcu to <16 x i8>
  %i.bcw = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bct, <4 x i32> %i.bco, <4 x i32> splat (i32 -1), i8 1)
  %i.bcx = bitcast <4 x i32> %i.bcw to <16 x i8>
  %i.bcy = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bct, <4 x i32> %i.bcq, <4 x i32> splat (i32 -1), i8 1)
  %i.bcz = bitcast <4 x i32> %i.bcy to <16 x i8>
  %i.bda = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bct, <4 x i32> %i.bcs, <4 x i32> splat (i32 -1), i8 1)
  %i.bdb = bitcast <4 x i32> %i.bda to <16 x i8>
  %i.bdc = shufflevector <16 x i8> %i.bcv, <16 x i8> %i.bcx, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdd = shufflevector <16 x i8> %i.bcz, <16 x i8> %i.bdb, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bde = shufflevector <16 x i8> %i.bdc, <16 x i8> %i.bdd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.bdf = add <16 x i8> %i.bde, splat (i8 127)
  store <16 x i8> %i.bdf, ptr %.20329.i.i, align 1, !tbaa !43
  %i.bdg = getelementptr inbounds nuw i8, ptr %.20329.i.i, i64 16 ; 2 uses
  %i.bdh = add nuw nsw i32 %.01267328.i.i, 4      ; 3 uses
  %i.bdi = or disjoint i32 %i.bdh, 3
  %i.bdj = icmp slt i32 %i.bdi, %5
  br i1 %i.bdj, label %.lr.ph330.i.i, label %.preheader274.i.i, !llvm.loop !358

.preheader272.i.i:                                ; preds = %.lr.ph335.i.i, %.preheader274.i.i
  %.11268.lcssa.i.i = phi i32 [ %.01267.lcssa.i.i, %.preheader274.i.i ], [ %i.beu, %.lr.ph335.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.20.lcssa.i.i, %.preheader274.i.i ], [ %i.bet, %.lr.ph335.i.i ] ; 2 uses
  %i.bdk = icmp slt i32 %.11268.lcssa.i.i, %5
  br i1 %i.bdk, label %.lr.ph340.i.i, label %.loopexit265.i.i

.lr.ph335.i.i:                                    ; preds = %.preheader274.i.i, %.lr.ph335.i.i
  %.21334.i.i = phi ptr [ %i.bet, %.lr.ph335.i.i ], [ %.20.lcssa.i.i, %.preheader274.i.i ] ; 2 uses
  %.11268333.i.i = phi i32 [ %i.beu, %.lr.ph335.i.i ], [ %.01267.lcssa.i.i, %.preheader274.i.i ] ; 2 uses
  %i.bdl = add nsw i32 %.11268333.i.i, %4         ; 3 uses
  %i.bdm = sdiv i32 %i.bdl, %i.zc
  %i.bdn = add nsw i32 %i.bdl, 1                  ; 2 uses
  %i.bdo = sdiv i32 %i.bdn, %i.zc
  %i.bdp = srem i32 %i.bdl, %i.zc                 ; 2 uses
  %i.bdq = srem i32 %i.bdn, %i.zc                 ; 2 uses
  %i.bdr = sdiv i32 %i.bdp, %6
  %i.bds = sdiv i32 %i.bdq, %6
  %i.bdt = srem i32 %i.bdp, %6
  %i.bdu = srem i32 %i.bdq, %6
  %i.bdv = mul i32 %i.bdr, %.scalar514.i.i
  %i.bdw = mul nsw i32 %i.bdt, %8
  %i.bdx = mul i32 %i.bds, %.scalar514.i.i
  %i.bdy = mul nsw i32 %i.bdu, %8
  %i.bdz = mul i32 %i.bdm, %i.adm
  %i.bea = add i32 %i.bdv, %i.bdz
  %i.beb = add i32 %i.bea, %i.bdw
  %i.bec = insertelement <4 x i32> poison, i32 %i.beb, i64 0
  %i.bed = shufflevector <4 x i32> %i.bec, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bee = add <4 x i32> %i.bed, %i.auh
  %i.bef = mul i32 %i.bdo, %i.adm
  %i.beg = add i32 %i.bdx, %i.bef
  %i.beh = add i32 %i.beg, %i.bdy
  %i.bei = insertelement <4 x i32> poison, i32 %i.beh, i64 0
  %i.bej = shufflevector <4 x i32> %i.bei, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bek = add <4 x i32> %i.bej, %i.auh
  %i.bel = load ptr, ptr %0, align 8, !tbaa !32   ; 2 uses
  %i.bem = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bel, <4 x i32> %i.bee, <4 x i32> splat (i32 -1), i8 1)
  %i.ben = bitcast <4 x i32> %i.bem to <16 x i8>
  %i.beo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bel, <4 x i32> %i.bek, <4 x i32> splat (i32 -1), i8 1)
  %i.bep = bitcast <4 x i32> %i.beo to <16 x i8>
  %i.beq = shufflevector <16 x i8> %i.ben, <16 x i8> %i.bep, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ber = bitcast <16 x i8> %i.beq to <2 x i64>
  %i.bes = extractelement <2 x i64> %i.ber, i64 0
  store i64 %i.bes, ptr %.21334.i.i, align 1, !tbaa !43
  %i.bet = getelementptr inbounds nuw i8, ptr %.21334.i.i, i64 8 ; 2 uses
  %i.beu = add nuw nsw i32 %.11268333.i.i, 2      ; 3 uses
  %i.bev = or disjoint i32 %i.beu, 1
  %i.bew = icmp slt i32 %i.bev, %5
  br i1 %i.bew, label %.lr.ph335.i.i, label %.preheader272.i.i, !llvm.loop !359

.lr.ph340.i.i:                                    ; preds = %.preheader272.i.i, %.lr.ph340.i.i
  %.22339.i.i = phi ptr [ %i.bfq, %.lr.ph340.i.i ], [ %.21.lcssa.i.i, %.preheader272.i.i ] ; 2 uses
  %.21269338.i.i = phi i32 [ %i.bfr, %.lr.ph340.i.i ], [ %.11268.lcssa.i.i, %.preheader272.i.i ] ; 2 uses
  %i.bex = add nsw i32 %.21269338.i.i, %4         ; 2 uses
  %i.bey = sdiv i32 %i.bex, %i.zc
  %i.bez = srem i32 %i.bex, %i.zc                 ; 2 uses
  %i.bfa = sdiv i32 %i.bez, %6
  %i.bfb = srem i32 %i.bez, %6
  %i.bfc = mul i32 %i.bfa, %.scalar514.i.i
  %i.bfd = mul nsw i32 %i.bfb, %8
  %i.bfe = mul i32 %i.bey, %i.adm
  %i.bff = add i32 %i.bfc, %i.bfe
  %i.bfg = add i32 %i.bff, %i.bfd
  %i.bfh = insertelement <4 x i32> poison, i32 %i.bfg, i64 0
  %i.bfi = shufflevector <4 x i32> %i.bfh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfj = add <4 x i32> %i.bfi, %i.auh
  %i.bfk = load ptr, ptr %0, align 8, !tbaa !32
  %i.bfl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bfk, <4 x i32> %i.bfj, <4 x i32> splat (i32 -1), i8 1)
  %i.bfm = bitcast <4 x i32> %i.bfl to <16 x i8>
  %i.bfn = shufflevector <16 x i8> %i.bfm, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfo = bitcast <16 x i8> %i.bfn to <4 x float>
  %i.bfp = extractelement <4 x float> %i.bfo, i64 0
  store float %i.bfp, ptr %.22339.i.i, align 1, !tbaa !43
  %i.bfq = getelementptr inbounds nuw i8, ptr %.22339.i.i, i64 4 ; 2 uses
  %i.bfr = add nuw nsw i32 %.21269338.i.i, 1      ; 2 uses
  %exitcond500.not.i.i = icmp eq i32 %i.bfr, %5
  br i1 %exitcond500.not.i.i, label %.loopexit265.i.i, label %.lr.ph340.i.i, !llvm.loop !360

.loopexit273.i.i:                                 ; preds = %bb.v
  br i1 %brmerge441.i.i, label %.loopexit265.i.i, label %.lr.ph344.i.i

.lr.ph344.i.i:                                    ; preds = %.loopexit273.i.i, %.lr.ph344.i.i
  %.24343.i.i = phi ptr [ %i.bgo, %.lr.ph344.i.i ], [ %.13365.i.i, %.loopexit273.i.i ] ; 2 uses
  %.01270342.i.i = phi i32 [ %i.bgp, %.lr.ph344.i.i ], [ 0, %.loopexit273.i.i ] ; 2 uses
  %i.bfs = add nsw i32 %.01270342.i.i, %i.adw     ; 2 uses
  %i.bft = sdiv i32 %i.bfs, %i.zc
  %i.bfu = srem i32 %i.bfs, %i.zc                 ; 2 uses
  %i.bfv = sdiv i32 %i.bfu, %6
  %i.bfw = srem i32 %i.bfu, %6
  %i.bfx = mul i32 %i.bfv, %.scalar514.i.i
  %i.bfy = mul nsw i32 %i.bfw, %8
  %i.bfz = mul i32 %i.bft, %i.adm
  %i.bga = add i32 %i.bfx, %i.bfz
  %i.bgb = add i32 %i.bga, %i.bfy
  %i.bgc = insertelement <4 x i32> poison, i32 %i.bgb, i64 0
  %i.bgd = shufflevector <4 x i32> %i.bgc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bge = add <4 x i32> %i.bgd, %i.auh
  %i.bgf = shl <4 x i32> %i.bge, splat (i32 3)
  %i.bgg = load ptr, ptr %0, align 8, !tbaa !32
  %i.bgh = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bgg, <4 x i32> %i.bgf, <4 x i64> splat (i64 -1), i8 1)
  %i.bgi = bitcast <4 x i64> %i.bgh to <8 x i32>
  %i.bgj = shufflevector <8 x i32> %i.bgi, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.bgk = bitcast <8 x i32> %i.bgj to <4 x i64>
  %i.bgl = shufflevector <4 x i64> %i.bgk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bgm = bitcast <4 x i64> %i.bgl to <32 x i8>
  %i.bgn = add <32 x i8> %i.bgm, splat (i8 127)
  store <32 x i8> %i.bgn, ptr %.24343.i.i, align 1, !tbaa !43
  %i.bgo = getelementptr inbounds nuw i8, ptr %.24343.i.i, i64 32 ; 2 uses
  %i.bgp = add nuw nsw i32 %.01270342.i.i, 1      ; 2 uses
  %exitcond501.not.i.i = icmp eq i32 %i.bgp, %i.adu
  br i1 %exitcond501.not.i.i, label %.loopexit265.i.i, label %.lr.ph344.i.i, !llvm.loop !361

.loopexit265.i.i:                                 ; preds = %.lr.ph344.i.i, %.lr.ph340.i.i, %bb.u, %bb.t, %.loopexit273.i.i, %.preheader272.i.i, %.loopexit267.i.i, %.preheader266.i.i
  %.25.i.i = phi ptr [ %.13365.i.i, %.loopexit273.i.i ], [ %.15.lcssa.i.i, %.preheader266.i.i ], [ %.13365.i.i, %.loopexit267.i.i ], [ %i.baq, %bb.u ], [ %i.azn, %bb.t ], [ %.21.lcssa.i.i, %.preheader272.i.i ], [ %i.bfq, %.lr.ph340.i.i ], [ %i.bgo, %.lr.ph344.i.i ] ; 2 uses
  %i.bgq = add nuw nsw i32 %.11251364.i.i, 4      ; 3 uses
  %i.bgr = or disjoint i32 %i.bgq, 3
  %i.bgs = icmp slt i32 %i.bgr, %3
  br i1 %i.bgs, label %bb.p, label %.preheader263.i.i, !llvm.loop !362

.preheader250.i.i:                                ; preds = %.loopexit252.i.i, %.preheader263.i.i
  %.21252.lcssa.i.i = phi i32 [ %.11251.lcssa.i.i, %.preheader263.i.i ], [ %i.bvl, %.loopexit252.i.i ] ; 2 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader263.i.i ], [ %.39.i.i, %.loopexit252.i.i ]
  %i.bgt = icmp slt i32 %.21252.lcssa.i.i, %3
  br i1 %i.bgt, label %.lr.ph431.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph431.i.i:                                    ; preds = %.preheader250.i.i
  %i.bgu = mul i32 %i.yu, %11
  %i.bgv = icmp eq i32 %i.yw, 1
  %i.bgw = icmp sgt i32 %5, 3
  %i.bgx = shufflevector <4 x i64> %i.aan, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bgy = and <2 x i64> %i.bgx, splat (i64 4294967295) ; 2 uses
  %i.bgz = shufflevector <4 x i32> %i.aao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bha = insertelement <4 x i32> poison, i32 %i.zc, i64 0
  %i.bhb = shufflevector <4 x i32> %i.bha, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhc = shufflevector <4 x i64> %i.abf, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bhd = and <2 x i64> %i.bhc, splat (i64 4294967295) ; 2 uses
  %i.bhe = shufflevector <4 x i32> %i.abg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhf = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bhg = shufflevector <4 x i32> %i.bhf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhh = trunc i64 %i.m to i32
  %i.bhi = insertelement <4 x i32> poison, i32 %i.bhh, i64 0
  %i.bhj = shufflevector <4 x i32> %i.bhi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhk = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bhl = shufflevector <4 x i32> %i.bhk, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar518.i.i = mul i32 %i.yu, %9             ; 5 uses
  %i.bhm = insertelement <4 x i32> poison, i32 %.scalar518.i.i, i64 0
  %i.bhn = shufflevector <4 x i32> %i.bhm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bho = icmp ne i32 %i.yw, 8
  %18 = lshr i32 %5, 3
  %i.bhp = icmp slt i32 %5, 8
  %i.bhq = sdiv i32 %4, 8
  %brmerge448.i.i = or i1 %i.bhp, %i.bho
  br label %bb.af

bb.w:                                             ; preds = %.loopexit252.i.i, %.lr.ph408.i.i
  %.26407.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph408.i.i ], [ %.39.i.i, %.loopexit252.i.i ] ; 8 uses
  %.21252406.i.i = phi i32 [ %.11251.lcssa.i.i, %.lr.ph408.i.i ], [ %i.bvl, %.loopexit252.i.i ] ; 2 uses
  %i.bhr = add nsw i32 %.21252406.i.i, %2         ; 3 uses
  %i.bhs = sdiv i32 %i.bhr, %i.zb
  %i.bht = add nsw i32 %i.bhr, 1                  ; 2 uses
  %i.bhu = sdiv i32 %i.bht, %i.zb
  %i.bhv = srem i32 %i.bhr, %i.zb
  %i.bhw = srem i32 %i.bht, %i.zb
  %i.bhx = mul nsw i32 %i.bhv, %10
  %i.bhy = mul nsw i32 %i.bhw, %10
  %i.bhz = mul i32 %i.bhs, %i.ask                 ; 2 uses
  %i.bia = mul i32 %i.bhu, %i.ask                 ; 2 uses
  %i.bib = add nsw i32 %i.bhx, %i.bhz             ; 12 uses
  %i.bic = add nsw i32 %i.bhy, %i.bia             ; 8 uses
  %i.bid = icmp eq i32 %i.bhz, %i.bia
  %or.cond5.i.i = and i1 %i.h, %i.bid
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %i.asl, label %.preheader256.i.i, label %.loopexit254.i.i

.preheader256.i.i:                                ; preds = %bb.x
  br i1 %i.asm, label %.lr.ph390.i.i, label %.preheader255.i.i

.lr.ph390.i.i:                                    ; preds = %.preheader256.i.i
  %i.bie = insertelement <4 x i32> poison, i32 %i.bib, i64 0
  %i.bif = shufflevector <4 x i32> %i.bie, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.y

.preheader255.i.i:                                ; preds = %bb.y, %.preheader256.i.i
  %.01271.lcssa.i.i = phi i32 [ 0, %.preheader256.i.i ], [ %i.bkj, %bb.y ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26407.i.i, %.preheader256.i.i ], [ %i.bki, %bb.y ] ; 2 uses
  %i.big = or disjoint i32 %.01271.lcssa.i.i, 1
  %i.bih = icmp slt i32 %i.big, %5
  br i1 %i.bih, label %.lr.ph395.i.i, label %.preheader253.i.i

.lr.ph395.i.i:                                    ; preds = %.preheader255.i.i
  %i.bii = sext i32 %i.bib to i64                 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph390.i.i
  %.27389.i.i = phi ptr [ %.26407.i.i, %.lr.ph390.i.i ], [ %i.bki, %bb.y ] ; 2 uses
  %.01271388.i.i = phi i32 [ 0, %.lr.ph390.i.i ], [ %i.bkj, %bb.y ] ; 2 uses
  %i.bij = add nsw i32 %.01271388.i.i, %4
  %i.bik = insertelement <4 x i32> poison, i32 %i.bij, i64 0
  %i.bil = shufflevector <4 x i32> %i.bik, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bim = add <4 x i32> %i.bil, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bin = bitcast <4 x i32> %i.bim to <2 x i64>
  %i.bio = bitcast <4 x i32> %i.bim to <2 x i64>
  %i.bip = and <2 x i64> %i.bio, splat (i64 4294967295)
  %i.biq = mul nuw <2 x i64> %i.bip, %i.aso
  %i.bir = lshr <2 x i64> %i.biq, splat (i64 32)
  %i.bis = lshr <2 x i64> %i.bin, splat (i64 32)
  %i.bit = mul nuw <2 x i64> %i.bis, %i.aso
  %i.biu = bitcast <2 x i64> %i.bir to <8 x i16>
  %i.biv = bitcast <2 x i64> %i.bit to <8 x i16>
  %i.biw = shufflevector <8 x i16> %i.biu, <8 x i16> %i.biv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bix = bitcast <8 x i16> %i.biw to <4 x i32>  ; 2 uses
  %i.biy = sub <4 x i32> %i.bim, %i.bix
  %i.biz = lshr <4 x i32> %i.biy, %i.asp
  %i.bja = add <4 x i32> %i.biz, %i.bix
  %i.bjb = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bja, <4 x i32> %i.aap) ; 2 uses
  %i.bjc = mul <4 x i32> %i.bjb, %i.asr
  %i.bjd = sub <4 x i32> %i.bim, %i.bjc           ; 4 uses
  %i.bje = bitcast <4 x i32> %i.bjd to <2 x i64>
  %i.bjf = bitcast <4 x i32> %i.bjd to <2 x i64>
  %i.bjg = and <2 x i64> %i.bjf, splat (i64 4294967295)
  %i.bjh = mul nuw <2 x i64> %i.bjg, %i.ast
  %i.bji = lshr <2 x i64> %i.bjh, splat (i64 32)
  %i.bjj = lshr <2 x i64> %i.bje, splat (i64 32)
  %i.bjk = mul nuw <2 x i64> %i.bjj, %i.ast
  %i.bjl = bitcast <2 x i64> %i.bji to <8 x i16>
  %i.bjm = bitcast <2 x i64> %i.bjk to <8 x i16>
  %i.bjn = shufflevector <8 x i16> %i.bjl, <8 x i16> %i.bjm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bjo = bitcast <8 x i16> %i.bjn to <4 x i32>  ; 2 uses
  %i.bjp = sub <4 x i32> %i.bjd, %i.bjo
  %i.bjq = lshr <4 x i32> %i.bjp, %i.asu
  %i.bjr = add <4 x i32> %i.bjq, %i.bjo
  %i.bjs = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bjr, <4 x i32> %i.abh) ; 2 uses
  %i.bjt = mul <4 x i32> %i.bjs, %i.asw
  %i.bju = sub <4 x i32> %i.bjd, %i.bjt
  %i.bjv = mul <4 x i32> %i.bjb, %i.asz
  %i.bjw = mul <4 x i32> %i.bju, %i.atb
  %i.bjx = mul <4 x i32> %i.bjs, %i.atd
  %i.bjy = add <4 x i32> %i.bjv, %i.bif
  %i.bjz = add <4 x i32> %i.bjy, %i.bjx
  %i.bka = add <4 x i32> %i.bjz, %i.bjw
  %i.bkb = load ptr, ptr %0, align 8, !tbaa !32
  %i.bkc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bkb, <4 x i32> %i.bka, <4 x i32> splat (i32 -1), i8 1)
  %i.bkd = bitcast <4 x i32> %i.bkc to <16 x i8>
  %i.bke = add <16 x i8> %i.bkd, <i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison>
  %i.bkf = shufflevector <16 x i8> %i.bke, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bkg = bitcast <16 x i8> %i.bkf to <2 x i64>
  %i.bkh = extractelement <2 x i64> %i.bkg, i64 0
  store i64 %i.bkh, ptr %.27389.i.i, align 1, !tbaa !43
  %i.bki = getelementptr inbounds nuw i8, ptr %.27389.i.i, i64 8 ; 2 uses
  %i.bkj = add nuw nsw i32 %.01271388.i.i, 4      ; 3 uses
  %i.bkk = or disjoint i32 %i.bkj, 3
  %i.bkl = icmp slt i32 %i.bkk, %5
  br i1 %i.bkl, label %bb.y, label %.preheader255.i.i, !llvm.loop !363

.preheader253.i.i:                                ; preds = %bb.z, %.preheader255.i.i
  %.11272.lcssa.i.i = phi i32 [ %.01271.lcssa.i.i, %.preheader255.i.i ], [ %i.bmb, %bb.z ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader255.i.i ], [ %i.bma, %bb.z ] ; 2 uses
  %i.bkm = icmp slt i32 %.11272.lcssa.i.i, %5
  br i1 %i.bkm, label %.lr.ph400.i.i, label %.loopexit252.i.i

.lr.ph400.i.i:                                    ; preds = %.preheader253.i.i
  %i.bkn = sext i32 %i.bib to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph395.i.i
  %.28394.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph395.i.i ], [ %i.bma, %bb.z ] ; 5 uses
  %.11272393.i.i = phi i32 [ %.01271.lcssa.i.i, %.lr.ph395.i.i ], [ %i.bmb, %bb.z ] ; 2 uses
  %i.bko = add nsw i32 %.11272393.i.i, %4         ; 3 uses
  %i.bkp = sdiv i32 %i.bko, %i.zc
  %i.bkq = add nsw i32 %i.bko, 1                  ; 2 uses
  %i.bkr = sdiv i32 %i.bkq, %i.zc
  %i.bks = srem i32 %i.bko, %i.zc                 ; 2 uses
  %i.bkt = srem i32 %i.bkq, %i.zc                 ; 2 uses
  %i.bku = sdiv i32 %i.bks, %6
  %i.bkv = sdiv i32 %i.bkt, %6
  %i.bkw = srem i32 %i.bks, %6
  %i.bkx = srem i32 %i.bkt, %6
  %i.bky = sext i32 %i.bkp to i64
  %i.bkz = mul i64 %i.m, %i.bky
  %i.bla = mul i32 %i.bku, %.scalar516.i.i
  %i.blb = mul nsw i32 %i.bkw, %8
  %i.blc = add nsw i32 %i.blb, %i.bla
  %i.bld = sext i32 %i.blc to i64
  %i.ble = sext i32 %i.bkr to i64
  %i.blf = mul i64 %i.m, %i.ble
  %i.blg = mul i32 %i.bkv, %.scalar516.i.i
  %i.blh = mul nsw i32 %i.bkx, %8
  %i.bli = add nsw i32 %i.blh, %i.blg
  %i.blj = sext i32 %i.bli to i64
  %i.blk = load ptr, ptr %0, align 8, !tbaa !32   ; 2 uses
  %i.bll = getelementptr i8, ptr %i.blk, i64 %i.bkz
  %i.blm = getelementptr i8, ptr %i.bll, i64 %i.bii
  %i.bln = getelementptr i8, ptr %i.blm, i64 %i.bld ; 2 uses
  %i.blo = getelementptr i8, ptr %i.blk, i64 %i.blf
  %i.blp = getelementptr i8, ptr %i.blo, i64 %i.bii
  %i.blq = getelementptr i8, ptr %i.blp, i64 %i.blj ; 2 uses
  %i.blr = load i8, ptr %i.bln, align 1, !tbaa !43
  store i8 %i.blr, ptr %.28394.i.i, align 1, !tbaa !43
  %i.bls = load i8, ptr %i.blq, align 1, !tbaa !43
  %i.blt = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 1
  store i8 %i.bls, ptr %i.blt, align 1, !tbaa !43
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bln, i64 1
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !43
  %i.blw = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 2
  store i8 %i.blv, ptr %i.blw, align 1, !tbaa !43
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blq, i64 1
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !43
  %i.blz = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 3
  store i8 %i.bly, ptr %i.blz, align 1, !tbaa !43
  %i.bma = getelementptr inbounds nuw i8, ptr %.28394.i.i, i64 4 ; 2 uses
  %i.bmb = add nuw nsw i32 %.11272393.i.i, 2      ; 3 uses
  %i.bmc = or disjoint i32 %i.bmb, 1
  %i.bmd = icmp slt i32 %i.bmc, %5
  br i1 %i.bmd, label %bb.z, label %.preheader253.i.i, !llvm.loop !364

bb.aa:                                            ; preds = %bb.aa, %.lr.ph400.i.i
  %.29399.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph400.i.i ], [ %i.bmx, %bb.aa ] ; 3 uses
  %.21273398.i.i = phi i32 [ %.11272.lcssa.i.i, %.lr.ph400.i.i ], [ %i.bmy, %bb.aa ] ; 2 uses
  %i.bme = add nsw i32 %.21273398.i.i, %4         ; 2 uses
  %i.bmf = sdiv i32 %i.bme, %i.zc
  %i.bmg = srem i32 %i.bme, %i.zc                 ; 2 uses
  %i.bmh = sdiv i32 %i.bmg, %6
  %i.bmi = srem i32 %i.bmg, %6
  %i.bmj = sext i32 %i.bmf to i64
  %i.bmk = mul i64 %i.m, %i.bmj
  %i.bml = mul i32 %i.bmh, %.scalar516.i.i
  %i.bmm = mul nsw i32 %i.bmi, %8
  %i.bmn = add nsw i32 %i.bmm, %i.bml
  %i.bmo = sext i32 %i.bmn to i64
  %i.bmp = load ptr, ptr %0, align 8, !tbaa !32
  %i.bmq = getelementptr i8, ptr %i.bmp, i64 %i.bmk
  %i.bmr = getelementptr i8, ptr %i.bmq, i64 %i.bkn
  %i.bms = getelementptr i8, ptr %i.bmr, i64 %i.bmo ; 2 uses
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !43
  store i8 %i.bmt, ptr %.29399.i.i, align 1, !tbaa !43
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 1
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !43
  %i.bmw = getelementptr inbounds nuw i8, ptr %.29399.i.i, i64 1
  store i8 %i.bmv, ptr %i.bmw, align 1, !tbaa !43
  %i.bmx = getelementptr inbounds nuw i8, ptr %.29399.i.i, i64 2 ; 2 uses
  %i.bmy = add nuw nsw i32 %.21273398.i.i, 1      ; 2 uses
  %exitcond506.not.i.i = icmp eq i32 %i.bmy, %5
  br i1 %exitcond506.not.i.i, label %.loopexit252.i.i, label %bb.aa, !llvm.loop !365

.loopexit254.i.i:                                 ; preds = %bb.x
  br i1 %brmerge444.i.i, label %.loopexit252.i.i, label %.lr.ph404.i.i

end_hunk_1
