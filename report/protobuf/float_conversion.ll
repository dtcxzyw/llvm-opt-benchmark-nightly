inline.NumInlined: 622
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE:bb.a
  %.off = add i32 %i.c, 31
  %i.y = icmp ult i32 %.off, 63
  br i1 %i.y, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.preheader.i.i.i.i.i.i

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i
  %i.z = and i32 %i.d, 1
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.i.i.i.i.i.epil.preheader, label %bb.b

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader ], [ %i.at, %.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ba, %.unr-lcssa ]
  %lcmp.mod3 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i.epil.init
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, 10
  %i.af = add nuw nsw i64 %i.ae, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !3
  %i.ah = lshr i64 %i.af, 32
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.ba, %.unr-lcssa ], [ %i.ah, %.preheader.i.i.i.i.i.i.epil.preheader ]
  %i.ai = trunc nuw nsw i64 %.lcssa to i8
  %i.aj = load i32, ptr %i.q, align 4, !tbaa !3
  %i.ak = icmp eq i32 %i.aj, 0
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.p, i64 %i.f
  br label %_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %i.f, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.at, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ba, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.al = getelementptr [4 x i8], ptr %1, i64 %.011.i.i.i.i.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.ao, 10
  %i.aq = add nuw nsw i64 %i.ap, %.0610.i.i.i.i.i.i ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.am, align 4, !tbaa !3
  %i.as = lshr i64 %i.aq, 32
  %i.at = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %i.as            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !3
  %i.ba = lshr i64 %i.ay, 32                      ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.8.020.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.09.019.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bb = trunc i64 %.sroa.09.019.i.i.i.i.i to i32
  %i.bc = add i64 %.021.i.i.i.i.i, -1             ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !3
  %i.be = zext i64 %.sroa.8.020.i.i.i.i.i to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = zext i64 %.sroa.09.019.i.i.i.i.i to i128
  %i.bh = or disjoint i128 %i.bf, %i.bg
  %i.bi = lshr i128 %i.bh, 32
  %i.bj = trunc i128 %i.bi to i64                 ; 2 uses
  %i.bk = lshr i64 %.sroa.8.020.i.i.i.i.i, 32     ; 2 uses
  %i.bl = or i64 %i.bk, %i.bj
  %.not.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !129

