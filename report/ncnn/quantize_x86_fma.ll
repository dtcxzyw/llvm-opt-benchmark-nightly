Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/quantize_x86_fma?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn16Quantize_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  %.35439.i.unr = phi ptr [ %.35439.i.ph, %.lr.ph41.i.preheader113 ], [ %i.eo, %.lr.ph41.i.prol ]
  %.35838.i.unr = phi i32 [ %.35838.i.ph, %.lr.ph41.i.preheader113 ], [ %i.ep, %.lr.ph41.i.prol ]
  %i.eq = icmp eq i32 %i.bd, %.neg
  br i1 %i.eq, label %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit, label %.lr.ph41.i

.lr.ph34.i:                                       ; preds = %.preheader17.i, %.lr.ph34.i
  %.233.i = phi ptr [ %i.fb, %.lr.ph34.i ], [ %.1.lcssa.i, %.preheader17.i ] ; 2 uses
  %.25332.i = phi ptr [ %i.fc, %.lr.ph34.i ], [ %.152.lcssa.i, %.preheader17.i ] ; 2 uses
  %.25731.i = phi i32 [ %i.fd, %.lr.ph34.i ], [ %.156.lcssa.i, %.preheader17.i ]
  %i.er = load <4 x float>, ptr %.233.i, align 1, !tbaa !63
  %i.es = fmul fast <4 x float> %i.er, %.013.i    ; 2 uses
  %i.et = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.es)
  %i.eu = fadd fast <4 x float> %i.et, %i.es
  %i.ev = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eu)
  %i.ew = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ev, <4 x i32> poison)
  %i.ex = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ey = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ex, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ez = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ey, <8 x i16> poison)
  %i.fa = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.fa, ptr %.25332.i, align 1, !tbaa !63
  %i.fb = getelementptr inbounds nuw i8, ptr %.233.i, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.25332.i, i64 4 ; 2 uses
  %i.fd = add nuw nsw i32 %.25731.i, 4            ; 3 uses
  %i.fe = or disjoint i32 %i.fd, 3
  %i.ff = icmp slt i32 %i.fe, %i.bd
  br i1 %i.ff, label %.lr.ph34.i, label %.preheader.i, !llvm.loop !3

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.prol.loopexit, %.lr.ph41.i
  %.340.i = phi ptr [ %i.fq, %.lr.ph41.i ], [ %.340.i.unr, %.lr.ph41.i.prol.loopexit ] ; 3 uses
  %.35439.i = phi ptr [ %i.fr, %.lr.ph41.i ], [ %.35439.i.unr, %.lr.ph41.i.prol.loopexit ] ; 3 uses
  %.35838.i = phi i32 [ %i.fs, %.lr.ph41.i ], [ %.35838.i.unr, %.lr.ph41.i.prol.loopexit ]
  %i.fg = load float, ptr %.340.i, align 4, !tbaa !62
  %i.fh = fmul fast float %i.fg, %i.be
  %i.fi = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fh)
  %i.fj = fptosi float %i.fi to i32
  %spec.select.i15.i = call i32 @llvm.smax.i32(i32 %i.fj, i32 -127)
  %.0.i16.i = call i32 @llvm.smin.i32(i32 %spec.select.i15.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i16.i to i8
  store i8 %.0.i.i, ptr %.35439.i, align 1, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %.340.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.35439.i, i64 1
  %i.fm = load float, ptr %i.fk, align 4, !tbaa !62
  %i.fn = fmul fast float %i.fm, %i.be
  %i.fo = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fn)
  %i.fp = fptosi float %i.fo to i32
  %spec.select.i15.i.1 = call i32 @llvm.smax.i32(i32 %i.fp, i32 -127)
  %.0.i16.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i15.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i16.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.fl, align 1, !tbaa !63
  %i.fq = getelementptr inbounds nuw i8, ptr %.340.i, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.35439.i, i64 2
  %i.fs = add nuw nsw i32 %.35838.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fs, %i.bd
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit, label %.lr.ph41.i, !llvm.loop !115

_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit:        ; preds = %.lr.ph41.i.prol.loopexit, %.lr.ph41.i, %middle.block, %.preheader.i
  %.not.i31 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit
  %i.ft = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i32 = icmp eq ptr %.sroa.2144.0, null
  br i1 %.not3.i32, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fv = load ptr, ptr %.sroa.2144.0, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  invoke void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2144.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL8quantizeEPKfPaRKNS_3MatEii.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !39
  %i.gb = sext i32 %i.ga to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gb
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit25, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit
  %.036 = phi i32 [ %i.fy, %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !39     ; 2 uses
  %i.m = mul nsw i32 %i.l, %.036                  ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !29
  %i.o = load i32, ptr %5, align 4, !tbaa !39     ; 2 uses
  %i.p = mul nsw i32 %i.o, %i.m
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !29
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.q ; 2 uses
  %i.u = load i32, ptr %7, align 4, !tbaa !39
  %i.v = sub nsw i32 %i.u, %i.m
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.v)
  %i.w = mul nsw i32 %.sroa.speculated, %i.o      ; 13 uses
  %.val = load ptr, ptr %8, align 8, !tbaa !29
  %i.x = load float, ptr %.val, align 4, !tbaa !62 ; 7 uses
  %i.y = insertelement <4 x float> poison, float %i.x, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <8 x float> poison, float %i.x, i64 0
  %i.ab = shufflevector <8 x float> %i.aa, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ac = icmp sgt i32 %i.w, 15
  br i1 %i.ac, label %.lr.ph.i, label %.preheader25.i

.preheader25.loopexit.i:                          ; preds = %.lr.ph.i
  %i.ad = and i32 %i.w, 2147483632
  br label %.preheader25.i

.preheader25.i:                                   ; preds = %.preheader25.loopexit.i, %.lr.ph
  %.055.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.ad, %.preheader25.loopexit.i ] ; 3 uses
  %.051.lcssa.i = phi ptr [ %i.t, %.lr.ph ], [ %i.bh, %.preheader25.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.r, %.lr.ph ], [ %i.bg, %.preheader25.loopexit.i ] ; 2 uses
  %i.ae = or disjoint i32 %.055.lcssa.i, 7
  %i.af = icmp slt i32 %i.ae, %i.w
  br i1 %i.af, label %.lr.ph34.i, label %.preheader24.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.028.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %i.r, %.lr.ph ] ; 3 uses
  %.05127.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %i.t, %.lr.ph ] ; 2 uses
  %.05526.i = phi i32 [ %i.bi, %.lr.ph.i ], [ 0, %.lr.ph ]
  %i.ag = load <8 x i16>, ptr %.028.i, align 1, !tbaa !63 ; 2 uses
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %10 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ag, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ah = shufflevector <8 x i16> %9, <8 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = bitcast <16 x i16> %i.ah to <8 x float>
  %i.aj = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  %i.ak = load <8 x i16>, ptr %i.aj, align 1, !tbaa !63 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.al = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.am = bitcast <16 x i16> %i.al to <8 x float>
  %i.an = fmul fast <8 x float> %i.ab, %i.ai      ; 2 uses
  %i.ao = fmul fast <8 x float> %i.ab, %i.am      ; 2 uses
  %i.ap = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.an)
  %i.aq = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ao)
  %i.ar = fadd fast <8 x float> %i.ap, %i.an
  %i.as = fadd fast <8 x float> %i.aq, %i.ao
  %i.at = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ar) ; 2 uses
  %i.au = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.as) ; 2 uses
  %i.av = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aw = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ax = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ay = shufflevector <8 x i32> %i.au, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.az = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.av, <4 x i32> %i.aw)
  %i.ba = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.bb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 -127))
  %i.bc = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bb, <8 x i16> splat (i16 127))
  %i.bd = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ba, <8 x i16> splat (i16 -127))
  %i.be = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bd, <8 x i16> splat (i16 127))
  %i.bf = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bc, <8 x i16> %i.be)
  store <16 x i8> %i.bf, ptr %.05127.i, align 1, !tbaa !63
  %i.bg = getelementptr inbounds nuw i8, ptr %.028.i, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.05127.i, i64 16 ; 2 uses
  %i.bi = add nuw nsw i32 %.05526.i, 16           ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 15
  %i.bk = icmp slt i32 %i.bj, %i.w
  br i1 %i.bk, label %.lr.ph.i, label %.preheader25.loopexit.i, !llvm.loop !6

.preheader24.i:                                   ; preds = %.lr.ph34.i, %.preheader25.i
  %.156.lcssa.i = phi i32 [ %.055.lcssa.i, %.preheader25.i ], [ %i.ce, %.lr.ph34.i ] ; 3 uses
  %.152.lcssa.i = phi ptr [ %.051.lcssa.i, %.preheader25.i ], [ %i.cd, %.lr.ph34.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader25.i ], [ %i.cc, %.lr.ph34.i ] ; 2 uses
  %i.bl = or disjoint i32 %.156.lcssa.i, 3
  %i.bm = icmp slt i32 %i.bl, %i.w
  br i1 %i.bm, label %.lr.ph41.i, label %.preheader.i

