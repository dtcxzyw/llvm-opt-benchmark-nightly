Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/cast_x86?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4ncnn18float32_to_float16Ef
declare noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21cast_fp16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %.not58 = icmp sgt i32 %i.k, %i.j
  br i1 %.not58, label %._crit_edge60, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %5, align 4, !tbaa !33     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.noexc.preheader, label %._crit_edge60

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.r = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.s = phi i32 [ %i.j, %.noexc.preheader ], [ %i.ao, %._crit_edge ]
  %i.t = phi i32 [ %i.p, %.noexc.preheader ], [ %i.ap, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.v = load ptr, ptr %4, align 8, !tbaa !28, !noalias !91
  %i.w = load i64, ptr %i.n, align 8, !tbaa !31, !noalias !91
  %i.x = mul i64 %i.w, %indvars.iv
  %i.y = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !91
  %i.z = mul i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.ab = load ptr, ptr %3, align 8, !tbaa !28, !noalias !92
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !92
  %i.ad = mul i64 %i.ac, %indvars.iv
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !92
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.057 = phi i32 [ %i.al, %bb.c ], [ 0, %.lr.ph.preheader ]
  %.02156 = phi ptr [ %i.ak, %bb.c ], [ %i.aa, %.lr.ph.preheader ] ; 2 uses
  %.02255 = phi ptr [ %i.aj, %bb.c ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %i.ah = load i16, ptr %.02255, align 2, !tbaa !43
  %i.ai = invoke noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext %i.ah)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.02255, i64 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.02156, i64 4
  store float %i.ai, ptr %.02156, align 4, !tbaa !36
  %i.al = add nuw nsw i32 %.057, 1                ; 2 uses
  %i.am = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !89

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.ao = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %.noexc ] ; 2 uses
  %i.ap = phi i32 [ %i.am, %._crit_edge.loopexit ], [ %i.t, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aq = sext i32 %i.ao to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aq
  br i1 %.not.not, label %.noexc, label %._crit_edge60, !llvm.loop !90

._crit_edge60:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge60, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #15
  unreachable
}

