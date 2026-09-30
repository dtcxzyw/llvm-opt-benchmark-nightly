Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/dropout_x86_avx512?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a

.lr.ph29.split:                                   ; preds = %.lr.ph29.split.preheader, %._crit_edge
  %i.r = phi i32 [ %i.n, %.lr.ph29.split.preheader ], [ %i.aa, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.lr.ph29.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph29.split
  %i.t = load ptr, ptr %3, align 8, !tbaa !37
  %i.u = load i32, ptr %i.l, align 4, !tbaa !38
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %indvars.iv, %i.v
  %i.x = load i64, ptr %i.m, align 8, !tbaa !33
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.y
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph29.split
  %i.aa = phi i32 [ %i.r, %.lr.ph29.split ], [ %i.ag, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge30, label %.lr.ph29.split, !llvm.loop !66

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02225 = phi i32 [ %i.af, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02324 = phi ptr [ %i.ae, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 3 uses
  %i.ab = load <4 x float>, ptr %.02324, align 1, !tbaa !43
  %i.ac = load <4 x float>, ptr %5, align 16, !tbaa !43
  %i.ad = fmul fast <4 x float> %i.ac, %i.ab
  store <4 x float> %i.ad, ptr %.02324, align 1, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %.02324, i64 16
  %i.af = add nuw nsw i32 %.02225, 1              ; 2 uses
  %i.ag = load i32, ptr %4, align 4, !tbaa !39    ; 2 uses
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge30:                                    ; preds = %._crit_edge, %.lr.ph29, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge30, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Dropout_x86_avx51215forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not33 = icmp sgt i32 %i.k, %i.j
  br i1 %.not33, label %._crit_edge35, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %4, align 4, !tbaa !39     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge35

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.z, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %3, align 8, !tbaa !37, !noalias !72
  %i.u = load i64, ptr %i.l, align 8, !tbaa !34, !noalias !72
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !72
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.z = phi i32 [ %i.r, %.noexc ], [ %i.af, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge35, label %.noexc, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02232 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02331 = phi ptr [ %i.ad, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 3 uses
  %i.aa = load <4 x float>, ptr %.02331, align 1, !tbaa !43
  %i.ab = load <4 x float>, ptr %5, align 16, !tbaa !43
  %i.ac = fmul fast <4 x float> %i.ab, %i.aa
  store <4 x float> %i.ac, ptr %.02331, align 1, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %.02331, i64 16
  %i.ae = add nuw nsw i32 %.02232, 1              ; 2 uses
  %i.af = load i32, ptr %4, align 4, !tbaa !39    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !71

._crit_edge35:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge35, %bb.a
  ret void
}

declare noundef i32 @_ZNK4ncnn7Dropout15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(212), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev() local_unnamed_addr #2

declare void @_ZN4ncnn24dropout_bf16s_avx512bf16ERNS_3MatEfRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL13dropout_bf16sERNS_3MatEfRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !39     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !39
  %i.h = load i32, ptr %0, align 4, !tbaa !39     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !39
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !39
  %i.k = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %.not63 = icmp sgt i32 %i.k, %i.j
  br i1 %.not63, label %._crit_edge65, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %5, align 4, !tbaa !39
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge62
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.bs, %._crit_edge62 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge62 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !37, !noalias !79
  %i.q = load i64, ptr %i.l, align 8, !tbaa !34, !noalias !79
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !79
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = load float, ptr %4, align 4, !tbaa !45
  %i.w = insertelement <16 x float> poison, float %i.v, i64 0
  %i.x = shufflevector <16 x float> %i.w, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.y = icmp sgt i32 %i.o, 15
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.03855 = phi i32 [ %i.ar, %.lr.ph ], [ 0, %.noexc ] ; 2 uses
  %.03954 = phi ptr [ %i.aq, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.z = load <16 x i16>, ptr %.03954, align 1, !tbaa !43 ; 2 uses
  %i.aa = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.z, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.ab = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.z, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ac = shufflevector <16 x i16> %i.aa, <16 x i16> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ad = shufflevector <16 x i16> %i.aa, <16 x i16> %i.ab, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ae = bitcast <16 x i16> %i.ac to <8 x i32>
  %i.af = bitcast <16 x i16> %i.ad to <8 x i32>
  %i.ag = shufflevector <8 x i32> %i.ae, <8 x i32> %i.af, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = bitcast <16 x i32> %i.ag to <16 x float>
  %i.ai = fmul fast <16 x float> %i.x, %i.ah
  %i.aj = bitcast <16 x float> %i.ai to <16 x i32>
  %i.ak = lshr <16 x i32> %i.aj, splat (i32 16)   ; 2 uses
  %i.al = shufflevector <16 x i32> %i.ak, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = shufflevector <16 x i32> %i.ak, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.al, <8 x i32> %i.am)
  %i.ao = bitcast <16 x i16> %i.an to <4 x i64>
  %i.ap = shufflevector <4 x i64> %i.ao, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ap, ptr %.03954, align 1, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %.03954, i64 32 ; 2 uses
  %i.ar = add nuw nsw i32 %.03855, 16             ; 2 uses
  %6 = add nuw i32 %.03855, 31
  %i.as = load i32, ptr %5, align 4, !tbaa !39    ; 2 uses
  %i.at = icmp slt i32 %6, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.au = phi i32 [ %i.o, %.noexc ], [ %i.as, %.lr.ph ] ; 4 uses
  %.039.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aq, %.lr.ph ] ; 7 uses
  %.038.lcssa = phi i32 [ 0, %.noexc ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.av = icmp slt i32 %.038.lcssa, %i.au
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aw = sub nuw nsw i32 %i.au, %.038.lcssa
  %notmask = shl nsw i32 -1, %i.aw
  %i.ax = trunc i32 %notmask to i16
  %i.ay = xor i16 %i.ax, -1
  %i.az = bitcast i16 %i.ay to <16 x i1>          ; 2 uses
  %i.ba = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.039.lcssa, <16 x i1> %i.az, <16 x i16> zeroinitializer) ; 2 uses
  %i.bb = shufflevector <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i16> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.bc = shufflevector <16 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %i.ba, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bd = shufflevector <16 x i16> %i.bb, <16 x i16> %i.bc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.be = shufflevector <16 x i16> %i.bb, <16 x i16> %i.bc, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bf = bitcast <16 x i16> %i.bd to <8 x i32>
  %i.bg = bitcast <16 x i16> %i.be to <8 x i32>
  %i.bh = shufflevector <8 x i32> %i.bf, <8 x i32> %i.bg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = bitcast <16 x i32> %i.bh to <16 x float>
  %i.bj = fmul fast <16 x float> %i.x, %i.bi
  %i.bk = bitcast <16 x float> %i.bj to <16 x i32>
  %i.bl = lshr <16 x i32> %i.bk, splat (i32 16)   ; 2 uses
  %i.bm = shufflevector <16 x i32> %i.bl, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <16 x i32> %i.bl, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bm, <8 x i32> %i.bn)
  %i.bp = bitcast <16 x i16> %i.bo to <4 x i64>
  %i.bq = shufflevector <4 x i64> %i.bp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.br = bitcast <4 x i64> %i.bq to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.br, ptr align 1 %.039.lcssa, <16 x i1> %i.az)
  %.pre70 = load i32, ptr %5, align 4, !tbaa !39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bs = phi i32 [ %.pre70, %bb.c ], [ %i.au, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.au, %bb.c ], [ %.038.lcssa, %._crit_edge ] ; 5 uses
  %i.bt = icmp slt i32 %.1, %i.bs
  br i1 %i.bt, label %iter.check, label %._crit_edge62

iter.check:                                       ; preds = %bb.d
  %i.bu = load float, ptr %4, align 4, !tbaa !45  ; 3 uses
  %i.bv = xor i32 %.1, -1
  %i.bw = add i32 %i.bs, %i.bv                    ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bw, 15
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check81 = icmp ult i32 %i.bw, 127
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 112
  %n.vec = and i64 %i.by, 8589934464              ; 5 uses
  %i.ca = trunc i64 %n.vec to i32
  %i.cb = add i32 %.1, %i.ca
  %i.cc = shl nuw nsw i64 %n.vec, 1
  %i.cd = getelementptr i8, ptr %.039.lcssa, i64 %i.cc
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.bu, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.039.lcssa, i64 %i.ce ; 5 uses
  %i.cf = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !81
  %wide.load82 = load <32 x i16>, ptr %i.cf, align 2, !tbaa !81
  %wide.load83 = load <32 x i16>, ptr %i.cg, align 2, !tbaa !81
  %wide.load84 = load <32 x i16>, ptr %i.ch, align 2, !tbaa !81
  %i.ci = zext <32 x i16> %wide.load to <32 x i32>
  %i.cj = zext <32 x i16> %wide.load82 to <32 x i32>
  %i.ck = zext <32 x i16> %wide.load83 to <32 x i32>
  %i.cl = zext <32 x i16> %wide.load84 to <32 x i32>
  %i.cm = shl nuw <32 x i32> %i.ci, splat (i32 16)
  %i.cn = shl nuw <32 x i32> %i.cj, splat (i32 16)
  %i.co = shl nuw <32 x i32> %i.ck, splat (i32 16)
  %i.cp = shl nuw <32 x i32> %i.cl, splat (i32 16)
  %i.cq = bitcast <32 x i32> %i.cm to <32 x float>
  %i.cr = bitcast <32 x i32> %i.cn to <32 x float>
  %i.cs = bitcast <32 x i32> %i.co to <32 x float>
  %i.ct = bitcast <32 x i32> %i.cp to <32 x float>
  %i.cu = fmul fast <32 x float> %broadcast.splat, %i.cq
  %i.cv = fmul fast <32 x float> %broadcast.splat, %i.cr
  %i.cw = fmul fast <32 x float> %broadcast.splat, %i.cs
  %i.cx = fmul fast <32 x float> %broadcast.splat, %i.ct
  %i.cy = bitcast <32 x float> %i.cu to <32 x i32>
  %i.cz = bitcast <32 x float> %i.cv to <32 x i32>
  %i.da = bitcast <32 x float> %i.cw to <32 x i32>
  %i.db = bitcast <32 x float> %i.cx to <32 x i32>
  %i.dc = lshr <32 x i32> %i.cy, splat (i32 16)
  %i.dd = lshr <32 x i32> %i.cz, splat (i32 16)
  %i.de = lshr <32 x i32> %i.da, splat (i32 16)
  %i.df = lshr <32 x i32> %i.db, splat (i32 16)
  %i.dg = trunc nuw <32 x i32> %i.dc to <32 x i16>
  %i.dh = trunc nuw <32 x i32> %i.dd to <32 x i16>
  %i.di = trunc nuw <32 x i32> %i.de to <32 x i16>
  %i.dj = trunc nuw <32 x i32> %i.df to <32 x i16>
  store <32 x i16> %i.dg, ptr %next.gep, align 2, !tbaa !81
  store <32 x i16> %i.dh, ptr %i.cf, align 2, !tbaa !81
  store <32 x i16> %i.di, ptr %i.cg, align 2, !tbaa !81
  store <32 x i16> %i.dj, ptr %i.ch, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge62, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.by, 8589934576            ; 4 uses
  %i.dl = trunc i64 %n.vec86 to i32
  %i.dm = add i32 %.1, %i.dl
  %i.dn = shl nuw nsw i64 %n.vec86, 1
  %i.do = getelementptr i8, ptr %.039.lcssa, i64 %i.dn
  %broadcast.splatinsert87 = insertelement <16 x float> poison, float %i.bu, i64 0
  %broadcast.splat88 = shufflevector <16 x float> %broadcast.splatinsert87, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.dp = shl i64 %index89, 1
  %next.gep90 = getelementptr i8, ptr %.039.lcssa, i64 %i.dp ; 2 uses
  %wide.load91 = load <16 x i16>, ptr %next.gep90, align 2, !tbaa !81
  %i.dq = zext <16 x i16> %wide.load91 to <16 x i32>
  %i.dr = shl nuw <16 x i32> %i.dq, splat (i32 16)
  %i.ds = bitcast <16 x i32> %i.dr to <16 x float>
  %i.dt = fmul fast <16 x float> %broadcast.splat88, %i.ds
  %i.du = bitcast <16 x float> %i.dt to <16 x i32>
  %i.dv = lshr <16 x i32> %i.du, splat (i32 16)
  %i.dw = trunc nuw <16 x i32> %i.dv to <16 x i16>
  store <16 x i16> %i.dw, ptr %next.gep90, align 2, !tbaa !81
  %index.next92 = add nuw i64 %index89, 16        ; 2 uses
  %i.dx = icmp eq i64 %index.next92, %n.vec86
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.by, %n.vec86
  br i1 %cmp.n93, label %._crit_edge62, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  %.14058.ph = phi ptr [ %.039.lcssa, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.259 = phi i32 [ %i.eh, %vec.epilog.scalar.ph ], [ %.259.ph, %vec.epilog.scalar.ph.preheader ]
  %.14058 = phi ptr [ %i.eg, %vec.epilog.scalar.ph ], [ %.14058.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dy = load i16, ptr %.14058, align 2, !tbaa !81
  %i.dz = zext i16 %i.dy to i32
  %i.ea = shl nuw i32 %i.dz, 16
  %i.eb = bitcast i32 %i.ea to float
  %i.ec = fmul fast float %i.bu, %i.eb
  %i.ed = bitcast float %i.ec to i32
  %i.ee = lshr i32 %i.ed, 16
  %i.ef = trunc nuw i32 %i.ee to i16
  store i16 %i.ef, ptr %.14058, align 2, !tbaa !81
  %i.eg = getelementptr inbounds nuw i8, ptr %.14058, i64 2
  %i.eh = add nsw i32 %.259, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.eh, %i.bs
  br i1 %exitcond.not, label %._crit_edge62, label %vec.epilog.scalar.ph, !llvm.loop !78

._crit_edge62:                                    ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ej = sext i32 %i.ei to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ej
  br i1 %.not.not, label %.noexc, label %._crit_edge65

._crit_edge65:                                    ; preds = %._crit_edge62, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge65, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i16> @llvm.masked.load.v16i16.p0(ptr captures(none), <16 x i1>, <16 x i16>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16i16.p0(<16 x i16>, ptr captures(none), <16 x i1>) #15

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

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
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"float", !5, i64 0}
!27 = !{!"_ZTSN4ncnn7DropoutE", !25, i64 0, !26, i64 208}
!28 = !{!27, !26, i64 208}
!29 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!30 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !29, i64 8, !29, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!31 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !29, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!32 = !{!31, !6, i64 24}
!33 = !{!31, !13, i64 16}
!34 = !{!31, !13, i64 64}
!35 = !{!"vtable pointer", !4, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!31, !10, i64 0}
!38 = !{!31, !6, i64 44}
!39 = !{!6, !6, i64 0}
!40 = !{!31, !6, i64 48}
!41 = !{!31, !6, i64 52}
!42 = !{!31, !6, i64 56}
!43 = !{!5, !5, i64 0}
!44 = !{!30, !6, i64 4}
!45 = !{!26, !26, i64 0}
!46 = !{i64 2, i64 -1, i64 -1, i1 true}
!47 = !{!46}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{null}
!51 = !{!30, !9, i64 32}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!31, !6, i64 40}
!55 = !{!31, !15, i64 8}
!56 = !{!31, !29, i64 32}
!57 = !{!25, !9, i64 11}
!58 = !{!25, !9, i64 12}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !"_ZN4ncnn3Mat7channelEi"}
!62 = distinct !{!62, !61, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !49}
!65 = !{!62}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !"_ZN4ncnn3Mat7channelEi"}
!69 = distinct !{!69, !68, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !49}
!72 = !{!69}
!73 = distinct !{!73, !"_ZN4ncnn3Mat7channelEi"}
!74 = distinct !{!74, !73, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!75 = distinct !{!75, !49}
!76 = distinct !{!76, !49, !82, !83}
!77 = distinct !{!77, !49, !82, !83}
!78 = distinct !{!78, !49, !83, !82}
!79 = !{!74}
!80 = !{!"short", !5, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!"branch_weights", i32 16, i32 112}
end_hunk_0