.lr.ph34.i:                                       ; preds = %.preheader25.i, %.lr.ph34.i
  %.133.i = phi ptr [ %i.cc, %.lr.ph34.i ], [ %.0.lcssa.i, %.preheader25.i ] ; 2 uses
  %.15232.i = phi ptr [ %i.cd, %.lr.ph34.i ], [ %.051.lcssa.i, %.preheader25.i ] ; 2 uses
  %.15631.i = phi i32 [ %i.ce, %.lr.ph34.i ], [ %.055.lcssa.i, %.preheader25.i ]
  %i.bn = load <8 x i16>, ptr %.133.i, align 1, !tbaa !63 ; 2 uses
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %14 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bo = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = bitcast <16 x i16> %i.bo to <8 x float>
  %i.bq = fmul fast <8 x float> %i.ab, %i.bp      ; 2 uses
  %i.br = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bq)
  %i.bs = fadd fast <8 x float> %i.br, %i.bq
  %i.bt = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bs) ; 2 uses
  %i.bu = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bw = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bw, <8 x i16> splat (i16 -127))
  %i.by = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 127))
  %i.bz = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.by, <8 x i16> poison)
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  %i.cb = extractelement <2 x i64> %i.ca, i64 0
  store i64 %i.cb, ptr %.15232.i, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw i8, ptr %.133.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.15232.i, i64 8 ; 2 uses
  %i.ce = add nuw nsw i32 %.15631.i, 8            ; 3 uses
  %i.cf = or disjoint i32 %i.ce, 7
  %i.cg = icmp slt i32 %i.cf, %i.w
  br i1 %i.cg, label %.lr.ph34.i, label %.preheader24.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph41.i, %.preheader24.i
  %.257.lcssa.i = phi i32 [ %.156.lcssa.i, %.preheader24.i ], [ %i.fc, %.lr.ph41.i ] ; 7 uses
  %.253.lcssa.i = phi ptr [ %.152.lcssa.i, %.preheader24.i ], [ %i.fb, %.lr.ph41.i ] ; 8 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader24.i ], [ %i.fa, %.lr.ph41.i ] ; 8 uses
  %i.ch = icmp slt i32 %.257.lcssa.i, %i.w
  br i1 %i.ch, label %iter.check, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.ci = xor i32 %.257.lcssa.i, -1
  %i.cj = add i32 %i.w, %i.ci                     ; 3 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cj, 3
  br i1 %min.iters.check, label %.lr.ph48.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cm = xor i32 %.257.lcssa.i, -1
  %i.cn = add i32 %i.w, %i.cm
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr i8, ptr %.253.lcssa.i, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  %i.cr = shl nuw nsw i64 %i.co, 1
  %i.cs = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 2
  %bound0 = icmp ult ptr %.253.lcssa.i, %i.ct
  %bound1 = icmp ult ptr %.2.lcssa.i, %i.cq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph48.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check63 = icmp ult i32 %i.cj, 15
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.cl, 12
  %n.vec = and i64 %i.cl, 8589934576              ; 6 uses
  %i.cv = shl nuw nsw i64 %n.vec, 1
  %i.cw = getelementptr i8, ptr %.2.lcssa.i, i64 %i.cv
  %i.cx = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec
  %i.cy = trunc i64 %n.vec to i32
  %i.cz = add i32 %.257.lcssa.i, %i.cy
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa.i, i64 %i.da
  %next.gep64 = getelementptr i8, ptr %.253.lcssa.i, i64 %index
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !71, !alias.scope !127
  %i.db = zext <16 x i16> %wide.load to <16 x i32>
  %i.dc = shl nuw <16 x i32> %i.db, splat (i32 16)
  %i.dd = bitcast <16 x i32> %i.dc to <16 x float>
  %i.de = fmul fast <16 x float> %broadcast.splat, %i.dd
  %i.df = call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.de)
  %i.dg = fptosi <16 x float> %i.df to <16 x i32>
  %i.dh = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.dg, <16 x i32> splat (i32 -127))
  %i.di = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.dh, <16 x i32> splat (i32 127))
  %i.dj = trunc nsw <16 x i32> %i.di to <16 x i8>
  store <16 x i8> %i.dj, ptr %next.gep64, align 1, !tbaa !63, !alias.scope !128, !noalias !127
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph48.i.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.cl, 8589934588            ; 5 uses
  %i.dl = shl nuw nsw i64 %n.vec65, 1
  %i.dm = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dl
  %i.dn = getelementptr i8, ptr %.253.lcssa.i, i64 %n.vec65
  %i.do = trunc i64 %n.vec65 to i32
  %i.dp = add i32 %.257.lcssa.i, %i.do
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.x, i64 0
  %broadcast.splat67 = shufflevector <4 x float> %broadcast.splatinsert66, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.dq = shl i64 %index68, 1
  %next.gep69 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.dq
  %next.gep70 = getelementptr i8, ptr %.253.lcssa.i, i64 %index68
  %wide.load71 = load <4 x i16>, ptr %next.gep69, align 2, !tbaa !71, !alias.scope !127
  %i.dr = zext <4 x i16> %wide.load71 to <4 x i32>
  %i.ds = shl nuw <4 x i32> %i.dr, splat (i32 16)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = fmul fast <4 x float> %broadcast.splat67, %i.dt
  %i.dv = call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.du)
  %i.dw = fptosi <4 x float> %i.dv to <4 x i32>
  %i.dx = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dw, <4 x i32> splat (i32 -127))
  %i.dy = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dx, <4 x i32> splat (i32 127))
  %i.dz = trunc nsw <4 x i32> %i.dy to <4 x i8>
  store <4 x i8> %i.dz, ptr %next.gep70, align 1, !tbaa !63, !alias.scope !128, !noalias !127
  %index.next72 = add nuw i64 %index68, 4         ; 2 uses
  %i.ea = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n73 = icmp eq i64 %i.cl, %n.vec65
  br i1 %cmp.n73, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.347.i.ph = phi ptr [ %.2.lcssa.i, %iter.check ], [ %.2.lcssa.i, %vector.memcheck ], [ %i.cw, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ] ; 3 uses
  %.35446.i.ph = phi ptr [ %.253.lcssa.i, %iter.check ], [ %.253.lcssa.i, %vector.memcheck ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ] ; 3 uses
  %.35845.i.ph = phi i32 [ %.257.lcssa.i, %iter.check ], [ %.257.lcssa.i, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ] ; 4 uses
  %i.eb = sub i32 %i.w, %.35845.i.ph
  %.neg = add i32 %.35845.i.ph, 1
  %xtraiter = and i32 %i.eb, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.i.prol.loopexit, label %.lr.ph48.i.prol

