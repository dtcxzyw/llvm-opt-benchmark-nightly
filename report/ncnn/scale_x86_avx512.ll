Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/scale_x86_avx512?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4ncnn16Scale_x86_avx51215forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.9:bb.a
  br i1 %cmp.n284, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3192.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %i.fy, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  %.7191.ph = phi ptr [ %.6.lcssa, %iter.check ], [ %i.ga, %vec.epilog.iter.check ], [ %i.gn, %vec.epilog.middle.block ]
  br label %.lr.ph193

.lr.ph187:                                        ; preds = %.preheader148, %.lr.ph187
  %.2186 = phi i32 [ %i.gu, %.lr.ph187 ], [ %.1.lcssa, %.preheader148 ]
  %.6185 = phi ptr [ %i.gt, %.lr.ph187 ], [ %.5.lcssa, %.preheader148 ] ; 3 uses
  %i.gr = load <4 x float>, ptr %.6185, align 1, !tbaa !63
  %i.gs = fmul fast <4 x float> %i.gr, %.ph151
  store <4 x float> %i.gs, ptr %.6185, align 1, !tbaa !63
  %i.gt = getelementptr inbounds nuw i8, ptr %.6185, i64 16 ; 2 uses
  %i.gu = add nuw nsw i32 %.2186, 4               ; 3 uses
  %i.gv = or disjoint i32 %i.gu, 3
  %i.gw = load i32, ptr %8, align 4, !tbaa !33    ; 2 uses
  %i.gx = icmp slt i32 %i.gv, %i.gw
  br i1 %i.gx, label %.lr.ph187, label %.preheader, !llvm.loop !119

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %.lr.ph193
  %.3192 = phi i32 [ %i.hb, %.lr.ph193 ], [ %.3192.ph, %.lr.ph193.preheader ]
  %.7191 = phi ptr [ %i.ha, %.lr.ph193 ], [ %.7191.ph, %.lr.ph193.preheader ] ; 3 uses
  %i.gy = load float, ptr %.7191, align 4, !tbaa !56
  %i.gz = fmul fast float %i.gy, %i.y
  store float %i.gz, ptr %.7191, align 4, !tbaa !56
  %i.ha = getelementptr inbounds nuw i8, ptr %.7191, i64 4
  %i.hb = add nuw nsw i32 %.3192, 1               ; 2 uses
  %exitcond213.not = icmp eq i32 %i.hb, %.lcssa157
  br i1 %exitcond213.not, label %.loopexit, label %.lr.ph193, !llvm.loop !120

.loopexit:                                        ; preds = %.lr.ph174, %.lr.ph193, %middle.block303, %vec.epilog.middle.block321, %middle.block, %vec.epilog.middle.block, %.preheader153, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond215.not = icmp eq i32 %i.p, %lftr.wideiv
  br i1 %exitcond215.not, label %._crit_edge, label %.noexc

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16Scale_x86_avx51221forward_inplace_bf16sERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not31 = icmp sgt i32 %i.k, %i.j
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.o = sext i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !22
  %i.q = load i32, ptr %i.l, align 4, !tbaa !31
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %indvars.iv, %i.r
  %i.t = load i64, ptr %i.m, align 8, !tbaa !30
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !38
  %i.x = load i32, ptr %5, align 4, !tbaa !33     ; 6 uses
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %indvars.iv, %i.y            ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z ; 6 uses
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !51
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %7, align 8, !tbaa !38
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %8, align 4, !tbaa !33
  invoke fastcc void @_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii(ptr noundef %i.v, ptr noundef %i.aa, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.x)
          to label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.af = load i32, ptr %8, align 4, !tbaa !33    ; 11 uses
  %i.ag = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN4ncnn34scale_bf16s_no_bias_sse_avx512bf16EPtPKfii(ptr noundef %i.v, ptr noundef %i.aa, i32 noundef %i.af, i32 noundef %i.x)
          to label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit unwind label %bb.n

bb.g:                                             ; preds = %.noexc
  %i.ah = icmp eq i32 %i.x, 4
  br i1 %i.ah, label %.thread56.i, label %bb.h

.thread56.i:                                      ; preds = %bb.g
  %i.ai = load <4 x float>, ptr %i.aa, align 1    ; 3 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ak = extractelement <4 x float> %i.ai, i64 0
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = load float, ptr %i.aa, align 4, !tbaa !56 ; 2 uses
  %i.am = insertelement <4 x float> poison, float %i.al, i64 0 ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ao = icmp eq i32 %i.x, 8
  br i1 %i.ao, label %.thread55.i, label %bb.i

.thread55.i:                                      ; preds = %bb.h
  %i.ap = load <8 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.aq = extractelement <8 x float> %i.ap, i64 0
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.as = icmp eq i32 %i.x, 16
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load <16 x float>, ptr %i.aa, align 4   ; 2 uses
  %i.au = extractelement <16 x float> %i.at, i64 0
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %.thread55.i, %.thread56.i
  %i.av = phi float [ %i.aq, %.thread55.i ], [ %i.al, %bb.i ], [ %i.ak, %.thread56.i ]
  %i.aw = phi <8 x float> [ %i.ap, %.thread55.i ], [ %i.ar, %bb.i ], [ %i.aj, %.thread56.i ] ; 2 uses
  %i.ax = phi <4 x float> [ %i.an, %.thread55.i ], [ %i.an, %bb.i ], [ %i.ai, %.thread56.i ]
  %i.ay = shufflevector <8 x float> %i.aw, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = phi float [ %i.au, %bb.j ], [ %i.av, %bb.k ] ; 3 uses
  %i.ba = phi <8 x float> [ %i.ar, %bb.j ], [ %i.aw, %bb.k ]
  %i.bb = phi <4 x float> [ %i.an, %bb.j ], [ %i.ax, %bb.k ]
  %i.bc = phi fast <16 x float> [ %i.at, %bb.j ], [ %i.ay, %bb.k ]
  %i.bd = icmp sgt i32 %i.af, 15
  br i1 %i.bd, label %.lr.ph.i, label %.preheader58.i

.preheader58.loopexit.i:                          ; preds = %.lr.ph.i
  %i.be = and i32 %i.af, 2147483632
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.loopexit.i, %bb.l
  %.037.lcssa.i = phi ptr [ %i.v, %bb.l ], [ %i.bw, %.preheader58.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.l ], [ %i.be, %.preheader58.loopexit.i ] ; 3 uses
  %i.bf = or disjoint i32 %.0.lcssa.i, 7
  %i.bg = icmp slt i32 %i.bf, %i.af
  br i1 %i.bg, label %.lr.ph64.i, label %.preheader57.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.060.i = phi i32 [ %i.bx, %.lr.ph.i ], [ 0, %bb.l ]
  %.03759.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.v, %bb.l ] ; 3 uses
  %i.bh = load <16 x i16>, ptr %.03759.i, align 1, !tbaa !63 ; 2 uses
  %9 = shufflevector <16 x i16> %i.bh, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %10 = shufflevector <16 x i16> %i.bh, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bi = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bj = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bk = bitcast <16 x i16> %i.bi to <8 x i32>
  %i.bl = bitcast <16 x i16> %i.bj to <8 x i32>
  %i.bm = shufflevector <8 x i32> %i.bk, <8 x i32> %i.bl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bn = bitcast <16 x i32> %i.bm to <16 x float>
  %i.bo = fmul fast <16 x float> %i.bc, %i.bn
  %i.bp = bitcast <16 x float> %i.bo to <16 x i32>
  %i.bq = lshr <16 x i32> %i.bp, splat (i32 16)   ; 2 uses
  %i.br = shufflevector <16 x i32> %i.bq, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bs = shufflevector <16 x i32> %i.bq, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bt = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.br, <8 x i32> %i.bs)
  %i.bu = bitcast <16 x i16> %i.bt to <4 x i64>
  %i.bv = shufflevector <4 x i64> %i.bu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bv, ptr %.03759.i, align 1, !tbaa !63
  %i.bw = getelementptr inbounds nuw i8, ptr %.03759.i, i64 32 ; 2 uses
  %i.bx = add nuw nsw i32 %.060.i, 16             ; 2 uses
  %i.by = or disjoint i32 %i.bx, 15
  %i.bz = icmp slt i32 %i.by, %i.af
  br i1 %i.bz, label %.lr.ph.i, label %.preheader58.loopexit.i, !llvm.loop !1

.preheader57.i:                                   ; preds = %.lr.ph64.i, %.preheader58.i
  %.138.lcssa.i = phi ptr [ %.037.lcssa.i, %.preheader58.i ], [ %i.cl, %.lr.ph64.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader58.i ], [ %i.cm, %.lr.ph64.i ] ; 3 uses
  %i.ca = or disjoint i32 %.1.lcssa.i, 3
  %i.cb = icmp slt i32 %i.ca, %i.af
  br i1 %i.cb, label %.lr.ph69.i, label %.preheader.i

