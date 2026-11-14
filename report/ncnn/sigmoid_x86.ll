Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/sigmoid_x86?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn11Sigmoid_x8615forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %next.gep = getelementptr i8, ptr %.029.lcssa, i64 %i.bh ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !61
  %i.bi = fneg fast <4 x float> %wide.load
  %i.bj = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bi)
  %i.bk = fadd fast <4 x float> %i.bj, splat (float 1.000000e+00)
  %i.bl = fdiv fast <4 x float> splat (float 1.000000e+00), %i.bk
  store <4 x float> %i.bl, ptr %next.gep, align 4, !tbaa !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph69.preheader98

.lr.ph69.preheader98:                             ; preds = %.lr.ph69.preheader, %middle.block
  %.168.ph = phi i32 [ %.0.lcssa, %.lr.ph69.preheader ], [ %i.be, %middle.block ]
  %.13067.ph = phi ptr [ %.029.lcssa, %.lr.ph69.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph69

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.064 = phi i32 [ %i.cw, %.lr.ph ], [ 0, %.noexc ]
  %.02963 = phi ptr [ %i.cv, %.lr.ph ], [ %i.av, %.noexc ] ; 3 uses
  %i.bn = load <4 x float>, ptr %.02963, align 16, !tbaa !29
  %i.bo = fneg fast <4 x float> %i.bn
  %i.bp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bo, <4 x float> splat (float f0x42B0C0A5))
  %i.bq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bp, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.br = fmul fast <4 x float> %i.bq, splat (float f0x3FB8AA3B)
  %i.bs = fadd fast <4 x float> %i.br, splat (float 5.000000e-01) ; 2 uses
  %i.bt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bs)
  %i.bu = sitofp fast <4 x i32> %i.bt to <4 x float> ; 2 uses
  %i.bv = fcmp fast olt <4 x float> %i.bs, %i.bu
  %i.bw = select <4 x i1> %i.bv, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.bx = fsub fast <4 x float> %i.bu, %i.bw      ; 2 uses
  %i.by = fmul fast <4 x float> %i.bx, splat (float f0x3F317218)
  %i.bz = fsub fast <4 x float> %i.bq, %i.by      ; 8 uses
  %i.ca = fmul fast <4 x float> %i.bz, %i.bz
  %i.cb = fmul fast <4 x float> %i.bz, splat (float f0x39506967)
  %i.cc = fadd fast <4 x float> %i.cb, splat (float f0x3AB743CE)
  %i.cd = fmul fast <4 x float> %i.cc, %i.bz
  %i.ce = fadd fast <4 x float> %i.cd, splat (float f0x3C088908)
  %i.cf = fmul fast <4 x float> %i.ce, %i.bz
  %i.cg = fadd fast <4 x float> %i.cf, splat (float f0x3D2AA9C1)
  %i.ch = fmul fast <4 x float> %i.cg, %i.bz
  %i.ci = fadd fast <4 x float> %i.ch, splat (float f0x3E2AAAAA)
  %i.cj = fmul fast <4 x float> %i.ci, %i.bz
  %i.ck = fadd fast <4 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fmul fast <4 x float> %i.ca, %i.ck
  %i.cm = fadd fast <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cn = fadd fast <4 x float> %i.cm, %i.cl
  %i.co = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bx)
  %i.cp = shl <4 x i32> %i.co, splat (i32 23)
  %i.cq = add <4 x i32> %i.cp, splat (i32 1065353216)
  %i.cr = bitcast <4 x i32> %i.cq to <4 x float>
  %i.cs = fmul fast <4 x float> %i.cn, %i.cr
  %i.ct = fadd fast <4 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = fdiv fast <4 x float> splat (float 1.000000e+00), %i.ct
  store <4 x float> %i.cu, ptr %.02963, align 16, !tbaa !29
  %i.cv = getelementptr inbounds nuw i8, ptr %.02963, i64 16 ; 2 uses
  %i.cw = add nuw nsw i32 %.064, 4                ; 3 uses
  %i.cx = or disjoint i32 %i.cw, 3
  %i.cy = load i32, ptr %4, align 4, !tbaa !22    ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %.preheader, !llvm.loop !56