.lr.ph48.i.prol:                                  ; preds = %.lr.ph48.i.preheader
  %i.ec = load i16, ptr %.347.i.ph, align 2, !tbaa !71
  %i.ed = zext i16 %i.ec to i32
  %i.ee = shl nuw i32 %i.ed, 16
  %i.ef = bitcast i32 %i.ee to float
  %i.eg = fmul fast float %i.x, %i.ef
  %i.eh = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.eg)
  %i.ei = fptosi float %i.eh to i32
  %spec.select.i22.i.prol = call i32 @llvm.smax.i32(i32 %i.ei, i32 -127)
  %.0.i23.i.prol = call i32 @llvm.smin.i32(i32 %spec.select.i22.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i23.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35446.i.ph, align 1, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %.347.i.ph, i64 2
  %i.ek = getelementptr inbounds nuw i8, ptr %.35446.i.ph, i64 1
  %i.el = add nuw nsw i32 %.35845.i.ph, 1
  br label %.lr.ph48.i.prol.loopexit

.lr.ph48.i.prol.loopexit:                         ; preds = %.lr.ph48.i.prol, %.lr.ph48.i.preheader
  %.347.i.unr = phi ptr [ %.347.i.ph, %.lr.ph48.i.preheader ], [ %i.ej, %.lr.ph48.i.prol ]
  %.35446.i.unr = phi ptr [ %.35446.i.ph, %.lr.ph48.i.preheader ], [ %i.ek, %.lr.ph48.i.prol ]
  %.35845.i.unr = phi i32 [ %.35845.i.ph, %.lr.ph48.i.preheader ], [ %i.el, %.lr.ph48.i.prol ]
  %i.em = icmp eq i32 %i.w, %.neg
  br i1 %i.em, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph48.i

.lr.ph41.i:                                       ; preds = %.preheader24.i, %.lr.ph41.i
  %.240.i = phi ptr [ %i.fa, %.lr.ph41.i ], [ %.1.lcssa.i, %.preheader24.i ] ; 2 uses
  %.25339.i = phi ptr [ %i.fb, %.lr.ph41.i ], [ %.152.lcssa.i, %.preheader24.i ] ; 2 uses
  %.25738.i = phi i32 [ %i.fc, %.lr.ph41.i ], [ %.156.lcssa.i, %.preheader24.i ]
  %i.en = load i64, ptr %.240.i, align 1, !tbaa !63
  %i.eo = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %i.ep = bitcast <2 x i64> %i.eo to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ep, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eq = bitcast <8 x i16> %15 to <4 x float>
  %i.er = fmul fast <4 x float> %i.z, %i.eq       ; 2 uses
  %i.es = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.er)
  %i.et = fadd fast <4 x float> %i.es, %i.er
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et)
  %i.ev = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eu, <4 x i32> poison)
  %i.ew = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ev, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ex = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ew, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ey = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ex, <8 x i16> poison)
  %i.ez = shufflevector <16 x i8> %i.ey, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.ez, ptr %.25339.i, align 1, !tbaa !63
  %i.fa = getelementptr inbounds nuw i8, ptr %.240.i, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.25339.i, i64 4 ; 2 uses
  %i.fc = add nuw nsw i32 %.25738.i, 4            ; 3 uses
  %i.fd = or disjoint i32 %i.fc, 3
  %i.fe = icmp slt i32 %i.fd, %i.w
  br i1 %i.fe, label %.lr.ph41.i, label %.preheader.i, !llvm.loop !8

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i
  %.347.i = phi ptr [ %i.fv, %.lr.ph48.i ], [ %.347.i.unr, %.lr.ph48.i.prol.loopexit ] ; 3 uses
  %.35446.i = phi ptr [ %i.fw, %.lr.ph48.i ], [ %.35446.i.unr, %.lr.ph48.i.prol.loopexit ] ; 3 uses
  %.35845.i = phi i32 [ %i.fx, %.lr.ph48.i ], [ %.35845.i.unr, %.lr.ph48.i.prol.loopexit ]
  %i.ff = load i16, ptr %.347.i, align 2, !tbaa !71
  %i.fg = zext i16 %i.ff to i32
  %i.fh = shl nuw i32 %i.fg, 16
  %i.fi = bitcast i32 %i.fh to float
  %i.fj = fmul fast float %i.x, %i.fi
  %i.fk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fj)
  %i.fl = fptosi float %i.fk to i32
  %spec.select.i22.i = call i32 @llvm.smax.i32(i32 %i.fl, i32 -127)
  %.0.i23.i = call i32 @llvm.smin.i32(i32 %spec.select.i22.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i23.i to i8
  store i8 %.0.i.i, ptr %.35446.i, align 1, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %.347.i, i64 2
  %i.fn = getelementptr inbounds nuw i8, ptr %.35446.i, i64 1
  %i.fo = load i16, ptr %i.fm, align 2, !tbaa !71
  %i.fp = zext i16 %i.fo to i32
  %i.fq = shl nuw i32 %i.fp, 16
  %i.fr = bitcast i32 %i.fq to float
  %i.fs = fmul fast float %i.x, %i.fr
  %i.ft = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fs)
  %i.fu = fptosi float %i.ft to i32
  %spec.select.i22.i.1 = call i32 @llvm.smax.i32(i32 %i.fu, i32 -127)
  %.0.i23.i.1 = call i32 @llvm.smin.i32(i32 %spec.select.i22.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i23.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.fn, align 1, !tbaa !63
  %i.fv = getelementptr inbounds nuw i8, ptr %.347.i, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.35446.i, i64 2
  %i.fx = add nuw nsw i32 %.35845.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fx, %i.w
  br i1 %exitcond.not.i.1, label %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, label %.lr.ph48.i, !llvm.loop !126

_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit:  ; preds = %.lr.ph48.i.prol.loopexit, %.lr.ph48.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %i.fy = add nsw i32 %.036, 1
  %i.fz = load i32, ptr %i.b, align 4, !tbaa !39
  %.not.not = icmp slt i32 %.036, %i.fz
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree readonly captures(none) %.0.val, i32 %.44.val, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
bb.a:
  %i.a = mul i32 %3, %2                           ; 13 uses
  %i.b = load float, ptr %.0.val, align 4, !tbaa !62 ; 7 uses
  %i.c = insertelement <4 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.e = insertelement <8 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <8 x float> %i.e, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = icmp sgt i32 %.44.val, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %bb.d [
    i32 8, label %.thread
    i32 4, label %bb.c
  ]

.thread:                                          ; preds = %bb.b
  %i.h = load <8 x float>, ptr %.0.val, align 4, !tbaa !63
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load <4 x float>, ptr %.0.val, align 4, !tbaa !63 ; 2 uses
  %i.j = shufflevector <4 x float> %i.i, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread, %bb.c, %bb.a
  %.020 = phi nsz <4 x float> [ %i.i, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %.thread ]
  %.160 = phi nsz <8 x float> [ %i.j, %bb.c ], [ %i.f, %bb.b ], [ %i.f, %bb.a ], [ %i.h, %.thread ] ; 3 uses
  %i.k = icmp sgt i32 %i.a, 15
  br i1 %i.k, label %.lr.ph, label %.preheader25

.preheader25.loopexit:                            ; preds = %.lr.ph
  %i.l = and i32 %i.a, 2147483632
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.loopexit, %bb.d
  %.055.lcssa = phi i32 [ 0, %bb.d ], [ %i.l, %.preheader25.loopexit ] ; 3 uses
  %.051.lcssa = phi ptr [ %1, %bb.d ], [ %i.ap, %.preheader25.loopexit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.d ], [ %i.ao, %.preheader25.loopexit ] ; 2 uses
  %i.m = or disjoint i32 %.055.lcssa, 7
  %i.n = icmp slt i32 %i.m, %i.a
  br i1 %i.n, label %.lr.ph34, label %.preheader24

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.028 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.d ] ; 3 uses
  %.05127 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.d ] ; 2 uses
  %.05526 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %bb.d ]
  %i.o = load <8 x i16>, ptr %.028, align 1, !tbaa !63 ; 2 uses
  %4 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.o, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %5 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.o, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = shufflevector <8 x i16> %4, <8 x i16> %5, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.q = bitcast <16 x i16> %i.p to <8 x float>
  %i.r = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.s = load <8 x i16>, ptr %i.r, align 1, !tbaa !63 ; 2 uses
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.s, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %7 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.s, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.t = shufflevector <8 x i16> %6, <8 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.u = bitcast <16 x i16> %i.t to <8 x float>
  %i.v = fmul fast <8 x float> %.160, %i.q        ; 2 uses
  %i.w = fmul fast <8 x float> %.160, %i.u        ; 2 uses
  %i.x = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.v)
  %i.y = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.w)
  %i.z = fadd fast <8 x float> %i.x, %i.v
  %i.aa = fadd fast <8 x float> %i.y, %i.w
  %i.ab = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.z) ; 2 uses
  %i.ac = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aa) ; 2 uses
  %i.ad = shufflevector <8 x i32> %i.ab, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = shufflevector <8 x i32> %i.ab, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.af = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ad, <4 x i32> %i.ae)
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.ag)
  %i.aj = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ah, <8 x i16> splat (i16 -127))
  %i.ak = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.aj, <8 x i16> splat (i16 127))
  %i.al = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 -127))
  %i.am = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.al, <8 x i16> splat (i16 127))
  %i.an = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ak, <8 x i16> %i.am)
  store <16 x i8> %i.an, ptr %.05127, align 1, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %.028, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05127, i64 16 ; 2 uses
  %i.aq = add nuw nsw i32 %.05526, 16             ; 2 uses
  %i.ar = or disjoint i32 %i.aq, 15
  %i.as = icmp slt i32 %i.ar, %i.a
  br i1 %i.as, label %.lr.ph, label %.preheader25.loopexit, !llvm.loop !6

.preheader24:                                     ; preds = %.lr.ph34, %.preheader25
  %.156.lcssa = phi i32 [ %.055.lcssa, %.preheader25 ], [ %i.bm, %.lr.ph34 ] ; 3 uses
  %.152.lcssa = phi ptr [ %.051.lcssa, %.preheader25 ], [ %i.bl, %.lr.ph34 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader25 ], [ %i.bk, %.lr.ph34 ] ; 2 uses
  %i.at = or disjoint i32 %.156.lcssa, 3
  %i.au = icmp slt i32 %i.at, %i.a
  br i1 %i.au, label %.lr.ph41, label %.preheader