.lr.ph64.i:                                       ; preds = %.preheader58.i, %.lr.ph64.i
  %.163.i = phi i32 [ %i.cm, %.lr.ph64.i ], [ %.0.lcssa.i, %.preheader58.i ]
  %.13862.i = phi ptr [ %i.cl, %.lr.ph64.i ], [ %.037.lcssa.i, %.preheader58.i ] ; 3 uses
  %i.cc = load <8 x i16>, ptr %.13862.i, align 1, !tbaa !63 ; 2 uses
  %11 = shufflevector <8 x i16> %i.cc, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %12 = shufflevector <8 x i16> %i.cc, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.cd = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ce = bitcast <16 x i16> %i.cd to <8 x float>
  %i.cf = fmul fast <8 x float> %i.ba, %i.ce
  %i.cg = bitcast <8 x float> %i.cf to <8 x i32>
  %i.ch = lshr <8 x i32> %i.cg, splat (i32 16)    ; 2 uses
  %i.ci = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cj = shufflevector <8 x i32> %i.ch, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ck = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ci, <4 x i32> %i.cj)
  store <8 x i16> %i.ck, ptr %.13862.i, align 1, !tbaa !63
  %i.cl = getelementptr inbounds nuw i8, ptr %.13862.i, i64 16 ; 2 uses
  %i.cm = add nuw nsw i32 %.163.i, 8              ; 3 uses
  %i.cn = or disjoint i32 %i.cm, 7
  %i.co = icmp slt i32 %i.cn, %i.af
  br i1 %i.co, label %.lr.ph64.i, label %.preheader57.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.lr.ph69.i, %.preheader57.i
  %.239.lcssa.i = phi ptr [ %.138.lcssa.i, %.preheader57.i ], [ %i.fd, %.lr.ph69.i ] ; 5 uses
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader57.i ], [ %i.fe, %.lr.ph69.i ] ; 5 uses
  %i.cp = icmp slt i32 %.2.lcssa.i, %i.af
  br i1 %i.cp, label %iter.check, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.cq = xor i32 %.2.lcssa.i, -1
  %i.cr = add i32 %i.af, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cr, 15
  br i1 %min.iters.check, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.cr, 127
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.ct, 112
  %n.vec = and i64 %i.ct, 8589934464              ; 5 uses
  %i.cv = trunc i64 %n.vec to i32
  %i.cw = add i32 %.2.lcssa.i, %i.cv
  %i.cx = shl nuw nsw i64 %n.vec, 1
  %i.cy = getelementptr i8, ptr %.239.lcssa.i, i64 %i.cx
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.az, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.239.lcssa.i, i64 %i.cz ; 5 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !54
  %wide.load50 = load <32 x i16>, ptr %i.da, align 2, !tbaa !54
  %wide.load51 = load <32 x i16>, ptr %i.db, align 2, !tbaa !54
  %wide.load52 = load <32 x i16>, ptr %i.dc, align 2, !tbaa !54
  %i.dd = zext <32 x i16> %wide.load to <32 x i32>
  %i.de = zext <32 x i16> %wide.load50 to <32 x i32>
  %i.df = zext <32 x i16> %wide.load51 to <32 x i32>
  %i.dg = zext <32 x i16> %wide.load52 to <32 x i32>
  %i.dh = shl nuw <32 x i32> %i.dd, splat (i32 16)
  %i.di = shl nuw <32 x i32> %i.de, splat (i32 16)
  %i.dj = shl nuw <32 x i32> %i.df, splat (i32 16)
  %i.dk = shl nuw <32 x i32> %i.dg, splat (i32 16)
  %i.dl = bitcast <32 x i32> %i.dh to <32 x float>
  %i.dm = bitcast <32 x i32> %i.di to <32 x float>
  %i.dn = bitcast <32 x i32> %i.dj to <32 x float>
  %i.do = bitcast <32 x i32> %i.dk to <32 x float>
  %i.dp = fmul fast <32 x float> %broadcast.splat, %i.dl
  %i.dq = fmul fast <32 x float> %broadcast.splat, %i.dm
  %i.dr = fmul fast <32 x float> %broadcast.splat, %i.dn
  %i.ds = fmul fast <32 x float> %broadcast.splat, %i.do
  %i.dt = bitcast <32 x float> %i.dp to <32 x i32>
  %i.du = bitcast <32 x float> %i.dq to <32 x i32>
  %i.dv = bitcast <32 x float> %i.dr to <32 x i32>
  %i.dw = bitcast <32 x float> %i.ds to <32 x i32>
  %i.dx = lshr <32 x i32> %i.dt, splat (i32 16)
  %i.dy = lshr <32 x i32> %i.du, splat (i32 16)
  %i.dz = lshr <32 x i32> %i.dv, splat (i32 16)
  %i.ea = lshr <32 x i32> %i.dw, splat (i32 16)
  %i.eb = trunc nuw <32 x i32> %i.dx to <32 x i16>
  %i.ec = trunc nuw <32 x i32> %i.dy to <32 x i16>
  %i.ed = trunc nuw <32 x i32> %i.dz to <32 x i16>
  %i.ee = trunc nuw <32 x i32> %i.ea to <32 x i16>
  store <32 x i16> %i.eb, ptr %next.gep, align 2, !tbaa !54
  store <32 x i16> %i.ec, ptr %i.da, align 2, !tbaa !54
  store <32 x i16> %i.ed, ptr %i.db, align 2, !tbaa !54
  store <32 x i16> %i.ee, ptr %i.dc, align 2, !tbaa !54
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.ct, 8589934576            ; 4 uses
  %i.eg = trunc i64 %n.vec53 to i32
  %i.eh = add i32 %.2.lcssa.i, %i.eg
  %i.ei = shl nuw nsw i64 %n.vec53, 1
  %i.ej = getelementptr i8, ptr %.239.lcssa.i, i64 %i.ei
  %broadcast.splatinsert54 = insertelement <16 x float> poison, float %i.az, i64 0
  %broadcast.splat55 = shufflevector <16 x float> %broadcast.splatinsert54, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = shl i64 %index56, 1
  %next.gep57 = getelementptr i8, ptr %.239.lcssa.i, i64 %i.ek ; 2 uses
  %wide.load58 = load <16 x i16>, ptr %next.gep57, align 2, !tbaa !54
  %i.el = zext <16 x i16> %wide.load58 to <16 x i32>
  %i.em = shl nuw <16 x i32> %i.el, splat (i32 16)
  %i.en = bitcast <16 x i32> %i.em to <16 x float>
  %i.eo = fmul fast <16 x float> %broadcast.splat55, %i.en
  %i.ep = bitcast <16 x float> %i.eo to <16 x i32>
  %i.eq = lshr <16 x i32> %i.ep, splat (i32 16)
  %i.er = trunc nuw <16 x i32> %i.eq to <16 x i16>
  store <16 x i16> %i.er, ptr %next.gep57, align 2, !tbaa !54
  %index.next59 = add nuw i64 %index56, 16        ; 2 uses
  %i.es = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %i.ct, %n.vec53
  br i1 %cmp.n60, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.373.i.ph = phi i32 [ %.2.lcssa.i, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.eh, %vec.epilog.middle.block ]
  %.34072.i.ph = phi ptr [ %.239.lcssa.i, %iter.check ], [ %i.cy, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %.lr.ph74.i

.lr.ph69.i:                                       ; preds = %.preheader57.i, %.lr.ph69.i
  %.268.i = phi i32 [ %i.fe, %.lr.ph69.i ], [ %.1.lcssa.i, %.preheader57.i ]
  %.23967.i = phi ptr [ %i.fd, %.lr.ph69.i ], [ %.138.lcssa.i, %.preheader57.i ] ; 3 uses
  %i.et = load i64, ptr %.23967.i, align 1, !tbaa !63
  %i.eu = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %i.ev = bitcast <2 x i64> %i.eu to <8 x i16>
  %13 = shufflevector <8 x i16> %i.ev, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ew = bitcast <8 x i16> %13 to <4 x float>
  %i.ex = fmul fast <4 x float> %i.bb, %i.ew
  %i.ey = bitcast <4 x float> %i.ex to <4 x i32>
  %i.ez = lshr <4 x i32> %i.ey, splat (i32 16)
  %i.fa = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ez, <4 x i32> poison)
  %i.fb = bitcast <8 x i16> %i.fa to <2 x i64>
  %i.fc = extractelement <2 x i64> %i.fb, i64 0
  store i64 %i.fc, ptr %.23967.i, align 1, !tbaa !63
  %i.fd = getelementptr inbounds nuw i8, ptr %.23967.i, i64 8 ; 2 uses
  %i.fe = add nuw nsw i32 %.268.i, 4              ; 3 uses
  %i.ff = or disjoint i32 %i.fe, 3
  %i.fg = icmp slt i32 %i.ff, %i.af
  br i1 %i.fg, label %.lr.ph69.i, label %.preheader.i, !llvm.loop !3

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %.373.i = phi i32 [ %i.fq, %.lr.ph74.i ], [ %.373.i.ph, %.lr.ph74.i.preheader ]
  %.34072.i = phi ptr [ %i.fp, %.lr.ph74.i ], [ %.34072.i.ph, %.lr.ph74.i.preheader ] ; 3 uses
  %i.fh = load i16, ptr %.34072.i, align 2, !tbaa !54
  %i.fi = zext i16 %i.fh to i32
  %i.fj = shl nuw i32 %i.fi, 16
  %i.fk = bitcast i32 %i.fj to float
  %i.fl = fmul fast float %i.az, %i.fk
  %i.fm = bitcast float %i.fl to i32
  %i.fn = lshr i32 %i.fm, 16
  %i.fo = trunc nuw i32 %i.fn to i16
  store i16 %i.fo, ptr %.34072.i, align 2, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %.34072.i, i64 2
  %i.fq = add nuw nsw i32 %.373.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fq, %i.af
  br i1 %exitcond.not.i, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %.lr.ph74.i, !llvm.loop !124

