inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %indvars.iv2171.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.us ], [ %indvars.iv.next2172.1, %._crit_edge1995.us.unr-lcssa ]
  %.56361992.us.epil.init = phi ptr [ %.46351999.us, %_ZN4ncnn3MatD2Ev.exit.us ], [ %i.apb, %._crit_edge1995.us.unr-lcssa ]
  %.515291991.us.epil.init = phi <8 x i32> [ %i.any, %_ZN4ncnn3MatD2Ev.exit.us ], [ %i.apa, %._crit_edge1995.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2323)
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %indvars.iv2171.epil.init
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !92
  %i.ape = sext i32 %i.apd to i64
  %i.apf = getelementptr inbounds i8, ptr %gep2007.us, i64 %i.ape
  %i.apg = load i8, ptr %i.apf, align 1, !tbaa !20
  %i.aph = sext i8 %i.apg to i16
  %i.api = insertelement <8 x i16> poison, i16 %i.aph, i64 0
  %i.apj = shufflevector <8 x i16> %i.api, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.apk = load <8 x i8>, ptr %.56361992.us.epil.init, align 1, !tbaa !20
  %i.apl = sext <8 x i8> %i.apk to <8 x i16>
  %i.apm = mul <8 x i16> %i.apj, %i.apl
  %i.apn = sext <8 x i16> %i.apm to <8 x i32>
  %i.apo = add <8 x i32> %.515291991.us.epil.init, %i.apn
  br label %._crit_edge1995.us

._crit_edge1995.us:                               ; preds = %._crit_edge1995.us.unr-lcssa, %.epil.preheader
  %.lcssa2321 = phi <8 x i32> [ %i.apa, %._crit_edge1995.us.unr-lcssa ], [ %i.apo, %.epil.preheader ] ; 2 uses
  %scevgep2173 = getelementptr i8, ptr %.46351999.us, i64 8
  %scevgep2174 = getelementptr i8, ptr %scevgep2173, i64 %i.anv
  %indvars.iv.next2179 = add nuw nsw i64 %indvars.iv2178, 1 ; 2 uses
  %i.app = trunc nuw i64 %indvars.iv.next2179 to i32
  %i.apq = icmp sgt i32 %i.agc, %i.app
  br i1 %i.apq, label %_ZN4ncnn3MatD2Ev.exit.us, label %._crit_edge2001, !llvm.loop !363

._crit_edge2001:                                  ; preds = %._crit_edge1995.us, %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.preheader
  %.41528.lcssa.in = phi <8 x i32> [ %.21526.lcssa.in, %.preheader ], [ %.21526.lcssa.in, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %.lcssa2321, %._crit_edge1995.us ] ; 10 uses
  %.41528.lcssa = bitcast <8 x i32> %.41528.lcssa.in to <4 x i64> ; 2 uses
  %i.apr = load i32, ptr %7, align 4, !tbaa !92   ; 2 uses
  %i.aps = icmp eq i32 %i.apr, 8
  br i1 %i.aps, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge2001
  store <8 x i32> %.41528.lcssa.in, ptr %.82010, align 32, !tbaa !20
  %i.apt = getelementptr inbounds nuw i8, ptr %.82010, i64 32
  %.pr1649 = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge2001
  %i.apu = phi i32 [ %.pr1649, %bb.z ], [ %i.apr, %._crit_edge2001 ] ; 2 uses
  %.9 = phi ptr [ %i.apt, %bb.z ], [ %.82010, %._crit_edge2001 ] ; 4 uses
  %i.apv = icmp eq i32 %i.apu, 4
  br i1 %i.apv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.apw = shufflevector <4 x i64> %.41528.lcssa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.apw, ptr %.9, align 16, !tbaa !20
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %.9, i64 %i.ag
  %i.apy = shufflevector <4 x i64> %.41528.lcssa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.apy, ptr %i.apx, align 16, !tbaa !20
  %i.apz = getelementptr inbounds nuw i8, ptr %.9, i64 16
  %.pre2184 = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aqa = phi i32 [ %.pre2184, %bb.ab ], [ %i.apu, %bb.aa ]
  %.10 = phi ptr [ %i.apz, %bb.ab ], [ %.9, %bb.aa ] ; 10 uses
  %i.aqb = icmp eq i32 %i.aqa, 1
  br i1 %i.aqb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 0
  store i32 %.sroa.0.0.vec.extract, ptr %.10, align 4, !tbaa !92
  %.sroa.0.4.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 1
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %.10, i64 %i.ag
  store i32 %.sroa.0.4.vec.extract, ptr %i.aqc, align 4, !tbaa !92
  %.sroa.0.8.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 2
  %i.aqd = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx
  store i32 %.sroa.0.8.vec.extract, ptr %i.aqd, align 4, !tbaa !92
  %.sroa.0.12.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 3
  %i.aqe = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx639
  store i32 %.sroa.0.12.vec.extract, ptr %i.aqe, align 4, !tbaa !92
  %.sroa.0.16.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 4
  %i.aqf = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx640
  store i32 %.sroa.0.16.vec.extract, ptr %i.aqf, align 4, !tbaa !92
  %.sroa.0.20.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 5
  %i.aqg = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx641
  store i32 %.sroa.0.20.vec.extract, ptr %i.aqg, align 4, !tbaa !92
  %.sroa.0.24.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 6
  %i.aqh = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx642
  store i32 %.sroa.0.24.vec.extract, ptr %i.aqh, align 4, !tbaa !92
  %.sroa.0.28.vec.extract = extractelement <8 x i32> %.41528.lcssa.in, i64 7
  %i.aqi = getelementptr inbounds nuw i8, ptr %.10, i64 %.idx643
  store i32 %.sroa.0.28.vec.extract, ptr %i.aqi, align 4, !tbaa !92
  %i.aqj = getelementptr inbounds nuw i8, ptr %.10, i64 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.11 = phi ptr [ %i.aqj, %bb.ad ], [ %.10, %bb.ac ]
  %i.aqk = add nuw nsw i32 %.26002009, 1          ; 2 uses
  %exitcond2181.not = icmp eq i32 %i.aqk, %i.ao
  br i1 %exitcond2181.not, label %._crit_edge2011, label %_ZN4ncnn3MatD2Ev.exit646, !llvm.loop !364

._crit_edge2011:                                  ; preds = %bb.ae, %.preheader1666
  %i.aql = add nsw i32 %.02013, 1
  %i.aqm = load i32, ptr %i.b, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.02013, %i.aqm
  br i1 %.not.not, label %.noexc, label %._crit_edge2014