.lr.ph34:                                         ; preds = %.preheader25, %.lr.ph34
  %.133 = phi ptr [ %i.bk, %.lr.ph34 ], [ %.0.lcssa, %.preheader25 ] ; 2 uses
  %.15232 = phi ptr [ %i.bl, %.lr.ph34 ], [ %.051.lcssa, %.preheader25 ] ; 2 uses
  %.15631 = phi i32 [ %i.bm, %.lr.ph34 ], [ %.055.lcssa, %.preheader25 ]
  %i.av = load <8 x i16>, ptr %.133, align 1, !tbaa !63 ; 2 uses
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.av, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %9 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.av, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aw = shufflevector <8 x i16> %8, <8 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = bitcast <16 x i16> %i.aw to <8 x float>
  %i.ay = fmul fast <8 x float> %.160, %i.ax      ; 2 uses
  %i.az = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ay)
  %i.ba = fadd fast <8 x float> %i.az, %i.ay
  %i.bb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ba) ; 2 uses
  %i.bc = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bd = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.be = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bc, <4 x i32> %i.bd)
  %i.bf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.be, <8 x i16> splat (i16 -127))
  %i.bg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.bf, <8 x i16> splat (i16 127))
  %i.bh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.bg, <8 x i16> poison)
  %i.bi = bitcast <16 x i8> %i.bh to <2 x i64>
  %i.bj = extractelement <2 x i64> %i.bi, i64 0
  store i64 %i.bj, ptr %.15232, align 8, !tbaa !65
  %i.bk = getelementptr inbounds nuw i8, ptr %.133, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.15232, i64 8 ; 2 uses
  %i.bm = add nuw nsw i32 %.15631, 8              ; 3 uses
  %i.bn = or disjoint i32 %i.bm, 7
  %i.bo = icmp slt i32 %i.bn, %i.a
  br i1 %i.bo, label %.lr.ph34, label %.preheader24, !llvm.loop !7

.preheader:                                       ; preds = %.lr.ph41, %.preheader24
  %.257.lcssa = phi i32 [ %.156.lcssa, %.preheader24 ], [ %i.ek, %.lr.ph41 ] ; 7 uses
  %.253.lcssa = phi ptr [ %.152.lcssa, %.preheader24 ], [ %i.ej, %.lr.ph41 ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader24 ], [ %i.ei, %.lr.ph41 ] ; 8 uses
  %i.bp = icmp slt i32 %.257.lcssa, %i.a
  br i1 %i.bp, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bq = xor i32 %.257.lcssa, -1
  %i.br = add i32 %i.a, %i.bq                     ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.br, 3
  br i1 %min.iters.check, label %.lr.ph48.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bu = xor i32 %.257.lcssa, -1
  %i.bv = add i32 %i.a, %i.bu
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr i8, ptr %.253.lcssa, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 1
  %i.bz = shl nuw nsw i64 %i.bw, 1
  %i.ca = getelementptr i8, ptr %.2.lcssa, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  %bound0 = icmp ult ptr %.253.lcssa, %i.cb
  %bound1 = icmp ult ptr %.2.lcssa, %i.by
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i32 %i.br, 15
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.bt, 12
  %n.vec = and i64 %i.bt, 8589934576              ; 6 uses
  %i.cd = shl nuw nsw i64 %n.vec, 1
  %i.ce = getelementptr i8, ptr %.2.lcssa, i64 %i.cd
  %i.cf = getelementptr i8, ptr %.253.lcssa, i64 %n.vec
  %i.cg = trunc i64 %n.vec to i32
  %i.ch = add i32 %.257.lcssa, %i.cg
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.b, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2.lcssa, i64 %i.ci
  %next.gep73 = getelementptr i8, ptr %.253.lcssa, i64 %index
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !71, !alias.scope !135
  %i.cj = zext <16 x i16> %wide.load to <16 x i32>
  %i.ck = shl nuw <16 x i32> %i.cj, splat (i32 16)
  %i.cl = bitcast <16 x i32> %i.ck to <16 x float>
  %i.cm = fmul fast <16 x float> %broadcast.splat, %i.cl
  %i.cn = tail call fast <16 x float> @llvm.round.v16f32(<16 x float> %i.cm)
  %i.co = fptosi <16 x float> %i.cn to <16 x i32>
  %i.cp = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.co, <16 x i32> splat (i32 -127))
  %i.cq = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.cp, <16 x i32> splat (i32 127))
  %i.cr = trunc nsw <16 x i32> %i.cq to <16 x i8>
  store <16 x i8> %i.cr, ptr %next.gep73, align 1, !tbaa !63, !alias.scope !136, !noalias !135
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph48.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec74 = and i64 %i.bt, 8589934588            ; 5 uses
  %i.ct = shl nuw nsw i64 %n.vec74, 1
  %i.cu = getelementptr i8, ptr %.2.lcssa, i64 %i.ct
  %i.cv = getelementptr i8, ptr %.253.lcssa, i64 %n.vec74
  %i.cw = trunc i64 %n.vec74 to i32
  %i.cx = add i32 %.257.lcssa, %i.cw
  %broadcast.splatinsert75 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat76 = shufflevector <4 x float> %broadcast.splatinsert75, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %i.cy = shl i64 %index77, 1
  %next.gep78 = getelementptr i8, ptr %.2.lcssa, i64 %i.cy
  %next.gep79 = getelementptr i8, ptr %.253.lcssa, i64 %index77
  %wide.load80 = load <4 x i16>, ptr %next.gep78, align 2, !tbaa !71, !alias.scope !135
  %i.cz = zext <4 x i16> %wide.load80 to <4 x i32>
  %i.da = shl nuw <4 x i32> %i.cz, splat (i32 16)
  %i.db = bitcast <4 x i32> %i.da to <4 x float>
  %i.dc = fmul fast <4 x float> %broadcast.splat76, %i.db
  %i.dd = tail call fast <4 x float> @llvm.round.v4f32(<4 x float> %i.dc)
  %i.de = fptosi <4 x float> %i.dd to <4 x i32>
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 -127))
  %i.dg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 127))
  %i.dh = trunc nsw <4 x i32> %i.dg to <4 x i8>
  store <4 x i8> %i.dh, ptr %next.gep79, align 1, !tbaa !63, !alias.scope !136, !noalias !135
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %i.di = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.di, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !133

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.bt, %n.vec74
  br i1 %cmp.n82, label %._crit_edge, label %.lr.ph48.preheader

.lr.ph48.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.347.ph = phi ptr [ %.2.lcssa, %iter.check ], [ %.2.lcssa, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cu, %vec.epilog.middle.block ] ; 3 uses
  %.35446.ph = phi ptr [ %.253.lcssa, %iter.check ], [ %.253.lcssa, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ] ; 3 uses
  %.35845.ph = phi i32 [ %.257.lcssa, %iter.check ], [ %.257.lcssa, %vector.memcheck ], [ %i.ch, %vec.epilog.iter.check ], [ %i.cx, %vec.epilog.middle.block ] ; 4 uses
  %i.dj = sub i32 %i.a, %.35845.ph
  %.neg = add i32 %.35845.ph, 1
  %xtraiter = and i32 %i.dj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol

.lr.ph48.prol:                                    ; preds = %.lr.ph48.preheader
  %i.dk = load i16, ptr %.347.ph, align 2, !tbaa !71
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw i32 %i.dl, 16
  %i.dn = bitcast i32 %i.dm to float
  %i.do = fmul fast float %i.b, %i.dn
  %i.dp = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.do)
  %i.dq = fptosi float %i.dp to i32
  %spec.select.i22.prol = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 -127)
  %.0.i23.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i22.prol, i32 127)
  %.0.i.prol = trunc nsw i32 %.0.i23.prol to i8
  store i8 %.0.i.prol, ptr %.35446.ph, align 1, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %.347.ph, i64 2
  %i.ds = getelementptr inbounds nuw i8, ptr %.35446.ph, i64 1
  %i.dt = add nuw nsw i32 %.35845.ph, 1
  br label %.lr.ph48.prol.loopexit

.lr.ph48.prol.loopexit:                           ; preds = %.lr.ph48.prol, %.lr.ph48.preheader
  %.347.unr = phi ptr [ %.347.ph, %.lr.ph48.preheader ], [ %i.dr, %.lr.ph48.prol ]
  %.35446.unr = phi ptr [ %.35446.ph, %.lr.ph48.preheader ], [ %i.ds, %.lr.ph48.prol ]
  %.35845.unr = phi i32 [ %.35845.ph, %.lr.ph48.preheader ], [ %i.dt, %.lr.ph48.prol ]
  %i.du = icmp eq i32 %i.a, %.neg
  br i1 %i.du, label %._crit_edge, label %.lr.ph48

