Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/layernorm_x86?download=true
inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !53
  %i.ai = mul nsw i32 %i.l, %i.j
  tail call fastcc void @_ZN4ncnnL9layernormEPfPKfS2_fii(ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.af, float noundef nofpclass(nan inf) %i.ah, i32 noundef %i.ai, i32 noundef 1)
  br label %bb.m

bb.d:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ak)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.m

bb.e:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load i32, ptr %i.al, align 8, !tbaa !55
  %i.an = icmp eq i32 %i.am, %i.l
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ap)
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.m

bb.h:                                             ; preds = %_ZNK4ncnn3Mat8elembitsEv.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !55 ; 2 uses
  %i.as = icmp eq i32 %i.ar, %i.l
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.au)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.av = mul nsw i32 %i.n, %i.l
  %i.aw = icmp eq i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ay)
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c, %bb.k, %bb.l, %bb.i, %_ZNK4ncnn3Mat8elembitsEv.exit.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn13LayerNorm_x86C2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn9LayerNormC2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn13LayerNorm_x86E, i64 16), ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.b, align 4, !tbaa !74
  ret void
}

declare void @_ZN4ncnn9LayerNormC2Ev(ptr noundef nonnull align 8 dereferenceable(368)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 5 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  store i32 %i.n, ptr %i.c, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  store i32 %i.p, ptr %i.d, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  store i32 %i.r, ptr %i.e, align 4, !tbaa !30
  switch i32 %i.h, label %bb.l [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.y = load float, ptr %i.x, align 4, !tbaa !53
  %i.z = mul nsw i32 %i.l, %i.j
  tail call fastcc void @_ZN4ncnnL19layernorm_bf16s_sseEPtPKfS2_fii(ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, float noundef nofpclass(nan inf) %i.y, i32 noundef %i.z, i32 noundef 1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ab)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !55
  %i.ae = icmp eq i32 %i.ad, %i.l
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ag)
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.6, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.7, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %i.l
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.al)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.8, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.am = mul nsw i32 %i.n, %i.l
  %i.an = icmp eq i32 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.ap)
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.9, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.a)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZNK4ncnn13LayerNorm_x8621forward_inplace_bf16sERNS_3MatERKNS_6OptionE.omp_outlined.10, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b, %bb.a, %bb.h, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ncnnL9layernormEPfPKfS2_fii(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, float noundef nofpclass(nan inf) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %5, %4                       ; 27 uses
  %i.b = icmp sgt i32 %i.a, 3                     ; 4 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader175

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i32 %i.a, -4                     ; 2 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = add nuw nsw i32 %i.d, 1                  ; 2 uses
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.f = icmp ult i32 %i.c, 12
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.e, 2147483644
  br label %.lr.ph

.preheader175.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader175.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader175.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0130177.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ak, %.preheader175.loopexit.unr-lcssa ]
  %.0159176.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.aj, %.preheader175.loopexit.unr-lcssa ]
  %lcmp.mod382 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod382)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0130177.epil = phi ptr [ %i.i, %.lr.ph.epil ], [ %.0130177.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0159176.epil = phi <4 x float> [ %i.h, %.lr.ph.epil ], [ %.0159176.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.g = load <4 x float>, ptr %.0130177.epil, align 1, !tbaa !56
  %i.h = fadd fast <4 x float> %i.g, %.0159176.epil ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0130177.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader175.loopexit, label %.lr.ph.epil, !llvm.loop !75

.preheader175.loopexit:                           ; preds = %.lr.ph.epil, %.preheader175.loopexit.unr-lcssa
  %.lcssa379 = phi <4 x float> [ %i.aj, %.preheader175.loopexit.unr-lcssa ], [ %i.h, %.lr.ph.epil ]
  %.lcssa378 = phi ptr [ %i.ak, %.preheader175.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  %i.j = and i32 %i.a, 2147483644
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.loopexit, %bb.a
  %.0159.lcssa = phi <4 x float> [ zeroinitializer, %bb.a ], [ %.lcssa379, %.preheader175.loopexit ] ; 4 uses
  %.0130.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa378, %.preheader175.loopexit ] ; 3 uses
  %.0128.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader175.loopexit ] ; 4 uses
  %i.k = icmp slt i32 %.0128.lcssa, %i.a
  br i1 %i.k, label %.lr.ph184.preheader, label %._crit_edge

.lr.ph184.preheader:                              ; preds = %.preheader175
  %i.l = xor i32 %.0128.lcssa, -1
  %i.m = add i32 %i.a, %i.l                       ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 7
  br i1 %min.iters.check, label %.lr.ph184.preheader374, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph184.preheader
  %n.vec = and i64 %i.o, 8589934584               ; 4 uses
  %i.p = trunc i64 %n.vec to i32
  %i.q = add i32 %.0128.lcssa, %i.p
  %i.r = shl nuw nsw i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %.0130.lcssa, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi288 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0130.lcssa, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !58
  %wide.load289 = load <4 x float>, ptr %i.u, align 4, !tbaa !58
  %i.v = fadd fast <4 x float> %wide.load, %vec.phi ; 2 uses
  %i.w = fadd fast <4 x float> %wide.load289, %vec.phi288 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.w, %i.v
  %i.y = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph184.preheader374

.lr.ph184.preheader374:                           ; preds = %.lr.ph184.preheader, %middle.block
  %.0125183.ph = phi float [ 0.000000e+00, %.lr.ph184.preheader ], [ %i.y, %middle.block ]
  %.1129182.ph = phi i32 [ %.0128.lcssa, %.lr.ph184.preheader ], [ %i.q, %middle.block ]
  %.1131181.ph = phi ptr [ %.0130.lcssa, %.lr.ph184.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph184

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0130177 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %.0159176 = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.z = load <4 x float>, ptr %.0130177, align 1, !tbaa !56
  %i.aa = fadd fast <4 x float> %i.z, %.0159176
  %i.ab = getelementptr inbounds nuw i8, ptr %.0130177, i64 16
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !56
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %.0130177, i64 32
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !56
  %i.ag = fadd fast <4 x float> %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0130177, i64 48
  %i.ai = load <4 x float>, ptr %i.ah, align 1, !tbaa !56
  %i.aj = fadd fast <4 x float> %i.ai, %i.ag      ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0130177, i64 64 ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader175.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.lr.ph184:                                        ; preds = %.lr.ph184.preheader374, %.lr.ph184
  %.0125183 = phi float [ %i.am, %.lr.ph184 ], [ %.0125183.ph, %.lr.ph184.preheader374 ]
  %.1129182 = phi i32 [ %i.ao, %.lr.ph184 ], [ %.1129182.ph, %.lr.ph184.preheader374 ]
  %.1131181 = phi ptr [ %i.an, %.lr.ph184 ], [ %.1131181.ph, %.lr.ph184.preheader374 ] ; 2 uses
  %i.al = load float, ptr %.1131181, align 4, !tbaa !58
  %i.am = fadd fast float %i.al, %.0125183        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1131181, i64 4
  %i.ao = add nuw nsw i32 %.1129182, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph184, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph184, %middle.block, %.preheader175
  %.0125.lcssa = phi float [ 0.000000e+00, %.preheader175 ], [ %i.y, %middle.block ], [ %i.am, %.lr.ph184 ] ; 3 uses
  %i.ap = icmp eq i32 %5, 4                       ; 3 uses
  br i1 %i.ap, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge
  %i.aq = sitofp fast i32 %4 to float
  %i.ar = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = fdiv fast <4 x float> %.0159.lcssa, %i.as
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.au = icmp eq i32 %5, 1
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.av = shufflevector <4 x float> %.0159.lcssa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.aw = shufflevector <4 x float> %.0159.lcssa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ax = fadd fast <2 x float> %i.av, %i.aw
  %i.ay = tail call fast float @llvm.vector.reduce.fadd.v2f32(float %.0125.lcssa, <2 x float> %i.ax)
  %i.az = sitofp fast i32 %4 to float
  %i.ba = fdiv fast float %i.ay, %i.az            ; 2 uses
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.bd = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %.thread ] ; 2 uses
  %.2161 = phi nsz <4 x float> [ %i.bc, %bb.c ], [ %.0159.lcssa, %bb.b ], [ %i.at, %.thread ] ; 7 uses
  %.1126 = phi nsz float [ %i.ba, %bb.c ], [ %.0125.lcssa, %bb.b ], [ %.0125.lcssa, %.thread ] ; 4 uses
  br i1 %i.b, label %.lr.ph190.preheader, label %.preheader174

.lr.ph190.preheader:                              ; preds = %bb.d
  %i.be = add nsw i32 %i.a, -4                    ; 2 uses
  %i.bf = lshr i32 %i.be, 2
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %xtraiter383 = and i32 %i.bg, 3                 ; 3 uses
  %i.bh = icmp ult i32 %i.be, 12
  br i1 %i.bh, label %.lr.ph190.epil.preheader, label %.lr.ph190.preheader.new

.lr.ph190.preheader.new:                          ; preds = %.lr.ph190.preheader
  %unroll_iter389 = and i32 %i.bg, 2147483644
  br label %.lr.ph190

.preheader174.loopexit.unr-lcssa:                 ; preds = %.lr.ph190
  %lcmp.mod385.not = icmp eq i32 %xtraiter383, 0
  br i1 %lcmp.mod385.not, label %.preheader174.loopexit, label %.lr.ph190.epil.preheader

.lr.ph190.epil.preheader:                         ; preds = %.preheader174.loopexit.unr-lcssa, %.lr.ph190.preheader
  %.0121187.epil.init = phi ptr [ %0, %.lr.ph190.preheader ], [ %i.da, %.preheader174.loopexit.unr-lcssa ]
  %.0164186.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph190.preheader ], [ %i.cz, %.preheader174.loopexit.unr-lcssa ]
  %lcmp.mod388 = icmp ne i32 %xtraiter383, 0
  tail call void @llvm.assume(i1 %lcmp.mod388)
  br label %.lr.ph190.epil