._crit_edge2014:                                  ; preds = %._crit_edge2011, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge2014, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare !callback !365 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.phadd.d(<8 x i32>, <8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  br label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not56.i = icmp eq i32 %i.b, 0
  br i1 %.not56.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  br label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

bb.e:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %6, 1
  %i.d = icmp eq i32 %7, 1
  %or.cond.i = and i1 %i.c, %i.d
  %i.e = icmp eq i32 %8, 1
  %or.cond3.i = and i1 %or.cond.i, %i.e
  %i.f = icmp eq i32 %9, 1
  %or.cond5.i = and i1 %or.cond3.i, %i.f
  %i.g = icmp eq i32 %10, 1                       ; 4 uses
  %i.h = icmp eq i32 %11, 1
  %i.i = and i1 %or.cond5.i, %i.h
  %or.cond9.i = and i1 %i.g, %i.i
  %.val.i = load ptr, ptr %1, align 8, !tbaa !9   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 61 uses
  br i1 %or.cond9.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !94   ; 4 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph147.i.i, label %.preheader126.i.i

.lr.ph147.i.i:                                    ; preds = %bb.f
  %i.o = sdiv i32 %4, 8
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %12 = lshr i32 %5, 3
  %i.r = shl i64 %i.k, 3
  %i.s = sext i32 %4 to i64
  %i.t = icmp sgt i32 %5, 1
  %i.u = shl i64 %i.k, 1                          ; 3 uses
  %i.v = and i32 %5, -2                           ; 2 uses
  %i.w = zext nneg i32 %3 to i64                  ; 4 uses
  %i.x = sext i32 %2 to i64                       ; 2 uses
  switch i32 %i.m, label %.loopexit128.i.preheader.i [
    i32 8, label %.lr.ph147.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader:        ; preds = %.lr.ph147.i.i
  %i.y = add i32 %5, -2                           ; 2 uses
  %i.z = lshr i32 %i.y, 1                         ; 2 uses
  %i.aa = add nuw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp eq i32 %i.z, 0
  %unroll_iter = and i32 %i.aa, -2
  %i.ac = and i32 %i.y, 2
  %lcmp.mod.not.not = icmp eq i32 %i.ac, 0
  %lcmp.mod342 = trunc i32 %i.aa to i1
  br label %_ZN4ncnn3MatD2Ev.exit263.i.us.i

.loopexit128.i.preheader.i:                       ; preds = %.lr.ph147.i.i
  %umax213.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 15)
  %i.ad = and i64 %umax213.i, 2147483640
  br label %.preheader126.loopexit.i.i

.lr.ph147.i.split.us.i:                           ; preds = %.lr.ph147.i.i
  %i.ae = icmp sgt i32 %5, 7
  br i1 %i.ae, label %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i, label %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i:        ; preds = %.lr.ph147.i.split.us.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 15)
  %i.af = and i64 %umax.i, 2147483640
  br label %.preheader126.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit264.i.us.us.i:               ; preds = %.lr.ph147.i.split.us.i, %.loopexit128.i.loopexit.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ 0, %.lr.ph147.i.split.us.i ] ; 2 uses
  %.0233146.i.us.us.i = phi ptr [ %i.bl, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.lr.ph147.i.split.us.i ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9, !noalias !367
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !367
  %i.ai = mul i64 %i.ah, %i.p
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !367
  %i.ak = mul i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.am = add nsw i64 %indvars.iv.i.us.us.i, %i.x
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i
  %.1132.i.us.us.i = phi ptr [ %i.bl, %.lr.ph.i.us.us.i ], [ %.0233146.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i ] ; 5 uses
  %.0244131.i.us.us.i = phi ptr [ %i.bm, %.lr.ph.i.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i ] ; 5 uses
  %.0245130.i.us.us.i = phi i32 [ %i.bn, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i ]
  %i.ap = load <8 x i16>, ptr %.0244131.i.us.us.i, align 1, !tbaa !20 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 16
  %i.ar = load <8 x i16>, ptr %i.aq, align 1, !tbaa !20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 32
  %i.at = load <8 x i16>, ptr %i.as, align 1, !tbaa !20 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 48
  %i.av = load <8 x i16>, ptr %i.au, align 1, !tbaa !20 ; 2 uses
  %i.aw = shufflevector <8 x i16> %i.ap, <8 x i16> %i.ar, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ax = bitcast <8 x i16> %i.aw to <2 x i64>    ; 2 uses
  %i.ay = shufflevector <8 x i16> %i.ap, <8 x i16> %i.ar, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.az = bitcast <8 x i16> %i.ay to <2 x i64>    ; 2 uses
  %i.ba = shufflevector <8 x i16> %i.at, <8 x i16> %i.av, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bb = bitcast <8 x i16> %i.ba to <2 x i64>    ; 2 uses
  %i.bc = shufflevector <8 x i16> %i.at, <8 x i16> %i.av, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.bd = bitcast <8 x i16> %i.bc to <2 x i64>    ; 2 uses
  %i.be = shufflevector <2 x i64> %i.ax, <2 x i64> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x i64> %i.ax, <2 x i64> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bg = shufflevector <2 x i64> %i.az, <2 x i64> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bh = shufflevector <2 x i64> %i.az, <2 x i64> %i.bd, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.be, ptr %.1132.i.us.us.i, align 16, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 16
  store <2 x i64> %i.bf, ptr %i.bi, align 16, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 32
  store <2 x i64> %i.bg, ptr %i.bj, align 16, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 48
  store <2 x i64> %i.bh, ptr %i.bk, align 16, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %.1132.i.us.us.i, i64 64 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0244131.i.us.us.i, i64 %i.r
  %i.bn = add nuw nsw i32 %.0245130.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.bn, %12
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !370

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.bo = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.bp = icmp samesign ult i64 %i.bo, %i.w
  br i1 %i.bp, label %_ZN4ncnn3MatD2Ev.exit264.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !371

_ZN4ncnn3MatD2Ev.exit263.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader, %.loopexit128.i.us127.i
  %indvars.iv.i.us125.i = phi i64 [ %indvars.iv.next.i.us129.i, %.loopexit128.i.us127.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader ] ; 2 uses
  %.0233146.i.us126.i = phi ptr [ %.5.i.us128.i, %.loopexit128.i.us127.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit263.i.us.i.preheader ] ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !9, !noalias !372
  %i.br = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !372
  %i.bs = mul i64 %i.br, %i.s
  %i.bt = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !372
  %i.bu = mul i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 %indvars.iv.i.us125.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.x   ; 3 uses
  br i1 %i.t, label %.lr.ph136.i.us.i.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit263.i.us.i
  br i1 %i.ab, label %.lr.ph136.i.us.i.epil.preheader, label %.lr.ph136.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %.lr.ph136.i.us.i.preheader, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.cq, %.lr.ph136.i.us.i ], [ %.0233146.i.us126.i, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %.0252134.i.us.i = phi ptr [ %i.cr, %.lr.ph136.i.us.i ], [ %i.bx, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph136.i.us.i ], [ 0, %.lr.ph136.i.us.i.preheader ]
  %i.by = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !20
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.k
  %i.cb = load i64, ptr %i.ca, align 1, !tbaa !20
  %i.cc = insertelement <2 x i64> poison, i64 %i.cb, i64 0
  %i.cd = bitcast <2 x i64> %i.bz to <16 x i8>
  %i.ce = bitcast <2 x i64> %i.cc to <16 x i8>
  %i.cf = shufflevector <16 x i8> %i.cd, <16 x i8> %i.ce, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cf, ptr %.3135.i.us.i, align 1, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.u ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !20
  %i.cj = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.k
  %i.cl = load i64, ptr %i.ck, align 1, !tbaa !20
  %i.cm = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %i.cn = bitcast <2 x i64> %i.cj to <16 x i8>
  %i.co = bitcast <2 x i64> %i.cm to <16 x i8>
  %i.cp = shufflevector <16 x i8> %i.cn, <16 x i8> %i.co, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cp, ptr %i.cg, align 1, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 32 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.u ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader127.i.us.i.loopexit.unr-lcssa, label %.lr.ph136.i.us.i, !llvm.loop !375

.preheader127.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph136.i.us.i
  br i1 %lcmp.mod.not.not, label %.lr.ph136.i.us.i.epil.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.epil.preheader:                  ; preds = %.preheader127.i.us.i.loopexit.unr-lcssa, %.lr.ph136.i.us.i.preheader
  %.3135.i.us.i.epil.init = phi ptr [ %.0233146.i.us126.i, %.lr.ph136.i.us.i.preheader ], [ %i.cq, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0252134.i.us.i.epil.init = phi ptr [ %i.bx, %.lr.ph136.i.us.i.preheader ], [ %i.cr, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod342)
  %i.cs = load i64, ptr %.0252134.i.us.i.epil.init, align 1, !tbaa !20
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.k
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !20
  %i.cw = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cx = bitcast <2 x i64> %i.ct to <16 x i8>
  %i.cy = bitcast <2 x i64> %i.cw to <16 x i8>
  %i.cz = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.cz, ptr %.3135.i.us.i.epil.init, align 1, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %.3135.i.us.i.epil.init, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.u
  br label %.preheader127.i.us.i

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i.epil.preheader, %.preheader127.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit263.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.v, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.v, %.lr.ph136.i.us.i.epil.preheader ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.bx, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.cr, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.db, %.lr.ph136.i.us.i.epil.preheader ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us126.i, %_ZN4ncnn3MatD2Ev.exit263.i.us.i ], [ %i.cq, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.da, %.lr.ph136.i.us.i.epil.preheader ] ; 3 uses
  %i.dc = icmp slt i32 %.0254.lcssa.i.us.i, %5
  br i1 %i.dc, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us127.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.dd = sub i32 %5, %.0254.lcssa.i.us.i
  %xtraiter343 = and i32 %i.dd, 7                 ; 2 uses
  %lcmp.mod344.not = icmp eq i32 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.df, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.dg, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.dh, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.de = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !20
  store i64 %i.de, ptr %.4142.i.us.i.prol, align 1, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.k ; 2 uses
  %i.dh = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter343
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !376

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.df, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.df, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.dg, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.dh, %.lr.ph143.i.us.i.prol ]
  %i.di = sub i32 %.0254.lcssa.i.us.i, %5
  %i.dj = icmp ugt i32 %i.di, -8
  br i1 %i.dj, label %.loopexit128.i.us127.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.eg, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.eh, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.ei, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.dk = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !20
  store i64 %i.dk, ptr %.4142.i.us.i, align 1, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.k ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 1, !tbaa !20
  store i64 %i.dn, ptr %i.dl, align 1, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.k ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 1, !tbaa !20
  store i64 %i.dq, ptr %i.do, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.k ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 1, !tbaa !20
  store i64 %i.dt, ptr %i.dr, align 1, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.k ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 1, !tbaa !20
  store i64 %i.dw, ptr %i.du, align 1, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.k ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 1, !tbaa !20
  store i64 %i.dz, ptr %i.dx, align 1, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.k ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 1, !tbaa !20
  store i64 %i.ec, ptr %i.ea, align 1, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.k ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 1, !tbaa !20
  store i64 %i.ef, ptr %i.ed, align 1, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.k
  %i.ei = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.ei, %5
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us127.i, label %.lr.ph143.i.us.i, !llvm.loop !377

.loopexit128.i.us127.i:                           ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us128.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa297.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.eg, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us129.i = add nuw nsw i64 %indvars.iv.i.us125.i, 8 ; 3 uses
  %i.ej = or disjoint i64 %indvars.iv.next.i.us129.i, 7
  %i.ek = icmp samesign ult i64 %i.ej, %i.w
  br i1 %i.ek, label %_ZN4ncnn3MatD2Ev.exit263.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !371

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us127.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.bl, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.loopexit128.i.preheader.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i ], [ %.5.i.us128.i, %.loopexit128.i.us127.i ]
  %.us-phi123.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.ad, %.loopexit128.i.preheader.i ], [ %i.af, %_ZN4ncnn3MatD2Ev.exit264.i.us.preheader.i ], [ %indvars.iv.next.i.us129.i, %.loopexit128.i.us127.i ]
  %i.el = trunc nuw nsw i64 %.us-phi123.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.f
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.el, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %.val.i, %bb.f ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.em = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.en = icmp slt i32 %i.em, %3
  br i1 %i.en, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.eo = sdiv i32 %4, 8
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %13 = lshr i32 %5, 3                            ; 3 uses
  %i.er = shl i64 %i.k, 3                         ; 2 uses
  %i.es = sext i32 %4 to i64
  %i.et = icmp sgt i32 %5, 1
  %i.eu = shl i64 %i.k, 1
  %i.ev = and i32 %5, -2
  %i.ew = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.ex = sext i32 %3 to i64
  %i.ey = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.ex, -3       ; 4 uses
  switch i32 %i.m, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter345 = and i32 %5, 1
  %lcmp.mod346.not = icmp eq i32 %xtraiter345, 0
  br label %_ZN4ncnn3MatD2Ev.exit261.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.ez = add nuw nsw i64 %i.ew, 4                ; 2 uses
  %smax214.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ez)
  %i.fa = xor i64 %i.ew, -1
  %i.fb = add nsw i64 %smax214.i, %i.fa
  %i.fc = and i64 %i.fb, -4
  %i.fd = add i64 %i.ez, %i.fc
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.fe = icmp sgt i32 %5, 7
  br i1 %i.fe, label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader:     ; preds = %.lr.ph169.i.split.us.i
  %14 = icmp eq i32 %13, 1
  %i.ff = and i32 %13, 268435454
  %unroll_iter352 = and i32 %5, 8
  %lcmp.mod349.not = icmp eq i32 %unroll_iter352, 0
  %lcmp.mod351 = trunc i32 %13 to i1
  br label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i