.lr.ph41:                                         ; preds = %.preheader24, %.lr.ph41
  %.240 = phi ptr [ %i.ei, %.lr.ph41 ], [ %.1.lcssa, %.preheader24 ] ; 2 uses
  %.25339 = phi ptr [ %i.ej, %.lr.ph41 ], [ %.152.lcssa, %.preheader24 ] ; 2 uses
  %.25738 = phi i32 [ %i.ek, %.lr.ph41 ], [ %.156.lcssa, %.preheader24 ]
  %i.dv = load i64, ptr %.240, align 1, !tbaa !63
  %i.dw = insertelement <2 x i64> poison, i64 %i.dv, i64 0
  %i.dx = bitcast <2 x i64> %i.dw to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dy = bitcast <8 x i16> %10 to <4 x float>
  %i.dz = fmul fast <4 x float> %.020, %i.dy      ; 2 uses
  %i.ea = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dz)
  %i.eb = fadd fast <4 x float> %i.ea, %i.dz
  %i.ec = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eb)
  %i.ed = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ec, <4 x i32> poison)
  %i.ee = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ed, <8 x i16> <i16 -127, i16 -127, i16 -127, i16 -127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.ef = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ee, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 poison, i16 poison, i16 poison, i16 poison>)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ef, <8 x i16> poison)
  %i.eh = shufflevector <16 x i8> %i.eg, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.eh, ptr %.25339, align 1, !tbaa !63
  %i.ei = getelementptr inbounds nuw i8, ptr %.240, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.25339, i64 4 ; 2 uses
  %i.ek = add nuw nsw i32 %.25738, 4              ; 3 uses
  %i.el = or disjoint i32 %i.ek, 3
  %i.em = icmp slt i32 %i.el, %i.a
  br i1 %i.em, label %.lr.ph41, label %.preheader, !llvm.loop !8

.lr.ph48:                                         ; preds = %.lr.ph48.prol.loopexit, %.lr.ph48
  %.347 = phi ptr [ %i.fd, %.lr.ph48 ], [ %.347.unr, %.lr.ph48.prol.loopexit ] ; 3 uses
  %.35446 = phi ptr [ %i.fe, %.lr.ph48 ], [ %.35446.unr, %.lr.ph48.prol.loopexit ] ; 3 uses
  %.35845 = phi i32 [ %i.ff, %.lr.ph48 ], [ %.35845.unr, %.lr.ph48.prol.loopexit ]
  %i.en = load i16, ptr %.347, align 2, !tbaa !71
  %i.eo = zext i16 %i.en to i32
  %i.ep = shl nuw i32 %i.eo, 16
  %i.eq = bitcast i32 %i.ep to float
  %i.er = fmul fast float %i.b, %i.eq
  %i.es = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.er)
  %i.et = fptosi float %i.es to i32
  %spec.select.i22 = tail call i32 @llvm.smax.i32(i32 %i.et, i32 -127)
  %.0.i23 = tail call i32 @llvm.smin.i32(i32 %spec.select.i22, i32 127)
  %.0.i = trunc nsw i32 %.0.i23 to i8
  store i8 %.0.i, ptr %.35446, align 1, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %.347, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.35446, i64 1
  %i.ew = load i16, ptr %i.eu, align 2, !tbaa !71
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = bitcast i32 %i.ey to float
  %i.fa = fmul fast float %i.b, %i.ez
  %i.fb = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.fa)
  %i.fc = fptosi float %i.fb to i32
  %spec.select.i22.1 = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 -127)
  %.0.i23.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i22.1, i32 127)
  %.0.i.1 = trunc nsw i32 %.0.i23.1 to i8
  store i8 %.0.i.1, ptr %i.ev, align 1, !tbaa !63
  %i.fd = getelementptr inbounds nuw i8, ptr %.347, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.35446, i64 2
  %i.ff = add nuw nsw i32 %.35845, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ff, %i.a
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph48, !llvm.loop !134

._crit_edge:                                      ; preds = %.lr.ph48.prol.loopexit, %.lr.ph48, %middle.block, %vec.epilog.middle.block, %.preheader
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not47 = icmp sgt i32 %i.k, %i.j
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29
  %i.v = load i32, ptr %i.l, align 4, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %indvars.iv, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !36
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !29    ; 4 uses
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !38
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr %i.o, align 8, !tbaa !36
  %i.ag = mul i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = mul i64 %i.ag, %i.ab
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.aj = or disjoint i64 %i.ab, 1
  %i.ak = mul i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak ; 2 uses
  %i.am = or disjoint i64 %i.ab, 2
  %i.an = mul i64 %i.ag, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = or disjoint i64 %i.ab, 3
  %i.aq = mul i64 %i.ag, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %5, align 4, !tbaa !39
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.d

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %bb.c
  %i.au = load i32, ptr %7, align 4, !tbaa !39    ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %indvars.iv, %i.av
  %i.ax = load ptr, ptr %6, align 8, !tbaa !29, !noalias !139
  %i.ay = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !139
  %i.az = mul i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !28, !noalias !139
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bg = atomicrmw add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.au, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bf, %bb.d ], [ %i.bf, %bb.e ]
  %.sroa.2140.0 = phi ptr [ %i.bb, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.be, %bb.d ], [ %i.be, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.d ], [ %i.bd, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ba, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bc, %bb.d ], [ %i.bc, %bb.e ] ; 4 uses
  %i.bh = load i32, ptr %8, align 4, !tbaa !39    ; 5 uses
  %i.bi = load float, ptr %.sroa.0.0, align 4, !tbaa !62
  %i.bj = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bl = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bm = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !63
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4ncnn3Mat6addrefEv.exit
  %.074.i = phi nsz <4 x float> [ %i.bm, %bb.f ], [ %i.bk, %_ZN4ncnn3Mat6addrefEv.exit ] ; 9 uses
  %i.bn = icmp sgt i32 %i.bh, 7
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.bo = and i32 %i.bh, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.g
  %.075.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.bo, %.preheader.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi ptr [ %i.ar, %bb.g ], [ %i.fn, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi ptr [ %i.ao, %bb.g ], [ %i.fm, %.preheader.loopexit.i ]
  %.068.lcssa.i = phi ptr [ %i.al, %bb.g ], [ %i.fl, %.preheader.loopexit.i ]
  %.066.lcssa.i = phi ptr [ %i.ai, %bb.g ], [ %i.fk, %.preheader.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.aa, %bb.g ], [ %i.fj, %.preheader.loopexit.i ]
  %i.bp = icmp slt i32 %.075.lcssa.i, %i.bh
  br i1 %i.bp, label %.lr.ph54.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.042.i = phi ptr [ %i.fj, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 9 uses
  %.06641.i = phi ptr [ %i.fk, %.lr.ph.i ], [ %i.ai, %bb.g ] ; 2 uses
  %.06840.i = phi ptr [ %i.fl, %.lr.ph.i ], [ %i.al, %bb.g ] ; 2 uses
  %.07039.i = phi ptr [ %i.fm, %.lr.ph.i ], [ %i.ao, %bb.g ] ; 2 uses
  %.07238.i = phi ptr [ %i.fn, %.lr.ph.i ], [ %i.ar, %bb.g ] ; 2 uses
  %.07537.i = phi i32 [ %i.fo, %.lr.ph.i ], [ 0, %bb.g ]
  %i.bq = load i64, ptr %.042.i, align 1, !tbaa !63
  %i.br = insertelement <2 x i64> poison, i64 %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.br to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = bitcast <8 x i16> %9 to <4 x float>
  %i.bu = getelementptr inbounds nuw i8, ptr %.042.i, i64 8
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !63
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.by = bitcast <8 x i16> %10 to <4 x float>
  %i.bz = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !63
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %11 to <4 x float>
  %i.ce = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !63
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %12 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.042.i, i64 32
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !63
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %13 to <4 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !63
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = bitcast <2 x i64> %i.cq to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = bitcast <8 x i16> %14 to <4 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !63
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %15 to <4 x float>
  %i.cy = getelementptr inbounds nuw i8, ptr %.042.i, i64 56
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !63
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %16 to <4 x float>
  %i.dd = fmul fast <4 x float> %.074.i, %i.bt    ; 2 uses
  %i.de = fmul fast <4 x float> %.074.i, %i.by    ; 2 uses
  %i.df = fmul fast <4 x float> %.074.i, %i.cd    ; 2 uses
  %i.dg = fmul fast <4 x float> %.074.i, %i.ci    ; 2 uses
  %i.dh = fmul fast <4 x float> %.074.i, %i.cn    ; 2 uses
  %i.di = fmul fast <4 x float> %.074.i, %i.cs    ; 2 uses
  %i.dj = fmul fast <4 x float> %.074.i, %i.cx    ; 2 uses
  %i.dk = fmul fast <4 x float> %.074.i, %i.dc    ; 2 uses
  %i.dl = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dd)
  %i.dm = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dh)
  %i.dn = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.df)
  %i.do = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dj)
  %i.dp = fadd fast <4 x float> %i.dl, %i.dd
  %i.dq = fadd fast <4 x float> %i.dm, %i.dh
  %i.dr = fadd fast <4 x float> %i.dn, %i.df
  %i.ds = fadd fast <4 x float> %i.do, %i.dj
  %i.dt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dp)
  %i.du = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dq)
  %i.dv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr)
  %i.dw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ds)
  %i.dx = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dt, <4 x i32> %i.du)
  %i.dy = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dv, <4 x i32> %i.dw)
  %i.dz = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dx, <8 x i16> splat (i16 -127))
  %i.ea = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dz, <8 x i16> splat (i16 127))
  %i.eb = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dy, <8 x i16> splat (i16 -127))
  %i.ec = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eb, <8 x i16> splat (i16 127))
  %i.ed = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ea, <8 x i16> %i.ec) ; 2 uses
  %i.ee = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.de)
  %i.ef = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.di)
  %i.eg = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dg)
  %i.eh = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dk)
  %i.ei = fadd fast <4 x float> %i.ee, %i.de
  %i.ej = fadd fast <4 x float> %i.ef, %i.di
  %i.ek = fadd fast <4 x float> %i.eg, %i.dg
  %i.el = fadd fast <4 x float> %i.eh, %i.dk
  %i.em = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ei)
  %i.en = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ej)
  %i.eo = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ek)
  %i.ep = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.el)
  %i.eq = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.em, <4 x i32> %i.en)
  %i.er = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eo, <4 x i32> %i.ep)
  %i.es = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.eq, <8 x i16> splat (i16 -127))
  %i.et = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.es, <8 x i16> splat (i16 127))
  %i.eu = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.er, <8 x i16> splat (i16 -127))
  %i.ev = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eu, <8 x i16> splat (i16 127))
  %i.ew = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.et, <8 x i16> %i.ev) ; 2 uses
  %i.ex = shufflevector <16 x i8> %i.ed, <16 x i8> %i.ew, <16 x i32> <i32 0, i32 16, i32 8, i32 24, i32 1, i32 17, i32 9, i32 25, i32 2, i32 18, i32 10, i32 26, i32 3, i32 19, i32 11, i32 27>
  %i.ey = shufflevector <16 x i8> %i.ed, <16 x i8> %i.ew, <16 x i32> <i32 4, i32 20, i32 12, i32 28, i32 5, i32 21, i32 13, i32 29, i32 6, i32 22, i32 14, i32 30, i32 7, i32 23, i32 15, i32 31>
  %i.ez = bitcast <16 x i8> %i.ex to <4 x i32>    ; 2 uses
  %i.fa = bitcast <16 x i8> %i.ey to <4 x i32>    ; 2 uses
  %i.fb = shufflevector <4 x i32> %i.ez, <4 x i32> %i.fa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fc = shufflevector <4 x i32> %i.ez, <4 x i32> %i.fa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fd = bitcast <4 x i32> %i.fb to <2 x double> ; 2 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0
  store double %i.fe, ptr %.06641.i, align 1, !tbaa !63
  %i.ff = extractelement <2 x double> %i.fd, i64 1
  store double %i.ff, ptr %.06840.i, align 1, !tbaa !63
  %i.fg = bitcast <4 x i32> %i.fc to <2 x double> ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 0
  store double %i.fh, ptr %.07039.i, align 1, !tbaa !63
  %i.fi = extractelement <2 x double> %i.fg, i64 1
  store double %i.fi, ptr %.07238.i, align 1, !tbaa !63
  %i.fj = getelementptr inbounds nuw i8, ptr %.042.i, i64 64 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.06641.i, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.06840.i, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.07039.i, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.07238.i, i64 8 ; 2 uses
  %i.fo = add nuw nsw i32 %.07537.i, 8            ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 7
  %i.fq = icmp slt i32 %i.fp, %i.bh
  br i1 %i.fq, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !9