_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit:  ; preds = %.lr.ph74.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.f, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fr = load i32, ptr %i.b, align 4, !tbaa !33
  %i.fs = sext i32 %i.fr to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fs
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #18
  unreachable
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #13 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn26scale_bf16s_sse_avx512bf16EPtPKfS2_ii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %4, 4
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load float, ptr %1, align 4, !tbaa !56   ; 2 uses
  %i.d = insertelement <4 x float> poison, float %i.c, i64 0 ; 3 uses
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.f = load float, ptr %2, align 4, !tbaa !56   ; 2 uses
  %i.g = insertelement <4 x float> poison, float %i.f, i64 0 ; 2 uses
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.i = icmp eq i32 %4, 8
  br i1 %i.i, label %.thread77, label %bb.e

.thread77:                                        ; preds = %bb.d
  %i.j = load <8 x float>, ptr %1, align 4        ; 3 uses
  %i.k = load <8 x float>, ptr %2, align 4        ; 2 uses
  %i.l = shufflevector <8 x float> %i.j, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.m = extractelement <8 x float> %i.j, i64 0
  %i.n = extractelement <8 x float> %i.k, i64 0
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = shufflevector <4 x float> %i.d, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.p = shufflevector <4 x float> %i.g, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.q = icmp eq i32 %4, 16
  br i1 %i.q, label %bb.g, label %.thread80

.thread80:                                        ; preds = %bb.e
  %i.r = shufflevector <4 x float> %i.d, <4 x float> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.s = load <4 x float>, ptr %1, align 1        ; 4 uses
  %i.t = load <4 x float>, ptr %2, align 1        ; 3 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.v = shufflevector <4 x float> %i.t, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.w = shufflevector <4 x float> %i.s, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.x = extractelement <4 x float> %i.s, i64 0
  %i.y = extractelement <4 x float> %i.t, i64 0
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = load <16 x float>, ptr %1, align 4       ; 2 uses
  %i.aa = load <16 x float>, ptr %2, align 4      ; 2 uses
  %i.ab = extractelement <16 x float> %i.z, i64 0
  %i.ac = extractelement <16 x float> %i.aa, i64 0
  br label %bb.i

bb.h:                                             ; preds = %.thread77, %bb.f, %.thread80
  %i.ad = phi float [ %i.f, %.thread80 ], [ %i.y, %bb.f ], [ %i.n, %.thread77 ]
  %i.ae = phi float [ %i.c, %.thread80 ], [ %i.x, %bb.f ], [ %i.m, %.thread77 ]
  %i.af = phi <16 x float> [ %i.r, %.thread80 ], [ %i.w, %bb.f ], [ %i.l, %.thread77 ]
  %i.ag = phi <8 x float> [ %i.o, %.thread80 ], [ %i.u, %bb.f ], [ %i.j, %.thread77 ]
  %i.ah = phi <4 x float> [ %i.e, %.thread80 ], [ %i.s, %bb.f ], [ %i.e, %.thread77 ]
  %i.ai = phi <4 x float> [ %i.h, %.thread80 ], [ %i.t, %bb.f ], [ %i.h, %.thread77 ]
  %i.aj = phi <8 x float> [ %i.p, %.thread80 ], [ %i.v, %bb.f ], [ %i.k, %.thread77 ] ; 2 uses
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = phi float [ %i.ac, %bb.g ], [ %i.ad, %bb.h ] ; 3 uses
  %i.am = phi float [ %i.ab, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %i.an = phi <16 x float> [ %i.z, %bb.g ], [ %i.af, %bb.h ]
  %i.ao = phi <8 x float> [ %i.o, %bb.g ], [ %i.ag, %bb.h ]
  %i.ap = phi <4 x float> [ %i.e, %bb.g ], [ %i.ah, %bb.h ]
  %i.aq = phi <4 x float> [ %i.h, %bb.g ], [ %i.ai, %bb.h ]
  %i.ar = phi <8 x float> [ %i.p, %bb.g ], [ %i.aj, %bb.h ]
  %i.as = phi fast <16 x float> [ %i.aa, %bb.g ], [ %i.ak, %bb.h ]
  %i.at = icmp sgt i32 %3, 15
  br i1 %i.at, label %.lr.ph, label %.preheader86

.preheader86.loopexit:                            ; preds = %.lr.ph
  %i.au = and i32 %3, 2147483632
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader86.loopexit, %bb.i
  %.048.lcssa = phi ptr [ %0, %bb.i ], [ %i.bm, %.preheader86.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ %i.au, %.preheader86.loopexit ] ; 3 uses
  %i.av = or disjoint i32 %.0.lcssa, 7
  %i.aw = icmp slt i32 %i.av, %3
  br i1 %i.aw, label %.lr.ph92, label %.preheader85

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.088 = phi i32 [ %i.bn, %.lr.ph ], [ 0, %bb.i ]
  %.04887 = phi ptr [ %i.bm, %.lr.ph ], [ %0, %bb.i ] ; 3 uses
  %i.ax = load <16 x i16>, ptr %.04887, align 1, !tbaa !63 ; 2 uses
  %5 = shufflevector <16 x i16> %i.ax, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %6 = shufflevector <16 x i16> %i.ax, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.ay = shufflevector <16 x i16> %5, <16 x i16> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.az = shufflevector <16 x i16> %5, <16 x i16> %6, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ba = bitcast <16 x i16> %i.ay to <8 x i32>
  %i.bb = bitcast <16 x i16> %i.az to <8 x i32>
  %i.bc = shufflevector <8 x i32> %i.ba, <8 x i32> %i.bb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = bitcast <16 x i32> %i.bc to <16 x float>
  %i.be = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bd, <16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.as)
  %i.bf = bitcast <16 x float> %i.be to <16 x i32>
  %i.bg = lshr <16 x i32> %i.bf, splat (i32 16)   ; 2 uses
  %i.bh = shufflevector <16 x i32> %i.bg, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bi = shufflevector <16 x i32> %i.bg, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bj = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bh, <8 x i32> %i.bi)
  %i.bk = bitcast <16 x i16> %i.bj to <4 x i64>
  %i.bl = shufflevector <4 x i64> %i.bk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bl, ptr %.04887, align 1, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %.04887, i64 32 ; 2 uses
  %i.bn = add nuw nsw i32 %.088, 16               ; 2 uses
  %i.bo = or disjoint i32 %i.bn, 15
  %i.bp = icmp slt i32 %i.bo, %3
  br i1 %i.bp, label %.lr.ph, label %.preheader86.loopexit, !llvm.loop !125

.preheader85:                                     ; preds = %.lr.ph92, %.preheader86
  %.149.lcssa = phi ptr [ %.048.lcssa, %.preheader86 ], [ %i.cb, %.lr.ph92 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader86 ], [ %i.cc, %.lr.ph92 ] ; 3 uses
  %i.bq = or disjoint i32 %.1.lcssa, 3
  %i.br = icmp slt i32 %i.bq, %3
  br i1 %i.br, label %.lr.ph97, label %.preheader

.lr.ph92:                                         ; preds = %.preheader86, %.lr.ph92
  %.191 = phi i32 [ %i.cc, %.lr.ph92 ], [ %.0.lcssa, %.preheader86 ]
  %.14990 = phi ptr [ %i.cb, %.lr.ph92 ], [ %.048.lcssa, %.preheader86 ] ; 3 uses
  %i.bs = load <8 x i16>, ptr %.14990, align 1, !tbaa !63 ; 2 uses
  %7 = shufflevector <8 x i16> %i.bs, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %8 = shufflevector <8 x i16> %i.bs, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.bt = shufflevector <8 x i16> %7, <8 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bu = bitcast <16 x i16> %i.bt to <8 x float>
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.ao, <8 x float> nofpclass(nan inf) %i.ar)
  %i.bw = bitcast <8 x float> %i.bv to <8 x i32>
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 16)    ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <8 x i32> %i.bx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ca = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.by, <4 x i32> %i.bz)
  store <8 x i16> %i.ca, ptr %.14990, align 1, !tbaa !63
  %i.cb = getelementptr inbounds nuw i8, ptr %.14990, i64 16 ; 2 uses
  %i.cc = add nuw nsw i32 %.191, 8                ; 3 uses
  %i.cd = or disjoint i32 %i.cc, 7
  %i.ce = icmp slt i32 %i.cd, %3
  br i1 %i.ce, label %.lr.ph92, label %.preheader85, !llvm.loop !126