_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.fg = add nuw nsw i64 %i.ew, 4                ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.fg)
  %i.fh = xor i64 %i.ew, -1
  %i.fi = add nsw i64 %smax.i, %i.fh
  %i.fj = and i64 %i.fi, -4
  %i.fk = add i64 %i.fg, %i.fj
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit262.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %.lcssa288, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i.preheader ] ; 2 uses
  %i.fl = load ptr, ptr %0, align 8, !tbaa !9, !noalias !378
  %i.fm = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !378
  %i.fn = mul i64 %i.fm, %i.ep
  %i.fo = load i64, ptr %i.eq, align 8, !tbaa !19, !noalias !378
  %i.fp = mul i64 %i.fn, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  %i.fr = add nsw i64 %indvars.iv232.i.us.us.i, %i.ey
  %i.fs = shl nsw i64 %i.fr, 3
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs ; 2 uses
  br i1 %14, label %.lr.ph153.i.us.us.i.epil.preheader, label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i, %.lr.ph153.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.gi, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ] ; 5 uses
  %.0256151.i.us.us.i = phi ptr [ %i.gj, %.lr.ph153.i.us.us.i ], [ %i.ft, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ] ; 3 uses
  %niter353 = phi i32 [ %niter353.next.1, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ]
  %i.fu = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !20 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.fw = load <8 x i16>, ptr %i.fv, align 1, !tbaa !20 ; 2 uses
  %i.fx = shufflevector <8 x i16> %i.fu, <8 x i16> %i.fw, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.fy = shufflevector <8 x i16> %i.fu, <8 x i16> %i.fw, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.fx, ptr %.7152.i.us.us.i, align 16, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.fy, ptr %i.fz, align 16, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.er ; 3 uses
  %i.gc = load <8 x i16>, ptr %i.gb, align 1, !tbaa !20 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.ge = load <8 x i16>, ptr %i.gd, align 1, !tbaa !20 ; 2 uses
  %i.gf = shufflevector <8 x i16> %i.gc, <8 x i16> %i.ge, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.gg = shufflevector <8 x i16> %i.gc, <8 x i16> %i.ge, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gf, ptr %i.ga, align 16, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 48
  store <8 x i16> %i.gg, ptr %i.gh, align 16, !tbaa !20
  %i.gi = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 64 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.er ; 2 uses
  %niter353.next.1 = add i32 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i32 %niter353.next.1, %i.ff
  br i1 %niter353.ncmp.1, label %.loopexit124.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph153.i.us.us.i, !llvm.loop !381

.loopexit124.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph153.i.us.us.i
  br i1 %lcmp.mod349.not, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i.epil.preheader

.lr.ph153.i.us.us.i.epil.preheader:               ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i
  %.7152.i.us.us.i.epil.init = phi ptr [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ], [ %i.gi, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0256151.i.us.us.i.epil.init = phi ptr [ %i.ft, %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i ], [ %i.gj, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.gk = load <8 x i16>, ptr %.0256151.i.us.us.i.epil.init, align 1, !tbaa !20 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i.epil.init, i64 16
  %i.gm = load <8 x i16>, ptr %i.gl, align 1, !tbaa !20 ; 2 uses
  %i.gn = shufflevector <8 x i16> %i.gk, <8 x i16> %i.gm, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.go = shufflevector <8 x i16> %i.gk, <8 x i16> %i.gm, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.gn, ptr %.7152.i.us.us.i.epil.init, align 16, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 16
  store <8 x i16> %i.go, ptr %i.gp, align 16, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 32
  br label %.loopexit124.i.loopexit.us.us.i

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %.lr.ph153.i.us.us.i.epil.preheader
  %.lcssa288 = phi ptr [ %i.gi, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ], [ %i.gq, %.lr.ph153.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.gr = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit262.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !382

_ZN4ncnn3MatD2Ev.exit261.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader, %.loopexit124.i.us141.i
  %indvars.iv232.i.us139.i = phi i64 [ %indvars.iv.next233.i.us143.i, %.loopexit124.i.us141.i ], [ %i.ew, %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader ] ; 2 uses
  %.6168.i.us140.i = phi ptr [ %.11.i.us142.i, %.loopexit124.i.us141.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i.preheader ] ; 2 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !9, !noalias !383
  %i.gt = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !383
  %i.gu = mul i64 %i.gt, %i.es
  %i.gv = load i64, ptr %i.eq, align 8, !tbaa !19, !noalias !383
  %i.gw = mul i64 %i.gu, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %indvars.iv232.i.us139.i
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.ey  ; 2 uses
  br i1 %i.et, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit261.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.hw, %.lr.ph158.i.us.i ], [ %.6168.i.us140.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.hy, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.hx, %.lr.ph158.i.us.i ], [ %i.gz, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ] ; 6 uses
  %i.ha = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !20
  store i8 %i.ha, ptr %.9157.i.us.i, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.k ; 4 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !20
  %i.he = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !20
  %i.hh = getelementptr i8, ptr %i.hb, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !20
  %i.hm = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !20
  %i.hn = getelementptr i8, ptr %i.hb, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !20
  %i.hq = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !20
  %i.ht = getelementptr i8, ptr %i.hb, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.eu ; 2 uses
  %i.hy = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.hz = or disjoint i32 %i.hy, 1
  %i.ia = icmp slt i32 %i.hz, %5
  br i1 %i.ia, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !386

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.gz, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.hx, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.ev, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us140.i, %_ZN4ncnn3MatD2Ev.exit261.i.us.i ], [ %i.hw, %.lr.ph158.i.us.i ] ; 7 uses
  %i.ib = icmp slt i32 %.0248.lcssa.i.us.i, %5
  br i1 %i.ib, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us141.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod346.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.ic = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !20
  store i8 %i.ic, ptr %.9.lcssa.i.us.i, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !20
  %i.ig = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !20
  %i.ij = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.il = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.k
  %i.io = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa292.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.im, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.im, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.io, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.in, %.lr.ph165.i.us.i.prol ]
  %i.ip = icmp eq i32 %5, %.neg
  br i1 %i.ip, label %.loopexit124.i.us141.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.jm, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.jo, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.jn, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.iq = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !20
  store i8 %i.iq, ptr %.10164.i.us.i, align 1, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !20
  %i.it = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.k ; 5 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !20
  store i8 %i.jc, ptr %i.ja, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !20
  %i.jf = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !20
  %i.ji = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !20
  %i.jm = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.k
  %i.jo = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.jo, %5
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us141.i, label %.lr.ph165.i.us.i, !llvm.loop !387

.loopexit124.i.us141.i:                           ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i, %.preheader123.i.us.i
  %.11.i.us142.i = phi ptr [ %.9.lcssa.i.us.i, %.preheader123.i.us.i ], [ %.lcssa292.unr, %.lr.ph165.i.us.i.prol.loopexit ], [ %i.jm, %.lr.ph165.i.us.i ] ; 2 uses
  %indvars.iv.next233.i.us143.i = add nuw nsw i64 %indvars.iv232.i.us139.i, 4 ; 3 uses
  %i.jp = icmp slt i64 %indvars.iv.next233.i.us143.i, %invariant.op.i.i
  br i1 %i.jp, label %_ZN4ncnn3MatD2Ev.exit261.i.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !382

.preheader122.loopexit.i.i:                       ; preds = %.loopexit124.i.us141.i, %.loopexit124.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i, %.loopexit124.i.preheader.i
  %.us-phi136.i = phi ptr [ %.lcssa288, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %.loopexit124.i.preheader.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i ], [ %.11.i.us142.i, %.loopexit124.i.us141.i ]
  %.us-phi137.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.fd, %.loopexit124.i.preheader.i ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit262.i.us.preheader.i ], [ %indvars.iv.next233.i.us143.i, %.loopexit124.i.us141.i ]
  %i.jq = trunc nuw nsw i64 %.us-phi137.i to i32
  br label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %.preheader122.loopexit.i.i, %.preheader126.i.i
  %.1241.lcssa.i.i = phi i32 [ %.0240.lcssa.i.i, %.preheader126.i.i ], [ %i.jq, %.preheader122.loopexit.i.i ] ; 3 uses
  %.6.lcssa.i.i = phi ptr [ %.0233.lcssa.i.i, %.preheader126.i.i ], [ %.us-phi136.i, %.preheader122.loopexit.i.i ] ; 5 uses
  %i.jr = or disjoint i32 %.1241.lcssa.i.i, 1
  %i.js = icmp slt i32 %i.jr, %3
  br i1 %i.js, label %.lr.ph191.i.i, label %.preheader.i.i

.lr.ph191.i.i:                                    ; preds = %.preheader122.i.i
  %i.jt = sdiv i32 %4, 8
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %15 = lshr i32 %5, 3                            ; 3 uses
  %i.jw = shl i64 %i.k, 3                         ; 2 uses
  %i.jx = sext i32 %4 to i64
  %i.jy = icmp sgt i32 %5, 1
  %i.jz = shl i64 %i.k, 1                         ; 3 uses
  %i.ka = and i32 %5, -2                          ; 2 uses
  %i.kb = zext i32 %.1241.lcssa.i.i to i64        ; 8 uses
  %i.kc = sext i32 %3 to i64
  %i.kd = sext i32 %2 to i64                      ; 2 uses
  %invariant.op277.i.i = add nsw i64 %i.kc, -1    ; 4 uses
  switch i32 %i.m, label %.loopexit120.i.i.preheader [
    i32 8, label %.lr.ph191.i.i.split.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader
  ]

_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader:        ; preds = %.lr.ph191.i.i
  %i.ke = add i32 %5, -2                          ; 2 uses
  %i.kf = lshr i32 %i.ke, 1                       ; 2 uses
  %i.kg = add nuw i32 %i.kf, 1                    ; 2 uses
  %i.kh = icmp eq i32 %i.kf, 0
  %unroll_iter359 = and i32 %i.kg, -2
  %i.ki = and i32 %i.ke, 2
  %lcmp.mod355.not.not = icmp eq i32 %i.ki, 0
  %lcmp.mod358 = trunc i32 %i.kg to i1
  br label %_ZN4ncnn3MatD2Ev.exit259.i.i.us