.lr.ph54.i:                                       ; preds = %.preheader.i, %.lr.ph54.i
  %.153.i = phi ptr [ %i.gh, %.lr.ph54.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.16752.i = phi ptr [ %i.gi, %.lr.ph54.i ], [ %.066.lcssa.i, %.preheader.i ] ; 2 uses
  %.16951.i = phi ptr [ %i.gj, %.lr.ph54.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %.17150.i = phi ptr [ %i.gk, %.lr.ph54.i ], [ %.070.lcssa.i, %.preheader.i ] ; 2 uses
  %.17349.i = phi ptr [ %i.gl, %.lr.ph54.i ], [ %.072.lcssa.i, %.preheader.i ] ; 2 uses
  %.17648.i = phi i32 [ %i.gm, %.lr.ph54.i ], [ %.075.lcssa.i, %.preheader.i ]
  %i.fr = load i64, ptr %.153.i, align 1, !tbaa !63
  %i.fs = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %i.ft = bitcast <2 x i64> %i.fs to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ft, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fu = bitcast <8 x i16> %17 to <4 x float>
  %i.fv = fmul fast <4 x float> %.074.i, %i.fu    ; 2 uses
  %i.fw = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.fv)
  %i.fx = fadd fast <4 x float> %i.fw, %i.fv
  %i.fy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fx)
  %i.fz = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> poison, <4 x i32> %i.fy)
  %i.ga = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fz, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -127, i16 -127, i16 -127, i16 -127>)
  %i.gb = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ga, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 127, i16 127, i16 127, i16 127>)
  %i.gc = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gb, <8 x i16> poison) ; 4 uses
  %i.gd = extractelement <16 x i8> %i.gc, i64 4
  store i8 %i.gd, ptr %.16752.i, align 1, !tbaa !63
  %i.ge = extractelement <16 x i8> %i.gc, i64 5
  store i8 %i.ge, ptr %.16951.i, align 1, !tbaa !63
  %i.gf = extractelement <16 x i8> %i.gc, i64 6
  store i8 %i.gf, ptr %.17150.i, align 1, !tbaa !63
  %i.gg = extractelement <16 x i8> %i.gc, i64 7
  store i8 %i.gg, ptr %.17349.i, align 1, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.16752.i, i64 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.16951.i, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.17150.i, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.17349.i, i64 1
  %i.gm = add nuw nsw i32 %.17648.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gm, %i.bh
  br i1 %exitcond.not.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, label %.lr.ph54.i, !llvm.loop !10

_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit: ; preds = %.lr.ph54.i, %.preheader.i
  %.not.i34 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit
  %i.gn = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %.not3.i = icmp eq ptr %.sroa.2140.0, null
  br i1 %.not3.i, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gp = load ptr, ptr %.sroa.2140.0, align 8, !tbaa !21
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2140.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.h, %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gu = load i32, ptr %i.b, align 4, !tbaa !39
  %i.gv = sext i32 %i.gu to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gv
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29
  %i.v = load i32, ptr %i.l, align 4, !tbaa !38
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %indvars.iv, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !36
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %4, align 8, !tbaa !29
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !38
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %indvars.iv, %i.ad
  %i.af = load i64, ptr %i.o, align 8, !tbaa !36
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = load i32, ptr %5, align 4, !tbaa !39
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.d

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %bb.c
  %i.ak = load i32, ptr %7, align 4, !tbaa !39    ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %indvars.iv, %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !29, !noalias !142
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !142
  %i.ap = mul i64 %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !28, !noalias !142
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.at = load ptr, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.av = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = atomicrmw add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.e, %bb.d, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.ak, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.av, %bb.d ], [ %i.av, %bb.e ]
  %.sroa.2131.0 = phi ptr [ %i.ar, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.au, %bb.d ], [ %i.au, %bb.e ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.as, %bb.d ], [ %i.as, %bb.e ] ; 4 uses
  %i.ax = load i32, ptr %8, align 4, !tbaa !39
  %i.ay = load i32, ptr %7, align 4, !tbaa !39
  call fastcc void @_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii(ptr noundef %i.aa, ptr noundef %i.ah, ptr %.sroa.0.0, i32 %.sroa.27.0, i32 noundef %i.ax, i32 noundef %i.ay)
  %.not.i25 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i25, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.az = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.g, label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %.not3.i = icmp eq ptr %.sroa.2131.0, null
  br i1 %.not3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %.sroa.2131.0, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2131.0, ptr noundef %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.k, !inline_history !0

bb.i:                                             ; preds = %bb.g
  %.not.i26 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.f, %_ZN4ncnn3Mat6addrefEv.exit, %bb.h, %bb.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !39
  %i.bh = sext i32 %i.bg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bh
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not161 = icmp sgt i32 %i.k, %i.j
  br i1 %.not161, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit40.lr.ph

_ZN4ncnn3MatD2Ev.exit40.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit40