.preheader:                                       ; preds = %.lr.ph97, %.preheader85
  %.250.lcssa = phi ptr [ %.149.lcssa, %.preheader85 ], [ %i.dx, %.lr.ph97 ] ; 5 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader85 ], [ %i.dy, %.lr.ph97 ] ; 5 uses
  %i.cf = icmp slt i32 %.2.lcssa, %3
  br i1 %i.cf, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.cg = xor i32 %.2.lcssa, -1
  %i.ch = add i32 %3, %i.cg                       ; 3 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ch, 7
  br i1 %min.iters.check, label %.lr.ph102.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123 = icmp ult i32 %i.ch, 31
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ck = and i64 %i.cj, 24
  %n.vec = and i64 %i.cj, 8589934560              ; 5 uses
  %i.cl = trunc i64 %n.vec to i32
  %i.cm = add i32 %.2.lcssa, %i.cl
  %i.cn = shl nuw nsw i64 %n.vec, 1
  %i.co = getelementptr i8, ptr %.250.lcssa, i64 %i.cn
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.am, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <32 x float> poison, float %i.al, i64 0
  %broadcast.splat125 = shufflevector <32 x float> %broadcast.splatinsert124, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.250.lcssa, i64 %i.cp ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !54
  %i.cq = zext <32 x i16> %wide.load to <32 x i32>
  %i.cr = shl nuw <32 x i32> %i.cq, splat (i32 16)
  %i.cs = bitcast <32 x i32> %i.cr to <32 x float>
  %i.ct = fmul fast <32 x float> %broadcast.splat, %i.cs
  %i.cu = fadd fast <32 x float> %i.ct, %broadcast.splat125
  %i.cv = bitcast <32 x float> %i.cu to <32 x i32>
  %i.cw = lshr <32 x i32> %i.cv, splat (i32 16)
  %i.cx = trunc nuw <32 x i32> %i.cw to <32 x i16>
  store <32 x i16> %i.cx, ptr %next.gep, align 2, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check, label %.lr.ph102.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %i.cj, 8589934584           ; 4 uses
  %i.cz = trunc i64 %n.vec126 to i32
  %i.da = add i32 %.2.lcssa, %i.cz
  %i.db = shl nuw nsw i64 %n.vec126, 1
  %i.dc = getelementptr i8, ptr %.250.lcssa, i64 %i.db
  %broadcast.splatinsert127 = insertelement <8 x float> poison, float %i.am, i64 0
  %broadcast.splat128 = shufflevector <8 x float> %broadcast.splatinsert127, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <8 x float> poison, float %i.al, i64 0
  %broadcast.splat130 = shufflevector <8 x float> %broadcast.splatinsert129, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 2 uses
  %i.dd = shl i64 %index131, 1
  %next.gep132 = getelementptr i8, ptr %.250.lcssa, i64 %i.dd ; 2 uses
  %wide.load133 = load <8 x i16>, ptr %next.gep132, align 2, !tbaa !54
  %i.de = zext <8 x i16> %wide.load133 to <8 x i32>
  %i.df = shl nuw <8 x i32> %i.de, splat (i32 16)
  %i.dg = bitcast <8 x i32> %i.df to <8 x float>
  %i.dh = fmul fast <8 x float> %broadcast.splat128, %i.dg
  %i.di = fadd fast <8 x float> %i.dh, %broadcast.splat130
  %i.dj = bitcast <8 x float> %i.di to <8 x i32>
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 16)
  %i.dl = trunc nuw <8 x i32> %i.dk to <8 x i16>
  store <8 x i16> %i.dl, ptr %next.gep132, align 2, !tbaa !54
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next134, %n.vec126
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !128

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %i.cj, %n.vec126
  br i1 %cmp.n135, label %.loopexit, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3101.ph = phi i32 [ %.2.lcssa, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  %.351100.ph = phi ptr [ %.250.lcssa, %iter.check ], [ %i.co, %vec.epilog.iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %.lr.ph102

.lr.ph97:                                         ; preds = %.preheader85, %.lr.ph97
  %.296 = phi i32 [ %i.dy, %.lr.ph97 ], [ %.1.lcssa, %.preheader85 ]
  %.25095 = phi ptr [ %i.dx, %.lr.ph97 ], [ %.149.lcssa, %.preheader85 ] ; 3 uses
  %i.dn = load i64, ptr %.25095, align 1, !tbaa !63
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = bitcast <2 x i64> %i.do to <8 x i16>
  %9 = shufflevector <8 x i16> %i.dp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.dq = bitcast <8 x i16> %9 to <4 x float>
  %i.dr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dq, <4 x float> nofpclass(nan inf) %i.ap, <4 x float> nofpclass(nan inf) %i.aq)
  %i.ds = bitcast <4 x float> %i.dr to <4 x i32>
  %i.dt = lshr <4 x i32> %i.ds, splat (i32 16)
  %i.du = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.dt, <4 x i32> poison)
  %i.dv = bitcast <8 x i16> %i.du to <2 x i64>
  %i.dw = extractelement <2 x i64> %i.dv, i64 0
  store i64 %i.dw, ptr %.25095, align 1, !tbaa !63
  %i.dx = getelementptr inbounds nuw i8, ptr %.25095, i64 8 ; 2 uses
  %i.dy = add nuw nsw i32 %.296, 4                ; 3 uses
  %i.dz = or disjoint i32 %i.dy, 3
  %i.ea = icmp slt i32 %i.dz, %3
  br i1 %i.ea, label %.lr.ph97, label %.preheader, !llvm.loop !129

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %.3101 = phi i32 [ %i.el, %.lr.ph102 ], [ %.3101.ph, %.lr.ph102.preheader ]
  %.351100 = phi ptr [ %i.ek, %.lr.ph102 ], [ %.351100.ph, %.lr.ph102.preheader ] ; 3 uses
  %i.eb = load i16, ptr %.351100, align 2, !tbaa !54
  %i.ec = zext i16 %i.eb to i32
  %i.ed = shl nuw i32 %i.ec, 16
  %i.ee = bitcast i32 %i.ed to float
  %i.ef = fmul fast float %i.am, %i.ee
  %i.eg = fadd fast float %i.ef, %i.al
  %i.eh = bitcast float %i.eg to i32
  %i.ei = lshr i32 %i.eh, 16
  %i.ej = trunc nuw i32 %i.ei to i16
  store i16 %i.ej, ptr %.351100, align 2, !tbaa !54
  %i.ek = getelementptr inbounds nuw i8, ptr %.351100, i64 2
  %i.el = add nuw nsw i32 %.3101, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.el, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph102, !llvm.loop !130

.loopexit:                                        ; preds = %.lr.ph102, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.b
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn16Scale_x86_avx51221forward_inplace_bf16sERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not40 = icmp sgt i32 %i.k, %i.j
  br i1 %.not40, label %._crit_edge, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.o = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit
  %indvars.iv = phi i64 [ %i.o, %.noexc.lr.ph ], [ %indvars.iv.next, %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit ] ; 4 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !22, !noalias !137
  %i.q = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !137
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !30, !noalias !137
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !38
  %i.w = load i32, ptr %5, align 4, !tbaa !33     ; 6 uses
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %indvars.iv, %i.x            ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y ; 6 uses
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !51
  %.not25 = icmp eq i32 %i.aa, 0
  br i1 %.not25, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ab = load ptr, ptr %7, align 8, !tbaa !38
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load i32, ptr %8, align 4, !tbaa !33
  invoke fastcc void @_ZN4ncnnL15scale_bf16s_sseEPtPKfS2_ii(ptr noundef %i.u, ptr noundef %i.z, ptr noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.w)
          to label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit unwind label %bb.m

bb.d:                                             ; preds = %.noexc
  %i.ae = load i32, ptr %8, align 4, !tbaa !33    ; 11 uses
  %i.af = invoke noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
          to label %.noexc29 unwind label %bb.m

.noexc29:                                         ; preds = %bb.d
  %.not.i28 = icmp eq i32 %i.af, 0
  br i1 %.not.i28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc29
  invoke void @_ZN4ncnn34scale_bf16s_no_bias_sse_avx512bf16EPtPKfii(ptr noundef %i.u, ptr noundef %i.z, i32 noundef %i.ae, i32 noundef %i.w)
          to label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit unwind label %bb.m

bb.f:                                             ; preds = %.noexc29
  %i.ag = icmp eq i32 %i.w, 4
  br i1 %i.ag, label %.thread56.i, label %bb.g

.thread56.i:                                      ; preds = %bb.f
  %i.ah = load <4 x float>, ptr %i.z, align 1     ; 3 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.aj = extractelement <4 x float> %i.ah, i64 0
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ak = load float, ptr %i.z, align 4, !tbaa !56 ; 2 uses
  %i.al = insertelement <4 x float> poison, float %i.ak, i64 0 ; 2 uses
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.an = icmp eq i32 %i.w, 8
  br i1 %i.an, label %.thread55.i, label %bb.h