.loopexit120.i.i.preheader:                       ; preds = %.lr.ph191.i.i
  %i.kj = add nuw nsw i64 %i.kb, 2
  %smax144 = tail call i64 @llvm.smax.i64(i64 %invariant.op277.i.i, i64 %i.kj)
  %i.kk = xor i64 %i.kb, -1
  %i.kl = add nsw i64 %smax144, %i.kk
  %i.km = and i64 %i.kl, -2
  %i.kn = add i64 %i.km, %i.kb
  %i.ko = add i64 %i.kn, 2
  br label %.preheader.loopexit.i.i

.lr.ph191.i.i.split.us:                           ; preds = %.lr.ph191.i.i
  %i.kp = icmp sgt i32 %5, 7
  br i1 %i.kp, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader

_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader:     ; preds = %.lr.ph191.i.i.split.us
  %16 = icmp eq i32 %15, 1
  %i.kq = and i32 %15, 268435454
  %unroll_iter368 = and i32 %5, 8
  %lcmp.mod365.not = icmp eq i32 %unroll_iter368, 0
  %lcmp.mod367 = trunc i32 %15 to i1
  br label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us

_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader:        ; preds = %.lr.ph191.i.i.split.us
  %i.kr = add nuw nsw i64 %i.kb, 2
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op277.i.i, i64 %i.kr)
  %i.ks = xor i64 %i.kb, -1
  %i.kt = add nsw i64 %smax, %i.ks
  %i.ku = and i64 %i.kt, -2
  %i.kv = add i64 %i.ku, %i.kb
  %i.kw = add i64 %i.kv, 2
  br label %.preheader.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit260.i.i.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader, %.loopexit120.i.i.loopexit.us.us
  %indvars.iv237.i.i.us.us = phi i64 [ %indvars.iv.next238.i.i.us.us, %.loopexit120.i.i.loopexit.us.us ], [ %i.kb, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader ] ; 2 uses
  %.12190.i.i.us.us = phi ptr [ %.lcssa283, %.loopexit120.i.i.loopexit.us.us ], [ %.6.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us.preheader ] ; 2 uses
  %i.kx = load ptr, ptr %0, align 8, !tbaa !9, !noalias !388
  %i.ky = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !388
  %i.kz = mul i64 %i.ky, %i.ju
  %i.la = load i64, ptr %i.jv, align 8, !tbaa !19, !noalias !388
  %i.lb = mul i64 %i.kz, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.lb
  %i.ld = add nsw i64 %indvars.iv237.i.i.us.us, %i.kd
  %i.le = shl nsw i64 %i.ld, 3
  %i.lf = getelementptr inbounds i8, ptr %i.lc, i64 %i.le ; 2 uses
  br i1 %16, label %.lr.ph175.i.i.us.us.epil.preheader, label %.lr.ph175.i.i.us.us

.lr.ph175.i.i.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us, %.lr.ph175.i.i.us.us
  %.13174.i.i.us.us = phi ptr [ %i.ly, %.lr.ph175.i.i.us.us ], [ %.12190.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ] ; 3 uses
  %.0247172.i.i.us.us = phi ptr [ %i.lz, %.lr.ph175.i.i.us.us ], [ %i.lf, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ] ; 3 uses
  %niter369 = phi i32 [ %niter369.next.1, %.lr.ph175.i.i.us.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ]
  %i.lg = load i64, ptr %.0247172.i.i.us.us, align 1, !tbaa !20
  %i.lh = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %i.li = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us, i64 8
  %i.lj = load i64, ptr %i.li, align 1, !tbaa !20
  %i.lk = insertelement <2 x i64> poison, i64 %i.lj, i64 0
  %i.ll = bitcast <2 x i64> %i.lh to <8 x i16>
  %i.lm = bitcast <2 x i64> %i.lk to <8 x i16>
  %i.ln = shufflevector <8 x i16> %i.ll, <8 x i16> %i.lm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.ln, ptr %.13174.i.i.us.us, align 1, !tbaa !20
  %i.lo = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us, i64 %i.jw ; 3 uses
  %i.lq = load i64, ptr %i.lp, align 1, !tbaa !20
  %i.lr = insertelement <2 x i64> poison, i64 %i.lq, i64 0
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = load i64, ptr %i.ls, align 1, !tbaa !20
  %i.lu = insertelement <2 x i64> poison, i64 %i.lt, i64 0
  %i.lv = bitcast <2 x i64> %i.lr to <8 x i16>
  %i.lw = bitcast <2 x i64> %i.lu to <8 x i16>
  %i.lx = shufflevector <8 x i16> %i.lv, <8 x i16> %i.lw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.lx, ptr %i.lo, align 1, !tbaa !20
  %i.ly = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us, i64 32 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.jw ; 2 uses
  %niter369.next.1 = add i32 %niter369, 2         ; 2 uses
  %niter369.ncmp.1 = icmp eq i32 %niter369.next.1, %i.kq
  br i1 %niter369.ncmp.1, label %.loopexit120.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph175.i.i.us.us, !llvm.loop !391

.loopexit120.i.i.loopexit.us.us.unr-lcssa:        ; preds = %.lr.ph175.i.i.us.us
  br i1 %lcmp.mod365.not, label %.loopexit120.i.i.loopexit.us.us, label %.lr.ph175.i.i.us.us.epil.preheader