.lr.ph190.epil:                                   ; preds = %.lr.ph190.epil, %.lr.ph190.epil.preheader
  %.0121187.epil = phi ptr [ %i.bm, %.lr.ph190.epil ], [ %.0121187.epil.init, %.lr.ph190.epil.preheader ] ; 2 uses
  %.0164186.epil = phi <4 x float> [ %i.bl, %.lr.ph190.epil ], [ %.0164186.epil.init, %.lr.ph190.epil.preheader ]
  %epil.iter384 = phi i32 [ %epil.iter384.next, %.lr.ph190.epil ], [ 0, %.lr.ph190.epil.preheader ]
  %i.bi = load <4 x float>, ptr %.0121187.epil, align 1, !tbaa !56
  %i.bj = fsub fast <4 x float> %i.bi, %.2161     ; 2 uses
  %i.bk = fmul fast <4 x float> %i.bj, %i.bj
  %i.bl = fadd fast <4 x float> %i.bk, %.0164186.epil ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0121187.epil, i64 16 ; 2 uses
  %epil.iter384.next = add i32 %epil.iter384, 1   ; 2 uses
  %epil.iter384.cmp.not = icmp eq i32 %epil.iter384.next, %xtraiter383
  br i1 %epil.iter384.cmp.not, label %.preheader174.loopexit, label %.lr.ph190.epil, !llvm.loop !78