.thread55.i:                                      ; preds = %bb.g
  %i.ao = load <8 x float>, ptr %i.z, align 4     ; 2 uses
  %i.ap = extractelement <8 x float> %i.ao, i64 0
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = shufflevector <4 x float> %i.al, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ar = icmp eq i32 %i.w, 16
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = load <16 x float>, ptr %i.z, align 4    ; 2 uses
  %i.at = extractelement <16 x float> %i.as, i64 0
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.thread55.i, %.thread56.i
  %i.au = phi float [ %i.ap, %.thread55.i ], [ %i.ak, %bb.h ], [ %i.aj, %.thread56.i ]
  %i.av = phi <8 x float> [ %i.ao, %.thread55.i ], [ %i.aq, %bb.h ], [ %i.ai, %.thread56.i ] ; 2 uses
  %i.aw = phi <4 x float> [ %i.am, %.thread55.i ], [ %i.am, %bb.h ], [ %i.ah, %.thread56.i ]
  %i.ax = shufflevector <8 x float> %i.av, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = phi float [ %i.at, %bb.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.az = phi <8 x float> [ %i.aq, %bb.i ], [ %i.av, %bb.j ]
  %i.ba = phi <4 x float> [ %i.am, %bb.i ], [ %i.aw, %bb.j ]
  %i.bb = phi fast <16 x float> [ %i.as, %bb.i ], [ %i.ax, %bb.j ]
  %i.bc = icmp sgt i32 %i.ae, 15
  br i1 %i.bc, label %.lr.ph.i, label %.preheader58.i

.preheader58.loopexit.i:                          ; preds = %.lr.ph.i
  %i.bd = and i32 %i.ae, 2147483632
  br label %.preheader58.i

.preheader58.i:                                   ; preds = %.preheader58.loopexit.i, %bb.k
  %.037.lcssa.i = phi ptr [ %i.u, %bb.k ], [ %i.bv, %.preheader58.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.bd, %.preheader58.loopexit.i ] ; 3 uses
  %i.be = or disjoint i32 %.0.lcssa.i, 7
  %i.bf = icmp slt i32 %i.be, %i.ae
  br i1 %i.bf, label %.lr.ph64.i, label %.preheader57.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.060.i = phi i32 [ %i.bw, %.lr.ph.i ], [ 0, %bb.k ]
  %.03759.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.u, %bb.k ] ; 3 uses
  %i.bg = load <16 x i16>, ptr %.03759.i, align 1, !tbaa !63 ; 2 uses
  %9 = shufflevector <16 x i16> %i.bg, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %10 = shufflevector <16 x i16> %i.bg, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.bh = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bi = shufflevector <16 x i16> %9, <16 x i16> %10, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bj = bitcast <16 x i16> %i.bh to <8 x i32>
  %i.bk = bitcast <16 x i16> %i.bi to <8 x i32>
  %i.bl = shufflevector <8 x i32> %i.bj, <8 x i32> %i.bk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bm = bitcast <16 x i32> %i.bl to <16 x float>
  %i.bn = fmul fast <16 x float> %i.bb, %i.bm
  %i.bo = bitcast <16 x float> %i.bn to <16 x i32>
  %i.bp = lshr <16 x i32> %i.bo, splat (i32 16)   ; 2 uses
  %i.bq = shufflevector <16 x i32> %i.bp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = shufflevector <16 x i32> %i.bp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bs = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bq, <8 x i32> %i.br)
  %i.bt = bitcast <16 x i16> %i.bs to <4 x i64>
  %i.bu = shufflevector <4 x i64> %i.bt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bu, ptr %.03759.i, align 1, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %.03759.i, i64 32 ; 2 uses
  %i.bw = add nuw nsw i32 %.060.i, 16             ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 15
  %i.by = icmp slt i32 %i.bx, %i.ae
  br i1 %i.by, label %.lr.ph.i, label %.preheader58.loopexit.i, !llvm.loop !1

.preheader57.i:                                   ; preds = %.lr.ph64.i, %.preheader58.i
  %.138.lcssa.i = phi ptr [ %.037.lcssa.i, %.preheader58.i ], [ %i.ck, %.lr.ph64.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader58.i ], [ %i.cl, %.lr.ph64.i ] ; 3 uses
  %i.bz = or disjoint i32 %.1.lcssa.i, 3
  %i.ca = icmp slt i32 %i.bz, %i.ae
  br i1 %i.ca, label %.lr.ph69.i, label %.preheader.i

.lr.ph64.i:                                       ; preds = %.preheader58.i, %.lr.ph64.i
  %.163.i = phi i32 [ %i.cl, %.lr.ph64.i ], [ %.0.lcssa.i, %.preheader58.i ]
  %.13862.i = phi ptr [ %i.ck, %.lr.ph64.i ], [ %.037.lcssa.i, %.preheader58.i ] ; 3 uses
  %i.cb = load <8 x i16>, ptr %.13862.i, align 1, !tbaa !63 ; 2 uses
  %11 = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %12 = shufflevector <8 x i16> %i.cb, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.cc = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cd = bitcast <16 x i16> %i.cc to <8 x float>
  %i.ce = fmul fast <8 x float> %i.az, %i.cd
  %i.cf = bitcast <8 x float> %i.ce to <8 x i32>
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 16)    ; 2 uses
  %i.ch = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <8 x i32> %i.cg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cj = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ch, <4 x i32> %i.ci)
  store <8 x i16> %i.cj, ptr %.13862.i, align 1, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %.13862.i, i64 16 ; 2 uses
  %i.cl = add nuw nsw i32 %.163.i, 8              ; 3 uses
  %i.cm = or disjoint i32 %i.cl, 7
  %i.cn = icmp slt i32 %i.cm, %i.ae
  br i1 %i.cn, label %.lr.ph64.i, label %.preheader57.i, !llvm.loop !2

.preheader.i:                                     ; preds = %.lr.ph69.i, %.preheader57.i
  %.239.lcssa.i = phi ptr [ %.138.lcssa.i, %.preheader57.i ], [ %i.fc, %.lr.ph69.i ] ; 5 uses
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader57.i ], [ %i.fd, %.lr.ph69.i ] ; 5 uses
  %i.co = icmp slt i32 %.2.lcssa.i, %i.ae
  br i1 %i.co, label %iter.check, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit

iter.check:                                       ; preds = %.preheader.i
  %i.cp = xor i32 %.2.lcssa.i, -1
  %i.cq = add i32 %i.ae, %i.cp                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cq, 15
  br i1 %min.iters.check, label %.lr.ph74.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check58 = icmp ult i32 %i.cq, 127
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ct = and i64 %i.cs, 112
  %n.vec = and i64 %i.cs, 8589934464              ; 5 uses
  %i.cu = trunc i64 %n.vec to i32
  %i.cv = add i32 %.2.lcssa.i, %i.cu
  %i.cw = shl nuw nsw i64 %n.vec, 1
  %i.cx = getelementptr i8, ptr %.239.lcssa.i, i64 %i.cw
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.ay, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.239.lcssa.i, i64 %i.cy ; 5 uses
  %i.cz = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !54
  %wide.load59 = load <32 x i16>, ptr %i.cz, align 2, !tbaa !54
  %wide.load60 = load <32 x i16>, ptr %i.da, align 2, !tbaa !54
  %wide.load61 = load <32 x i16>, ptr %i.db, align 2, !tbaa !54
  %i.dc = zext <32 x i16> %wide.load to <32 x i32>
  %i.dd = zext <32 x i16> %wide.load59 to <32 x i32>
  %i.de = zext <32 x i16> %wide.load60 to <32 x i32>
  %i.df = zext <32 x i16> %wide.load61 to <32 x i32>
  %i.dg = shl nuw <32 x i32> %i.dc, splat (i32 16)
  %i.dh = shl nuw <32 x i32> %i.dd, splat (i32 16)
  %i.di = shl nuw <32 x i32> %i.de, splat (i32 16)
  %i.dj = shl nuw <32 x i32> %i.df, splat (i32 16)
  %i.dk = bitcast <32 x i32> %i.dg to <32 x float>
  %i.dl = bitcast <32 x i32> %i.dh to <32 x float>
  %i.dm = bitcast <32 x i32> %i.di to <32 x float>
  %i.dn = bitcast <32 x i32> %i.dj to <32 x float>
  %i.do = fmul fast <32 x float> %broadcast.splat, %i.dk
  %i.dp = fmul fast <32 x float> %broadcast.splat, %i.dl
  %i.dq = fmul fast <32 x float> %broadcast.splat, %i.dm
  %i.dr = fmul fast <32 x float> %broadcast.splat, %i.dn
  %i.ds = bitcast <32 x float> %i.do to <32 x i32>
  %i.dt = bitcast <32 x float> %i.dp to <32 x i32>
  %i.du = bitcast <32 x float> %i.dq to <32 x i32>
  %i.dv = bitcast <32 x float> %i.dr to <32 x i32>
  %i.dw = lshr <32 x i32> %i.ds, splat (i32 16)
  %i.dx = lshr <32 x i32> %i.dt, splat (i32 16)
  %i.dy = lshr <32 x i32> %i.du, splat (i32 16)
  %i.dz = lshr <32 x i32> %i.dv, splat (i32 16)
  %i.ea = trunc nuw <32 x i32> %i.dw to <32 x i16>
  %i.eb = trunc nuw <32 x i32> %i.dx to <32 x i16>
  %i.ec = trunc nuw <32 x i32> %i.dy to <32 x i16>
  %i.ed = trunc nuw <32 x i32> %i.dz to <32 x i16>
  store <32 x i16> %i.ea, ptr %next.gep, align 2, !tbaa !54
  store <32 x i16> %i.eb, ptr %i.cz, align 2, !tbaa !54
  store <32 x i16> %i.ec, ptr %i.da, align 2, !tbaa !54
  store <32 x i16> %i.ed, ptr %i.db, align 2, !tbaa !54
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ct, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec62 = and i64 %i.cs, 8589934576            ; 4 uses
  %i.ef = trunc i64 %n.vec62 to i32
  %i.eg = add i32 %.2.lcssa.i, %i.ef
  %i.eh = shl nuw nsw i64 %n.vec62, 1
  %i.ei = getelementptr i8, ptr %.239.lcssa.i, i64 %i.eh
  %broadcast.splatinsert63 = insertelement <16 x float> poison, float %i.ay, i64 0
  %broadcast.splat64 = shufflevector <16 x float> %broadcast.splatinsert63, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = shl i64 %index65, 1
  %next.gep66 = getelementptr i8, ptr %.239.lcssa.i, i64 %i.ej ; 2 uses
  %wide.load67 = load <16 x i16>, ptr %next.gep66, align 2, !tbaa !54
  %i.ek = zext <16 x i16> %wide.load67 to <16 x i32>
  %i.el = shl nuw <16 x i32> %i.ek, splat (i32 16)
  %i.em = bitcast <16 x i32> %i.el to <16 x float>
  %i.en = fmul fast <16 x float> %broadcast.splat64, %i.em
  %i.eo = bitcast <16 x float> %i.en to <16 x i32>
  %i.ep = lshr <16 x i32> %i.eo, splat (i32 16)
  %i.eq = trunc nuw <16 x i32> %i.ep to <16 x i16>
  store <16 x i16> %i.eq, ptr %next.gep66, align 2, !tbaa !54
  %index.next68 = add nuw i64 %index65, 16        ; 2 uses
  %i.er = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !135

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.cs, %n.vec62
  br i1 %cmp.n69, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.373.i.ph = phi i32 [ %.2.lcssa.i, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.eg, %vec.epilog.middle.block ]
  %.34072.i.ph = phi ptr [ %.239.lcssa.i, %iter.check ], [ %i.cx, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  br label %.lr.ph74.i

.lr.ph69.i:                                       ; preds = %.preheader57.i, %.lr.ph69.i
  %.268.i = phi i32 [ %i.fd, %.lr.ph69.i ], [ %.1.lcssa.i, %.preheader57.i ]
  %.23967.i = phi ptr [ %i.fc, %.lr.ph69.i ], [ %.138.lcssa.i, %.preheader57.i ] ; 3 uses
  %i.es = load i64, ptr %.23967.i, align 1, !tbaa !63
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.et to <8 x i16>
  %13 = shufflevector <8 x i16> %i.eu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.ev = bitcast <8 x i16> %13 to <4 x float>
  %i.ew = fmul fast <4 x float> %i.ba, %i.ev
  %i.ex = bitcast <4 x float> %i.ew to <4 x i32>
  %i.ey = lshr <4 x i32> %i.ex, splat (i32 16)
  %i.ez = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ey, <4 x i32> poison)
  %i.fa = bitcast <8 x i16> %i.ez to <2 x i64>
  %i.fb = extractelement <2 x i64> %i.fa, i64 0
  store i64 %i.fb, ptr %.23967.i, align 1, !tbaa !63
  %i.fc = getelementptr inbounds nuw i8, ptr %.23967.i, i64 8 ; 2 uses
  %i.fd = add nuw nsw i32 %.268.i, 4              ; 3 uses
  %i.fe = or disjoint i32 %i.fd, 3
  %i.ff = icmp slt i32 %i.fe, %i.ae
  br i1 %i.ff, label %.lr.ph69.i, label %.preheader.i, !llvm.loop !3

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %.lr.ph74.i
  %.373.i = phi i32 [ %i.fp, %.lr.ph74.i ], [ %.373.i.ph, %.lr.ph74.i.preheader ]
  %.34072.i = phi ptr [ %i.fo, %.lr.ph74.i ], [ %.34072.i.ph, %.lr.ph74.i.preheader ] ; 3 uses
  %i.fg = load i16, ptr %.34072.i, align 2, !tbaa !54
  %i.fh = zext i16 %i.fg to i32
  %i.fi = shl nuw i32 %i.fh, 16
  %i.fj = bitcast i32 %i.fi to float
  %i.fk = fmul fast float %i.ay, %i.fj
  %i.fl = bitcast float %i.fk to i32
  %i.fm = lshr i32 %i.fl, 16
  %i.fn = trunc nuw i32 %i.fm to i16
  store i16 %i.fn, ptr %.34072.i, align 2, !tbaa !54
  %i.fo = getelementptr inbounds nuw i8, ptr %.34072.i, i64 2
  %i.fp = add nuw nsw i32 %.373.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fp, %i.ae
  br i1 %exitcond.not.i, label %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, label %.lr.ph74.i, !llvm.loop !136

_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit:  ; preds = %.lr.ph74.i, %middle.block, %vec.epilog.middle.block, %.preheader.i, %bb.e, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !33
  %i.fr = sext i32 %i.fq to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.fr
  br i1 %.not.not, label %.noexc, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnnL23scale_bf16s_no_bias_sseEPtPKfii.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.m:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  call void @__clang_call_terminate(ptr %i.ft) #18
  unreachable
}

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #1