.lr.ph175.i.i.us.us.epil.preheader:               ; preds = %.loopexit120.i.i.loopexit.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us
  %.13174.i.i.us.us.epil.init = phi ptr [ %.12190.i.i.us.us, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ], [ %i.ly, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.0247172.i.i.us.us.epil.init = phi ptr [ %i.lf, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us ], [ %i.lz, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod367)
  %i.ma = load i64, ptr %.0247172.i.i.us.us.epil.init, align 1, !tbaa !20
  %i.mb = insertelement <2 x i64> poison, i64 %i.ma, i64 0
  %i.mc = getelementptr inbounds nuw i8, ptr %.0247172.i.i.us.us.epil.init, i64 8
  %i.md = load i64, ptr %i.mc, align 1, !tbaa !20
  %i.me = insertelement <2 x i64> poison, i64 %i.md, i64 0
  %i.mf = bitcast <2 x i64> %i.mb to <8 x i16>
  %i.mg = bitcast <2 x i64> %i.me to <8 x i16>
  %i.mh = shufflevector <8 x i16> %i.mf, <8 x i16> %i.mg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.mh, ptr %.13174.i.i.us.us.epil.init, align 1, !tbaa !20
  %i.mi = getelementptr inbounds nuw i8, ptr %.13174.i.i.us.us.epil.init, i64 16
  br label %.loopexit120.i.i.loopexit.us.us

.loopexit120.i.i.loopexit.us.us:                  ; preds = %.loopexit120.i.i.loopexit.us.us.unr-lcssa, %.lr.ph175.i.i.us.us.epil.preheader
  %.lcssa283 = phi ptr [ %i.ly, %.loopexit120.i.i.loopexit.us.us.unr-lcssa ], [ %i.mi, %.lr.ph175.i.i.us.us.epil.preheader ] ; 2 uses
  %indvars.iv.next238.i.i.us.us = add nuw nsw i64 %indvars.iv237.i.i.us.us, 2 ; 3 uses
  %i.mj = icmp slt i64 %indvars.iv.next238.i.i.us.us, %invariant.op277.i.i
  br i1 %i.mj, label %_ZN4ncnn3MatD2Ev.exit260.i.i.us.us, label %.preheader.loopexit.i.i, !llvm.loop !392

_ZN4ncnn3MatD2Ev.exit259.i.i.us:                  ; preds = %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader, %.loopexit120.i.i.us74
  %indvars.iv237.i.i.us72 = phi i64 [ %indvars.iv.next238.i.i.us76, %.loopexit120.i.i.us74 ], [ %i.kb, %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader ] ; 2 uses
  %.12190.i.i.us73 = phi ptr [ %.17.i.i.us75, %.loopexit120.i.i.us74 ], [ %.6.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit259.i.i.us.preheader ] ; 3 uses
  %i.mk = load ptr, ptr %0, align 8, !tbaa !9, !noalias !393
  %i.ml = load i64, ptr %i.j, align 8, !tbaa !18, !noalias !393
  %i.mm = mul i64 %i.ml, %i.jx
  %i.mn = load i64, ptr %i.jv, align 8, !tbaa !19, !noalias !393
  %i.mo = mul i64 %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.mp, i64 %indvars.iv237.i.i.us72
  %i.mr = getelementptr i8, ptr %i.mq, i64 %i.kd  ; 3 uses
  br i1 %i.jy, label %.lr.ph180.i.i.us.preheader, label %.preheader119.i.i.us

.lr.ph180.i.i.us.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit259.i.i.us
  br i1 %i.kh, label %.lr.ph180.i.i.us.epil.preheader, label %.lr.ph180.i.i.us

.lr.ph180.i.i.us:                                 ; preds = %.lr.ph180.i.i.us.preheader, %.lr.ph180.i.i.us
  %.15179.i.i.us = phi ptr [ %i.no, %.lr.ph180.i.i.us ], [ %.12190.i.i.us73, %.lr.ph180.i.i.us.preheader ] ; 9 uses
  %.0238177.i.i.us = phi ptr [ %i.np, %.lr.ph180.i.i.us ], [ %i.mr, %.lr.ph180.i.i.us.preheader ] ; 4 uses
  %niter360 = phi i32 [ %niter360.next.1, %.lr.ph180.i.i.us ], [ 0, %.lr.ph180.i.i.us.preheader ]
  %i.ms = load i8, ptr %.0238177.i.i.us, align 1, !tbaa !20
  store i8 %i.ms, ptr %.15179.i.i.us, align 1, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 %i.k ; 2 uses
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !20
  %i.mv = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 1
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 2
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !20
  %i.mz = getelementptr i8, ptr %i.mt, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 3
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us, i64 %i.jz ; 4 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !20
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !20
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.k ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !20
  %i.nh = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 5
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !20
  %i.nk = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 6
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !20
  %i.nl = getelementptr i8, ptr %i.nf, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !20
  %i.nn = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 7
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !20
  %i.no = getelementptr inbounds nuw i8, ptr %.15179.i.i.us, i64 8 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.jz ; 3 uses
  %niter360.next.1 = add nuw nsw i32 %niter360, 2 ; 2 uses
  %niter360.ncmp.1.not = icmp eq i32 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1.not, label %.preheader119.i.i.us.loopexit.unr-lcssa, label %.lr.ph180.i.i.us, !llvm.loop !396

.preheader119.i.i.us.loopexit.unr-lcssa:          ; preds = %.lr.ph180.i.i.us
  br i1 %lcmp.mod355.not.not, label %.lr.ph180.i.i.us.epil.preheader, label %.preheader119.i.i.us

.lr.ph180.i.i.us.epil.preheader:                  ; preds = %.preheader119.i.i.us.loopexit.unr-lcssa, %.lr.ph180.i.i.us.preheader
  %.15179.i.i.us.epil.init = phi ptr [ %.12190.i.i.us73, %.lr.ph180.i.i.us.preheader ], [ %i.no, %.preheader119.i.i.us.loopexit.unr-lcssa ] ; 5 uses
  %.0238177.i.i.us.epil.init = phi ptr [ %i.mr, %.lr.ph180.i.i.us.preheader ], [ %i.np, %.preheader119.i.i.us.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.nq = load i8, ptr %.0238177.i.i.us.epil.init, align 1, !tbaa !20
  store i8 %i.nq, ptr %.15179.i.i.us.epil.init, align 1, !tbaa !20
  %i.nr = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 %i.k ; 2 uses
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !20
  %i.nt = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 1
  store i8 %i.ns, ptr %i.nt, align 1, !tbaa !20
  %i.nu = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !20
  %i.nw = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 2
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !20
  %i.nx = getelementptr i8, ptr %i.nr, i64 1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !20
  %i.nz = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 3
  store i8 %i.ny, ptr %i.nz, align 1, !tbaa !20
  %i.oa = getelementptr inbounds nuw i8, ptr %.15179.i.i.us.epil.init, i64 4
  %i.ob = getelementptr inbounds nuw i8, ptr %.0238177.i.i.us.epil.init, i64 %i.jz
  br label %.preheader119.i.i.us

.preheader119.i.i.us:                             ; preds = %.lr.ph180.i.i.us.epil.preheader, %.preheader119.i.i.us.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit259.i.i.us
  %.0238.lcssa.i.i.us = phi ptr [ %i.mr, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.np, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.ob, %.lr.ph180.i.i.us.epil.preheader ] ; 2 uses
  %.0236.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.ka, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.ka, %.lr.ph180.i.i.us.epil.preheader ] ; 5 uses
  %.15.lcssa.i.i.us = phi ptr [ %.12190.i.i.us73, %_ZN4ncnn3MatD2Ev.exit259.i.i.us ], [ %i.no, %.preheader119.i.i.us.loopexit.unr-lcssa ], [ %i.oa, %.lr.ph180.i.i.us.epil.preheader ] ; 3 uses
  %i.oc = icmp slt i32 %.0236.lcssa.i.i.us, %5
  br i1 %i.oc, label %.lr.ph187.i.i.us.preheader, label %.loopexit120.i.i.us74

.lr.ph187.i.i.us.preheader:                       ; preds = %.preheader119.i.i.us
  %i.od = sub i32 %5, %.0236.lcssa.i.i.us
  %xtraiter361 = and i32 %i.od, 3                 ; 2 uses
  %lcmp.mod362.not = icmp eq i32 %xtraiter361, 0
  br i1 %lcmp.mod362.not, label %.lr.ph187.i.i.us.prol.loopexit, label %.lr.ph187.i.i.us.prol

.lr.ph187.i.i.us.prol:                            ; preds = %.lr.ph187.i.i.us.preheader, %.lr.ph187.i.i.us.prol
  %.16186.i.i.us.prol = phi ptr [ %i.oi, %.lr.ph187.i.i.us.prol ], [ %.15.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ] ; 3 uses
  %.1237185.i.i.us.prol = phi i32 [ %i.ok, %.lr.ph187.i.i.us.prol ], [ %.0236.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ]
  %.1239184.i.i.us.prol = phi ptr [ %i.oj, %.lr.ph187.i.i.us.prol ], [ %.0238.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ] ; 3 uses
  %prol.iter363 = phi i32 [ %prol.iter363.next, %.lr.ph187.i.i.us.prol ], [ 0, %.lr.ph187.i.i.us.preheader ]
  %i.oe = load i8, ptr %.1239184.i.i.us.prol, align 1, !tbaa !20
  store i8 %i.oe, ptr %.16186.i.i.us.prol, align 1, !tbaa !20
  %i.of = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us.prol, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !20
  %i.oh = getelementptr inbounds nuw i8, ptr %.16186.i.i.us.prol, i64 1
  store i8 %i.og, ptr %i.oh, align 1, !tbaa !20
  %i.oi = getelementptr inbounds nuw i8, ptr %.16186.i.i.us.prol, i64 2 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us.prol, i64 %i.k ; 2 uses
  %i.ok = add nuw nsw i32 %.1237185.i.i.us.prol, 1 ; 2 uses
  %prol.iter363.next = add i32 %prol.iter363, 1   ; 2 uses
  %prol.iter363.cmp.not = icmp eq i32 %prol.iter363.next, %xtraiter361
  br i1 %prol.iter363.cmp.not, label %.lr.ph187.i.i.us.prol.loopexit, label %.lr.ph187.i.i.us.prol, !llvm.loop !397

.lr.ph187.i.i.us.prol.loopexit:                   ; preds = %.lr.ph187.i.i.us.prol, %.lr.ph187.i.i.us.preheader
  %.lcssa287.unr = phi ptr [ poison, %.lr.ph187.i.i.us.preheader ], [ %i.oi, %.lr.ph187.i.i.us.prol ]
  %.16186.i.i.us.unr = phi ptr [ %.15.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.oi, %.lr.ph187.i.i.us.prol ]
  %.1237185.i.i.us.unr = phi i32 [ %.0236.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.ok, %.lr.ph187.i.i.us.prol ]
  %.1239184.i.i.us.unr = phi ptr [ %.0238.lcssa.i.i.us, %.lr.ph187.i.i.us.preheader ], [ %i.oj, %.lr.ph187.i.i.us.prol ]
  %i.ol = sub i32 %.0236.lcssa.i.i.us, %5
  %i.om = icmp ugt i32 %i.ol, -4
  br i1 %i.om, label %.loopexit120.i.i.us74, label %.lr.ph187.i.i.us

.lr.ph187.i.i.us:                                 ; preds = %.lr.ph187.i.i.us.prol.loopexit, %.lr.ph187.i.i.us
  %.16186.i.i.us = phi ptr [ %i.pj, %.lr.ph187.i.i.us ], [ %.16186.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ] ; 9 uses
  %.1237185.i.i.us = phi i32 [ %i.pl, %.lr.ph187.i.i.us ], [ %.1237185.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ]
  %.1239184.i.i.us = phi ptr [ %i.pk, %.lr.ph187.i.i.us ], [ %.1239184.i.i.us.unr, %.lr.ph187.i.i.us.prol.loopexit ] ; 3 uses
  %i.on = load i8, ptr %.1239184.i.i.us, align 1, !tbaa !20
  store i8 %i.on, ptr %.16186.i.i.us, align 1, !tbaa !20
  %i.oo = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us, i64 1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !20
  %i.oq = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 1
  store i8 %i.op, ptr %i.oq, align 1, !tbaa !20
  %i.or = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 2
  %i.os = getelementptr inbounds nuw i8, ptr %.1239184.i.i.us, i64 %i.k ; 3 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !20
  store i8 %i.ot, ptr %i.or, align 1, !tbaa !20
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !20
  %i.ow = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 3
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !20
  %i.ox = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.k ; 3 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !20
  store i8 %i.oz, ptr %i.ox, align 1, !tbaa !20
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !20
  %i.pc = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 5
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 6
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.k ; 3 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !20
  store i8 %i.pf, ptr %i.pd, align 1, !tbaa !20
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !20
  %i.pi = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 7
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !20
  %i.pj = getelementptr inbounds nuw i8, ptr %.16186.i.i.us, i64 8 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.k
  %i.pl = add nuw nsw i32 %.1237185.i.i.us, 4     ; 2 uses
  %exitcond236.not.i.i.us.3 = icmp eq i32 %i.pl, %5
  br i1 %exitcond236.not.i.i.us.3, label %.loopexit120.i.i.us74, label %.lr.ph187.i.i.us, !llvm.loop !398

.loopexit120.i.i.us74:                            ; preds = %.lr.ph187.i.i.us.prol.loopexit, %.lr.ph187.i.i.us, %.preheader119.i.i.us
  %.17.i.i.us75 = phi ptr [ %.15.lcssa.i.i.us, %.preheader119.i.i.us ], [ %.lcssa287.unr, %.lr.ph187.i.i.us.prol.loopexit ], [ %i.pj, %.lr.ph187.i.i.us ] ; 2 uses
  %indvars.iv.next238.i.i.us76 = add nuw nsw i64 %indvars.iv237.i.i.us72, 2 ; 3 uses
  %i.pm = icmp slt i64 %indvars.iv.next238.i.i.us76, %invariant.op277.i.i
  br i1 %i.pm, label %_ZN4ncnn3MatD2Ev.exit259.i.i.us, label %.preheader.loopexit.i.i, !llvm.loop !392

.preheader.loopexit.i.i:                          ; preds = %.loopexit120.i.i.us74, %.loopexit120.i.i.loopexit.us.us, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader, %.loopexit120.i.i.preheader
  %.us-phi = phi ptr [ %.lcssa283, %.loopexit120.i.i.loopexit.us.us ], [ %.6.lcssa.i.i, %.loopexit120.i.i.preheader ], [ %.6.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader ], [ %.17.i.i.us75, %.loopexit120.i.i.us74 ]
  %.us-phi70 = phi i64 [ %indvars.iv.next238.i.i.us.us, %.loopexit120.i.i.loopexit.us.us ], [ %i.ko, %.loopexit120.i.i.preheader ], [ %i.kw, %_ZN4ncnn3MatD2Ev.exit260.i.i.us.preheader ], [ %indvars.iv.next238.i.i.us76, %.loopexit120.i.i.us74 ]
  %i.pn = trunc nsw i64 %.us-phi70 to i32
  br label %.preheader.i.i

end_hunk_0
begin_hunk_1_@_ZN4ncnn39convolution_im2col_input_tile_int8_avx2ERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.ahp
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !20
  store i8 %i.ahs, ptr %.13158.i.i, align 1, !tbaa !20
  %i.aht = load ptr, ptr %0, align 8, !tbaa !9
  %i.ahu = getelementptr i8, ptr %i.aht, i64 %i.ahp
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 1
  %i.ahw = load i8, ptr %i.ahv, align 1, !tbaa !20
  %i.ahx = getelementptr inbounds nuw i8, ptr %.13158.i.i, i64 1
  store i8 %i.ahw, ptr %i.ahx, align 1, !tbaa !20
  %i.ahy = load ptr, ptr %0, align 8, !tbaa !9
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 %i.ahp
  %i.aia = getelementptr i8, ptr %i.ahz, i64 2
  %i.aib = load i8, ptr %i.aia, align 1, !tbaa !20
  %i.aic = getelementptr inbounds nuw i8, ptr %.13158.i.i, i64 2
  store i8 %i.aib, ptr %i.aic, align 1, !tbaa !20
  %i.aid = load ptr, ptr %0, align 8, !tbaa !9
  %i.aie = getelementptr i8, ptr %i.aid, i64 %i.ahp
  %i.aif = getelementptr i8, ptr %i.aie, i64 3
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !20
  %i.aih = getelementptr inbounds nuw i8, ptr %.13158.i.i, i64 3
  store i8 %i.aig, ptr %i.aih, align 1, !tbaa !20
  %i.aii = getelementptr inbounds nuw i8, ptr %.13158.i.i, i64 4 ; 2 uses
  %i.aij = add nuw nsw i32 %.1949157.i.i, 1       ; 2 uses
  %exitcond274.not.i.i = icmp eq i32 %i.aij, %5
  br i1 %exitcond274.not.i.i, label %.loopexit90.i.i, label %bb.t, !llvm.loop !418

.loopexit92.i.i:                                  ; preds = %bb.r
  br i1 %brmerge227.i.i, label %.loopexit90.i.i, label %.lr.ph163.i.i

.lr.ph163.i.i:                                    ; preds = %.loopexit92.i.i
  %i.aik = sext i32 %i.afj to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph163.i.i
  %.15162.i.i = phi ptr [ %.11166.i.i, %.lr.ph163.i.i ], [ %i.ajh, %bb.u ] ; 3 uses
  %.0950161.i.i = phi i32 [ 0, %.lr.ph163.i.i ], [ %i.aji, %bb.u ] ; 2 uses
  %i.ail = add nsw i32 %.0950161.i.i, %i.vl       ; 2 uses
  %i.aim = sdiv i32 %i.ail, %i.th
  %i.ain = srem i32 %i.ail, %i.th                 ; 2 uses
  %i.aio = sdiv i32 %i.ain, %6
  %i.aip = srem i32 %i.ain, %6
  %i.aiq = sext i32 %i.aim to i64
  %i.air = mul i64 %i.k, %i.aiq
  %i.ais = add i64 %i.air, %i.aik
  %i.ait = mul i32 %i.aio, %i.vg
  %i.aiu = mul nsw i32 %i.aip, %8
  %i.aiv = add nsw i32 %i.aiu, %i.ait
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = add i64 %i.ais, %i.aiw
  %i.aiy = shl i64 %i.aix, 3
  %i.aiz = load ptr, ptr %0, align 8, !tbaa !9
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 %i.aiy ; 2 uses
  %i.ajb = load <8 x i16>, ptr %i.aja, align 1, !tbaa !20 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  %i.ajd = load <8 x i16>, ptr %i.ajc, align 1, !tbaa !20 ; 2 uses
  %i.aje = shufflevector <8 x i16> %i.ajb, <8 x i16> %i.ajd, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ajf = shufflevector <8 x i16> %i.ajb, <8 x i16> %i.ajd, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.aje, ptr %.15162.i.i, align 1, !tbaa !20
  %i.ajg = getelementptr inbounds nuw i8, ptr %.15162.i.i, i64 16
  store <8 x i16> %i.ajf, ptr %i.ajg, align 1, !tbaa !20
  %i.ajh = getelementptr inbounds nuw i8, ptr %.15162.i.i, i64 32 ; 2 uses
  %i.aji = add nuw nsw i32 %.0950161.i.i, 1       ; 2 uses
  %exitcond275.not.i.i = icmp eq i32 %i.aji, %i.vj
  br i1 %exitcond275.not.i.i, label %.loopexit90.i.i, label %bb.u, !llvm.loop !419

bb.v:                                             ; preds = %bb.q
  br i1 %i.ve, label %.preheader98.i.i, label %.loopexit97.i.i

.preheader98.i.i:                                 ; preds = %bb.v
  br i1 %i.vf, label %.lr.ph141.i.i, label %.preheader96.i.i

.preheader96.i.i:                                 ; preds = %.lr.ph141.i.i, %.preheader98.i.i
  %.0951.lcssa.i.i = phi i32 [ 0, %.preheader98.i.i ], [ %i.akt, %.lr.ph141.i.i ] ; 2 uses
  %.17.lcssa.i.i = phi ptr [ %.11166.i.i, %.preheader98.i.i ], [ %i.aks, %.lr.ph141.i.i ] ; 2 uses
  %i.ajj = icmp slt i32 %.0951.lcssa.i.i, %5
  br i1 %i.ajj, label %.lr.ph146.i.i, label %.loopexit90.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader98.i.i, %.lr.ph141.i.i
  %.17140.i.i = phi ptr [ %i.aks, %.lr.ph141.i.i ], [ %.11166.i.i, %.preheader98.i.i ] ; 2 uses
  %.0951139.i.i = phi i32 [ %i.akt, %.lr.ph141.i.i ], [ 0, %.preheader98.i.i ] ; 2 uses
  %i.ajk = add nsw i32 %.0951139.i.i, %4          ; 3 uses
  %i.ajl = sdiv i32 %i.ajk, %i.th
  %i.ajm = add nsw i32 %i.ajk, 1                  ; 2 uses
  %i.ajn = sdiv i32 %i.ajm, %i.th
  %i.ajo = srem i32 %i.ajk, %i.th                 ; 2 uses
  %i.ajp = srem i32 %i.ajm, %i.th                 ; 2 uses
  %i.ajq = sdiv i32 %i.ajo, %6
  %i.ajr = sdiv i32 %i.ajp, %6
  %i.ajs = srem i32 %i.ajo, %6
  %i.ajt = srem i32 %i.ajp, %6
  %i.aju = mul i32 %i.ajq, %i.vg
  %i.ajv = mul nsw i32 %i.ajs, %8
  %i.ajw = mul i32 %i.ajr, %i.vg
  %i.ajx = mul nsw i32 %i.ajt, %8
  %i.ajy = mul i32 %i.ajl, %i.vh
  %i.ajz = add i32 %i.aju, %i.ajy
  %i.aka = add i32 %i.ajz, %i.ajv
  %i.akb = insertelement <4 x i32> poison, i32 %i.aka, i64 0
  %i.akc = shufflevector <4 x i32> %i.akb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akd = add <4 x i32> %i.akc, %i.afg
  %i.ake = mul i32 %i.ajn, %i.vh
  %i.akf = add i32 %i.ajw, %i.ake
  %i.akg = add i32 %i.akf, %i.ajx
  %i.akh = insertelement <4 x i32> poison, i32 %i.akg, i64 0
  %i.aki = shufflevector <4 x i32> %i.akh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.akj = add <4 x i32> %i.aki, %i.afg
  %i.akk = load ptr, ptr %0, align 8, !tbaa !9    ; 2 uses
  %i.akl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.akk, <4 x i32> %i.akd, <4 x i32> splat (i32 -1), i8 1)
  %i.akm = bitcast <4 x i32> %i.akl to <16 x i8>
  %i.akn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.akk, <4 x i32> %i.akj, <4 x i32> splat (i32 -1), i8 1)
  %i.ako = bitcast <4 x i32> %i.akn to <16 x i8>
  %i.akp = shufflevector <16 x i8> %i.akm, <16 x i8> %i.ako, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akq = bitcast <16 x i8> %i.akp to <2 x i64>
  %i.akr = extractelement <2 x i64> %i.akq, i64 0
  store i64 %i.akr, ptr %.17140.i.i, align 1, !tbaa !20
  %i.aks = getelementptr inbounds nuw i8, ptr %.17140.i.i, i64 8 ; 2 uses
  %i.akt = add nuw nsw i32 %.0951139.i.i, 2       ; 3 uses
  %i.aku = or disjoint i32 %i.akt, 1
  %i.akv = icmp slt i32 %i.aku, %5
  br i1 %i.akv, label %.lr.ph141.i.i, label %.preheader96.i.i, !llvm.loop !420