_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  %.sroa.28.0.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.b ]
  %.07.i.i.i.i.i.i = phi i8 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.ai, %bb.b ]
  %.val.i.i.i.i = load ptr, ptr %0, align 16, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 %.07.i.i.i.i.i.i, ptr %3, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.28.0.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3), !inline_history !131
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS4_11FormatStateEE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) #0 {
bb.a:
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.44.0.copyload.i.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !tbaa !132 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135, !nonnull !119, !align !120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %.not81.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not81.i.i.i.i, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !12
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i
  %.lcssa7786.i.i.i.i = phi i64 [ %.val20.i.i.i.i, %bb.m ], [ %.sroa.3.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 10 uses
  %i.h = phi i64 [ %i.gw, %bb.m ], [ %i.g, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %storemerge.lcssa.i7982.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.m ], [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i = icmp ne i8 %storemerge.lcssa.i7982.i.i.i.i, 0
  %i.i = icmp ne i64 %.lcssa7786.i.i.i.i, 0
  %i.j = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa7786.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %xtraiter = and i64 %.lcssa7786.i.i.i.i, 1
  %i.k = icmp eq i64 %.lcssa7786.i.i.i.i, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa7786.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ah, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ao, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %.lcssa7786.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.l = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = add nuw nsw i64 %i.p, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.m, align 4, !tbaa !3
  %i.s = lshr i64 %i.q, 32
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa65 = phi i64 [ %i.ao, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.s, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.t = trunc nuw nsw i64 %.lcssa65 to i8
  %i.u = add i64 %.lcssa7786.i.i.i.i, -1          ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = icmp eq i32 %i.w, 0
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.u, i64 %.lcssa7786.i.i.i.i ; 3 uses
  %i.y = icmp eq i64 %.lcssa65, 9
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ah, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ao, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.z = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -4      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 10
  %i.ae = add nuw nsw i64 %i.ad, %.0610.i.i.i.i.i.i ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !3
  %i.ag = lshr i64 %i.ae, 32
  %i.ah = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 10
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 2 uses
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !3
  %i.ao = lshr i64 %i.am, 32                      ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !128

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.ap = phi i64 [ %spec.select92.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = phi i64 [ %spec.select93.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.ar, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ]
  %i.ar = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.i.i.i.i.i
  %xtraiter78 = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.aq, 1
  br i1 %i.as, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter82 = and i64 %i.aq, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bo, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bv, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.at = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !3
  %i.ba = lshr i64 %i.ay, 32
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa66 = phi i64 [ %i.bv, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.ba, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bb = add i64 %i.aq, -1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %spec.select92.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.ap ; 2 uses
  %spec.select93.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.aq
  %i.bf = icmp eq i64 %.lcssa66, 9
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !136

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bo, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bv, %.preheader.i3.i.i.i.i.i ]
  %niter83 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter83.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bg = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 10
  %i.bl = add nuw nsw i64 %i.bk, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !3
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = add i64 %.011.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul nuw nsw i64 %i.br, 10
  %i.bt = add nuw nsw i64 %i.bs, %i.bn            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !3
  %i.bv = lshr i64 %i.bt, 32                      ; 3 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, label %.preheader.i3.i.i.i.i.i, !llvm.loop !128

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.bw = trunc nuw nsw i64 %.lcssa66 to i8
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %bb.b
  %.val20.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %spec.select92.i.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %storemerge.lcssa.i.i.i.i.i = phi i8 [ %i.t, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %i.bw, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %i.ar, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.bx = add i64 %.sroa.2.0.lcssa.i.i.i.i.i, 1   ; 3 uses
  %.not62.i.i.i.i = icmp ult i64 %i.bx, %i.h
  br i1 %.not62.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31 ; 6 uses
  %i.cb = add i8 %storemerge.lcssa.i7982.i.i.i.i, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !75
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1056
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !78 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i23.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !80
  tail call void %i.cl(ptr noundef %i.cm, i64 1024, ptr nonnull %i.cj), !inline_history !137
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %.lr.ph.i23.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %bb.c ], [ %i.cj, %.lr.ph.i23.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i.i.i.i.i, i8 %i.cb, i64 1, i1 false)
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !78
  %i.cp = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 7 uses
  %i.cs = icmp eq i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  br i1 %i.cs, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !75
  %i.cv = add i64 %i.cu, %.sroa.2.0.lcssa.i.i.i.i.i
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !75
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1056 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 8 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !78 ; 4 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.cy, %i.da                    ; 4 uses
  %i.dc = icmp ugt i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i26.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 8 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.db ; 3 uses
  %.not.peel.i27.i.i.i.i = icmp eq ptr %i.cw, %i.cz
  br i1 %.not.peel.i27.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cz, i8 57, i64 %i.db, i1 false)
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db ; 2 uses
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !78
  %.pre.i28.i.i.i.i = ptrtoint ptr %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i26.i.i.i.i
  %.pre-phi.i29.i.i.i.i = phi i64 [ %.pre.i28.i.i.i.i, %bb.e ], [ %i.cy, %.lr.ph.i26.i.i.i.i ]
  %i.dj = sub i64 %.pre-phi.i29.i.i.i.i, %i.de
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !80
  tail call void %i.dk(ptr noundef %i.dl, i64 %i.dj, ptr nonnull %i.dd), !inline_history !137
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !78
  %i.dm = icmp ugt i64 %i.dg, 1024
  br i1 %i.dm, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.f, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.dn, %.peel.next.i.i.i.i.i ], [ %i.dg, %bb.f ]
  %i.dn = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dd, i8 57, i64 1024, i1 false)
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !78
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !79
  %i.dp = load ptr, ptr %i.cr, align 8, !tbaa !80
  tail call void %i.do(ptr noundef %i.dp, i64 1024, ptr nonnull %i.dd), !inline_history !137
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !78
  %i.dq = icmp ugt i64 %i.dn, 1024
  br i1 %i.dq, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !83

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.f, %bb.d
  %.0.lcssa.i24.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i.i.i.i.i, %bb.d ], [ %i.dg, %bb.f ], [ %i.dn, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i25.i.i.i.i = phi ptr [ %i.cz, %bb.d ], [ %i.dd, %bb.f ], [ %i.dd, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i25.i.i.i.i, i8 57, i64 %.0.lcssa.i24.i.i.i.i, i1 false)
  %i.dr = load ptr, ptr %i.cx, align 8, !tbaa !78
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0.lcssa.i24.i.i.i.i
  store ptr %i.ds, ptr %i.cx, align 8, !tbaa !78
  br label %bb.m

bb.g:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.dt = icmp ugt i64 %i.bx, %i.h
  %i.du = icmp sgt i8 %storemerge.lcssa.i.i.i.i.i, 5
  %or.cond.i.i.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i.i, label %.critedge17.i.i.i.i, label %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i

_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i: ; preds = %bb.g
  %i.dv = icmp eq i8 %storemerge.lcssa.i.i.i.i.i, 5 ; 2 uses
  %i.dw = icmp ne i64 %.val20.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge17.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i
  %.not.i31.i.i.i.i = icmp eq i64 %.val20.i.i.i.i, 0
  %i.dx = select i1 %i.dv, i1 %.not.i31.i.i.i.i, i1 false
  br i1 %i.dx, label %bb.i, label %.critedge15.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not13.i.i.i.i = icmp ne i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  %i.dy = and i8 %storemerge.lcssa.i7982.i.i.i.i, -127
  %i.dz = icmp eq i8 %i.dy, 1
  %i.ea = or i1 %i.dz, %.not13.i.i.i.i
  br i1 %i.ea, label %.critedge17.i.i.i.i, label %.critedge15.i.i.i.i

.critedge17.i.i.i.i:                              ; preds = %bb.i, %_ZNK4absl12lts_2025051219str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i, %bb.g
  %i.eb = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !31 ; 6 uses
  %i.ee = add i8 %storemerge.lcssa.i7982.i.i.i.i, 49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !75
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !75
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1056
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !78 ; 2 uses
  %i.el = icmp eq ptr %i.ei, %i.ek
  br i1 %i.el, label %.lr.ph.i35.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

.lr.ph.i35.i.i.i.i:                               ; preds = %.critedge17.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !79
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !80
  tail call void %i.eo(ptr noundef %i.ep, i64 1024, ptr nonnull %i.em), !inline_history !137
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i: ; preds = %.lr.ph.i35.i.i.i.i, %.critedge17.i.i.i.i
  %.lcssa.i34.i.i.i.i = phi ptr [ %i.ek, %.critedge17.i.i.i.i ], [ %i.em, %.lr.ph.i35.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i34.i.i.i.i, i8 %i.ee, i64 1, i1 false)
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !78
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.ej, align 8, !tbaa !78
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !135, !nonnull !119, !align !120 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !23
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !23
  br label %"_ZSt6invokeIRKZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

.critedge15.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ev = load ptr, ptr %0, align 8, !tbaa !133, !nonnull !119, !align !120
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31 ; 6 uses
  %i.ey = add i8 %storemerge.lcssa.i7982.i.i.i.i, 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !75
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !75
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 1056
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !78 ; 2 uses
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph.i45.i.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

.lr.ph.i45.i.i.i.i:                               ; preds = %.critedge15.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !79
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !80
  tail call void %i.fi(ptr noundef %i.fj, i64 1024, ptr nonnull %i.fg), !inline_history !137
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !78
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i: ; preds = %.lr.ph.i45.i.i.i.i, %.critedge15.i.i.i.i
  %.lcssa.i44.i.i.i.i = phi ptr [ %i.fe, %.critedge15.i.i.i.i ], [ %i.fg, %.lr.ph.i45.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i44.i.i.i.i, i8 %i.ey, i64 1, i1 false)
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !78
end_hunk_0