_ZN4ncnn3MatD2Ev.exit40:                          ; preds = %_ZN4ncnn3MatD2Ev.exit40.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3MatD2Ev.exit40.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29, !noalias !149
  %i.v = load i64, ptr %i.l, align 8, !tbaa !30, !noalias !149
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !149
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y ; 2 uses
  %i.aa = shl nsw i64 %indvars.iv, 2              ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !29, !noalias !150 ; 4 uses
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !30, !noalias !150 ; 4 uses
  %i.ad = mul i64 %i.ac, %i.aa
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !150 ; 4 uses
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ah = or disjoint i64 %i.aa, 1
  %i.ai = mul i64 %i.ac, %i.ah
  %i.aj = mul i64 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aj ; 2 uses
  %i.al = or disjoint i64 %i.aa, 2
  %i.am = mul i64 %i.ac, %i.al
  %i.an = mul i64 %i.am, %i.ae
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.an ; 2 uses
  %i.ap = or disjoint i64 %i.aa, 3
  %i.aq = mul i64 %i.ac, %i.ap
  %i.ar = mul i64 %i.aq, %i.ae
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %5, align 4, !tbaa !39
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.c

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %_ZN4ncnn3MatD2Ev.exit40
  %i.av = load i32, ptr %7, align 4, !tbaa !39    ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %indvars.iv, %i.aw
  %i.ay = load ptr, ptr %6, align 8, !tbaa !29, !noalias !151
  %i.az = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !151
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !28, !noalias !151
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit40
  %i.bd = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = atomicrmw add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.av, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bg, %bb.c ], [ %i.bg, %bb.d ]
  %.sroa.2180.0 = phi ptr [ %i.bc, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bf, %bb.c ], [ %i.bf, %bb.d ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.c ], [ %i.be, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.bb, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.bd, %bb.c ], [ %i.bd, %bb.d ] ; 4 uses
  %i.bi = load i32, ptr %8, align 4, !tbaa !39
  %i.bj = load i32, ptr %9, align 4, !tbaa !39
  %i.bk = mul nsw i32 %i.bj, %i.bi
  %i.bl = load i32, ptr %10, align 4, !tbaa !39
  %i.bm = mul nsw i32 %i.bk, %i.bl                ; 5 uses
  %i.bn = load float, ptr %.sroa.0.0, align 4, !tbaa !62
  %i.bo = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = icmp sgt i32 %.sroa.27.0, 1
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.br = load <4 x float>, ptr %.sroa.0.0, align 4, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4ncnn3Mat6addrefEv.exit
  %.074.i = phi nsz <4 x float> [ %i.br, %bb.e ], [ %i.bp, %_ZN4ncnn3Mat6addrefEv.exit ] ; 9 uses
  %i.bs = icmp sgt i32 %i.bm, 7
  br i1 %i.bs, label %.lr.ph.i, label %.preheader.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.bt = and i32 %i.bm, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.f
  %.075.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bt, %.preheader.loopexit.i ] ; 2 uses
  %.072.lcssa.i = phi ptr [ %i.as, %bb.f ], [ %i.fs, %.preheader.loopexit.i ]
  %.070.lcssa.i = phi ptr [ %i.ao, %bb.f ], [ %i.fr, %.preheader.loopexit.i ]
  %.068.lcssa.i = phi ptr [ %i.ak, %bb.f ], [ %i.fq, %.preheader.loopexit.i ]
  %.066.lcssa.i = phi ptr [ %i.ag, %bb.f ], [ %i.fp, %.preheader.loopexit.i ]
  %.0.lcssa.i = phi ptr [ %i.z, %bb.f ], [ %i.fo, %.preheader.loopexit.i ]
  %i.bu = icmp slt i32 %.075.lcssa.i, %i.bm
  br i1 %i.bu, label %.lr.ph54.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.042.i = phi ptr [ %i.fo, %.lr.ph.i ], [ %i.z, %bb.f ] ; 9 uses
  %.06641.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %.06840.i = phi ptr [ %i.fq, %.lr.ph.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.07039.i = phi ptr [ %i.fr, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.07238.i = phi ptr [ %i.fs, %.lr.ph.i ], [ %i.as, %bb.f ] ; 2 uses
  %.07537.i = phi i32 [ %i.ft, %.lr.ph.i ], [ 0, %bb.f ]
  %i.bv = load i64, ptr %.042.i, align 1, !tbaa !63
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.by = bitcast <8 x i16> %11 to <4 x float>
  %i.bz = getelementptr inbounds nuw i8, ptr %.042.i, i64 8
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !63
  %i.cb = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %i.cc = bitcast <2 x i64> %i.cb to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cd = bitcast <8 x i16> %12 to <4 x float>
  %i.ce = getelementptr inbounds nuw i8, ptr %.042.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 1, !tbaa !63
  %i.cg = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %i.ch = bitcast <2 x i64> %i.cg to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ci = bitcast <8 x i16> %13 to <4 x float>
  %i.cj = getelementptr inbounds nuw i8, ptr %.042.i, i64 24
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !63
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %14 to <4 x float>
  %i.co = getelementptr inbounds nuw i8, ptr %.042.i, i64 32
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !63
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = bitcast <2 x i64> %i.cq to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cs = bitcast <8 x i16> %15 to <4 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.042.i, i64 40
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !63
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %16 to <4 x float>
  %i.cy = getelementptr inbounds nuw i8, ptr %.042.i, i64 48
  %i.cz = load i64, ptr %i.cy, align 1, !tbaa !63
  %i.da = insertelement <2 x i64> poison, i64 %i.cz, i64 0
  %i.db = bitcast <2 x i64> %i.da to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dc = bitcast <8 x i16> %17 to <4 x float>
  %i.dd = getelementptr inbounds nuw i8, ptr %.042.i, i64 56
  %i.de = load i64, ptr %i.dd, align 1, !tbaa !63
  %i.df = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %i.dg = bitcast <2 x i64> %i.df to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dh = bitcast <8 x i16> %18 to <4 x float>
  %i.di = fmul fast <4 x float> %.074.i, %i.by    ; 2 uses
  %i.dj = fmul fast <4 x float> %.074.i, %i.cd    ; 2 uses
  %i.dk = fmul fast <4 x float> %.074.i, %i.ci    ; 2 uses
  %i.dl = fmul fast <4 x float> %.074.i, %i.cn    ; 2 uses
  %i.dm = fmul fast <4 x float> %.074.i, %i.cs    ; 2 uses
  %i.dn = fmul fast <4 x float> %.074.i, %i.cx    ; 2 uses
  %i.do = fmul fast <4 x float> %.074.i, %i.dc    ; 2 uses
  %i.dp = fmul fast <4 x float> %.074.i, %i.dh    ; 2 uses
  %i.dq = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.di)
  %i.dr = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dm)
  %i.ds = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dk)
  %i.dt = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.do)
  %i.du = fadd fast <4 x float> %i.dq, %i.di
  %i.dv = fadd fast <4 x float> %i.dr, %i.dm
  %i.dw = fadd fast <4 x float> %i.ds, %i.dk
  %i.dx = fadd fast <4 x float> %i.dt, %i.do
  %i.dy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.du)
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dv)
  %i.ea = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dw)
  %i.eb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dx)
  %i.ec = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dy, <4 x i32> %i.dz)
  %i.ed = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ea, <4 x i32> %i.eb)
  %i.ee = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ec, <8 x i16> splat (i16 -127))
  %i.ef = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ee, <8 x i16> splat (i16 127))
  %i.eg = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ed, <8 x i16> splat (i16 -127))
  %i.eh = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.eg, <8 x i16> splat (i16 127))
  %i.ei = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ef, <8 x i16> %i.eh) ; 2 uses
  %i.ej = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dj)
  %i.ek = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dn)
  %i.el = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dl)
  %i.em = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dp)
  %i.en = fadd fast <4 x float> %i.ej, %i.dj
  %i.eo = fadd fast <4 x float> %i.ek, %i.dn
  %i.ep = fadd fast <4 x float> %i.el, %i.dl
  %i.eq = fadd fast <4 x float> %i.em, %i.dp
  %i.er = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.en)
  %i.es = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.et = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ep)
  %i.eu = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eq)
  %i.ev = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.er, <4 x i32> %i.es)
  %i.ew = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.et, <4 x i32> %i.eu)
  %i.ex = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ev, <8 x i16> splat (i16 -127))
  %i.ey = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ex, <8 x i16> splat (i16 127))
  %i.ez = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> splat (i16 -127))
  %i.fa = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ez, <8 x i16> splat (i16 127))
  %i.fb = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ey, <8 x i16> %i.fa) ; 2 uses
  %i.fc = shufflevector <16 x i8> %i.ei, <16 x i8> %i.fb, <16 x i32> <i32 0, i32 16, i32 8, i32 24, i32 1, i32 17, i32 9, i32 25, i32 2, i32 18, i32 10, i32 26, i32 3, i32 19, i32 11, i32 27>
  %i.fd = shufflevector <16 x i8> %i.ei, <16 x i8> %i.fb, <16 x i32> <i32 4, i32 20, i32 12, i32 28, i32 5, i32 21, i32 13, i32 29, i32 6, i32 22, i32 14, i32 30, i32 7, i32 23, i32 15, i32 31>
  %i.fe = bitcast <16 x i8> %i.fc to <4 x i32>    ; 2 uses
  %i.ff = bitcast <16 x i8> %i.fd to <4 x i32>    ; 2 uses
  %i.fg = shufflevector <4 x i32> %i.fe, <4 x i32> %i.ff, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.fh = shufflevector <4 x i32> %i.fe, <4 x i32> %i.ff, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.fi = bitcast <4 x i32> %i.fg to <2 x double> ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  store double %i.fj, ptr %.06641.i, align 1, !tbaa !63
  %i.fk = extractelement <2 x double> %i.fi, i64 1
  store double %i.fk, ptr %.06840.i, align 1, !tbaa !63
  %i.fl = bitcast <4 x i32> %i.fh to <2 x double> ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0
  store double %i.fm, ptr %.07039.i, align 1, !tbaa !63
  %i.fn = extractelement <2 x double> %i.fl, i64 1
  store double %i.fn, ptr %.07238.i, align 1, !tbaa !63
  %i.fo = getelementptr inbounds nuw i8, ptr %.042.i, i64 64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.06641.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.06840.i, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.07039.i, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.07238.i, i64 8 ; 2 uses
  %i.ft = add nuw nsw i32 %.07537.i, 8            ; 2 uses
  %i.fu = or disjoint i32 %i.ft, 7
  %i.fv = icmp slt i32 %i.fu, %i.bm
  br i1 %i.fv, label %.lr.ph.i, label %.preheader.loopexit.i, !llvm.loop !9