.lr.ph146.i.i:                                    ; preds = %.preheader96.i.i, %.lr.ph146.i.i
  %.18145.i.i = phi ptr [ %i.alp, %.lr.ph146.i.i ], [ %.17.lcssa.i.i, %.preheader96.i.i ] ; 2 uses
  %.1952144.i.i = phi i32 [ %i.alq, %.lr.ph146.i.i ], [ %.0951.lcssa.i.i, %.preheader96.i.i ] ; 2 uses
  %i.akw = add nsw i32 %.1952144.i.i, %4          ; 2 uses
  %i.akx = sdiv i32 %i.akw, %i.th
  %i.aky = srem i32 %i.akw, %i.th                 ; 2 uses
  %i.akz = sdiv i32 %i.aky, %6
  %i.ala = srem i32 %i.aky, %6
  %i.alb = mul i32 %i.akz, %i.vg
  %i.alc = mul nsw i32 %i.ala, %8
  %i.ald = mul i32 %i.akx, %i.vh
  %i.ale = add i32 %i.alb, %i.ald
  %i.alf = add i32 %i.ale, %i.alc
  %i.alg = insertelement <4 x i32> poison, i32 %i.alf, i64 0
  %i.alh = shufflevector <4 x i32> %i.alg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ali = add <4 x i32> %i.alh, %i.afg
  %i.alj = load ptr, ptr %0, align 8, !tbaa !9
  %i.alk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.alj, <4 x i32> %i.ali, <4 x i32> splat (i32 -1), i8 1)
  %i.all = bitcast <4 x i32> %i.alk to <16 x i8>
  %i.alm = shufflevector <16 x i8> %i.all, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aln = bitcast <16 x i8> %i.alm to <4 x float>
  %i.alo = extractelement <4 x float> %i.aln, i64 0
  store float %i.alo, ptr %.18145.i.i, align 1, !tbaa !20
  %i.alp = getelementptr inbounds nuw i8, ptr %.18145.i.i, i64 4 ; 2 uses
  %i.alq = add nuw nsw i32 %.1952144.i.i, 1       ; 2 uses
  %exitcond272.not.i.i = icmp eq i32 %i.alq, %5
  br i1 %exitcond272.not.i.i, label %.loopexit90.i.i, label %.lr.ph146.i.i, !llvm.loop !421