.lr.ph69:                                         ; preds = %.lr.ph69.preheader98, %.lr.ph69
  %.168 = phi i32 [ %i.dg, %.lr.ph69 ], [ %.168.ph, %.lr.ph69.preheader98 ]
  %.13067 = phi ptr [ %i.df, %.lr.ph69 ], [ %.13067.ph, %.lr.ph69.preheader98 ] ; 3 uses
  %i.da = load float, ptr %.13067, align 4, !tbaa !61
  %i.db = fneg fast float %i.da
  %i.dc = call fast float @llvm.exp.f32(float %i.db)
  %i.dd = fadd fast float %i.dc, 1.000000e+00
  %i.de = fdiv fast float 1.000000e+00, %i.dd
  store float %i.de, ptr %.13067, align 4, !tbaa !61
  %i.df = getelementptr inbounds nuw i8, ptr %.13067, i64 4
  %i.dg = add nuw nsw i32 %.168, 1                ; 2 uses
  %exitcond79.not = icmp eq i32 %i.dg, %i.ax
  br i1 %exitcond79.not, label %._crit_edge, label %.lr.ph69, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph69, %middle.block, %.preheader
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1 ; 2 uses
  %lftr.wideiv83 = trunc i64 %indvars.iv.next81 to i32
  %exitcond84.not = icmp eq i32 %i.q, %lftr.wideiv83
  br i1 %exitcond84.not, label %._crit_edge72, label %.noexc, !llvm.loop !58

._crit_edge72:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge72, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !32 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL13sigmoid_bf16sERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !22     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !22
  %i.h = load i32, ptr %0, align 4, !tbaa !22     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !22
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !22
  %i.k = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %.not73 = icmp sgt i32 %i.k, %i.j
  br i1 %.not73, label %._crit_edge75, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !22     ; 5 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !24, !noalias !68
  %i.s = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !68
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !68
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = icmp sgt i32 %i.n, 0
  br i1 %i.u, label %.noexc.us.preheader, label %._crit_edge75

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.v = sext i32 %i.k to i64
  %i.w = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.v, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 4 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !70
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = fneg fast float %i.ab
  %i.ad = call fast float @llvm.exp.f32(float %i.ac)
  %i.ae = fadd fast float %i.ad, 1.000000e+00
  %i.af = fdiv fast float 1.000000e+00, %i.ae
  %i.ag = bitcast float %i.af to i32
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = trunc nuw nsw i32 %i.ah to i16
  store i16 %i.ai, ptr %i.x, align 2, !tbaa !70
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !70
  %i.al = zext i16 %i.ak to i32
  %i.am = shl nuw i32 %i.al, 16
  %i.an = bitcast i32 %i.am to float
  %i.ao = fneg fast float %i.an
  %i.ap = call fast float @llvm.exp.f32(float %i.ao)
  %i.aq = fadd fast float %i.ap, 1.000000e+00
  %i.ar = fdiv fast float 1.000000e+00, %i.aq
  %i.as = bitcast float %i.ar to i32
  %i.at = lshr i32 %i.as, 16
  %i.au = trunc nuw nsw i32 %i.at to i16
  store i16 %i.au, ptr %i.aj, align 2, !tbaa !70
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !70
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw i32 %i.ax, 16
  %i.az = bitcast i32 %i.ay to float
  %i.ba = fneg fast float %i.az
  %i.bb = call fast float @llvm.exp.f32(float %i.ba)
  %i.bc = fadd fast float %i.bb, 1.000000e+00
  %i.bd = fdiv fast float 1.000000e+00, %i.bc
  %i.be = bitcast float %i.bd to i32
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.av, align 2, !tbaa !70
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.noexc.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond81.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond81.not, label %._crit_edge75, label %.noexc.us

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.bh = phi i32 [ %i.n, %.noexc.preheader ], [ %i.bp, %._crit_edge ] ; 2 uses
  %indvars.iv83 = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next84, %._crit_edge ] ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !24, !noalias !68
  %i.bj = load i64, ptr %i.l, align 8, !tbaa !25, !noalias !68
  %i.bk = mul i64 %i.bj, %indvars.iv83
  %i.bl = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !68
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm ; 2 uses
  %i.bo = icmp sgt i32 %i.bh, 3
  br i1 %i.bo, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.bp = phi i32 [ %i.bh, %.noexc ], [ %i.eg, %.lr.ph ] ; 4 uses
  %.030.lcssa = phi ptr [ %i.bn, %.noexc ], [ %i.ed, %.lr.ph ] ; 3 uses
  %.029.lcssa = phi i32 [ 0, %.noexc ], [ %i.ee, %.lr.ph ] ; 4 uses
  %i.bq = icmp slt i32 %.029.lcssa, %i.bp
  br i1 %i.bq, label %.lr.ph72.preheader, label %._crit_edge