declare void @_ZN4ncnn38scale_bf16s_per_element_sse_avx512bf16EPtPKfS2_ii(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.am, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.025, 4
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <16 x i16>, ptr %i.q, align 1, !tbaa !63 ; 2 uses
  %7 = shufflevector <16 x i16> %i.r, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %8 = shufflevector <16 x i16> %i.r, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.s = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.t = shufflevector <16 x i16> %7, <16 x i16> %8, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.u = bitcast <16 x i16> %i.s to <8 x i32>
  %i.v = bitcast <16 x i16> %i.t to <8 x i32>
  %i.w = shufflevector <8 x i32> %i.u, <8 x i32> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.x = bitcast <16 x i32> %i.w to <16 x float>
  %i.y = load ptr, ptr %5, align 8, !tbaa !38
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.p
  %i.aa = load <16 x float>, ptr %i.z, align 1, !tbaa !63
  %i.ab = load ptr, ptr %6, align 8, !tbaa !38
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.p
  %i.ad = load <16 x float>, ptr %i.ac, align 1, !tbaa !63
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.x, <16 x float> nofpclass(nan inf) %i.aa, <16 x float> nofpclass(nan inf) %i.ad)
  %i.af = bitcast <16 x float> %i.ae to <16 x i32>
  %i.ag = lshr <16 x i32> %i.af, splat (i32 16)   ; 2 uses
  %i.ah = shufflevector <16 x i32> %i.ag, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ai = shufflevector <16 x i32> %i.ag, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ah, <8 x i32> %i.ai)
  %i.ak = bitcast <16 x i16> %i.aj to <4 x i64>
  %i.al = shufflevector <4 x i64> %i.ak, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.al, ptr %i.q, align 1, !tbaa !63
  %i.am = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.ag, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.025, 3
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <8 x i16>, ptr %i.q, align 1, !tbaa !63 ; 2 uses
  %7 = shufflevector <8 x i16> %i.r, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %8 = shufflevector <8 x i16> %i.r, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.s = shufflevector <8 x i16> %7, <8 x i16> %8, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.t = bitcast <16 x i16> %i.s to <8 x float>
  %i.u = load ptr, ptr %5, align 8, !tbaa !38
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.p
  %i.w = load <8 x float>, ptr %i.v, align 1, !tbaa !63
  %i.x = load ptr, ptr %6, align 8, !tbaa !38
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.p
  %i.z = load <8 x float>, ptr %i.y, align 1, !tbaa !63
  %i.aa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.t, <8 x float> nofpclass(nan inf) %i.w, <8 x float> nofpclass(nan inf) %i.z)
  %i.ab = bitcast <8 x float> %i.aa to <8 x i32>
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 16)    ; 2 uses
  %i.ad = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ae = shufflevector <8 x i32> %i.ac, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.af = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ad, <4 x i32> %i.ae)
  store <8 x i16> %i.af, ptr %i.q, align 1, !tbaa !63
  %i.ag = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not24 = icmp sgt i32 %i.k, %i.j
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.025 = phi i32 [ %i.ah, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.025, 2
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 3 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 1, !tbaa !63
  %i.s = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.t = bitcast <2 x i64> %i.s to <8 x i16>
  %7 = shufflevector <8 x i16> %i.t, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.u = bitcast <8 x i16> %7 to <4 x float>
  %i.v = load ptr, ptr %5, align 8, !tbaa !38
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !63
  %i.y = load ptr, ptr %6, align 8, !tbaa !38
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.p
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !63
  %i.ab = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.u, <4 x float> nofpclass(nan inf) %i.x, <4 x float> nofpclass(nan inf) %i.aa)
  %i.ac = bitcast <4 x float> %i.ab to <4 x i32>
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ad, <4 x i32> poison)
  %i.af = bitcast <8 x i16> %i.ae to <2 x i64>
  %i.ag = extractelement <2 x i64> %i.af, i64 0
  store i64 %i.ag, ptr %i.q, align 1, !tbaa !63
  %i.ah = add i32 %.025, 1
  %exitcond.not = icmp eq i32 %.025, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL27scale_bf16s_per_element_sseEPtPKfS2_ii.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !33     ; 7 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.i, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.j = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !33
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 5 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !33
  %i.m = load i32, ptr %i.a, align 4, !tbaa !33   ; 9 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !62     ; 3 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !38     ; 3 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !38     ; 3 uses
  %i.s = add i32 %i.l, 1
  %i.t = sub i32 %i.s, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.t, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.u = add i32 %i.m, %i.e
  %i.v = add i32 %i.l, %i.e
  %i.w = icmp slt i32 %i.v, %i.u
  br i1 %i.w, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check27 = icmp ult i32 %i.t, 64
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i32 %i.t, 56
  %n.vec = and i32 %i.t, -64                      ; 4 uses
  %i.y = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.z = sext i32 %.reass to i64                  ; 3 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.z ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.aa, align 2, !tbaa !54
  %wide.load28 = load <16 x i16>, ptr %i.ab, align 2, !tbaa !54
  %wide.load29 = load <16 x i16>, ptr %i.ac, align 2, !tbaa !54
  %wide.load30 = load <16 x i16>, ptr %i.ad, align 2, !tbaa !54
  %i.ae = zext <16 x i16> %wide.load to <16 x i32>
  %i.af = zext <16 x i16> %wide.load28 to <16 x i32>
  %i.ag = zext <16 x i16> %wide.load29 to <16 x i32>
  %i.ah = zext <16 x i16> %wide.load30 to <16 x i32>
  %i.ai = shl nuw <16 x i32> %i.ae, splat (i32 16)
  %i.aj = shl nuw <16 x i32> %i.af, splat (i32 16)
  %i.ak = shl nuw <16 x i32> %i.ag, splat (i32 16)
  %i.al = shl nuw <16 x i32> %i.ah, splat (i32 16)
  %i.am = bitcast <16 x i32> %i.ai to <16 x float>
  %i.an = bitcast <16 x i32> %i.aj to <16 x float>
  %i.ao = bitcast <16 x i32> %i.ak to <16 x float>
  %i.ap = bitcast <16 x i32> %i.al to <16 x float>
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.z ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %wide.load31 = load <16 x float>, ptr %i.aq, align 4, !tbaa !56
  %wide.load32 = load <16 x float>, ptr %i.ar, align 4, !tbaa !56
  %wide.load33 = load <16 x float>, ptr %i.as, align 4, !tbaa !56
  %wide.load34 = load <16 x float>, ptr %i.at, align 4, !tbaa !56
  %i.au = fmul fast <16 x float> %wide.load31, %i.am
  %i.av = fmul fast <16 x float> %wide.load32, %i.an
  %i.aw = fmul fast <16 x float> %wide.load33, %i.ao
  %i.ax = fmul fast <16 x float> %wide.load34, %i.ap
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.z ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 192
  %wide.load35 = load <16 x float>, ptr %i.ay, align 4, !tbaa !56
  %wide.load36 = load <16 x float>, ptr %i.az, align 4, !tbaa !56
  %wide.load37 = load <16 x float>, ptr %i.ba, align 4, !tbaa !56
  %wide.load38 = load <16 x float>, ptr %i.bb, align 4, !tbaa !56
  %i.bc = fadd fast <16 x float> %i.au, %wide.load35
  %i.bd = fadd fast <16 x float> %i.av, %wide.load36
  %i.be = fadd fast <16 x float> %i.aw, %wide.load37
  %i.bf = fadd fast <16 x float> %i.ax, %wide.load38
  %i.bg = bitcast <16 x float> %i.bc to <16 x i32>
  %i.bh = bitcast <16 x float> %i.bd to <16 x i32>
  %i.bi = bitcast <16 x float> %i.be to <16 x i32>
  %i.bj = bitcast <16 x float> %i.bf to <16 x i32>
  %i.bk = lshr <16 x i32> %i.bg, splat (i32 16)
  %i.bl = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bm = lshr <16 x i32> %i.bi, splat (i32 16)
  %i.bn = lshr <16 x i32> %i.bj, splat (i32 16)
  %i.bo = trunc nuw <16 x i32> %i.bk to <16 x i16>
  %i.bp = trunc nuw <16 x i32> %i.bl to <16 x i16>
  %i.bq = trunc nuw <16 x i32> %i.bm to <16 x i16>
  %i.br = trunc nuw <16 x i32> %i.bn to <16 x i16>
  store <16 x i16> %i.bo, ptr %i.aa, align 2, !tbaa !54
  store <16 x i16> %i.bp, ptr %i.ab, align 2, !tbaa !54
  store <16 x i16> %i.bq, ptr %i.ac, align 2, !tbaa !54
  store <16 x i16> %i.br, ptr %i.ad, align 2, !tbaa !54
  %index.next = add nuw i32 %index, 64            ; 2 uses
  %i.bs = icmp eq i32 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i32 %i.t, -8                     ; 3 uses
  %i.bt = add i32 %i.m, %n.vec39
  %invariant.op46 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
  %.reass47 = add i32 %index40, %invariant.op46
  %i.bu = sext i32 %.reass47 to i64               ; 3 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bu ; 2 uses
  %wide.load41 = load <8 x i16>, ptr %i.bv, align 2, !tbaa !54
  %i.bw = zext <8 x i16> %wide.load41 to <8 x i32>
  %i.bx = shl nuw <8 x i32> %i.bw, splat (i32 16)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bu
  %wide.load42 = load <8 x float>, ptr %i.bz, align 4, !tbaa !56
  %i.ca = fmul fast <8 x float> %wide.load42, %i.by
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.bu
  %wide.load43 = load <8 x float>, ptr %i.cb, align 4, !tbaa !56
  %i.cc = fadd fast <8 x float> %i.ca, %wide.load43
  %i.cd = bitcast <8 x float> %i.cc to <8 x i32>
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 16)
  %i.cf = trunc nuw <8 x i32> %i.ce to <8 x i16>
  store <8 x i16> %i.cf, ptr %i.bv, align 2, !tbaa !54
  %index.next44 = add nuw i32 %index40, 8         ; 2 uses
  %i.cg = icmp eq i32 %index.next44, %n.vec39
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i32 %i.t, %n.vec39
  br i1 %cmp.n45, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023 = phi i32 [ %i.cx, %vec.epilog.scalar.ph ], [ %.023.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ch = add i32 %.023, %i.e
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !54
  %i.cl = zext i16 %i.ck to i32
  %i.cm = shl nuw i32 %i.cl, 16
  %i.cn = bitcast i32 %i.cm to float
  %i.co = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ci
  %i.cp = load float, ptr %i.co, align 4, !tbaa !56
  %i.cq = fmul fast float %i.cp, %i.cn
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ci
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !56
  %i.ct = fadd fast float %i.cq, %i.cs
  %i.cu = bitcast float %i.ct to i32
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc nuw i32 %i.cv to i16
  store i16 %i.cw, ptr %i.cj, align 2, !tbaa !54
  %i.cx = add nuw i32 %.023, 1
  %exitcond.not = icmp eq i32 %.023, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #14

declare void @_ZN4ncnn46scale_bf16s_no_bias_per_element_sse_avx512bf16EPtPKfii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL35scale_bf16s_no_bias_per_element_sseEPtPKfii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not21 = icmp sgt i32 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %i.aj, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.022, 4
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <16 x i16>, ptr %i.q, align 1, !tbaa !63 ; 2 uses
  %6 = shufflevector <16 x i16> %i.r, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 16, i32 0, i32 17, i32 1, i32 18, i32 2, i32 19, i32 3, i32 24, i32 8, i32 25, i32 9, i32 26, i32 10, i32 27, i32 11> ; 2 uses
  %7 = shufflevector <16 x i16> %i.r, <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i32> <i32 20, i32 4, i32 21, i32 5, i32 22, i32 6, i32 23, i32 7, i32 28, i32 12, i32 29, i32 13, i32 30, i32 14, i32 31, i32 15> ; 2 uses
  %i.s = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.t = shufflevector <16 x i16> %6, <16 x i16> %7, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.u = bitcast <16 x i16> %i.s to <8 x i32>
  %i.v = bitcast <16 x i16> %i.t to <8 x i32>
  %i.w = shufflevector <8 x i32> %i.u, <8 x i32> %i.v, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.x = bitcast <16 x i32> %i.w to <16 x float>
  %i.y = load ptr, ptr %5, align 8, !tbaa !38
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.p
  %i.aa = load <16 x float>, ptr %i.z, align 1, !tbaa !63
  %i.ab = fmul fast <16 x float> %i.aa, %i.x
  %i.ac = bitcast <16 x float> %i.ab to <16 x i32>
  %i.ad = lshr <16 x i32> %i.ac, splat (i32 16)   ; 2 uses
  %i.ae = shufflevector <16 x i32> %i.ad, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = shufflevector <16 x i32> %i.ad, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ae, <8 x i32> %i.af)
  %i.ah = bitcast <16 x i16> %i.ag to <4 x i64>
  %i.ai = shufflevector <4 x i64> %i.ah, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ai, ptr %i.q, align 1, !tbaa !63
  %i.aj = add i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL35scale_bf16s_no_bias_per_element_sseEPtPKfii.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not21 = icmp sgt i32 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %i.ad, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.022, 3
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load <8 x i16>, ptr %i.q, align 1, !tbaa !63 ; 2 uses
  %6 = shufflevector <8 x i16> %i.r, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %7 = shufflevector <8 x i16> %i.r, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 12, i32 4, i32 13, i32 5, i32 14, i32 6, i32 15, i32 7>
  %i.s = shufflevector <8 x i16> %6, <8 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.t = bitcast <16 x i16> %i.s to <8 x float>
  %i.u = load ptr, ptr %5, align 8, !tbaa !38
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.p
  %i.w = load <8 x float>, ptr %i.v, align 1, !tbaa !63
  %i.x = fmul fast <8 x float> %i.w, %i.t
  %i.y = bitcast <8 x float> %i.x to <8 x i32>
  %i.z = lshr <8 x i32> %i.y, splat (i32 16)      ; 2 uses
  %i.aa = shufflevector <8 x i32> %i.z, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ab = shufflevector <8 x i32> %i.z, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ac = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aa, <4 x i32> %i.ab)
  store <8 x i16> %i.ac, ptr %i.q, align 1, !tbaa !63
  %i.ad = add i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL35scale_bf16s_no_bias_per_element_sseEPtPKfii.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not21 = icmp sgt i32 %i.k, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i32 [ %i.ae, %.lr.ph ], [ %i.k, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %3, align 4, !tbaa !33
  %i.m = shl nsw i32 %.022, 2
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 1, !tbaa !63
  %i.s = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %i.t = bitcast <2 x i64> %i.s to <8 x i16>
  %6 = shufflevector <8 x i16> %i.t, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.u = bitcast <8 x i16> %6 to <4 x float>
  %i.v = load ptr, ptr %5, align 8, !tbaa !38
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.p
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !63
  %i.y = fmul fast <4 x float> %i.x, %i.u
  %i.z = bitcast <4 x float> %i.y to <4 x i32>
  %i.aa = lshr <4 x i32> %i.z, splat (i32 16)
  %i.ab = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aa, <4 x i32> poison)
  %i.ac = bitcast <8 x i16> %i.ab to <2 x i64>
  %i.ad = extractelement <2 x i64> %i.ac, i64 0
  store i64 %i.ad, ptr %i.q, align 1, !tbaa !63
  %i.ae = add i32 %.022, 1
  %exitcond.not = icmp eq i32 %.022, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL35scale_bf16s_no_bias_per_element_sseEPtPKfii.omp_outlined.16(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !33     ; 9 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.i, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.j = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !33
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 7 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !33
  %i.m = load i32, ptr %i.a, align 4, !tbaa !33   ; 9 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !62     ; 5 uses
  %i.q = load ptr, ptr %5, align 8, !tbaa !38     ; 5 uses
  %i.r = add i32 %i.l, 1
  %i.s = sub i32 %i.r, %i.m                       ; 7 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.t = add i32 %i.m, %i.e
  %i.u = add i32 %i.l, %i.e
  %i.v = icmp slt i32 %i.u, %i.t
  br i1 %i.v, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check25 = icmp ult i32 %i.s, 64
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i32 %i.s, 56
  %n.vec = and i32 %i.s, -64                      ; 4 uses
  %i.x = add i32 %i.m, %n.vec
  %invariant.op = add i32 %i.m, %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add i32 %index, %invariant.op
  %i.y = sext i32 %.reass to i64                  ; 2 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.y ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.z, align 2, !tbaa !54
  %wide.load26 = load <16 x i16>, ptr %i.aa, align 2, !tbaa !54
  %wide.load27 = load <16 x i16>, ptr %i.ab, align 2, !tbaa !54
  %wide.load28 = load <16 x i16>, ptr %i.ac, align 2, !tbaa !54
  %i.ad = zext <16 x i16> %wide.load to <16 x i32>
  %i.ae = zext <16 x i16> %wide.load26 to <16 x i32>
  %i.af = zext <16 x i16> %wide.load27 to <16 x i32>
  %i.ag = zext <16 x i16> %wide.load28 to <16 x i32>
  %i.ah = shl nuw <16 x i32> %i.ad, splat (i32 16)
  %i.ai = shl nuw <16 x i32> %i.ae, splat (i32 16)
  %i.aj = shl nuw <16 x i32> %i.af, splat (i32 16)
  %i.ak = shl nuw <16 x i32> %i.ag, splat (i32 16)
  %i.al = bitcast <16 x i32> %i.ah to <16 x float>
  %i.am = bitcast <16 x i32> %i.ai to <16 x float>
  %i.an = bitcast <16 x i32> %i.aj to <16 x float>
  %i.ao = bitcast <16 x i32> %i.ak to <16 x float>
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.y ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  %wide.load29 = load <16 x float>, ptr %i.ap, align 4, !tbaa !56
  %wide.load30 = load <16 x float>, ptr %i.aq, align 4, !tbaa !56
  %wide.load31 = load <16 x float>, ptr %i.ar, align 4, !tbaa !56
  %wide.load32 = load <16 x float>, ptr %i.as, align 4, !tbaa !56
  %i.at = fmul fast <16 x float> %wide.load29, %i.al
  %i.au = fmul fast <16 x float> %wide.load30, %i.am
  %i.av = fmul fast <16 x float> %wide.load31, %i.an
  %i.aw = fmul fast <16 x float> %wide.load32, %i.ao
  %i.ax = bitcast <16 x float> %i.at to <16 x i32>
  %i.ay = bitcast <16 x float> %i.au to <16 x i32>
  %i.az = bitcast <16 x float> %i.av to <16 x i32>
  %i.ba = bitcast <16 x float> %i.aw to <16 x i32>
  %i.bb = lshr <16 x i32> %i.ax, splat (i32 16)
  %i.bc = lshr <16 x i32> %i.ay, splat (i32 16)
  %i.bd = lshr <16 x i32> %i.az, splat (i32 16)
  %i.be = lshr <16 x i32> %i.ba, splat (i32 16)
  %i.bf = trunc nuw <16 x i32> %i.bb to <16 x i16>
  %i.bg = trunc nuw <16 x i32> %i.bc to <16 x i16>
  %i.bh = trunc nuw <16 x i32> %i.bd to <16 x i16>
  %i.bi = trunc nuw <16 x i32> %i.be to <16 x i16>
  store <16 x i16> %i.bf, ptr %i.z, align 2, !tbaa !54
  store <16 x i16> %i.bg, ptr %i.aa, align 2, !tbaa !54
  store <16 x i16> %i.bh, ptr %i.ab, align 2, !tbaa !54
  store <16 x i16> %i.bi, ptr %i.ac, align 2, !tbaa !54
  %index.next = add nuw i32 %index, 64            ; 2 uses
  %i.bj = icmp eq i32 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i32 %i.s, -8                     ; 3 uses
  %i.bk = add i32 %i.m, %n.vec33
  %invariant.op39 = add i32 %i.m, %i.e
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %.reass40 = add i32 %index34, %invariant.op39
  %i.bl = sext i32 %.reass40 to i64               ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bl ; 2 uses
  %wide.load35 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !54
  %i.bn = zext <8 x i16> %wide.load35 to <8 x i32>
  %i.bo = shl nuw <8 x i32> %i.bn, splat (i32 16)
  %i.bp = bitcast <8 x i32> %i.bo to <8 x float>
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bl
  %wide.load36 = load <8 x float>, ptr %i.bq, align 4, !tbaa !56
  %i.br = fmul fast <8 x float> %wide.load36, %i.bp
  %i.bs = bitcast <8 x float> %i.br to <8 x i32>
  %i.bt = lshr <8 x i32> %i.bs, splat (i32 16)
  %i.bu = trunc nuw <8 x i32> %i.bt to <8 x i16>
  store <8 x i16> %i.bu, ptr %i.bm, align 2, !tbaa !54
  %index.next37 = add nuw i32 %index34, 8         ; 2 uses
  %i.bv = icmp eq i32 %index.next37, %n.vec33
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i32 %i.s, %n.vec33
  br i1 %cmp.n38, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.ph = phi i32 [ %i.m, %iter.check ], [ %i.m, %vector.scevcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ] ; 5 uses
  %i.bw = add i32 %i.l, %.021.ph
  %i.bx = and i32 %i.bw, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bx, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.by = add i32 %.021.ph, %i.e
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bz ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !54
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw i32 %i.cc, 16
  %i.ce = bitcast i32 %i.cd to float
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bz
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !56
  %i.ch = fmul fast float %i.cg, %i.ce
  %i.ci = bitcast float %i.ch to i32
  %i.cj = lshr i32 %i.ci, 16
end_hunk_0