declare noundef nofpclass(nan inf) float @_ZN4ncnn18float16_to_float32Et(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge77, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.p = load i32, ptr %5, align 4, !tbaa !33     ; 9 uses
  %i.q = icmp sgt i32 %i.p, 7
  %.pre97 = load ptr, ptr %4, align 8, !tbaa !28, !noalias !101 ; 2 uses
  %.pre99 = load i64, ptr %i.n, align 8, !tbaa !31, !noalias !101 ; 2 uses
  br i1 %i.q, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre93 = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !101
  %.pre95 = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !102
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.t = load ptr, ptr %3, align 8, !tbaa !28, !noalias !102
  %i.u = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !102
  %i.v = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !102
  %factor.op.mul = mul i64 %i.u, %i.v
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !101
  %factor.op.mul78 = mul i64 %.pre99, %i.w
  %i.x = icmp sgt i32 %i.p, 0
  br i1 %i.x, label %.noexc.us.preheader, label %._crit_edge77

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.p, 1
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  %exitcond.not.2 = icmp eq i32 %i.p, 3
  %exitcond.not.3 = icmp eq i32 %i.p, 4
  %exitcond.not.4 = icmp eq i32 %i.p, 5
  %exitcond.not.5 = icmp eq i32 %i.p, 6
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.y, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %.reass79 = mul i64 %factor.op.mul78, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre97, i64 %.reass79 ; 7 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass ; 7 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  store i16 %i.ae, ptr %i.aa, align 2, !tbaa !43
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %6 = load i32, ptr %i.ag, align 4, !tbaa !36
  %7 = lshr i32 %6, 16
  %8 = trunc nuw i32 %7 to i16
  store i16 %8, ptr %i.af, align 2, !tbaa !43
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %9 = load i32, ptr %i.ai, align 4, !tbaa !36
  %10 = lshr i32 %9, 16
  %11 = trunc nuw i32 %10 to i16
  store i16 %11, ptr %i.ah, align 2, !tbaa !43
  br i1 %exitcond.not.2, label %._crit_edge.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %12 = load i32, ptr %i.ak, align 4, !tbaa !36
  %13 = lshr i32 %12, 16
  %14 = trunc nuw i32 %13 to i16
  store i16 %14, ptr %i.aj, align 2, !tbaa !43
  br i1 %exitcond.not.3, label %._crit_edge.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %15 = load i32, ptr %i.am, align 4, !tbaa !36
  %16 = lshr i32 %15, 16
  %17 = trunc nuw i32 %16 to i16
  store i16 %17, ptr %i.al, align 2, !tbaa !43
  br i1 %exitcond.not.4, label %._crit_edge.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %18 = load i32, ptr %i.ao, align 4, !tbaa !36
  %19 = lshr i32 %18, 16
  %20 = trunc nuw i32 %19 to i16
  store i16 %20, ptr %i.an, align 2, !tbaa !43
  br i1 %exitcond.not.5, label %._crit_edge.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %21 = load i32, ptr %i.aq, align 4, !tbaa !36
  %22 = lshr i32 %21, 16
  %23 = trunc nuw i32 %22 to i16
  store i16 %23, ptr %i.ap, align 2, !tbaa !43
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond86.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond86.not, label %._crit_edge77, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.ar = phi i64 [ %.pre99, %.noexc.preheader ], [ %i.bf, %._crit_edge ] ; 2 uses
  %i.as = phi ptr [ %.pre97, %.noexc.preheader ], [ %i.bg, %._crit_edge ] ; 2 uses
  %i.at = phi i64 [ %.pre95, %.noexc.preheader ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.au = phi i32 [ %i.p, %.noexc.preheader ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.av = phi i64 [ %.pre93, %.noexc.preheader ], [ %i.bj, %._crit_edge ] ; 2 uses
  %indvars.iv88 = phi i64 [ %i.r, %.noexc.preheader ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !28, !noalias !102
  %i.ax = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !102
  %i.ay = mul i64 %i.ax, %indvars.iv88
  %i.az = mul i64 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = mul i64 %i.ar, %indvars.iv88
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc ; 2 uses
  %i.be = icmp sgt i32 %i.au, 7
  br i1 %i.be, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !101
  %.pre94 = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !102
  %.pre96 = load ptr, ptr %4, align 8, !tbaa !28, !noalias !101
  %.pre98 = load i64, ptr %i.n, align 8, !tbaa !31, !noalias !101
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.noexc
  %i.bf = phi i64 [ %i.ar, %.noexc ], [ %.pre98, %.preheader.loopexit ]
  %i.bg = phi ptr [ %i.as, %.noexc ], [ %.pre96, %.preheader.loopexit ]
  %i.bh = phi i64 [ %i.at, %.noexc ], [ %.pre94, %.preheader.loopexit ]
  %i.bi = phi i32 [ %i.au, %.noexc ], [ %i.cq, %.preheader.loopexit ] ; 4 uses
  %i.bj = phi i64 [ %i.av, %.noexc ], [ %.pre, %.preheader.loopexit ]
  %.030.lcssa = phi ptr [ %i.ba, %.noexc ], [ %i.cm, %.preheader.loopexit ] ; 3 uses
  %.028.lcssa = phi ptr [ %i.bd, %.noexc ], [ %i.cn, %.preheader.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.co, %.preheader.loopexit ] ; 4 uses
  %i.bk = icmp slt i32 %.0.lcssa, %i.bi
  br i1 %i.bk, label %.lr.ph74.preheader, label %._crit_edge

.lr.ph74.preheader:                               ; preds = %.preheader
  %i.bl = xor i32 %.0.lcssa, -1
  %i.bm = add i32 %i.bi, %i.bl                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 7
  br i1 %min.iters.check, label %.lr.ph74.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph74.preheader
  %n.vec = and i64 %i.bo, 8589934584              ; 5 uses
  %i.bp = trunc i64 %n.vec to i32
  %i.bq = add i32 %.0.lcssa, %i.bp
  %i.br = shl nuw nsw i64 %n.vec, 1
  %i.bs = getelementptr i8, ptr %.028.lcssa, i64 %i.br
  %i.bt = shl nuw nsw i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %.030.lcssa, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.028.lcssa, i64 %i.bv ; 2 uses
  %i.bw = shl i64 %index, 2
  %next.gep114 = getelementptr i8, ptr %.030.lcssa, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !36
  %wide.load115 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !36
  %i.by = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.bz = lshr <4 x i32> %wide.load115, splat (i32 16)
  %i.ca = trunc nuw <4 x i32> %i.by to <4 x i16>
  %i.cb = trunc nuw <4 x i32> %i.bz to <4 x i16>
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ca, ptr %next.gep, align 2, !tbaa !43
  store <4 x i16> %i.cb, ptr %i.cc, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph74.preheader118

.lr.ph74.preheader118:                            ; preds = %.lr.ph74.preheader, %middle.block
  %.173.ph = phi i32 [ %.0.lcssa, %.lr.ph74.preheader ], [ %i.bq, %middle.block ]
  %.12972.ph = phi ptr [ %.028.lcssa, %.lr.ph74.preheader ], [ %i.bs, %middle.block ]
  %.13171.ph = phi ptr [ %.030.lcssa, %.lr.ph74.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph74

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.067 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.noexc ]
  %.02866 = phi ptr [ %i.cn, %.lr.ph ], [ %i.bd, %.noexc ] ; 2 uses
  %.03065 = phi ptr [ %i.cm, %.lr.ph ], [ %i.ba, %.noexc ] ; 3 uses
  %i.ce = load <8 x i16>, ptr %.03065, align 1, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %.03065, i64 16
  %i.cg = load <8 x i16>, ptr %i.cf, align 1, !tbaa !34
  %i.ch = shufflevector <8 x i16> %i.ce, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.ci = shufflevector <8 x i16> %i.cg, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.cj = bitcast <8 x i16> %i.ch to <4 x float>
  %i.ck = bitcast <8 x i16> %i.ci to <4 x float>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  store <4 x float> %i.cl, ptr %.02866, align 16, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %.03065, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02866, i64 16 ; 2 uses
  %i.co = add nuw nsw i32 %.067, 8                ; 3 uses
  %i.cp = or disjoint i32 %i.co, 7
  %i.cq = load i32, ptr %5, align 4, !tbaa !33    ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !98

.lr.ph74:                                         ; preds = %.lr.ph74.preheader118, %.lr.ph74
  %.173 = phi i32 [ %i.cx, %.lr.ph74 ], [ %.173.ph, %.lr.ph74.preheader118 ]
  %.12972 = phi ptr [ %i.cw, %.lr.ph74 ], [ %.12972.ph, %.lr.ph74.preheader118 ] ; 2 uses
  %.13171 = phi ptr [ %i.cs, %.lr.ph74 ], [ %.13171.ph, %.lr.ph74.preheader118 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.13171, i64 4
  %i.ct = load i32, ptr %.13171, align 4, !tbaa !36
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %.12972, i64 2
  store i16 %i.cv, ptr %.12972, align 2, !tbaa !43
  %i.cx = add nuw nsw i32 %.173, 1                ; 2 uses
  %exitcond87.not = icmp eq i32 %i.cx, %i.bi
  br i1 %exitcond87.not, label %._crit_edge, label %.lr.ph74, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph74, %middle.block, %.preheader
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %lftr.wideiv91 = trunc i64 %indvars.iv.next89 to i32
  %exitcond92.not = icmp eq i32 %i.s, %lftr.wideiv91
  br i1 %exitcond92.not, label %._crit_edge77, label %.noexc, !llvm.loop !100

._crit_edge77:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge77, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not73 = icmp sgt i32 %i.k, %i.j
  br i1 %.not73, label %._crit_edge75, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.p = load i32, ptr %5, align 4, !tbaa !33     ; 5 uses
  %i.q = icmp sgt i32 %i.p, 3
  %.pre91 = load i64, ptr %i.m, align 8, !tbaa !32, !noalias !111 ; 2 uses
  br i1 %i.q, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  %.pre93 = load ptr, ptr %4, align 8, !tbaa !28, !noalias !112
  %.pre95 = load i64, ptr %i.n, align 8, !tbaa !31, !noalias !112
  %.pre97 = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !112
  %.pre99 = load ptr, ptr %3, align 8, !tbaa !28, !noalias !111
  %.pre101 = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !111
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.t = load ptr, ptr %3, align 8, !tbaa !28, !noalias !111
  %i.u = load i64, ptr %i.l, align 8, !tbaa !31, !noalias !111
  %factor.op.mul = mul i64 %i.u, %.pre91
end_hunk_0