.lr.ph72.preheader:                               ; preds = %.preheader
  %i.br = xor i32 %.029.lcssa, -1
  %i.bs = add i32 %i.bp, %i.br                    ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bs, 7
  br i1 %min.iters.check, label %.lr.ph72.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.preheader
  %n.vec = and i64 %i.bu, 8589934584              ; 4 uses
  %i.bv = trunc i64 %n.vec to i32
  %i.bw = add i32 %.029.lcssa, %i.bv
  %i.bx = shl nuw nsw i64 %n.vec, 1
  %i.by = getelementptr i8, ptr %.030.lcssa, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.030.lcssa, i64 %i.bz ; 2 uses
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !70
  %i.ca = zext <8 x i16> %wide.load to <8 x i32>
  %i.cb = shl nuw <8 x i32> %i.ca, splat (i32 16)
  %i.cc = bitcast <8 x i32> %i.cb to <8 x float>
  %i.cd = fneg fast <8 x float> %i.cc
  %i.ce = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.cd)
  %i.cf = fadd fast <8 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = fdiv fast <8 x float> splat (float 1.000000e+00), %i.cf
  %i.ch = bitcast <8 x float> %i.cg to <8 x i32>
  %i.ci = lshr <8 x i32> %i.ch, splat (i32 16)
  %i.cj = trunc nuw nsw <8 x i32> %i.ci to <8 x i16>
  store <8 x i16> %i.cj, ptr %next.gep, align 2, !tbaa !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph72.preheader101

.lr.ph72.preheader101:                            ; preds = %.lr.ph72.preheader, %middle.block
  %.171.ph = phi i32 [ %.029.lcssa, %.lr.ph72.preheader ], [ %i.bw, %middle.block ]
  %.13170.ph = phi ptr [ %.030.lcssa, %.lr.ph72.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph72

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.02967 = phi i32 [ %i.ee, %.lr.ph ], [ 0, %.noexc ]
  %.03066 = phi ptr [ %i.ed, %.lr.ph ], [ %i.bn, %.noexc ] ; 3 uses
  %i.cl = load i64, ptr %.03066, align 1, !tbaa !29
  %i.cm = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %i.cn = bitcast <2 x i64> %i.cm to <8 x i16>
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  %i.cp = bitcast <8 x i16> %i.co to <4 x float>
  %i.cq = fneg fast <4 x float> %i.cp
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cq, <4 x float> splat (float f0x42B0C0A5))
  %i.cs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cr, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ct = fmul fast <4 x float> %i.cs, splat (float f0x3FB8AA3B)
  %i.cu = fadd fast <4 x float> %i.ct, splat (float 5.000000e-01) ; 2 uses
  %i.cv = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cu)
  %i.cw = sitofp fast <4 x i32> %i.cv to <4 x float> ; 2 uses
  %i.cx = fcmp fast olt <4 x float> %i.cu, %i.cw
  %i.cy = select <4 x i1> %i.cx, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cz = fsub fast <4 x float> %i.cw, %i.cy      ; 2 uses
  %i.da = fmul fast <4 x float> %i.cz, splat (float f0x3F317218)
  %i.db = fsub fast <4 x float> %i.cs, %i.da      ; 8 uses
  %i.dc = fmul fast <4 x float> %i.db, %i.db
  %i.dd = fmul fast <4 x float> %i.db, splat (float f0x39506967)
  %i.de = fadd fast <4 x float> %i.dd, splat (float f0x3AB743CE)
  %i.df = fmul fast <4 x float> %i.de, %i.db
  %i.dg = fadd fast <4 x float> %i.df, splat (float f0x3C088908)
  %i.dh = fmul fast <4 x float> %i.dg, %i.db
  %i.di = fadd fast <4 x float> %i.dh, splat (float f0x3D2AA9C1)
  %i.dj = fmul fast <4 x float> %i.di, %i.db
  %i.dk = fadd fast <4 x float> %i.dj, splat (float f0x3E2AAAAA)
  %i.dl = fmul fast <4 x float> %i.dk, %i.db
  %i.dm = fadd fast <4 x float> %i.dl, splat (float 5.000000e-01)
  %i.dn = fmul fast <4 x float> %i.dc, %i.dm
  %i.do = fadd fast <4 x float> %i.db, splat (float 1.000000e+00)
  %i.dp = fadd fast <4 x float> %i.do, %i.dn
  %i.dq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dr = shl <4 x i32> %i.dq, splat (i32 23)
  %i.ds = add <4 x i32> %i.dr, splat (i32 1065353216)
  %i.dt = bitcast <4 x i32> %i.ds to <4 x float>
  %i.du = fmul fast <4 x float> %i.dp, %i.dt
  %i.dv = fadd fast <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = fdiv fast <4 x float> splat (float 1.000000e+00), %i.dv
  %i.dx = bitcast <4 x float> %i.dw to <8 x i16>
  %i.dy = shufflevector <8 x i16> %i.dx, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.dz = bitcast <8 x i16> %i.dy to <4 x float>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eb = bitcast <4 x float> %i.ea to <2 x i64>
  %i.ec = extractelement <2 x i64> %i.eb, i64 0
  store i64 %i.ec, ptr %.03066, align 1, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %.03066, i64 8 ; 2 uses
  %i.ee = add nuw nsw i32 %.02967, 4              ; 3 uses
  %i.ef = or disjoint i32 %i.ee, 3
  %i.eg = load i32, ptr %4, align 4, !tbaa !22    ; 2 uses
  %i.eh = icmp slt i32 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph, label %.preheader, !llvm.loop !65

