Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx?download=true
inline.NumInlined: 57
inline.NumDeleted: 57
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !288

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>
  %i.cd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.cc, i32 2)
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !289

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float
  %i.cs = call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float %i.cr)
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !290

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !299
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !299
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !299
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph54, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03049 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03049, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float> ; 2 uses
  %i.af = fmul fast <8 x float> %i.ae, %i.ae
  %i.ag = bitcast <8 x float> %i.af to <8 x i32>  ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03049, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.050, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader48, !llvm.loop !294

.preheader:                                       ; preds = %.lr.ph54, %.preheader48
  %i.ar = phi i32 [ %i.x, %.preheader48 ], [ %i.cm, %.lr.ph54 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader48 ], [ %i.cj, %.lr.ph54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader48 ], [ %i.ck, %.lr.ph54 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float> ; 2 uses
  %i.bg = fmul fast <16 x float> %i.bf, %i.bf
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec89 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec89, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index90, 1
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>  ; 2 uses
  %i.bt = fmul fast <4 x float> %i.bs, %i.bs
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %i.cb to <4 x float>  ; 2 uses
  %i.cd = fmul fast <4 x float> %i.cc, %i.cc
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cf, <4 x i32> poison)
  %i.ch = bitcast <8 x i16> %i.cg to <2 x i64>
  %i.ci = extractelement <2 x i64> %i.ch, i64 0
  store i64 %i.ci, ptr %.13152, align 1, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %.13152, i64 8 ; 2 uses
  %i.ck = add nuw nsw i32 %.153, 4                ; 3 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph54, label %.preheader, !llvm.loop !297

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.259 = phi i32 [ %i.cx, %.lr.ph60 ], [ %.259.ph, %.lr.ph60.preheader ]
  %.23258 = phi ptr [ %i.cw, %.lr.ph60 ], [ %.23258.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.co = load i16, ptr %.23258, align 2, !tbaa !51
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl nuw i32 %i.cp, 16
  %i.cr = bitcast i32 %i.cq to float              ; 2 uses
  %i.cs = fmul fast float %i.cr, %i.cr
  %i.ct = bitcast float %i.cs to i32
  %i.cu = lshr i32 %i.ct, 16
  %i.cv = trunc nuw i32 %i.cu to i16
  store i16 %i.cv, ptr %.23258, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.23258, i64 2
  %i.cx = add nuw nsw i32 %.259, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !298

._crit_edge:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond70.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond70.not, label %._crit_edge63, label %.noexc

._crit_edge63:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge63, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_23UnaryOp_x86_avx_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !37
  %i.h = load i32, ptr %0, align 4, !tbaa !37     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !37
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !37
  %i.k = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %.not61 = icmp sgt i32 %i.k, %i.j
  br i1 %.not61, label %._crit_edge63, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  %.pre = load i32, ptr %4, align 4, !tbaa !37
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %i.p = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !39, !noalias !307
  %i.r = load i64, ptr %i.l, align 8, !tbaa !40, !noalias !307
  %i.s = mul i64 %i.r, %indvars.iv
  %i.t = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !307
  %i.u = mul i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u ; 2 uses
  %i.w = icmp sgt i32 %i.p, 7
  br i1 %i.w, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %.lr.ph, %.noexc
  %i.x = phi i32 [ %i.p, %.noexc ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi ptr [ %i.v, %.noexc ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.y = or disjoint i32 %.0.lcssa, 3
  %i.z = icmp slt i32 %i.y, %i.x
  br i1 %i.z, label %.lr.ph54, label %.preheader

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.050 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.noexc ]
  %.03049 = phi ptr [ %i.am, %.lr.ph ], [ %i.v, %.noexc ] ; 3 uses
  %i.aa = load <8 x i16>, ptr %.03049, align 1, !tbaa !41 ; 2 uses
  %i.ab = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ac = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.aa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = shufflevector <8 x i16> %i.ab, <8 x i16> %i.ac, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = bitcast <16 x i16> %i.ad to <8 x float>
  %i.af = call fast noundef nofpclass(nan inf) <8 x float> @llvm.sqrt.v8f32(<8 x float> nofpclass(nan inf) %i.ae)
  %i.ag = bitcast <8 x float> %i.af to <8 x i32>  ; 2 uses
  %i.ah = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <8 x i32> %i.ag, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aj = lshr <4 x i32> %i.ah, splat (i32 16)
  %i.ak = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.al = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.aj, <4 x i32> %i.ak)
  store <8 x i16> %i.al, ptr %.03049, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.03049, i64 16 ; 2 uses
  %i.an = add nuw nsw i32 %.050, 8                ; 3 uses
  %i.ao = or disjoint i32 %i.an, 7
  %i.ap = load i32, ptr %4, align 4, !tbaa !37    ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader48, !llvm.loop !302

.preheader:                                       ; preds = %.lr.ph54, %.preheader48
  %i.ar = phi i32 [ %i.x, %.preheader48 ], [ %i.cm, %.lr.ph54 ] ; 4 uses
  %.131.lcssa = phi ptr [ %.030.lcssa, %.preheader48 ], [ %i.cj, %.lr.ph54 ] ; 5 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader48 ], [ %i.ck, %.lr.ph54 ] ; 5 uses
  %i.as = icmp slt i32 %.1.lcssa, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.at = xor i32 %.1.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 12
  %n.vec = and i64 %i.aw, 8589934576              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1.lcssa, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.131.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.131.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep, align 2, !tbaa !51
  %i.bd = zext <16 x i16> %wide.load to <16 x i32>
  %i.be = shl nuw <16 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <16 x i32> %i.be to <16 x float>
  %i.bg = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.bf)
  %i.bh = bitcast <16 x float> %i.bg to <16 x i32>
  %i.bi = lshr <16 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <16 x i32> %i.bi to <16 x i16>
  store <16 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec89 to i32
  %i.bm = add i32 %.1.lcssa, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec89, 1
  %i.bo = getelementptr i8, ptr %.131.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next93, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index90, 1
  %next.gep91 = getelementptr i8, ptr %.131.lcssa, i64 %i.bp ; 2 uses
  %wide.load92 = load <4 x i16>, ptr %next.gep91, align 2, !tbaa !51
  %i.bq = zext <4 x i16> %wide.load92 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep91, align 2, !tbaa !51
  %index.next93 = add nuw i64 %index90, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !304

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n94 = icmp eq i64 %i.aw, %n.vec89
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.259.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.23258.ph = phi ptr [ %.131.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph54:                                         ; preds = %.preheader48, %.lr.ph54
  %.153 = phi i32 [ %i.ck, %.lr.ph54 ], [ %.0.lcssa, %.preheader48 ]
  %.13152 = phi ptr [ %i.cj, %.lr.ph54 ], [ %.030.lcssa, %.preheader48 ] ; 3 uses
  %i.by = load i64, ptr %.13152, align 1, !tbaa !41
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %i.cb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
end_hunk_0