.loopexit97.i.i:                                  ; preds = %bb.v
  br i1 %brmerge227.i.i, label %.loopexit90.i.i, label %.lr.ph150.i.i

.lr.ph150.i.i:                                    ; preds = %.loopexit97.i.i, %.lr.ph150.i.i
  %.20149.i.i = phi ptr [ %i.aml, %.lr.ph150.i.i ], [ %.11166.i.i, %.loopexit97.i.i ] ; 2 uses
  %.0953148.i.i = phi i32 [ %i.amm, %.lr.ph150.i.i ], [ 0, %.loopexit97.i.i ] ; 2 uses
  %i.alr = add nsw i32 %.0953148.i.i, %i.vl       ; 2 uses
  %i.als = sdiv i32 %i.alr, %i.th
  %i.alt = srem i32 %i.alr, %i.th                 ; 2 uses
  %i.alu = sdiv i32 %i.alt, %6
  %i.alv = srem i32 %i.alt, %6
  %i.alw = mul i32 %i.alu, %i.vg
  %i.alx = mul nsw i32 %i.alv, %8
  %i.aly = mul i32 %i.als, %i.vh
  %i.alz = add i32 %i.alw, %i.aly
  %i.ama = add i32 %i.alz, %i.alx
  %i.amb = insertelement <4 x i32> poison, i32 %i.ama, i64 0
  %i.amc = shufflevector <4 x i32> %i.amb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.amd = add <4 x i32> %i.amc, %i.afg
  %i.ame = shl <4 x i32> %i.amd, splat (i32 3)
  %i.amf = load ptr, ptr %0, align 8, !tbaa !9
  %i.amg = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.amf, <4 x i32> %i.ame, <4 x i64> splat (i64 -1), i8 1)
  %i.amh = bitcast <4 x i64> %i.amg to <16 x i16>
  %i.ami = shufflevector <16 x i16> %i.amh, <16 x i16> poison, <16 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7, i32 8, i32 12, i32 9, i32 13, i32 10, i32 14, i32 11, i32 15>
  %i.amj = bitcast <16 x i16> %i.ami to <8 x i32>
  %i.amk = shufflevector <8 x i32> %i.amj, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %i.amk, ptr %.20149.i.i, align 1, !tbaa !20
  %i.aml = getelementptr inbounds nuw i8, ptr %.20149.i.i, i64 32 ; 2 uses
  %i.amm = add nuw nsw i32 %.0953148.i.i, 1       ; 2 uses
  %exitcond273.not.i.i = icmp eq i32 %i.amm, %i.vj
  br i1 %exitcond273.not.i.i, label %.loopexit90.i.i, label %.lr.ph150.i.i, !llvm.loop !422

.loopexit90.i.i:                                  ; preds = %.lr.ph150.i.i, %.lr.ph146.i.i, %bb.u, %bb.t, %.loopexit97.i.i, %.preheader96.i.i, %.loopexit92.i.i, %.preheader91.i.i
  %.21.i.i = phi ptr [ %.11166.i.i, %.loopexit97.i.i ], [ %.12.lcssa.i59.i, %.preheader91.i.i ], [ %.11166.i.i, %.loopexit92.i.i ], [ %i.ajh, %bb.u ], [ %i.aii, %bb.t ], [ %.17.lcssa.i.i, %.preheader96.i.i ], [ %i.alp, %.lr.ph146.i.i ], [ %i.aml, %.lr.ph150.i.i ] ; 2 uses
  %i.amn = add nuw nsw i32 %.1938165.i.i, 4       ; 3 uses
  %i.amo = or disjoint i32 %i.amn, 3
  %i.amp = icmp slt i32 %i.amo, %3
  br i1 %i.amp, label %bb.q, label %.preheader88.i.i, !llvm.loop !423

.preheader77.i.i:                                 ; preds = %.loopexit79.i.i, %.preheader88.i.i
  %.2939.lcssa.i.i = phi i32 [ %.1938.lcssa.i.i, %.preheader88.i.i ], [ %i.aup, %.loopexit79.i.i ] ; 2 uses
  %.22.lcssa.i.i = phi ptr [ %.11.lcssa.i.i, %.preheader88.i.i ], [ %.33.i.i, %.loopexit79.i.i ]
  %i.amq = icmp slt i32 %.2939.lcssa.i.i, %3
  br i1 %i.amq, label %.lr.ph217.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph217.i.i:                                    ; preds = %.preheader77.i.i
  %i.amr = mul i32 %i.sz, %11
  %i.ams = icmp eq i32 %i.tb, 1
  %i.amt = icmp sgt i32 %5, 1
  %i.amu = mul i32 %i.sz, %9                      ; 4 uses
  %i.amv = icmp ne i32 %i.tb, 8
  %17 = lshr i32 %5, 3
  %i.amw = icmp slt i32 %5, 8
  %i.amx = sdiv i32 %4, 8
  %brmerge234.i.i = or i1 %i.amw, %i.amv
  br label %bb.ae

bb.w:                                             ; preds = %.loopexit79.i.i, %.lr.ph199.i.i
  %.22198.i.i = phi ptr [ %.11.lcssa.i.i, %.lr.ph199.i.i ], [ %.33.i.i, %.loopexit79.i.i ] ; 8 uses
  %.2939197.i.i = phi i32 [ %.1938.lcssa.i.i, %.lr.ph199.i.i ], [ %i.aup, %.loopexit79.i.i ] ; 2 uses
  %i.amy = add nsw i32 %.2939197.i.i, %2          ; 3 uses
  %i.amz = sdiv i32 %i.amy, %i.tg
  %i.ana = add nsw i32 %i.amy, 1                  ; 2 uses
  %i.anb = sdiv i32 %i.ana, %i.tg
  %i.anc = srem i32 %i.amy, %i.tg
  %i.and = srem i32 %i.ana, %i.tg
  %i.ane = mul nsw i32 %i.anc, %10
  %i.anf = mul nsw i32 %i.and, %10
  %i.ang = mul i32 %i.amz, %i.ady                 ; 2 uses
  %i.anh = mul i32 %i.anb, %i.ady                 ; 2 uses
  %i.ani = add nsw i32 %i.ane, %i.ang             ; 7 uses
  %i.anj = add nsw i32 %i.anf, %i.anh             ; 4 uses
  %i.ank = icmp eq i32 %i.ang, %i.anh
  %or.cond5.i.i = and i1 %i.g, %i.ank
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  br i1 %i.adz, label %.preheader82.i.i, label %.loopexit81.i.i

.preheader82.i.i:                                 ; preds = %bb.x
  br i1 %i.aea, label %.lr.ph186.i.i, label %.preheader80.i.i

.lr.ph186.i.i:                                    ; preds = %.preheader82.i.i
  %i.anl = sext i32 %i.ani to i64                 ; 2 uses
  br label %bb.y

.preheader80.i.i:                                 ; preds = %bb.y, %.preheader82.i.i
  %.0954.lcssa.i.i = phi i32 [ 0, %.preheader82.i.i ], [ %i.apb, %bb.y ] ; 2 uses
  %.23.lcssa.i.i = phi ptr [ %.22198.i.i, %.preheader82.i.i ], [ %i.apa, %bb.y ] ; 2 uses
  %i.anm = icmp slt i32 %.0954.lcssa.i.i, %5
  br i1 %i.anm, label %.lr.ph191.i58.i, label %.loopexit79.i.i