.lr.ph54.i:                                       ; preds = %.preheader.i, %.lr.ph54.i
  %.153.i = phi ptr [ %i.gm, %.lr.ph54.i ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %.16752.i = phi ptr [ %i.gn, %.lr.ph54.i ], [ %.066.lcssa.i, %.preheader.i ] ; 2 uses
  %.16951.i = phi ptr [ %i.go, %.lr.ph54.i ], [ %.068.lcssa.i, %.preheader.i ] ; 2 uses
  %.17150.i = phi ptr [ %i.gp, %.lr.ph54.i ], [ %.070.lcssa.i, %.preheader.i ] ; 2 uses
  %.17349.i = phi ptr [ %i.gq, %.lr.ph54.i ], [ %.072.lcssa.i, %.preheader.i ] ; 2 uses
  %.17648.i = phi i32 [ %i.gr, %.lr.ph54.i ], [ %.075.lcssa.i, %.preheader.i ]
  %i.fw = load i64, ptr %.153.i, align 1, !tbaa !63
  %i.fx = insertelement <2 x i64> poison, i64 %i.fw, i64 0
  %i.fy = bitcast <2 x i64> %i.fx to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fz = bitcast <8 x i16> %19 to <4 x float>
  %i.ga = fmul fast <4 x float> %.074.i, %i.fz    ; 2 uses
  %i.gb = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ga)
  %i.gc = fadd fast <4 x float> %i.gb, %i.ga
  %i.gd = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gc)
  %i.ge = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> poison, <4 x i32> %i.gd)
  %i.gf = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ge, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 -127, i16 -127, i16 -127, i16 -127>)
  %i.gg = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.gf, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 127, i16 127, i16 127, i16 127>)
  %i.gh = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.gg, <8 x i16> poison) ; 4 uses
  %i.gi = extractelement <16 x i8> %i.gh, i64 4
  store i8 %i.gi, ptr %.16752.i, align 1, !tbaa !63
  %i.gj = extractelement <16 x i8> %i.gh, i64 5
  store i8 %i.gj, ptr %.16951.i, align 1, !tbaa !63
  %i.gk = extractelement <16 x i8> %i.gh, i64 6
  store i8 %i.gk, ptr %.17150.i, align 1, !tbaa !63
  %i.gl = extractelement <16 x i8> %i.gh, i64 7
  store i8 %i.gl, ptr %.17349.i, align 1, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %.153.i, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.16752.i, i64 1
  %i.go = getelementptr inbounds nuw i8, ptr %.16951.i, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.17150.i, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.17349.i, i64 1
  %i.gr = add nuw nsw i32 %.17648.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gr, %i.bm
  br i1 %exitcond.not.i, label %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, label %.lr.ph54.i, !llvm.loop !10

_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit: ; preds = %.lr.ph54.i, %.preheader.i
  %.not.i61 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit
  %i.gs = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.h, label %_ZN4ncnn3MatD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %.not3.i62 = icmp eq ptr %.sroa.2180.0, null
  br i1 %.not3.i62, label %_ZN4ncnnL8fastFreeEPv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gu = load ptr, ptr %.sroa.2180.0, align 8, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2180.0, ptr noundef nonnull %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.j, !inline_history !0

_ZN4ncnnL8fastFreeEPv.exit:                       ; preds = %bb.h
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL8fastFreeEPv.exit, %bb.g, %_ZN4ncnnL22quantize_bf16_pack4to1EPKtPaS2_S2_S2_RKNS_3MatEi.exit, %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gz = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ha = sext i32 %i.gz to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ha
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit40, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22quantize_forward_bf16sERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not76 = icmp sgt i32 %i.k, %i.j
  br i1 %.not76, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit28.lr.ph

_ZN4ncnn3MatD2Ev.exit28.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  br label %_ZN4ncnn3MatD2Ev.exit28

_ZN4ncnn3MatD2Ev.exit28:                          ; preds = %_ZN4ncnn3MatD2Ev.exit28.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3MatD2Ev.exit28.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29, !noalias !158
  %i.v = load i64, ptr %i.l, align 8, !tbaa !30, !noalias !158
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !158
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !29, !noalias !159
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !30, !noalias !159
  %i.ac = mul i64 %i.ab, %indvars.iv
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !159
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ag = load i32, ptr %5, align 4, !tbaa !39
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %_ZNK4ncnn3Mat5rangeEii.exit, label %bb.c

_ZNK4ncnn3Mat5rangeEii.exit:                      ; preds = %_ZN4ncnn3MatD2Ev.exit28
  %i.ai = load i32, ptr %7, align 4, !tbaa !39    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.aj
  %i.al = load ptr, ptr %6, align 8, !tbaa !29, !noalias !160
  %i.am = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !160
  %i.an = mul i64 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !28, !noalias !160
  br label %_ZN4ncnn3Mat6addrefEv.exit

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit28
  %i.aq = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %i.at = load i32, ptr %i.r, align 4, !tbaa !38  ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.d, %bb.c, %_ZNK4ncnn3Mat5rangeEii.exit
  %.sroa.27.0 = phi i32 [ %i.ai, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.at, %bb.c ], [ %i.at, %bb.d ]
  %.sroa.2147.0 = phi ptr [ %i.ap, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.as, %bb.c ], [ %i.as, %bb.d ] ; 3 uses
  %.sroa.8.0 = phi ptr [ null, %_ZNK4ncnn3Mat5rangeEii.exit ], [ null, %bb.c ], [ %i.ar, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.ao, %_ZNK4ncnn3Mat5rangeEii.exit ], [ %i.aq, %bb.c ], [ %i.aq, %bb.d ] ; 4 uses
  %i.av = load i32, ptr %8, align 4, !tbaa !39
  %i.aw = load i32, ptr %9, align 4, !tbaa !39
  %i.ax = mul nsw i32 %i.aw, %i.av
  %i.ay = load i32, ptr %10, align 4, !tbaa !39
  %i.az = mul nsw i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %7, align 4, !tbaa !39
  call fastcc void @_ZN4ncnnL13quantize_bf16EPKtPaRKNS_3MatEii(ptr noundef %i.z, ptr noundef %i.af, ptr %.sroa.0.0, i32 %.sroa.27.0, i32 noundef %i.az, i32 noundef %i.ba)
  %.not.i34 = icmp eq ptr %.sroa.8.0, null
  br i1 %.not.i34, label %_ZN4ncnn3MatD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  %i.bb = atomicrmw add ptr %.sroa.8.0, i32 -1 acq_rel, align 4
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %.not3.i35 = icmp eq ptr %.sroa.2147.0, null
  br i1 %.not3.i35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %.sroa.2147.0, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.2147.0, ptr noundef %.sroa.0.0)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i38 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %.sroa.0.0) #5
  br label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
end_hunk_0
