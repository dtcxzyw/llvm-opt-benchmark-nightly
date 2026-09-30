Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512bf16?download=true
inline.NumInlined: 28
inline.NumDeleted: 28
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_truncEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ah = sub nuw nsw i32 %i.af, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.ah
  %i.ai = trunc i32 %notmask to i16
  %i.aj = xor i16 %i.ai, -1
  %i.ak = bitcast i16 %i.aj to <16 x i1>          ; 2 uses
  %i.al = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ak, <16 x i16> zeroinitializer)
  %i.am = bitcast <16 x i16> %i.al to <16 x bfloat>
  %i.an = fpext fast <16 x bfloat> %i.am to <16 x float>
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.an, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.ap = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ao)
  %i.aq = bitcast <16 x bfloat> %i.ap to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.aq, ptr align 1 %.034.lcssa, <16 x i1> %i.ak)
  %.pre69 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ar = phi i32 [ %.pre69, %bb.c ], [ %i.af, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.af, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.as = icmp slt i32 %.1, %i.ar
  br i1 %i.as, label %iter.check, label %._crit_edge61

iter.check:                                       ; preds = %bb.d
  %i.at = xor i32 %.1, -1
  %i.au = add i32 %i.ar, %i.at                    ; 3 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 7
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %i.au, 31
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, 8589934560              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.034.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.bc ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.bd = zext <32 x i16> %wide.load to <32 x i32>
  %i.be = shl nuw <32 x i32> %i.bd, splat (i32 16)
  %i.bf = bitcast <32 x i32> %i.be to <32 x float>
  %i.bg = call fast <32 x float> @llvm.trunc.v32f32(<32 x float> %i.bf)
  %i.bh = bitcast <32 x float> %i.bg to <32 x i32>
  %i.bi = lshr <32 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <32 x i32> %i.bi to <32 x i16>
  store <32 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.aw, 8589934584            ; 4 uses
  %i.bl = trunc i64 %n.vec82 to i32
  %i.bm = add i32 %.1, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec82, 1
  %i.bo = getelementptr i8, ptr %.034.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index83, 1
  %next.gep84 = getelementptr i8, ptr %.034.lcssa, i64 %i.bp ; 2 uses
  %wide.load85 = load <8 x i16>, ptr %next.gep84, align 2, !tbaa !21
  %i.bq = zext <8 x i16> %wide.load85 to <8 x i32>
  %i.br = shl nuw <8 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = call fast <8 x float> @llvm.trunc.v8f32(<8 x float> %i.bs)
  %i.bu = bitcast <8 x float> %i.bt to <8 x i32>
  %i.bv = lshr <8 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <8 x i32> %i.bv to <8 x i16>
  store <8 x i16> %i.bw, ptr %next.gep84, align 2, !tbaa !21
  %index.next86 = add nuw i64 %index83, 8         ; 2 uses
  %i.bx = icmp eq i64 %index.next86, %n.vec82
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !174

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.aw, %n.vec82
  br i1 %cmp.n87, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.258.ph = phi i32 [ %.1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.13557.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.258 = phi i32 [ %i.ch, %.lr.ph60 ], [ %.258.ph, %.lr.ph60.preheader ]
  %.13557 = phi ptr [ %i.cg, %.lr.ph60 ], [ %.13557.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.by = load i16, ptr %.13557, align 2, !tbaa !21
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = bitcast i32 %i.ca to float
  %i.cc = call fast noundef nofpclass(nan inf) float @llvm.trunc.f32(float %i.cb)
  %i.cd = bitcast float %i.cc to i32
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc nuw i32 %i.ce to i16
  store i16 %i.cf, ptr %.13557, align 2, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.13557, i64 2
  %i.ch = add nuw nsw i32 %.258, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.ar
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !175

._crit_edge61:                                    ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !14
  %i.cj = sext i32 %i.ci to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cj
  br i1 %.not.not, label %.noexc, label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge61, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge64, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.trunc.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_signEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not62 = icmp sgt i32 %i.k, %i.j
  br i1 %.not62, label %._crit_edge64, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge61
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.av, %._crit_edge61 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge61 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !183
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !183
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !183
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.054 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.noexc ]
  %.03453 = phi ptr [ %i.ac, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03453, align 1, !tbaa !18 ; 2 uses
  %i.x = fcmp fast ogt <16 x bfloat> %i.w, zeroinitializer
  %i.y = fcmp fast olt <16 x bfloat> %i.w, zeroinitializer
  %i.z = select fast <16 x i1> %i.x, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %i.aa = select fast <16 x i1> %i.y, <16 x float> splat (float -1.000000e+00), <16 x float> %i.z
  %i.ab = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aa)
  store <16 x bfloat> %i.ab, ptr %.03453, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %.03453, i64 32 ; 2 uses
  %i.ad = add nuw nsw i32 %.054, 16               ; 3 uses
  %i.ae = or disjoint i32 %i.ad, 15
  %i.af = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !179

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.ah = phi i32 [ %i.o, %.noexc ], [ %i.af, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ac, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ad, %.lr.ph ] ; 3 uses
  %i.ai = icmp slt i32 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.aj = sub nuw nsw i32 %i.ah, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.aj
  %i.ak = trunc i32 %notmask to i16
  %i.al = xor i16 %i.ak, -1
  %i.am = bitcast i16 %i.al to <16 x i1>          ; 2 uses
  %i.an = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.am, <16 x i16> zeroinitializer)
  %i.ao = bitcast <16 x i16> %i.an to <16 x bfloat> ; 2 uses
  %i.ap = fcmp fast ogt <16 x bfloat> %i.ao, zeroinitializer
  %i.aq = fcmp fast olt <16 x bfloat> %i.ao, zeroinitializer
  %i.ar = select fast <16 x i1> %i.ap, <16 x float> splat (float 1.000000e+00), <16 x float> zeroinitializer
  %i.as = select fast <16 x i1> %i.aq, <16 x float> splat (float -1.000000e+00), <16 x float> %i.ar
  %i.at = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.as)
  %i.au = bitcast <16 x bfloat> %i.at to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.au, ptr align 1 %.034.lcssa, <16 x i1> %i.am)
  %.pre69 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.av = phi i32 [ %.pre69, %bb.c ], [ %i.ah, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.ah, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.aw = icmp slt i32 %.1, %i.av
  br i1 %i.aw, label %iter.check, label %._crit_edge61

iter.check:                                       ; preds = %bb.d
  %i.ax = xor i32 %.1, -1
  %i.ay = add i32 %i.av, %i.ax                    ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ay, 15
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %i.ay, 127
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bb = and i64 %i.ba, 112
  %n.vec = and i64 %i.ba, 8589934464              ; 5 uses
  %i.bc = trunc i64 %n.vec to i32
  %i.bd = add i32 %.1, %i.bc
  %i.be = shl nuw nsw i64 %n.vec, 1
  %i.bf = getelementptr i8, ptr %.034.lcssa, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.bg ; 5 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %wide.load81 = load <32 x i16>, ptr %i.bh, align 2, !tbaa !21
  %wide.load82 = load <32 x i16>, ptr %i.bi, align 2, !tbaa !21
  %wide.load83 = load <32 x i16>, ptr %i.bj, align 2, !tbaa !21
  %i.bk = zext <32 x i16> %wide.load to <32 x i32>
  %i.bl = zext <32 x i16> %wide.load81 to <32 x i32>
  %i.bm = zext <32 x i16> %wide.load82 to <32 x i32>
  %i.bn = zext <32 x i16> %wide.load83 to <32 x i32>
  %i.bo = shl nuw <32 x i32> %i.bk, splat (i32 16)
  %i.bp = shl nuw <32 x i32> %i.bl, splat (i32 16)
  %i.bq = shl nuw <32 x i32> %i.bm, splat (i32 16)
  %i.br = shl nuw <32 x i32> %i.bn, splat (i32 16)
  %i.bs = bitcast <32 x i32> %i.bo to <32 x float> ; 2 uses
  %i.bt = bitcast <32 x i32> %i.bp to <32 x float> ; 2 uses
  %i.bu = bitcast <32 x i32> %i.bq to <32 x float> ; 2 uses
  %i.bv = bitcast <32 x i32> %i.br to <32 x float> ; 2 uses
  %i.bw = fcmp fast ogt <32 x float> %i.bs, zeroinitializer
  %i.bx = fcmp fast ogt <32 x float> %i.bt, zeroinitializer
  %i.by = fcmp fast ogt <32 x float> %i.bu, zeroinitializer
  %i.bz = fcmp fast ogt <32 x float> %i.bv, zeroinitializer
  %i.ca = fcmp fast olt <32 x float> %i.bs, zeroinitializer
  %i.cb = fcmp fast olt <32 x float> %i.bt, zeroinitializer
  %i.cc = fcmp fast olt <32 x float> %i.bu, zeroinitializer
  %i.cd = fcmp fast olt <32 x float> %i.bv, zeroinitializer
  %i.ce = select <32 x i1> %i.ca, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.cf = select <32 x i1> %i.cb, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.cg = select <32 x i1> %i.cc, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.ch = select <32 x i1> %i.cd, <32 x i16> splat (i16 -16512), <32 x i16> zeroinitializer
  %i.ci = select <32 x i1> %i.bw, <32 x i16> splat (i16 16256), <32 x i16> %i.ce
  %i.cj = select <32 x i1> %i.bx, <32 x i16> splat (i16 16256), <32 x i16> %i.cf
  %i.ck = select <32 x i1> %i.by, <32 x i16> splat (i16 16256), <32 x i16> %i.cg
  %i.cl = select <32 x i1> %i.bz, <32 x i16> splat (i16 16256), <32 x i16> %i.ch
  store <32 x i16> %i.ci, ptr %next.gep, align 2, !tbaa !21
  store <32 x i16> %i.cj, ptr %i.bh, align 2, !tbaa !21
  store <32 x i16> %i.ck, ptr %i.bi, align 2, !tbaa !21
  store <32 x i16> %i.cl, ptr %i.bj, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.ba, 8589934576            ; 4 uses
  %i.cn = trunc i64 %n.vec85 to i32
  %i.co = add i32 %.1, %i.cn
  %i.cp = shl nuw nsw i64 %n.vec85, 1
  %i.cq = getelementptr i8, ptr %.034.lcssa, i64 %i.cp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index86, 1
  %next.gep87 = getelementptr i8, ptr %.034.lcssa, i64 %i.cr ; 2 uses
  %wide.load88 = load <16 x i16>, ptr %next.gep87, align 2, !tbaa !21
  %i.cs = zext <16 x i16> %wide.load88 to <16 x i32>
  %i.ct = shl nuw <16 x i32> %i.cs, splat (i32 16)
  %i.cu = bitcast <16 x i32> %i.ct to <16 x float> ; 2 uses
  %i.cv = fcmp fast ogt <16 x float> %i.cu, zeroinitializer
  %i.cw = fcmp fast olt <16 x float> %i.cu, zeroinitializer
  %i.cx = select <16 x i1> %i.cw, <16 x i16> splat (i16 -16512), <16 x i16> zeroinitializer
  %i.cy = select <16 x i1> %i.cv, <16 x i16> splat (i16 16256), <16 x i16> %i.cx
  store <16 x i16> %i.cy, ptr %next.gep87, align 2, !tbaa !21
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %i.cz = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.ba, %n.vec85
  br i1 %cmp.n90, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.258.ph = phi i32 [ %.1, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  %.13557.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.258 = phi i32 [ %i.dj, %.lr.ph60 ], [ %.258.ph, %.lr.ph60.preheader ]
  %.13557 = phi ptr [ %i.di, %.lr.ph60 ], [ %.13557.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.da = load i16, ptr %.13557, align 2, !tbaa !21
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = bitcast i32 %i.dc to float              ; 2 uses
  %i.de = fcmp fast ogt float %i.dd, 0.000000e+00
  %i.df = fcmp fast olt float %i.dd, 0.000000e+00
  %i.dg = select i1 %i.df, i16 -16512, i16 0
  %i.dh = select i1 %i.de, i16 16256, i16 %i.dg
  store i16 %i.dh, ptr %.13557, align 2, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %.13557, i64 2
  %i.dj = add nuw nsw i32 %.258, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dj, %i.av
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !182

._crit_edge61:                                    ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !14
  %i.dl = sext i32 %i.dk to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dl
  br i1 %.not.not, label %.noexc, label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge61, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge64, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_expm1EEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not73 = icmp sgt i32 %i.k, %i.j
  br i1 %.not73, label %._crit_edge75, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge72
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.db, %._crit_edge72 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge72 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !188
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !188
end_hunk_0