.lr.ph191.i58.i:                                  ; preds = %.preheader80.i.i
  %i.ann = sext i32 %i.ani to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph186.i.i
  %.23185.i.i = phi ptr [ %.22198.i.i, %.lr.ph186.i.i ], [ %i.apa, %bb.y ] ; 5 uses
  %.0954184.i.i = phi i32 [ 0, %.lr.ph186.i.i ], [ %i.apb, %bb.y ] ; 2 uses
  %i.ano = add nsw i32 %.0954184.i.i, %4          ; 3 uses
  %i.anp = sdiv i32 %i.ano, %i.th
  %i.anq = add nsw i32 %i.ano, 1                  ; 2 uses
  %i.anr = sdiv i32 %i.anq, %i.th
  %i.ans = srem i32 %i.ano, %i.th                 ; 2 uses
  %i.ant = srem i32 %i.anq, %i.th                 ; 2 uses
  %i.anu = sdiv i32 %i.ans, %6
  %i.anv = sdiv i32 %i.ant, %6
  %i.anw = srem i32 %i.ans, %6
  %i.anx = srem i32 %i.ant, %6
  %i.any = sext i32 %i.anp to i64
  %i.anz = mul i64 %i.k, %i.any
  %i.aoa = mul i32 %i.anu, %i.aeb
  %i.aob = mul nsw i32 %i.anw, %8
  %i.aoc = add nsw i32 %i.aob, %i.aoa
  %i.aod = sext i32 %i.aoc to i64
  %i.aoe = sext i32 %i.anr to i64
  %i.aof = mul i64 %i.k, %i.aoe
  %i.aog = mul i32 %i.anv, %i.aeb
  %i.aoh = mul nsw i32 %i.anx, %8
  %i.aoi = add nsw i32 %i.aoh, %i.aog
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = load ptr, ptr %0, align 8, !tbaa !9    ; 2 uses
  %i.aol = getelementptr i8, ptr %i.aok, i64 %i.anz
  %i.aom = getelementptr i8, ptr %i.aol, i64 %i.anl
  %i.aon = getelementptr i8, ptr %i.aom, i64 %i.aod ; 2 uses
  %i.aoo = getelementptr i8, ptr %i.aok, i64 %i.aof
  %i.aop = getelementptr i8, ptr %i.aoo, i64 %i.anl
  %i.aoq = getelementptr i8, ptr %i.aop, i64 %i.aoj ; 2 uses
  %i.aor = load i8, ptr %i.aon, align 1, !tbaa !20
  store i8 %i.aor, ptr %.23185.i.i, align 1, !tbaa !20
  %i.aos = load i8, ptr %i.aoq, align 1, !tbaa !20
  %i.aot = getelementptr inbounds nuw i8, ptr %.23185.i.i, i64 1
  store i8 %i.aos, ptr %i.aot, align 1, !tbaa !20
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 1
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !20
  %i.aow = getelementptr inbounds nuw i8, ptr %.23185.i.i, i64 2
  store i8 %i.aov, ptr %i.aow, align 1, !tbaa !20
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 1
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !20
  %i.aoz = getelementptr inbounds nuw i8, ptr %.23185.i.i, i64 3
  store i8 %i.aoy, ptr %i.aoz, align 1, !tbaa !20
  %i.apa = getelementptr inbounds nuw i8, ptr %.23185.i.i, i64 4 ; 2 uses
  %i.apb = add nuw nsw i32 %.0954184.i.i, 2       ; 3 uses
  %i.apc = or disjoint i32 %i.apb, 1
  %i.apd = icmp slt i32 %i.apc, %5
  br i1 %i.apd, label %bb.y, label %.preheader80.i.i, !llvm.loop !424

bb.z:                                             ; preds = %bb.z, %.lr.ph191.i58.i
  %.24190.i.i = phi ptr [ %.23.lcssa.i.i, %.lr.ph191.i58.i ], [ %i.apx, %bb.z ] ; 3 uses
  %.1955189.i.i = phi i32 [ %.0954.lcssa.i.i, %.lr.ph191.i58.i ], [ %i.apy, %bb.z ] ; 2 uses
  %i.ape = add nsw i32 %.1955189.i.i, %4          ; 2 uses
  %i.apf = sdiv i32 %i.ape, %i.th
  %i.apg = srem i32 %i.ape, %i.th                 ; 2 uses
  %i.aph = sdiv i32 %i.apg, %6
  %i.api = srem i32 %i.apg, %6
  %i.apj = sext i32 %i.apf to i64
  %i.apk = mul i64 %i.k, %i.apj
  %i.apl = mul i32 %i.aph, %i.aeb
  %i.apm = mul nsw i32 %i.api, %8
  %i.apn = add nsw i32 %i.apm, %i.apl
  %i.apo = sext i32 %i.apn to i64
  %i.app = load ptr, ptr %0, align 8, !tbaa !9
  %i.apq = getelementptr i8, ptr %i.app, i64 %i.apk
  %i.apr = getelementptr i8, ptr %i.apq, i64 %i.ann
  %i.aps = getelementptr i8, ptr %i.apr, i64 %i.apo ; 2 uses
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !20
  store i8 %i.apt, ptr %.24190.i.i, align 1, !tbaa !20
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 1
  %i.apv = load i8, ptr %i.apu, align 1, !tbaa !20
  %i.apw = getelementptr inbounds nuw i8, ptr %.24190.i.i, i64 1
  store i8 %i.apv, ptr %i.apw, align 1, !tbaa !20
  %i.apx = getelementptr inbounds nuw i8, ptr %.24190.i.i, i64 2 ; 2 uses
  %i.apy = add nuw nsw i32 %.1955189.i.i, 1       ; 2 uses
  %exitcond278.not.i.i = icmp eq i32 %i.apy, %5
  br i1 %exitcond278.not.i.i, label %.loopexit79.i.i, label %bb.z, !llvm.loop !425

.loopexit81.i.i:                                  ; preds = %bb.x
  br i1 %brmerge230.i.i, label %.loopexit79.i.i, label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.loopexit81.i.i
  %i.apz = sext i32 %i.ani to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph195.i.i
  %.26194.i.i = phi ptr [ %.22198.i.i, %.lr.ph195.i.i ], [ %i.aqs, %bb.aa ] ; 2 uses
  %.0956193.i.i = phi i32 [ 0, %.lr.ph195.i.i ], [ %i.aqt, %bb.aa ] ; 2 uses
  %i.aqa = add nsw i32 %.0956193.i.i, %i.aef      ; 2 uses
  %i.aqb = sdiv i32 %i.aqa, %i.th
  %i.aqc = srem i32 %i.aqa, %i.th                 ; 2 uses
  %i.aqd = sdiv i32 %i.aqc, %6
  %i.aqe = srem i32 %i.aqc, %6
  %i.aqf = sext i32 %i.aqb to i64
  %i.aqg = mul i64 %i.k, %i.aqf
  %i.aqh = add i64 %i.aqg, %i.apz
  %i.aqi = mul i32 %i.aqd, %i.aeb
  %i.aqj = mul nsw i32 %i.aqe, %8
  %i.aqk = add nsw i32 %i.aqj, %i.aqi
  %i.aql = sext i32 %i.aqk to i64
  %i.aqm = add i64 %i.aqh, %i.aql
  %i.aqn = shl i64 %i.aqm, 3
  %i.aqo = load ptr, ptr %0, align 8, !tbaa !9
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %i.aqn
  %i.aqq = load <8 x i16>, ptr %i.aqp, align 1, !tbaa !20
  %i.aqr = shufflevector <8 x i16> %i.aqq, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.aqr, ptr %.26194.i.i, align 1, !tbaa !20
  %i.aqs = getelementptr inbounds nuw i8, ptr %.26194.i.i, i64 16 ; 2 uses
  %i.aqt = add nuw nsw i32 %.0956193.i.i, 1       ; 2 uses
  %exitcond279.not.i.i = icmp eq i32 %i.aqt, %i.aee
  br i1 %exitcond279.not.i.i, label %.loopexit79.i.i, label %bb.aa, !llvm.loop !426

bb.ab:                                            ; preds = %bb.w
  br i1 %i.adz, label %.preheader87.i.i, label %.loopexit86.i.i

.preheader87.i.i:                                 ; preds = %bb.ab
  br i1 %i.aea, label %.lr.ph172.i.i, label %.preheader85.i.i

.preheader85.i.i:                                 ; preds = %.lr.ph172.i.i, %.preheader87.i.i
  %.0957.lcssa.i.i = phi i32 [ 0, %.preheader87.i.i ], [ %i.asm, %.lr.ph172.i.i ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.22198.i.i, %.preheader87.i.i ], [ %i.asl, %.lr.ph172.i.i ] ; 2 uses
  %i.aqu = icmp slt i32 %.0957.lcssa.i.i, %5
  br i1 %i.aqu, label %.lr.ph177.i.i, label %.loopexit79.i.i

.lr.ph177.i.i:                                    ; preds = %.preheader85.i.i
  %i.aqv = sext i32 %i.ani to i64
  %i.aqw = sext i32 %i.anj to i64
  br label %bb.ac

.lr.ph172.i.i:                                    ; preds = %.preheader87.i.i, %.lr.ph172.i.i
  %.28171.i.i = phi ptr [ %i.asl, %.lr.ph172.i.i ], [ %.22198.i.i, %.preheader87.i.i ] ; 5 uses
  %.0957170.i.i = phi i32 [ %i.asm, %.lr.ph172.i.i ], [ 0, %.preheader87.i.i ] ; 2 uses
  %i.aqx = add nsw i32 %.0957170.i.i, %4          ; 3 uses
  %i.aqy = sdiv i32 %i.aqx, %i.th
  %i.aqz = add nsw i32 %i.aqx, 1                  ; 2 uses
  %i.ara = sdiv i32 %i.aqz, %i.th
  %i.arb = srem i32 %i.aqx, %i.th                 ; 2 uses
  %i.arc = srem i32 %i.aqz, %i.th                 ; 2 uses
  %i.ard = sdiv i32 %i.arb, %6
  %i.are = sdiv i32 %i.arc, %6
  %i.arf = srem i32 %i.arb, %6
  %i.arg = srem i32 %i.arc, %6
  %i.arh = mul i32 %i.ard, %i.aeb
  %i.ari = mul nsw i32 %i.arf, %8
  %i.arj = mul i32 %i.are, %i.aeb
  %i.ark = mul nsw i32 %i.arg, %8
  %i.arl = mul i32 %i.aqy, %i.aec
  %i.arm = add i32 %i.arh, %i.arl
  %i.arn = add i32 %i.arm, %i.ari                 ; 2 uses
  %i.aro = add i32 %i.arn, %i.ani
  %i.arp = add i32 %i.arn, %i.anj
  %i.arq = mul i32 %i.ara, %i.aec
  %i.arr = add i32 %i.arj, %i.arq
  %i.ars = add i32 %i.arr, %i.ark                 ; 2 uses
end_hunk_1