.preheader174.loopexit:                           ; preds = %.lr.ph190.epil, %.preheader174.loopexit.unr-lcssa
  %.lcssa373 = phi <4 x float> [ %i.cz, %.preheader174.loopexit.unr-lcssa ], [ %i.bl, %.lr.ph190.epil ]
  %.lcssa372 = phi ptr [ %i.da, %.preheader174.loopexit.unr-lcssa ], [ %i.bm, %.lr.ph190.epil ]
  %i.bn = and i32 %i.a, 2147483644
  br label %.preheader174

.preheader174:                                    ; preds = %.preheader174.loopexit, %bb.d
end_hunk_0
begin_hunk_1_@_ZN4ncnnL9layernormEPfPKfS2_fii:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %.0121187, i64 64 ; 3 uses
  %niter390.next.3 = add nuw nsw i32 %niter390, 4 ; 2 uses
  %niter390.ncmp.3.not = icmp eq i32 %niter390.next.3, %unroll_iter389
  br i1 %niter390.ncmp.3.not, label %.preheader174.loopexit.unr-lcssa, label %.lr.ph190, !llvm.loop !1

.lr.ph197:                                        ; preds = %.lr.ph197.preheader368, %.lr.ph197
  %.1120196 = phi i32 [ %i.dg, %.lr.ph197 ], [ %.1120196.ph, %.lr.ph197.preheader368 ]
  %.1122195 = phi ptr [ %i.df, %.lr.ph197 ], [ %.1122195.ph, %.lr.ph197.preheader368 ] ; 2 uses
  %.0123194 = phi float [ %i.de, %.lr.ph197 ], [ %.0123194.ph, %.lr.ph197.preheader368 ]
  %i.db = load float, ptr %.1122195, align 4, !tbaa !58
  %i.dc = fsub fast float %i.db, %.1126           ; 2 uses
  %i.dd = fmul fast float %i.dc, %i.dc
  %i.de = fadd fast float %i.dd, %.0123194        ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1122195, i64 4
  %i.dg = add nuw nsw i32 %.1120196, 1            ; 2 uses
  %exitcond253.not = icmp eq i32 %i.dg, %i.a
  br i1 %exitcond253.not, label %._crit_edge198, label %.lr.ph197, !llvm.loop !80

._crit_edge198:                                   ; preds = %.lr.ph197, %middle.block303, %.preheader174
  %.0123.lcssa = phi float [ 0.000000e+00, %.preheader174 ], [ %i.cg, %middle.block303 ], [ %i.de, %.lr.ph197 ] ; 2 uses
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge198
  %i.dh = sitofp fast i32 %4 to float
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = insertelement <4 x float> poison, float %3, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = fdiv fast <4 x float> %.0164.lcssa, %i.dj
  %i.dn = fadd fast <4 x float> %i.dm, %i.dl
  %i.do = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dp = fmul fast <4 x float> %i.do, %.2161
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge198
  %.1165 = phi nsz <4 x float> [ %i.do, %bb.e ], [ %.0164.lcssa, %._crit_edge198 ] ; 3 uses
  %.3162 = phi nsz <4 x float> [ %i.dp, %bb.e ], [ %.2161, %._crit_edge198 ]
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dq = shufflevector <4 x float> %.1165, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dr = fadd fast <4 x float> %i.dq, %.1165     ; 2 uses
  %i.ds = extractelement <4 x float> %i.dr, i64 1
  %i.dt = extractelement <4 x float> %i.dr, i64 0
  %i.du = fadd fast float %i.ds, %.0123.lcssa
  %i.dv = fadd fast float %i.du, %i.dt
  %i.dw = sitofp fast i32 %4 to float
  %i.dx = fdiv fast float %i.dv, %i.dw
  %i.dy = fadd fast float %i.dx, %3
  %i.dz = tail call fast float @llvm.sqrt.f32(float %i.dy)
  %i.ea = fdiv fast float 1.000000e+00, %i.dz     ; 3 uses
  %i.eb = fmul fast float %i.ea, %.1126           ; 2 uses
  %i.ec = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2166 = phi nsz <4 x float> [ %i.ed, %bb.g ], [ %.1165, %bb.f ] ; 9 uses
  %.4163 = phi nsz <4 x float> [ %i.ef, %bb.g ], [ %.3162, %bb.f ] ; 9 uses
  %.2127 = phi nsz float [ %i.eb, %bb.g ], [ %.1126, %bb.f ] ; 6 uses
  %.1124 = phi nsz float [ %i.ea, %bb.g ], [ %.0123.lcssa, %bb.f ] ; 6 uses
  %i.eg = icmp ne ptr %1, null
  %i.eh = icmp ne ptr %2, null
  %or.cond = and i1 %i.eg, %i.eh
  br i1 %or.cond, label %bb.i, label %.preheader173