.lr.ph72:                                         ; preds = %.lr.ph72.preheader101, %.lr.ph72
  %.171 = phi i32 [ %i.eu, %.lr.ph72 ], [ %.171.ph, %.lr.ph72.preheader101 ]
  %.13170 = phi ptr [ %i.et, %.lr.ph72 ], [ %.13170.ph, %.lr.ph72.preheader101 ] ; 3 uses
  %i.ei = load i16, ptr %.13170, align 2, !tbaa !70
  %i.ej = zext i16 %i.ei to i32
  %i.ek = shl nuw i32 %i.ej, 16
  %i.el = bitcast i32 %i.ek to float
  %i.em = fneg fast float %i.el
  %i.en = call fast float @llvm.exp.f32(float %i.em)
  %i.eo = fadd fast float %i.en, 1.000000e+00
  %i.ep = fdiv fast float 1.000000e+00, %i.eo
  %i.eq = bitcast float %i.ep to i32
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc nuw nsw i32 %i.er to i16
  store i16 %i.es, ptr %.13170, align 2, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %.13170, i64 2
  %i.eu = add nuw nsw i32 %.171, 1                ; 2 uses
  %exitcond82.not = icmp eq i32 %i.eu, %i.bp
  br i1 %exitcond82.not, label %._crit_edge, label %.lr.ph72, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph72, %middle.block, %.preheader
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1 ; 2 uses
  %lftr.wideiv86 = trunc i64 %indvars.iv.next84 to i32
  %exitcond87.not = icmp eq i32 %i.q, %lftr.wideiv86
  br i1 %exitcond87.not, label %._crit_edge75, label %.noexc, !llvm.loop !67

._crit_edge75:                                    ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge75, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { builtin nounwind }

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
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!16 = !{!15, !6, i64 24}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !6, i64 44}
!19 = !{!15, !6, i64 48}
!20 = !{!15, !6, i64 52}
!21 = !{!15, !6, i64 56}
!22 = !{!6, !6, i64 0}
!23 = !{!12, !6, i64 4}
!24 = !{!15, !10, i64 0}
!25 = !{!15, !14, i64 64}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!5, !5, i64 0}
!30 = !{!"llvm.loop.unswitch.partial.disable"}
!31 = !{i64 2, i64 -1, i64 -1, i1 true}
!32 = !{!31}
!33 = !{!12, !9, i64 32}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!"vtable pointer", !4, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"p1 omnipotent char", !10, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !14, i64 8, !5, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!45 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !40, i64 48, !40, i64 80, !44, i64 112, !44, i64 136, !49, i64 160, !49, i64 184}
!51 = !{!50, !9, i64 11}
!52 = !{!50, !9, i64 12}
!53 = distinct !{!53, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!54 = distinct !{!54, !53, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!55 = distinct !{!55, !26, !27, !28}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26, !28, !27}
!58 = distinct !{!58, !30}
!59 = !{!54}
!60 = !{!"float", !5, i64 0}
!61 = !{!60, !60, i64 0}
!62 = distinct !{!62, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!63 = distinct !{!63, !62, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!64 = distinct !{!64, !26, !27, !28}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26, !28, !27}
!67 = distinct !{!67, !30}
!68 = !{!63}
!69 = !{!"short", !5, i64 0}
!70 = !{!69, !69, i64 0}
end_hunk_0