.preheader173:                                    ; preds = %bb.h
  br i1 %i.b, label %.lr.ph202.preheader, label %.preheader171

.lr.ph202.preheader:                              ; preds = %.preheader173
  %i.ei = add nsw i32 %i.a, -4                    ; 2 uses
  %i.ej = lshr i32 %i.ei, 2
  %i.ek = add nuw nsw i32 %i.ej, 1                ; 2 uses
  %xtraiter391 = and i32 %i.ek, 3                 ; 3 uses
  %i.el = icmp ult i32 %i.ei, 12
  br i1 %i.el, label %.lr.ph202.epil.preheader, label %.lr.ph202.preheader.new

.lr.ph202.preheader.new:                          ; preds = %.lr.ph202.preheader
  %unroll_iter396 = and i32 %i.ek, 2147483644
  br label %.lr.ph202

bb.i:                                             ; preds = %bb.h
  %or.cond232 = and i1 %i.ap, %i.b
  br i1 %or.cond232, label %.lr.ph212.preheader, label %.loopexit170

.lr.ph212.preheader:                              ; preds = %bb.i
  %i.em = add nsw i32 %i.a, -4                    ; 3 uses
  %i.en = lshr exact i32 %i.em, 2
  %i.eo = add nuw nsw i32 %i.en, 1                ; 2 uses
  %i.ep = icmp eq i32 %i.em, 0
  br i1 %i.ep, label %.lr.ph212.epil.preheader, label %.lr.ph212.preheader.new

.lr.ph212.preheader.new:                          ; preds = %.lr.ph212.preheader
  %unroll_iter405 = and i32 %i.eo, 2147483646
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212, %.lr.ph212.preheader.new
  %.0104210 = phi ptr [ %0, %.lr.ph212.preheader.new ], [ %i.fp, %.lr.ph212 ] ; 4 uses
  %.0109209 = phi ptr [ %1, %.lr.ph212.preheader.new ], [ %i.fq, %.lr.ph212 ] ; 3 uses
  %.0114208 = phi ptr [ %2, %.lr.ph212.preheader.new ], [ %i.fr, %.lr.ph212 ] ; 3 uses
  %niter406 = phi i32 [ 0, %.lr.ph212.preheader.new ], [ %niter406.next.1, %.lr.ph212 ]
  %i.eq = load <4 x float>, ptr %.0104210, align 1, !tbaa !56
  %i.er = load float, ptr %.0109209, align 4, !tbaa !58
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = load float, ptr %.0114208, align 4, !tbaa !58
  %i.ev = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fmul fast <4 x float> %i.eq, %.2166
  %i.ey = fsub fast <4 x float> %i.ex, %.4163
  %i.ez = fmul fast <4 x float> %i.et, %i.ey
  %i.fa = fadd fast <4 x float> %i.ez, %i.ew
  store <4 x float> %i.fa, ptr %.0104210, align 1, !tbaa !56
  %i.fb = getelementptr inbounds nuw i8, ptr %.0104210, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0109209, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.0114208, i64 4
  %i.fe = load <4 x float>, ptr %i.fb, align 1, !tbaa !56
  %i.ff = load float, ptr %i.fc, align 4, !tbaa !58
  %i.fg = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fi = load float, ptr %i.fd, align 4, !tbaa !58
  %i.fj = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fl = fmul fast <4 x float> %i.fe, %.2166
  %i.fm = fsub fast <4 x float> %i.fl, %.4163
  %i.fn = fmul fast <4 x float> %i.fh, %i.fm
  %i.fo = fadd fast <4 x float> %i.fn, %i.fk
  store <4 x float> %i.fo, ptr %i.fb, align 1, !tbaa !56
  %i.fp = getelementptr inbounds nuw i8, ptr %.0104210, i64 32 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0109209, i64 8 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0114208, i64 8 ; 3 uses
  %niter406.next.1 = add i32 %niter406, 2         ; 2 uses
  %niter406.ncmp.1.not = icmp eq i32 %niter406.next.1, %unroll_iter405
  br i1 %niter406.ncmp.1.not, label %.loopexit170.loopexit.unr-lcssa, label %.lr.ph212, !llvm.loop !2

.loopexit170.loopexit.unr-lcssa:                  ; preds = %.lr.ph212
  %i.fs = and i32 %i.em, 4
  %lcmp.mod400.not.not = icmp eq i32 %i.fs, 0
  br i1 %lcmp.mod400.not.not, label %.lr.ph212.epil.preheader, label %.loopexit170

.lr.ph212.epil.preheader:                         ; preds = %.loopexit170.loopexit.unr-lcssa, %.lr.ph212.preheader
  %.0104210.epil.init = phi ptr [ %0, %.lr.ph212.preheader ], [ %i.fp, %.loopexit170.loopexit.unr-lcssa ] ; 3 uses
  %.0109209.epil.init = phi ptr [ %1, %.lr.ph212.preheader ], [ %i.fq, %.loopexit170.loopexit.unr-lcssa ] ; 2 uses
  %.0114208.epil.init = phi ptr [ %2, %.lr.ph212.preheader ], [ %i.fr, %.loopexit170.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod404 = trunc i32 %i.eo to i1
  tail call void @llvm.assume(i1 %lcmp.mod404)
  %i.ft = load <4 x float>, ptr %.0104210.epil.init, align 1, !tbaa !56
  %i.fu = load float, ptr %.0109209.epil.init, align 4, !tbaa !58
  %i.fv = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = load float, ptr %.0114208.epil.init, align 4, !tbaa !58
  %i.fy = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = fmul fast <4 x float> %i.ft, %.2166
  %i.gb = fsub fast <4 x float> %i.ga, %.4163
  %i.gc = fmul fast <4 x float> %i.fw, %i.gb
  %i.gd = fadd fast <4 x float> %i.gc, %i.fz
  store <4 x float> %i.gd, ptr %.0104210.epil.init, align 1, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %.0104210.epil.init, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.0109209.epil.init, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.0114208.epil.init, i64 4
  br label %.loopexit170

.loopexit170:                                     ; preds = %.lr.ph212.epil.preheader, %.loopexit170.loopexit.unr-lcssa, %bb.i
  %.1115 = phi ptr [ %2, %bb.i ], [ %i.fr, %.loopexit170.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph212.epil.preheader ] ; 2 uses
  %.1110 = phi ptr [ %1, %bb.i ], [ %i.fq, %.loopexit170.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph212.epil.preheader ] ; 2 uses
  %.1105 = phi ptr [ %0, %bb.i ], [ %i.fp, %.loopexit170.loopexit.unr-lcssa ], [ %i.ge, %.lr.ph212.epil.preheader ] ; 2 uses
  %.1103 = phi i32 [ 0, %bb.i ], [ %i.a, %.loopexit170.loopexit.unr-lcssa ], [ %i.a, %.lr.ph212.epil.preheader ] ; 3 uses
  %i.gh = or disjoint i32 %.1103, 3
  %i.gi = icmp slt i32 %i.gh, %i.a
  %or.cond234 = select i1 %i.bd, i1 %i.gi, i1 false
  br i1 %or.cond234, label %.lr.ph221, label %.loopexit168

.lr.ph221:                                        ; preds = %.loopexit170, %.lr.ph221
  %.2220 = phi i32 [ %i.gt, %.lr.ph221 ], [ %.1103, %.loopexit170 ]
  %.2106219 = phi ptr [ %i.gq, %.lr.ph221 ], [ %.1105, %.loopexit170 ] ; 3 uses
  %.2111218 = phi ptr [ %i.gr, %.lr.ph221 ], [ %.1110, %.loopexit170 ] ; 2 uses
  %.2116217 = phi ptr [ %i.gs, %.lr.ph221 ], [ %.1115, %.loopexit170 ] ; 2 uses
  %i.gj = load <4 x float>, ptr %.2106219, align 1, !tbaa !56
  %i.gk = load <4 x float>, ptr %.2111218, align 1, !tbaa !56
  %i.gl = load <4 x float>, ptr %.2116217, align 1, !tbaa !56
  %i.gm = fmul fast <4 x float> %i.gj, %.2166
  %i.gn = fsub fast <4 x float> %i.gm, %.4163
  %i.go = fmul fast <4 x float> %i.gn, %i.gk
  %i.gp = fadd fast <4 x float> %i.go, %i.gl
  store <4 x float> %i.gp, ptr %.2106219, align 1, !tbaa !56
  %i.gq = getelementptr inbounds nuw i8, ptr %.2106219, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.2111218, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.2116217, i64 16 ; 2 uses
  %i.gt = add nuw nsw i32 %.2220, 4               ; 3 uses
  %i.gu = or disjoint i32 %i.gt, 3
  %i.gv = icmp slt i32 %i.gu, %i.a
  br i1 %i.gv, label %.lr.ph221, label %.loopexit168, !llvm.loop !3

.loopexit168:                                     ; preds = %.lr.ph221, %.loopexit170
  %.3117 = phi ptr [ %.1115, %.loopexit170 ], [ %i.gs, %.lr.ph221 ] ; 6 uses
  %.3112 = phi ptr [ %.1110, %.loopexit170 ], [ %i.gr, %.lr.ph221 ] ; 6 uses
  %.3107 = phi ptr [ %.1105, %.loopexit170 ], [ %i.gq, %.lr.ph221 ] ; 7 uses
  %.3 = phi i32 [ %.1103, %.loopexit170 ], [ %i.gt, %.lr.ph221 ] ; 6 uses
  %i.gw = icmp slt i32 %.3, %i.a
  br i1 %i.gw, label %.lr.ph231.preheader, label %.loopexit

.lr.ph231.preheader:                              ; preds = %.loopexit168
  %i.gx = xor i32 %.3, -1
  %i.gy = add i32 %i.a, %i.gx                     ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check333 = icmp ult i32 %i.gy, 7
  br i1 %min.iters.check333, label %.lr.ph231.preheader358, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph231.preheader
  %6 = xor i32 %.3, -1
  %7 = add i32 %i.a, %6
  %8 = zext i32 %7 to i64
  %i.hb = shl nuw nsw i64 %8, 2
  %i.hc = add nuw nsw i64 %i.hb, 4                ; 3 uses
  %scevgep = getelementptr i8, ptr %.3107, i64 %i.hc ; 2 uses
  %scevgep327 = getelementptr i8, ptr %.3112, i64 %i.hc
  %scevgep328 = getelementptr i8, ptr %.3117, i64 %i.hc
  %bound0 = icmp ult ptr %.3107, %scevgep327
  %bound1 = icmp ult ptr %.3112, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0329 = icmp ult ptr %.3107, %scevgep328
  %bound1330 = icmp ult ptr %.3117, %scevgep
  %found.conflict331 = and i1 %bound0329, %bound1330
  %conflict.rdx = or i1 %found.conflict, %found.conflict331
  br i1 %conflict.rdx, label %.lr.ph231.preheader358, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck
  %n.vec335 = and i64 %i.ha, 8589934584           ; 4 uses
  %i.hd = trunc i64 %n.vec335 to i32
  %i.he = add i32 %.3, %i.hd
  %i.hf = shl nuw nsw i64 %n.vec335, 2            ; 3 uses
  %i.hg = getelementptr i8, ptr %.3107, i64 %i.hf
  %i.hh = getelementptr i8, ptr %.3112, i64 %i.hf
  %i.hi = getelementptr i8, ptr %.3117, i64 %i.hf
  %broadcast.splatinsert336 = insertelement <4 x float> poison, float %.1124, i64 0
  %broadcast.splat337 = shufflevector <4 x float> %broadcast.splatinsert336, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert338 = insertelement <4 x float> poison, float %.2127, i64 0
  %broadcast.splat339 = shufflevector <4 x float> %broadcast.splatinsert338, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph334
  %index341 = phi i64 [ 0, %vector.ph334 ], [ %index.next351, %vector.body340 ] ; 2 uses
  %i.hj = shl i64 %index341, 2                    ; 3 uses
  %next.gep342 = getelementptr i8, ptr %.3107, i64 %i.hj ; 3 uses
  %next.gep343 = getelementptr i8, ptr %.3112, i64 %i.hj ; 2 uses
  %next.gep344 = getelementptr i8, ptr %.3117, i64 %i.hj ; 2 uses
  %i.hk = getelementptr i8, ptr %next.gep342, i64 16 ; 2 uses
  %wide.load345 = load <4 x float>, ptr %next.gep342, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  %wide.load346 = load <4 x float>, ptr %i.hk, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  %i.hl = fmul fast <4 x float> %wide.load345, %broadcast.splat337
  %i.hm = fmul fast <4 x float> %wide.load346, %broadcast.splat337
  %i.hn = fsub fast <4 x float> %i.hl, %broadcast.splat339
  %i.ho = fsub fast <4 x float> %i.hm, %broadcast.splat339
  %i.hp = getelementptr i8, ptr %next.gep343, i64 16
  %wide.load347 = load <4 x float>, ptr %next.gep343, align 4, !tbaa !58, !alias.scope !92
  %wide.load348 = load <4 x float>, ptr %i.hp, align 4, !tbaa !58, !alias.scope !92
  %i.hq = fmul fast <4 x float> %i.hn, %wide.load347
  %i.hr = fmul fast <4 x float> %i.ho, %wide.load348
  %i.hs = getelementptr i8, ptr %next.gep344, i64 16
  %wide.load349 = load <4 x float>, ptr %next.gep344, align 4, !tbaa !58, !alias.scope !93
  %wide.load350 = load <4 x float>, ptr %i.hs, align 4, !tbaa !58, !alias.scope !93
  %i.ht = fadd fast <4 x float> %i.hq, %wide.load349
  %i.hu = fadd fast <4 x float> %i.hr, %wide.load350
  store <4 x float> %i.ht, ptr %next.gep342, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  store <4 x float> %i.hu, ptr %i.hk, align 4, !tbaa !58, !alias.scope !90, !noalias !91
  %index.next351 = add nuw i64 %index341, 8       ; 2 uses
  %i.hv = icmp eq i64 %index.next351, %n.vec335
  br i1 %i.hv, label %middle.block352, label %vector.body340, !llvm.loop !85

middle.block352:                                  ; preds = %vector.body340
  %cmp.n353 = icmp eq i64 %i.ha, %n.vec335
  br i1 %cmp.n353, label %.loopexit, label %.lr.ph231.preheader358

.lr.ph231.preheader358:                           ; preds = %vector.memcheck, %.lr.ph231.preheader, %middle.block352
  %.4229.ph = phi i32 [ %.3, %vector.memcheck ], [ %.3, %.lr.ph231.preheader ], [ %i.he, %middle.block352 ] ; 4 uses
  %.4108228.ph = phi ptr [ %.3107, %vector.memcheck ], [ %.3107, %.lr.ph231.preheader ], [ %i.hg, %middle.block352 ] ; 4 uses
  %.4113227.ph = phi ptr [ %.3112, %vector.memcheck ], [ %.3112, %.lr.ph231.preheader ], [ %i.hh, %middle.block352 ] ; 3 uses
  %.4118226.ph = phi ptr [ %.3117, %vector.memcheck ], [ %.3117, %.lr.ph231.preheader ], [ %i.hi, %middle.block352 ] ; 3 uses
  %i.hw = sub i32 %i.a, %.4229.ph
  %.neg = add i32 %.4229.ph, 1
  %xtraiter407 = and i32 %i.hw, 1
  %lcmp.mod408.not = icmp eq i32 %xtraiter407, 0
  br i1 %lcmp.mod408.not, label %.lr.ph231.prol.loopexit, label %.lr.ph231.prol

.lr.ph231.prol:                                   ; preds = %.lr.ph231.preheader358
  %i.hx = load float, ptr %.4108228.ph, align 4, !tbaa !58
  %i.hy = fmul fast float %i.hx, %.1124
  %i.hz = fsub fast float %i.hy, %.2127
  %i.ia = load float, ptr %.4113227.ph, align 4, !tbaa !58
  %i.ib = fmul fast float %i.hz, %i.ia
  %i.ic = load float, ptr %.4118226.ph, align 4, !tbaa !58
  %i.id = fadd fast float %i.ib, %i.ic
  store float %i.id, ptr %.4108228.ph, align 4, !tbaa !58
  %i.ie = getelementptr inbounds nuw i8, ptr %.4108228.ph, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.4113227.ph, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.4118226.ph, i64 4
  %i.ih = add nsw i32 %.4229.ph, 1
  br label %.lr.ph231.prol.loopexit

.lr.ph231.prol.loopexit:                          ; preds = %.lr.ph231.prol, %.lr.ph231.preheader358
  %.4229.unr = phi i32 [ %.4229.ph, %.lr.ph231.preheader358 ], [ %i.ih, %.lr.ph231.prol ]
  %.4108228.unr = phi ptr [ %.4108228.ph, %.lr.ph231.preheader358 ], [ %i.ie, %.lr.ph231.prol ]
  %.4113227.unr = phi ptr [ %.4113227.ph, %.lr.ph231.preheader358 ], [ %i.if, %.lr.ph231.prol ]
  %.4118226.unr = phi ptr [ %.4118226.ph, %.lr.ph231.preheader358 ], [ %i.ig, %.lr.ph231.prol ]
  %i.ii = icmp eq i32 %i.a, %.neg
  br i1 %i.ii, label %.loopexit, label %.lr.ph231

.lr.ph231:                                        ; preds = %.lr.ph231.prol.loopexit, %.lr.ph231
  %.4229 = phi i32 [ %i.jd, %.lr.ph231 ], [ %.4229.unr, %.lr.ph231.prol.loopexit ]
  %.4108228 = phi ptr [ %i.ja, %.lr.ph231 ], [ %.4108228.unr, %.lr.ph231.prol.loopexit ] ; 4 uses
  %.4113227 = phi ptr [ %i.jb, %.lr.ph231 ], [ %.4113227.unr, %.lr.ph231.prol.loopexit ] ; 3 uses
  %.4118226 = phi ptr [ %i.jc, %.lr.ph231 ], [ %.4118226.unr, %.lr.ph231.prol.loopexit ] ; 3 uses
  %i.ij = load float, ptr %.4108228, align 4, !tbaa !58
  %i.ik = fmul fast float %i.ij, %.1124
  %i.il = fsub fast float %i.ik, %.2127
  %i.im = load float, ptr %.4113227, align 4, !tbaa !58
  %i.in = fmul fast float %i.il, %i.im
  %i.io = load float, ptr %.4118226, align 4, !tbaa !58
  %i.ip = fadd fast float %i.in, %i.io
  store float %i.ip, ptr %.4108228, align 4, !tbaa !58
  %i.iq = getelementptr inbounds nuw i8, ptr %.4108228, i64 4 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.4113227, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %.4118226, i64 4
  %i.it = load float, ptr %i.iq, align 4, !tbaa !58
  %i.iu = fmul fast float %i.it, %.1124
  %i.iv = fsub fast float %i.iu, %.2127
  %i.iw = load float, ptr %i.ir, align 4, !tbaa !58
  %i.ix = fmul fast float %i.iv, %i.iw
  %i.iy = load float, ptr %i.is, align 4, !tbaa !58
  %i.iz = fadd fast float %i.ix, %i.iy
  store float %i.iz, ptr %i.iq, align 4, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %.4108228, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %.4113227, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %.4118226, i64 8
  %i.jd = add nsw i32 %.4229, 2                   ; 2 uses
  %exitcond255.not.1 = icmp eq i32 %i.jd, %i.a
  br i1 %exitcond255.not.1, label %.loopexit, label %.lr.ph231, !llvm.loop !86

.preheader171.loopexit.unr-lcssa:                 ; preds = %.lr.ph202
  %lcmp.mod393.not = icmp eq i32 %xtraiter391, 0
  br i1 %lcmp.mod393.not, label %.preheader171.loopexit, label %.lr.ph202.epil.preheader

.lr.ph202.epil.preheader:                         ; preds = %.preheader171.loopexit.unr-lcssa, %.lr.ph202.preheader
  %.5200.epil.init = phi ptr [ %0, %.lr.ph202.preheader ], [ %i.ko, %.preheader171.loopexit.unr-lcssa ]
  %lcmp.mod395 = icmp ne i32 %xtraiter391, 0
  tail call void @llvm.assume(i1 %lcmp.mod395)
  br label %.lr.ph202.epil

.lr.ph202.epil:                                   ; preds = %.lr.ph202.epil, %.lr.ph202.epil.preheader
  %.5200.epil = phi ptr [ %i.jh, %.lr.ph202.epil ], [ %.5200.epil.init, %.lr.ph202.epil.preheader ] ; 3 uses
  %epil.iter392 = phi i32 [ %epil.iter392.next, %.lr.ph202.epil ], [ 0, %.lr.ph202.epil.preheader ]
  %i.je = load <4 x float>, ptr %.5200.epil, align 1, !tbaa !56
  %i.jf = fmul fast <4 x float> %i.je, %.2166
  %i.jg = fsub fast <4 x float> %i.jf, %.4163
  store <4 x float> %i.jg, ptr %.5200.epil, align 1, !tbaa !56
  %i.jh = getelementptr inbounds nuw i8, ptr %.5200.epil, i64 16 ; 2 uses
  %epil.iter392.next = add i32 %epil.iter392, 1   ; 2 uses
  %epil.iter392.cmp.not = icmp eq i32 %epil.iter392.next, %xtraiter391
  br i1 %epil.iter392.cmp.not, label %.preheader171.loopexit, label %.lr.ph202.epil, !llvm.loop !87

.preheader171.loopexit:                           ; preds = %.lr.ph202.epil, %.preheader171.loopexit.unr-lcssa
  %.lcssa367 = phi ptr [ %i.ko, %.preheader171.loopexit.unr-lcssa ], [ %i.jh, %.lr.ph202.epil ]
  %i.ji = and i32 %i.a, 2147483644
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.loopexit, %.preheader173
  %.5.lcssa = phi ptr [ %0, %.preheader173 ], [ %.lcssa367, %.preheader171.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.preheader173 ], [ %i.ji, %.preheader171.loopexit ] ; 4 uses
  %i.jj = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.jj, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %.preheader171
  %i.jk = xor i32 %.0.lcssa, -1
  %i.jl = add i32 %i.a, %i.jk                     ; 2 uses
  %i.jm = zext i32 %i.jl to i64
  %i.jn = add nuw nsw i64 %i.jm, 1                ; 2 uses
  %min.iters.check310 = icmp ult i32 %i.jl, 7
  br i1 %min.iters.check310, label %.lr.ph207.preheader365, label %vector.ph311

vector.ph311:                                     ; preds = %.lr.ph207.preheader
  %n.vec312 = and i64 %i.jn, 8589934584           ; 4 uses
  %i.jo = trunc i64 %n.vec312 to i32
  %i.jp = add i32 %.0.lcssa, %i.jo
  %i.jq = shl nuw nsw i64 %n.vec312, 2
  %i.jr = getelementptr i8, ptr %.5.lcssa, i64 %i.jq
  %broadcast.splatinsert313 = insertelement <4 x float> poison, float %.1124, i64 0
  %broadcast.splat314 = shufflevector <4 x float> %broadcast.splatinsert313, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert315 = insertelement <4 x float> poison, float %.2127, i64 0
  %broadcast.splat316 = shufflevector <4 x float> %broadcast.splatinsert315, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph311
  %index318 = phi i64 [ 0, %vector.ph311 ], [ %index.next322, %vector.body317 ] ; 2 uses
  %i.js = shl i64 %index318, 2
  %next.gep319 = getelementptr i8, ptr %.5.lcssa, i64 %i.js ; 3 uses
  %i.jt = getelementptr i8, ptr %next.gep319, i64 16 ; 2 uses
  %wide.load320 = load <4 x float>, ptr %next.gep319, align 4, !tbaa !58
  %wide.load321 = load <4 x float>, ptr %i.jt, align 4, !tbaa !58
  %i.ju = fmul fast <4 x float> %wide.load320, %broadcast.splat314
  %i.jv = fmul fast <4 x float> %wide.load321, %broadcast.splat314
  %i.jw = fsub fast <4 x float> %i.ju, %broadcast.splat316
  %i.jx = fsub fast <4 x float> %i.jv, %broadcast.splat316
  store <4 x float> %i.jw, ptr %next.gep319, align 4, !tbaa !58
  store <4 x float> %i.jx, ptr %i.jt, align 4, !tbaa !58
  %index.next322 = add nuw i64 %index318, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next322, %n.vec312
  br i1 %i.jy, label %middle.block323, label %vector.body317, !llvm.loop !88

middle.block323:                                  ; preds = %vector.body317
  %cmp.n324 = icmp eq i64 %i.jn, %n.vec312
  br i1 %cmp.n324, label %.loopexit, label %.lr.ph207.preheader365

.lr.ph207.preheader365:                           ; preds = %.lr.ph207.preheader, %middle.block323
end_hunk_1
