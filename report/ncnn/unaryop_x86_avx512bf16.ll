Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512bf16?download=true
inline.NumInlined: 28
inline.NumDeleted: 28
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bx = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.aw, %n.vec81
  br i1 %cmp.n86, label %._crit_edge61, label %.lr.ph60.preheader

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
  %i.cc = call fast noundef nofpclass(nan inf) float @llvm.ceil.f32(float %i.cb)
  %i.cd = bitcast float %i.cc to i32
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc nuw i32 %i.ce to i16
  store i16 %i.cf, ptr %.13557, align 2, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.13557, i64 2
  %i.ch = add nuw nsw i32 %.258, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.ar
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !63

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
declare float @llvm.ceil.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor15unary_op_squareEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge61 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge61 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !71
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !71
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !71
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.054 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.noexc ]
  %.03453 = phi ptr [ %i.aa, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03453, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x
  %i.z = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.y)
  store <16 x bfloat> %i.z, ptr %.03453, align 1, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.03453, i64 32 ; 2 uses
  %i.ab = add nuw nsw i32 %.054, 16               ; 3 uses
  %i.ac = or disjoint i32 %i.ab, 15
  %i.ad = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.af = phi i32 [ %i.o, %.noexc ], [ %i.ad, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aa, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ag = icmp slt i32 %.0.lcssa, %i.af
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ah = sub nuw nsw i32 %i.af, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.ah
  %i.ai = trunc i32 %notmask to i16
  %i.aj = xor i16 %i.ai, -1
  %i.ak = bitcast i16 %i.aj to <16 x i1>          ; 2 uses
  %i.al = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ak, <16 x i16> zeroinitializer)
  %i.am = bitcast <16 x i16> %i.al to <16 x bfloat>
  %i.an = fpext fast <16 x bfloat> %i.am to <16 x float> ; 2 uses
  %i.ao = fmul fast <16 x float> %i.an, %i.an
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
  %min.iters.check = icmp ult i32 %i.au, 15
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %i.au, 127
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 112
  %n.vec = and i64 %i.aw, 8589934464              ; 5 uses
  %i.ay = trunc i64 %n.vec to i32
  %i.az = add i32 %.1, %i.ay
  %i.ba = shl nuw nsw i64 %n.vec, 1
  %i.bb = getelementptr i8, ptr %.034.lcssa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.bc ; 5 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 64 ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 128 ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep, i64 192 ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %wide.load81 = load <32 x i16>, ptr %i.bd, align 2, !tbaa !21
  %wide.load82 = load <32 x i16>, ptr %i.be, align 2, !tbaa !21
  %wide.load83 = load <32 x i16>, ptr %i.bf, align 2, !tbaa !21
  %i.bg = zext <32 x i16> %wide.load to <32 x i32>
  %i.bh = zext <32 x i16> %wide.load81 to <32 x i32>
  %i.bi = zext <32 x i16> %wide.load82 to <32 x i32>
  %i.bj = zext <32 x i16> %wide.load83 to <32 x i32>
  %i.bk = shl nuw <32 x i32> %i.bg, splat (i32 16)
  %i.bl = shl nuw <32 x i32> %i.bh, splat (i32 16)
  %i.bm = shl nuw <32 x i32> %i.bi, splat (i32 16)
  %i.bn = shl nuw <32 x i32> %i.bj, splat (i32 16)
  %i.bo = bitcast <32 x i32> %i.bk to <32 x float> ; 2 uses
  %i.bp = bitcast <32 x i32> %i.bl to <32 x float> ; 2 uses
  %i.bq = bitcast <32 x i32> %i.bm to <32 x float> ; 2 uses
  %i.br = bitcast <32 x i32> %i.bn to <32 x float> ; 2 uses
  %i.bs = fmul fast <32 x float> %i.bo, %i.bo
  %i.bt = fmul fast <32 x float> %i.bp, %i.bp
  %i.bu = fmul fast <32 x float> %i.bq, %i.bq
  %i.bv = fmul fast <32 x float> %i.br, %i.br
  %i.bw = bitcast <32 x float> %i.bs to <32 x i32>
  %i.bx = bitcast <32 x float> %i.bt to <32 x i32>
  %i.by = bitcast <32 x float> %i.bu to <32 x i32>
  %i.bz = bitcast <32 x float> %i.bv to <32 x i32>
  %i.ca = lshr <32 x i32> %i.bw, splat (i32 16)
  %i.cb = lshr <32 x i32> %i.bx, splat (i32 16)
  %i.cc = lshr <32 x i32> %i.by, splat (i32 16)
  %i.cd = lshr <32 x i32> %i.bz, splat (i32 16)
  %i.ce = trunc nuw <32 x i32> %i.ca to <32 x i16>
  %i.cf = trunc nuw <32 x i32> %i.cb to <32 x i16>
  %i.cg = trunc nuw <32 x i32> %i.cc to <32 x i16>
  %i.ch = trunc nuw <32 x i32> %i.cd to <32 x i16>
  store <32 x i16> %i.ce, ptr %next.gep, align 2, !tbaa !21
  store <32 x i16> %i.cf, ptr %i.bd, align 2, !tbaa !21
  store <32 x i16> %i.cg, ptr %i.be, align 2, !tbaa !21
  store <32 x i16> %i.ch, ptr %i.bf, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.aw, 8589934576            ; 4 uses
  %i.cj = trunc i64 %n.vec84 to i32
  %i.ck = add i32 %.1, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec84, 1
  %i.cm = getelementptr i8, ptr %.034.lcssa, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl i64 %index85, 1
  %next.gep86 = getelementptr i8, ptr %.034.lcssa, i64 %i.cn ; 2 uses
  %wide.load87 = load <16 x i16>, ptr %next.gep86, align 2, !tbaa !21
  %i.co = zext <16 x i16> %wide.load87 to <16 x i32>
  %i.cp = shl nuw <16 x i32> %i.co, splat (i32 16)
  %i.cq = bitcast <16 x i32> %i.cp to <16 x float> ; 2 uses
  %i.cr = fmul fast <16 x float> %i.cq, %i.cq
  %i.cs = bitcast <16 x float> %i.cr to <16 x i32>
  %i.ct = lshr <16 x i32> %i.cs, splat (i32 16)
  %i.cu = trunc nuw <16 x i32> %i.ct to <16 x i16>
  store <16 x i16> %i.cu, ptr %next.gep86, align 2, !tbaa !21
  %index.next88 = add nuw i64 %index85, 16        ; 2 uses
  %i.cv = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.aw, %n.vec84
  br i1 %cmp.n89, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.258.ph = phi i32 [ %.1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ]
  %.13557.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.258 = phi i32 [ %i.df, %.lr.ph60 ], [ %.258.ph, %.lr.ph60.preheader ]
  %.13557 = phi ptr [ %i.de, %.lr.ph60 ], [ %.13557.ph, %.lr.ph60.preheader ] ; 3 uses
  %i.cw = load i16, ptr %.13557, align 2, !tbaa !21
  %i.cx = zext i16 %i.cw to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %i.cz = bitcast i32 %i.cy to float              ; 2 uses
  %i.da = fmul fast float %i.cz, %i.cz
  %i.db = bitcast float %i.da to i32
  %i.dc = lshr i32 %i.db, 16
  %i.dd = trunc nuw i32 %i.dc to i16
  store i16 %i.dd, ptr %.13557, align 2, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.13557, i64 2
  %i.df = add nuw nsw i32 %.258, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.ar
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !70

._crit_edge61:                                    ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !14
  %i.dh = sext i32 %i.dg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dh
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
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ar, %._crit_edge61 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge61 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !78
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !78
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !78
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.054 = phi i32 [ %i.ab, %.lr.ph ], [ 0, %.noexc ]
  %.03453 = phi ptr [ %i.aa, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03453, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float>
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.x)
  %i.z = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.y)
  store <16 x bfloat> %i.z, ptr %.03453, align 1, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %.03453, i64 32 ; 2 uses
  %i.ab = add nuw nsw i32 %.054, 16               ; 3 uses
  %i.ac = or disjoint i32 %i.ab, 15
  %i.ad = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.af = phi i32 [ %i.o, %.noexc ], [ %i.ad, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aa, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ag = icmp slt i32 %.0.lcssa, %i.af
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
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.an)
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
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check80 = icmp ult i32 %i.au, 31
  br i1 %min.iters.check80, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %i.aw, 28
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
  %i.bg = call fast <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.bf)
  %i.bh = bitcast <32 x float> %i.bg to <32 x i32>
  %i.bi = lshr <32 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <32 x i32> %i.bi to <32 x i16>
  store <32 x i16> %i.bj, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge61, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec81 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec81 to i32
  %i.bm = add i32 %.1, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec81, 1
  %i.bo = getelementptr i8, ptr %.034.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index82 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index82, 1
  %next.gep83 = getelementptr i8, ptr %.034.lcssa, i64 %i.bp ; 2 uses
  %wide.load84 = load <4 x i16>, ptr %next.gep83, align 2, !tbaa !21
  %i.bq = zext <4 x i16> %wide.load84 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep83, align 2, !tbaa !21
  %index.next85 = add nuw i64 %index82, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.aw, %n.vec81
  br i1 %cmp.n86, label %._crit_edge61, label %.lr.ph60.preheader

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
  %i.cc = call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float %i.cb)
  %i.cd = bitcast float %i.cc to i32
  %i.ce = lshr i32 %i.cd, 16
  %i.cf = trunc nuw i32 %i.ce to i16
  store i16 %i.cf, ptr %.13557, align 2, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.13557, i64 2
  %i.ch = add nuw nsw i32 %.258, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.ar
  br i1 %exitcond.not, label %._crit_edge61, label %.lr.ph60, !llvm.loop !77

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
declare <16 x float> @llvm.sqrt.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_rsqrtEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge77, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge74
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.az, %._crit_edge74 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge74 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !85
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !85
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !85
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.067 = phi i32 [ %i.af, %.lr.ph ], [ 0, %.noexc ]
  %.03466 = phi ptr [ %i.ae, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03466, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = shufflevector <16 x float> %i.x, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.z = shufflevector <16 x float> %i.x, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.y)
  %i.ab = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.z)
  %i.ac = shufflevector <8 x float> %i.aa, <8 x float> %i.ab, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ad = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ac)
  store <16 x bfloat> %i.ad, ptr %.03466, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %.03466, i64 32 ; 2 uses
  %i.af = add nuw nsw i32 %.067, 16               ; 3 uses
  %i.ag = or disjoint i32 %i.af, 15
  %i.ah = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.aj = phi i32 [ %i.o, %.noexc ], [ %i.ah, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ae, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.af, %.lr.ph ] ; 3 uses
  %i.ak = icmp slt i32 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.al = sub nuw nsw i32 %i.aj, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.al
  %i.am = trunc i32 %notmask to i16
  %i.an = xor i16 %i.am, -1
  %i.ao = bitcast i16 %i.an to <16 x i1>          ; 2 uses
  %i.ap = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.ao, <16 x i16> zeroinitializer)
  %i.aq = bitcast <16 x i16> %i.ap to <16 x bfloat>
  %i.ar = fpext fast <16 x bfloat> %i.aq to <16 x float> ; 2 uses
  %i.as = shufflevector <16 x float> %i.ar, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = shufflevector <16 x float> %i.ar, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.as)
  %i.av = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float> nofpclass(nan inf) %i.at)
  %i.aw = shufflevector <8 x float> %i.au, <8 x float> %i.av, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aw)
  %i.ay = bitcast <16 x bfloat> %i.ax to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ay, ptr align 1 %.034.lcssa, <16 x i1> %i.ao)
  %.pre82 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.az = phi i32 [ %.pre82, %bb.c ], [ %i.aj, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.aj, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ba = icmp slt i32 %.1, %i.az
  br i1 %i.ba, label %iter.check, label %._crit_edge74

iter.check:                                       ; preds = %bb.d
  %i.bb = xor i32 %.1, -1
  %i.bc = add i32 %i.az, %i.bb                    ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bc, 3
  br i1 %min.iters.check, label %.lr.ph73.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check93 = icmp ult i32 %i.bc, 31
  br i1 %min.iters.check93, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.be, 28
  %n.vec = and i64 %i.be, 8589934560              ; 5 uses
  %i.bg = trunc i64 %n.vec to i32
  %i.bh = add i32 %.1, %i.bg
  %i.bi = shl nuw nsw i64 %n.vec, 1
  %i.bj = getelementptr i8, ptr %.034.lcssa, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.bk ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.bl = zext <32 x i16> %wide.load to <32 x i32>
  %i.bm = shl nuw <32 x i32> %i.bl, splat (i32 16)
  %i.bn = bitcast <32 x i32> %i.bm to <32 x float>
  %i.bo = call fast <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.bn)
  %i.bp = fdiv fast <32 x float> splat (float 1.000000e+00), %i.bo
  %i.bq = bitcast <32 x float> %i.bp to <32 x i32>
  %i.br = lshr <32 x i32> %i.bq, splat (i32 16)
  %i.bs = trunc nuw <32 x i32> %i.br to <32 x i16>
  store <32 x i16> %i.bs, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge74, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph73.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec94 = and i64 %i.be, 8589934588            ; 4 uses
  %i.bu = trunc i64 %n.vec94 to i32
  %i.bv = add i32 %.1, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec94, 1
  %i.bx = getelementptr i8, ptr %.034.lcssa, i64 %i.bw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %i.by = shl i64 %index95, 1
  %next.gep96 = getelementptr i8, ptr %.034.lcssa, i64 %i.by ; 2 uses
  %wide.load97 = load <4 x i16>, ptr %next.gep96, align 2, !tbaa !21
  %i.bz = zext <4 x i16> %wide.load97 to <4 x i32>
  %i.ca = shl nuw <4 x i32> %i.bz, splat (i32 16)
  %i.cb = bitcast <4 x i32> %i.ca to <4 x float>
  %i.cc = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.cb)
  %i.cd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cc
  %i.ce = bitcast <4 x float> %i.cd to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 16)
  %i.cg = trunc nuw <4 x i32> %i.cf to <4 x i16>
  store <4 x i16> %i.cg, ptr %next.gep96, align 2, !tbaa !21
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next98, %n.vec94
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !83

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.be, %n.vec94
  br i1 %cmp.n99, label %._crit_edge74, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.271.ph = phi i32 [ %.1, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.13570.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %.lr.ph73
  %.271 = phi i32 [ %i.cs, %.lr.ph73 ], [ %.271.ph, %.lr.ph73.preheader ]
  %.13570 = phi ptr [ %i.cr, %.lr.ph73 ], [ %.13570.ph, %.lr.ph73.preheader ] ; 3 uses
  %i.ci = load i16, ptr %.13570, align 2, !tbaa !21
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 16
  %i.cl = bitcast i32 %i.ck to float
  %i.cm = call fast float @llvm.sqrt.f32(float %i.cl)
  %i.cn = fdiv fast float 1.000000e+00, %i.cm
  %i.co = bitcast float %i.cn to i32
  %i.cp = lshr i32 %i.co, 16
  %i.cq = trunc nuw i32 %i.cp to i16
  store i16 %i.cq, ptr %.13570, align 2, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.13570, i64 2
  %i.cs = add nuw nsw i32 %.271, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.az
  br i1 %exitcond.not, label %._crit_edge74, label %.lr.ph73, !llvm.loop !84

._crit_edge74:                                    ; preds = %.lr.ph73, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ct = load i32, ptr %i.b, align 4, !tbaa !14
  %i.cu = sext i32 %i.ct to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cu
  br i1 %.not.not, label %.noexc, label %._crit_edge77

._crit_edge77:                                    ; preds = %._crit_edge74, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge77, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rsqrt.ps.256(<8 x float>) #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_expEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not68 = icmp sgt i32 %i.k, %i.j
  br i1 %.not68, label %._crit_edge70, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge67
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cj, %._crit_edge67 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge67 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !92
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !92
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !92
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.060 = phi i32 [ %i.ax, %.lr.ph ], [ 0, %.noexc ]
  %.03459 = phi ptr [ %i.aw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03459, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float>
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.z = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.y, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ab = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aa, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ac = fcmp fast ogt <16 x float> %i.ab, %i.aa
  %i.ad = fadd fast <16 x float> %i.ab, splat (float -1.000000e+00)
  %i.ae = select fast <16 x i1> %i.ac, <16 x float> %i.ad, <16 x float> %i.ab ; 2 uses
  %i.af = fneg fast <16 x float> %i.ae            ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.z)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ag) ; 8 uses
  %i.ai = fmul fast <16 x float> %i.ah, %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3C088908))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2AA9C1))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3E2AAAAA))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float 5.000000e-01))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = fadd fast <16 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ar = shl <16 x i32> %i.aq, splat (i32 23)
  %i.as = add <16 x i32> %i.ar, splat (i32 1065353216)
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fmul fast <16 x float> %i.ap, %i.at
  %i.av = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.au)
  store <16 x bfloat> %i.av, ptr %.03459, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.03459, i64 32 ; 2 uses
  %i.ax = add nuw nsw i32 %.060, 16               ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 15
  %i.az = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bb = phi i32 [ %i.o, %.noexc ], [ %i.az, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aw, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ax, %.lr.ph ] ; 3 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bd = sub nuw nsw i32 %i.bb, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bd
  %i.be = trunc i32 %notmask to i16
  %i.bf = xor i16 %i.be, -1
  %i.bg = bitcast i16 %i.bf to <16 x i1>          ; 2 uses
  %i.bh = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bg, <16 x i16> zeroinitializer)
  %i.bi = bitcast <16 x i16> %i.bh to <16 x bfloat>
  %i.bj = fpext fast <16 x bfloat> %i.bi to <16 x float>
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bk, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.bn = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.bm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.bo = fcmp fast ogt <16 x float> %i.bn, %i.bm
  %i.bp = fadd fast <16 x float> %i.bn, splat (float -1.000000e+00)
  %i.bq = select fast <16 x i1> %i.bo, <16 x float> %i.bp, <16 x float> %i.bn ; 2 uses
  %i.br = fneg fast <16 x float> %i.bq            ; 2 uses
  %i.bs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.br, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bl)
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.br, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bs) ; 8 uses
  %i.bu = fmul fast <16 x float> %i.bt, %i.bt
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x3C088908))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x3D2AA9C1))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x3E2AAAAA))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float 5.000000e-01))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bt)
  %i.cb = fadd fast <16 x float> %i.ca, splat (float 1.000000e+00)
  %i.cc = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.cd = shl <16 x i32> %i.cc, splat (i32 23)
  %i.ce = add <16 x i32> %i.cd, splat (i32 1065353216)
  %i.cf = bitcast <16 x i32> %i.ce to <16 x float>
  %i.cg = fmul fast <16 x float> %i.cb, %i.cf
  %i.ch = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cg)
  %i.ci = bitcast <16 x bfloat> %i.ch to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ci, ptr align 1 %.034.lcssa, <16 x i1> %i.bg)
  %.pre75 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cj = phi i32 [ %.pre75, %bb.c ], [ %i.bb, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bb, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ck = icmp slt i32 %.1, %i.cj
  br i1 %i.ck, label %iter.check, label %._crit_edge67

iter.check:                                       ; preds = %bb.d
  %i.cl = xor i32 %.1, -1
  %i.cm = add i32 %i.cj, %i.cl                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cm, 7
  br i1 %min.iters.check, label %.lr.ph66.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i32 %i.cm, 31
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.co, 24
  %n.vec = and i64 %i.co, 8589934560              ; 5 uses
  %i.cq = trunc i64 %n.vec to i32
  %i.cr = add i32 %.1, %i.cq
  %i.cs = shl nuw nsw i64 %n.vec, 1
  %i.ct = getelementptr i8, ptr %.034.lcssa, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cu ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.cv = zext <32 x i16> %wide.load to <32 x i32>
  %i.cw = shl nuw <32 x i32> %i.cv, splat (i32 16)
  %i.cx = bitcast <32 x i32> %i.cw to <32 x float>
  %i.cy = call fast <32 x float> @llvm.exp.v32f32(<32 x float> %i.cx)
  %i.cz = bitcast <32 x float> %i.cy to <32 x i32>
  %i.da = lshr <32 x i32> %i.cz, splat (i32 16)
  %i.db = trunc nuw <32 x i32> %i.da to <32 x i16>
  store <32 x i16> %i.db, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.co, 8589934584            ; 4 uses
  %i.dd = trunc i64 %n.vec87 to i32
  %i.de = add i32 %.1, %i.dd
  %i.df = shl nuw nsw i64 %n.vec87, 1
  %i.dg = getelementptr i8, ptr %.034.lcssa, i64 %i.df
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.dh = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.034.lcssa, i64 %i.dh ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %next.gep89, align 2, !tbaa !21
  %i.di = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.dj = shl nuw <8 x i32> %i.di, splat (i32 16)
  %i.dk = bitcast <8 x i32> %i.dj to <8 x float>
  %i.dl = call fast <8 x float> @llvm.exp.v8f32(<8 x float> %i.dk)
  %i.dm = bitcast <8 x float> %i.dl to <8 x i32>
  %i.dn = lshr <8 x i32> %i.dm, splat (i32 16)
  %i.do = trunc nuw <8 x i32> %i.dn to <8 x i16>
  store <8 x i16> %i.do, ptr %next.gep89, align 2, !tbaa !21
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.dp = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !90

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.co, %n.vec87
  br i1 %cmp.n92, label %._crit_edge67, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.264.ph = phi i32 [ %.1, %iter.check ], [ %i.cr, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  %.13563.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %.lr.ph66
  %.264 = phi i32 [ %i.dz, %.lr.ph66 ], [ %.264.ph, %.lr.ph66.preheader ]
  %.13563 = phi ptr [ %i.dy, %.lr.ph66 ], [ %.13563.ph, %.lr.ph66.preheader ] ; 3 uses
  %i.dq = load i16, ptr %.13563, align 2, !tbaa !21
  %i.dr = zext i16 %i.dq to i32
  %i.ds = shl nuw i32 %i.dr, 16
  %i.dt = bitcast i32 %i.ds to float
  %i.du = call fast noundef nofpclass(nan inf) float @llvm.exp.f32(float %i.dt)
  %i.dv = bitcast float %i.du to i32
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = trunc nuw i32 %i.dw to i16
  store i16 %i.dx, ptr %.13563, align 2, !tbaa !21
  %i.dy = getelementptr inbounds nuw i8, ptr %.13563, i64 2
  %i.dz = add nuw nsw i32 %.264, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.cj
  br i1 %exitcond.not, label %._crit_edge67, label %.lr.ph66, !llvm.loop !91

._crit_edge67:                                    ; preds = %.lr.ph66, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !14
  %i.eb = sext i32 %i.ea to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.eb
  br i1 %.not.not, label %.noexc, label %._crit_edge70

._crit_edge70:                                    ; preds = %._crit_edge67, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge70, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor12unary_op_logEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not65 = icmp sgt i32 %i.k, %i.j
  br i1 %.not65, label %._crit_edge67, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge64
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.db, %._crit_edge64 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge64 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !99
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !99
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !99
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.057 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.noexc ]
  %.03456 = phi ptr [ %i.bf, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03456, align 1, !tbaa !18 ; 2 uses
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float>
  %i.y = fcmp fast ole <16 x bfloat> %i.w, zeroinitializer
  %i.z = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x00800000), i32 4)
  %i.aa = bitcast <16 x float> %i.z to <16 x i32> ; 2 uses
  %i.ab = lshr <16 x i32> %i.aa, splat (i32 23)
  %i.ac = and <16 x i32> %i.aa, splat (i32 -2139095041)
  %i.ad = or disjoint <16 x i32> %i.ac, splat (i32 1056964608)
  %i.ae = bitcast <16 x i32> %i.ad to <16 x float> ; 3 uses
  %i.af = add nsw <16 x i32> %i.ab, splat (i32 -127)
  %i.ag = sitofp fast <16 x i32> %i.af to <16 x float> ; 2 uses
  %i.ah = fadd fast <16 x float> %i.ag, splat (float 1.000000e+00)
  %i.ai = fcmp fast olt <16 x float> %i.ae, splat (float f0x3F3504F3) ; 2 uses
  %i.aj = fadd fast <16 x float> %i.ae, splat (float -1.000000e+00)
  %i.ak = select fast <16 x i1> %i.ai, <16 x float> %i.ag, <16 x float> %i.ah ; 2 uses
  %i.al = select fast <16 x i1> %i.ai, <16 x float> %i.ae, <16 x float> zeroinitializer
  %i.am = fadd fast <16 x float> %i.aj, %i.al     ; 12 uses
  %i.an = fmul fast <16 x float> %i.am, %i.am     ; 2 uses
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ap = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3DEF251A))
  %i.aq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0xBDFE5D4F))
  %i.ar = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3E11E9BF))
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0xBE2AAE50))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3E4CCEAC))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0xBE7FFFFC))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float f0x3EAAAAAA))
  %i.aw = fmul fast <16 x float> %i.an, %i.am
  %i.ax = fmul fast <16 x float> %i.aw, %i.av
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ax)
  %i.az = fneg fast <16 x float> %i.an
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.az, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ay)
  %i.bb = fadd fast <16 x float> %i.ba, %i.am
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bb)
  %i.bd = select <16 x i1> %i.y, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bc
  %i.be = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bd)
  store <16 x bfloat> %i.be, ptr %.03456, align 1, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %.03456, i64 32 ; 2 uses
  %i.bg = add nuw nsw i32 %.057, 16               ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 15
  %i.bi = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bk = phi i32 [ %i.o, %.noexc ], [ %i.bi, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bf, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bg, %.lr.ph ] ; 3 uses
  %i.bl = icmp slt i32 %.0.lcssa, %i.bk
  br i1 %i.bl, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bm = sub nuw nsw i32 %i.bk, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bm
  %i.bn = trunc i32 %notmask to i16
  %i.bo = xor i16 %i.bn, -1
  %i.bp = bitcast i16 %i.bo to <16 x i1>          ; 2 uses
  %i.bq = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bp, <16 x i16> zeroinitializer)
  %i.br = bitcast <16 x i16> %i.bq to <16 x bfloat> ; 2 uses
  %i.bs = fpext fast <16 x bfloat> %i.br to <16 x float>
  %i.bt = fcmp fast ole <16 x bfloat> %i.br, zeroinitializer
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0x00800000), i32 4)
  %i.bv = bitcast <16 x float> %i.bu to <16 x i32> ; 2 uses
  %i.bw = lshr <16 x i32> %i.bv, splat (i32 23)
  %i.bx = and <16 x i32> %i.bv, splat (i32 -2139095041)
  %i.by = or disjoint <16 x i32> %i.bx, splat (i32 1056964608)
  %i.bz = bitcast <16 x i32> %i.by to <16 x float> ; 3 uses
  %i.ca = add nsw <16 x i32> %i.bw, splat (i32 -127)
  %i.cb = sitofp fast <16 x i32> %i.ca to <16 x float> ; 2 uses
  %i.cc = fadd fast <16 x float> %i.cb, splat (float 1.000000e+00)
  %i.cd = fcmp fast olt <16 x float> %i.bz, splat (float f0x3F3504F3) ; 2 uses
  %i.ce = fadd fast <16 x float> %i.bz, splat (float -1.000000e+00)
  %i.cf = select fast <16 x i1> %i.cd, <16 x float> %i.cb, <16 x float> %i.cc ; 2 uses
  %i.cg = select fast <16 x i1> %i.cd, <16 x float> %i.bz, <16 x float> zeroinitializer
  %i.ch = fadd fast <16 x float> %i.ce, %i.cg     ; 12 uses
  %i.ci = fmul fast <16 x float> %i.ch, %i.ch     ; 2 uses
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3DEF251A))
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0xBDFE5D4F))
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3E11E9BF))
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cm, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0xBE2AAE50))
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cn, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3E4CCEAC))
  %i.cp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.co, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0xBE7FFFFC))
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x3EAAAAAA))
  %i.cr = fmul fast <16 x float> %i.ci, %i.ch
  %i.cs = fmul fast <16 x float> %i.cr, %i.cq
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cs)
  %i.cu = fneg fast <16 x float> %i.ci
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cu, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ct)
  %i.cw = fadd fast <16 x float> %i.cv, %i.ch
  %i.cx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cw)
  %i.cy = select <16 x i1> %i.bt, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.cx
  %i.cz = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cy)
  %i.da = bitcast <16 x bfloat> %i.cz to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.da, ptr align 1 %.034.lcssa, <16 x i1> %i.bp)
  %.pre72 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.db = phi i32 [ %.pre72, %bb.c ], [ %i.bk, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bk, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dc = icmp slt i32 %.1, %i.db
  br i1 %i.dc, label %iter.check, label %._crit_edge64

iter.check:                                       ; preds = %bb.d
  %i.dd = xor i32 %.1, -1
  %i.de = add i32 %i.db, %i.dd                    ; 3 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw nsw i64 %i.df, 1                ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_asinEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.by = select fast <16 x i1> %i.bq, <16 x float> %i.bp, <16 x float> %i.bx ; 3 uses
  %i.bz = fmul fast <16 x float> %i.by, %i.by     ; 3 uses
  %i.ca = fmul fast <16 x float> %i.bz, %i.bz     ; 4 uses
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.cb, <16 x float> splat (float f0x3E2AAAF8))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.cd, <16 x float> splat (float 1.000000e+00))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.ce)
  %i.cg = fmul fast <16 x float> %i.cf, %i.by
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float -3.000000e+00), <16 x float> splat (float 1.000000e+00))
  %i.ci = fmul fast <16 x float> %i.bu, splat (float f0x3FC90FDB)
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.ci)
  %i.ck = bitcast <16 x float> %i.cj to <16 x i32>
  %i.cl = or <16 x i32> %i.bo, %i.ck
  %i.cm = bitcast <16 x i32> %i.cl to <16 x float>
  %i.cn = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cm)
  %i.co = bitcast <16 x bfloat> %i.cn to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.co, ptr align 1 %.034.lcssa, <16 x i1> %i.bj)
  %.pre74 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cp = phi i32 [ %.pre74, %bb.c ], [ %i.be, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.be, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.cq = icmp slt i32 %.1, %i.cp
  br i1 %i.cq, label %iter.check, label %._crit_edge66

iter.check:                                       ; preds = %bb.d
  %i.cr = xor i32 %.1, -1
  %i.cs = add i32 %i.cp, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cs, 7
  br i1 %min.iters.check, label %.lr.ph65.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %i.cs, 31
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cv = and i64 %i.cu, 24
  %n.vec = and i64 %i.cu, 8589934560              ; 5 uses
  %i.cw = trunc i64 %n.vec to i32
  %i.cx = add i32 %.1, %i.cw
  %i.cy = shl nuw nsw i64 %n.vec, 1
  %i.cz = getelementptr i8, ptr %.034.lcssa, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.da ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.db = zext <32 x i16> %wide.load to <32 x i32>
  %i.dc = shl nuw <32 x i32> %i.db, splat (i32 16)
  %i.dd = bitcast <32 x i32> %i.dc to <32 x float>
  %i.de = call fast <32 x float> @llvm.asin.v32f32(<32 x float> %i.dd)
  %i.df = bitcast <32 x float> %i.de to <32 x i32>
  %i.dg = lshr <32 x i32> %i.df, splat (i32 16)
  %i.dh = trunc nuw <32 x i32> %i.dg to <32 x i16>
  store <32 x i16> %i.dh, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph65.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.cu, 8589934584            ; 4 uses
  %i.dj = trunc i64 %n.vec86 to i32
  %i.dk = add i32 %.1, %i.dj
  %i.dl = shl nuw nsw i64 %n.vec86, 1
  %i.dm = getelementptr i8, ptr %.034.lcssa, i64 %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %.034.lcssa, i64 %i.dn ; 2 uses
  %wide.load89 = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !21
  %i.do = zext <8 x i16> %wide.load89 to <8 x i32>
  %i.dp = shl nuw <8 x i32> %i.do, splat (i32 16)
  %i.dq = bitcast <8 x i32> %i.dp to <8 x float>
  %i.dr = call fast <8 x float> @llvm.asin.v8f32(<8 x float> %i.dq)
  %i.ds = bitcast <8 x float> %i.dr to <8 x i32>
  %i.dt = lshr <8 x i32> %i.ds, splat (i32 16)
  %i.du = trunc nuw <8 x i32> %i.dt to <8 x i16>
  store <8 x i16> %i.du, ptr %next.gep88, align 2, !tbaa !21
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.dv = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.cu, %n.vec86
  br i1 %cmp.n91, label %._crit_edge66, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.263.ph = phi i32 [ %.1, %iter.check ], [ %i.cx, %vec.epilog.iter.check ], [ %i.dk, %vec.epilog.middle.block ]
  %.13562.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dm, %vec.epilog.middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %.263 = phi i32 [ %i.ef, %.lr.ph65 ], [ %.263.ph, %.lr.ph65.preheader ]
  %.13562 = phi ptr [ %i.ee, %.lr.ph65 ], [ %.13562.ph, %.lr.ph65.preheader ] ; 3 uses
  %i.dw = load i16, ptr %.13562, align 2, !tbaa !21
  %i.dx = zext i16 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 16
  %i.dz = bitcast i32 %i.dy to float
  %i.ea = call fast noundef nofpclass(nan inf) float @llvm.asin.f32(float %i.dz)
  %i.eb = bitcast float %i.ea to i32
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  store i16 %i.ed, ptr %.13562, align 2, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %.13562, i64 2
  %i.ef = add nuw nsw i32 %.263, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, %i.cp
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !126

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !14
  %i.eh = sext i32 %i.eg to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.eh
  br i1 %.not.not, label %.noexc, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge66, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge69, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.asin.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_acosEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge69, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge66
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cl, %._crit_edge66 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge66 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !134
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !134
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !134
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059 = phi i32 [ %i.ay, %.lr.ph ], [ 0, %.noexc ]
  %.03458 = phi ptr [ %i.ax, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03458, align 1, !tbaa !18 ; 2 uses
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = and <16 x i32> %i.y, splat (i32 -2147483648) ; 2 uses
  %i.aa = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x) ; 3 uses
  %i.ab = fcmp fast ole <16 x float> %i.aa, splat (float 5.000000e-01) ; 2 uses
  %i.ac = fmul fast <16 x float> %i.aa, splat (float 5.000000e-01)
  %i.ad = fsub fast <16 x float> splat (float 5.000000e-01), %i.ac
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ad)
  %i.af = select fast <16 x i1> %i.ab, <16 x float> %i.aa, <16 x float> %i.ae ; 3 uses
  %i.ag = fmul fast <16 x float> %i.af, %i.af     ; 3 uses
  %i.ah = fmul fast <16 x float> %i.ag, %i.ag     ; 4 uses
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0x3E2AAAF8))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float 1.000000e+00))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.al)
  %i.an = fmul fast <16 x float> %i.am, %i.af     ; 2 uses
  %6 = bitcast <16 x float> %i.an to <16 x i32>
  %7 = or <16 x i32> %i.z, %6
  %8 = bitcast <16 x i32> %7 to <16 x float>
  %i.ao = fsub fast <16 x float> splat (float f0x3FC90FDB), %8
  %i.ap = fcmp fast olt <16 x bfloat> %i.w, zeroinitializer
  %i.aq = select fast <16 x i1> %i.ap, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor57 = fmul fast <16 x float> %i.an, splat (float 2.000000e+00)
  %i.ar = bitcast <16 x float> %factor57 to <16 x i32>
  %i.as = or <16 x i32> %i.z, %i.ar
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fadd fast <16 x float> %i.aq, %i.at
  %i.av = select fast <16 x i1> %i.ab, <16 x float> %i.ao, <16 x float> %i.au
  %i.aw = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.av)
  store <16 x bfloat> %i.aw, ptr %.03458, align 1, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.03458, i64 32 ; 2 uses
  %i.ay = add nuw nsw i32 %.059, 16               ; 3 uses
  %i.az = or disjoint i32 %i.ay, 15
  %i.ba = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bc = phi i32 [ %i.o, %.noexc ], [ %i.ba, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ax, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.bd = icmp slt i32 %.0.lcssa, %i.bc
  br i1 %i.bd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.be = sub nuw nsw i32 %i.bc, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.be
  %i.bf = trunc i32 %notmask to i16
  %i.bg = xor i16 %i.bf, -1
  %i.bh = bitcast i16 %i.bg to <16 x i1>          ; 2 uses
  %i.bi = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bh, <16 x i16> zeroinitializer)
  %i.bj = bitcast <16 x i16> %i.bi to <16 x bfloat> ; 2 uses
  %i.bk = fpext fast <16 x bfloat> %i.bj to <16 x float> ; 2 uses
  %i.bl = bitcast <16 x float> %i.bk to <16 x i32>
  %i.bm = and <16 x i32> %i.bl, splat (i32 -2147483648) ; 2 uses
  %i.bn = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bk) ; 3 uses
  %i.bo = fcmp fast ole <16 x float> %i.bn, splat (float 5.000000e-01) ; 2 uses
  %i.bp = fmul fast <16 x float> %i.bn, splat (float 5.000000e-01)
  %i.bq = fsub fast <16 x float> splat (float 5.000000e-01), %i.bp
  %i.br = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.bq)
  %i.bs = select fast <16 x i1> %i.bo, <16 x float> %i.bn, <16 x float> %i.br ; 3 uses
  %i.bt = fmul fast <16 x float> %i.bs, %i.bs     ; 3 uses
  %i.bu = fmul fast <16 x float> %i.bt, %i.bt     ; 4 uses
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3D2DBDCF), <16 x float> splat (float f0x3D3A73D8))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3E2AAAF8))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0x3CC48F19), <16 x float> splat (float f0x3D997DCC))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bu, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float 1.000000e+00))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> nofpclass(nan inf) %i.by)
  %i.ca = fmul fast <16 x float> %i.bz, %i.bs     ; 2 uses
  %9 = bitcast <16 x float> %i.ca to <16 x i32>
  %10 = or <16 x i32> %i.bm, %9
  %11 = bitcast <16 x i32> %10 to <16 x float>
  %i.cb = fsub fast <16 x float> splat (float f0x3FC90FDB), %11
  %i.cc = fcmp fast olt <16 x bfloat> %i.bj, zeroinitializer
  %i.cd = select fast <16 x i1> %i.cc, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %factor = fmul fast <16 x float> %i.ca, splat (float 2.000000e+00)
  %i.ce = bitcast <16 x float> %factor to <16 x i32>
  %i.cf = or <16 x i32> %i.bm, %i.ce
  %i.cg = bitcast <16 x i32> %i.cf to <16 x float>
  %i.ch = fadd fast <16 x float> %i.cd, %i.cg
  %i.ci = select fast <16 x i1> %i.bo, <16 x float> %i.cb, <16 x float> %i.ch
  %i.cj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ci)
  %i.ck = bitcast <16 x bfloat> %i.cj to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ck, ptr align 1 %.034.lcssa, <16 x i1> %i.bh)
  %.pre74 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cl = phi i32 [ %.pre74, %bb.c ], [ %i.bc, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bc, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.cm = icmp slt i32 %.1, %i.cl
  br i1 %i.cm, label %iter.check, label %._crit_edge66

iter.check:                                       ; preds = %bb.d
  %i.cn = xor i32 %.1, -1
  %i.co = add i32 %i.cl, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.co, 7
  br i1 %min.iters.check, label %.lr.ph65.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %i.co, 31
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cr = and i64 %i.cq, 24
  %n.vec = and i64 %i.cq, 8589934560              ; 5 uses
  %i.cs = trunc i64 %n.vec to i32
  %i.ct = add i32 %.1, %i.cs
  %i.cu = shl nuw nsw i64 %n.vec, 1
  %i.cv = getelementptr i8, ptr %.034.lcssa, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cw ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.cx = zext <32 x i16> %wide.load to <32 x i32>
  %i.cy = shl nuw <32 x i32> %i.cx, splat (i32 16)
  %i.cz = bitcast <32 x i32> %i.cy to <32 x float>
  %i.da = call fast <32 x float> @llvm.acos.v32f32(<32 x float> %i.cz)
  %i.db = bitcast <32 x float> %i.da to <32 x i32>
  %i.dc = lshr <32 x i32> %i.db, splat (i32 16)
  %i.dd = trunc nuw <32 x i32> %i.dc to <32 x i16>
  store <32 x i16> %i.dd, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph65.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.cq, 8589934584            ; 4 uses
  %i.df = trunc i64 %n.vec86 to i32
  %i.dg = add i32 %.1, %i.df
  %i.dh = shl nuw nsw i64 %n.vec86, 1
  %i.di = getelementptr i8, ptr %.034.lcssa, i64 %i.dh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = shl i64 %index87, 1
  %next.gep88 = getelementptr i8, ptr %.034.lcssa, i64 %i.dj ; 2 uses
  %wide.load89 = load <8 x i16>, ptr %next.gep88, align 2, !tbaa !21
  %i.dk = zext <8 x i16> %wide.load89 to <8 x i32>
  %i.dl = shl nuw <8 x i32> %i.dk, splat (i32 16)
  %i.dm = bitcast <8 x i32> %i.dl to <8 x float>
  %i.dn = call fast <8 x float> @llvm.acos.v8f32(<8 x float> %i.dm)
  %i.do = bitcast <8 x float> %i.dn to <8 x i32>
  %i.dp = lshr <8 x i32> %i.do, splat (i32 16)
  %i.dq = trunc nuw <8 x i32> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %next.gep88, align 2, !tbaa !21
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.cq, %n.vec86
  br i1 %cmp.n91, label %._crit_edge66, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.263.ph = phi i32 [ %.1, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  %.13562.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %.lr.ph65
  %.263 = phi i32 [ %i.eb, %.lr.ph65 ], [ %.263.ph, %.lr.ph65.preheader ]
  %.13562 = phi ptr [ %i.ea, %.lr.ph65 ], [ %.13562.ph, %.lr.ph65.preheader ] ; 3 uses
  %i.ds = load i16, ptr %.13562, align 2, !tbaa !21
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 16
  %i.dv = bitcast i32 %i.du to float
  %i.dw = call fast noundef nofpclass(nan inf) float @llvm.acos.f32(float %i.dv)
  %i.dx = bitcast float %i.dw to i32
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = trunc nuw i32 %i.dy to i16
  store i16 %i.dz, ptr %.13562, align 2, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %.13562, i64 2
  %i.eb = add nuw nsw i32 %.263, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.cl
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !133

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !14
  %i.ed = sext i32 %i.ec to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ed
  br i1 %.not.not, label %.noexc, label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge66, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge69, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_atanEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not64 = icmp sgt i32 %i.k, %i.j
  br i1 %.not64, label %._crit_edge66, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge63
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.cj, %._crit_edge63 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge63 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !141
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !141
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !141
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.056 = phi i32 [ %i.ax, %.lr.ph ], [ 0, %.noexc ]
  %.03455 = phi ptr [ %i.aw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03455, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = and <16 x i32> %i.y, splat (i32 -2147483648)
  %i.aa = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x) ; 3 uses
  %i.ab = fcmp fast ogt <16 x float> %i.aa, splat (float 1.000000e+00) ; 2 uses
  %i.ac = select fast <16 x i1> %i.ab, <16 x float> splat (float -1.000000e+00), <16 x float> %i.aa
  %i.ad = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.aa, <16 x float> splat (float 1.000000e+00))
  %i.ae = fdiv fast <16 x float> %i.ac, %i.ad     ; 3 uses
  %i.af = fmul fast <16 x float> %i.ae, %i.ae     ; 3 uses
  %i.ag = fmul fast <16 x float> %i.af, %i.af     ; 7 uses
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.ai = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0xBE117200))
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> splat (float f0xBEAAAA53))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.ak, <16 x float> splat (float f0x3DD9ED24))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.al, <16 x float> splat (float f0x3E4CB974))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ag, <16 x float> nofpclass(nan inf) %i.am, <16 x float> splat (float 1.000000e+00))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.af, <16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.an)
  %i.ap = fmul fast <16 x float> %i.ao, %i.ae
  %i.aq = select fast <16 x i1> %i.ab, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.ar = fadd fast <16 x float> %i.ap, %i.aq
  %i.as = bitcast <16 x float> %i.ar to <16 x i32>
  %i.at = or <16 x i32> %i.z, %i.as
  %i.au = bitcast <16 x i32> %i.at to <16 x float>
  %i.av = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.au)
  store <16 x bfloat> %i.av, ptr %.03455, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %.03455, i64 32 ; 2 uses
  %i.ax = add nuw nsw i32 %.056, 16               ; 3 uses
  %i.ay = or disjoint i32 %i.ax, 15
  %i.az = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bb = phi i32 [ %i.o, %.noexc ], [ %i.az, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.aw, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.ax, %.lr.ph ] ; 3 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bd = sub nuw nsw i32 %i.bb, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bd
  %i.be = trunc i32 %notmask to i16
  %i.bf = xor i16 %i.be, -1
  %i.bg = bitcast i16 %i.bf to <16 x i1>          ; 2 uses
  %i.bh = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.bg, <16 x i16> zeroinitializer)
  %i.bi = bitcast <16 x i16> %i.bh to <16 x bfloat>
  %i.bj = fpext fast <16 x bfloat> %i.bi to <16 x float> ; 2 uses
  %i.bk = bitcast <16 x float> %i.bj to <16 x i32>
  %i.bl = and <16 x i32> %i.bk, splat (i32 -2147483648)
  %i.bm = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.bj) ; 3 uses
  %i.bn = fcmp fast ogt <16 x float> %i.bm, splat (float 1.000000e+00) ; 2 uses
  %i.bo = select fast <16 x i1> %i.bn, <16 x float> splat (float -1.000000e+00), <16 x float> %i.bm
  %i.bp = call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.bm, <16 x float> splat (float 1.000000e+00))
  %i.bq = fdiv fast <16 x float> %i.bo, %i.bp     ; 3 uses
  %i.br = fmul fast <16 x float> %i.bq, %i.bq     ; 3 uses
  %i.bs = fmul fast <16 x float> %i.br, %i.br     ; 7 uses
  %i.bt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0xBE117200))
  %i.bv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bu, <16 x float> splat (float f0xBEAAAA53))
  %i.bw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bw, <16 x float> splat (float f0x3DD9ED24))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3E4CB974))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.by, <16 x float> splat (float 1.000000e+00))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.br, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> nofpclass(nan inf) %i.bz)
  %i.cb = fmul fast <16 x float> %i.ca, %i.bq
  %i.cc = select fast <16 x i1> %i.bn, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.cd = fadd fast <16 x float> %i.cb, %i.cc
  %i.ce = bitcast <16 x float> %i.cd to <16 x i32>
  %i.cf = or <16 x i32> %i.bl, %i.ce
  %i.cg = bitcast <16 x i32> %i.cf to <16 x float>
  %i.ch = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cg)
  %i.ci = bitcast <16 x bfloat> %i.ch to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ci, ptr align 1 %.034.lcssa, <16 x i1> %i.bg)
  %.pre71 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.cj = phi i32 [ %.pre71, %bb.c ], [ %i.bb, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.bb, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ck = icmp slt i32 %.1, %i.cj
  br i1 %i.ck, label %iter.check, label %._crit_edge63

iter.check:                                       ; preds = %bb.d
  %i.cl = xor i32 %.1, -1
  %i.cm = add i32 %i.cj, %i.cl                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cm, 7
  br i1 %min.iters.check, label %.lr.ph62.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i32 %i.cm, 31
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.co, 24
  %n.vec = and i64 %i.co, 8589934560              ; 5 uses
  %i.cq = trunc i64 %n.vec to i32
  %i.cr = add i32 %.1, %i.cq
  %i.cs = shl nuw nsw i64 %n.vec, 1
  %i.ct = getelementptr i8, ptr %.034.lcssa, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.cu ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.cv = zext <32 x i16> %wide.load to <32 x i32>
  %i.cw = shl nuw <32 x i32> %i.cv, splat (i32 16)
  %i.cx = bitcast <32 x i32> %i.cw to <32 x float>
  %i.cy = call fast <32 x float> @llvm.atan.v32f32(<32 x float> %i.cx)
  %i.cz = bitcast <32 x float> %i.cy to <32 x i32>
  %i.da = lshr <32 x i32> %i.cz, splat (i32 16)
  %i.db = trunc nuw <32 x i32> %i.da to <32 x i16>
  store <32 x i16> %i.db, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not69 = icmp sgt i32 %i.k, %i.j
  br i1 %.not69, label %._crit_edge71, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge68
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ej, %._crit_edge68 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge68 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !207
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !207
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !207
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.061 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.noexc ]
  %.03460 = phi ptr [ %i.bw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03460, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.z = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.y, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ab = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aa, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ac = fcmp fast ogt <16 x float> %i.ab, %i.aa
  %i.ad = fadd fast <16 x float> %i.ab, splat (float -1.000000e+00)
  %i.ae = select fast <16 x i1> %i.ac, <16 x float> %i.ad, <16 x float> %i.ab ; 2 uses
  %i.af = fneg fast <16 x float> %i.ae            ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.z)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ag) ; 8 uses
  %i.ai = fmul fast <16 x float> %i.ah, %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3C088908))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2AA9C1))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3E2AAAAA))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float 5.000000e-01))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = fadd fast <16 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ar = shl <16 x i32> %i.aq, splat (i32 23)
  %i.as = add <16 x i32> %i.ar, splat (i32 1065353216)
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fmul fast <16 x float> %i.ap, %i.at
  %i.av = fneg fast <16 x float> %i.x
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.av, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.az = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ay, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ba = fcmp fast ogt <16 x float> %i.az, %i.ay
  %i.bb = fadd fast <16 x float> %i.az, splat (float -1.000000e+00)
  %i.bc = select fast <16 x i1> %i.ba, <16 x float> %i.bb, <16 x float> %i.az ; 2 uses
  %i.bd = fneg fast <16 x float> %i.bc            ; 2 uses
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ax)
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.be) ; 8 uses
  %i.bg = fmul fast <16 x float> %i.bf, %i.bf
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3C088908))
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3D2AA9C1))
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3E2AAAAA))
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bk, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float 5.000000e-01))
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bl, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.bf)
  %i.bn = fadd fast <16 x float> %i.bm, splat (float 1.000000e+00)
  %i.bo = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bp = shl <16 x i32> %i.bo, splat (i32 23)
  %i.bq = add <16 x i32> %i.bp, splat (i32 1065353216)
  %i.br = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bs = fmul fast <16 x float> %i.bn, %i.br
  %i.bt = fadd fast <16 x float> %i.bs, %i.au
  %i.bu = fmul fast <16 x float> %i.bt, splat (float 5.000000e-01)
  %i.bv = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bu)
  store <16 x bfloat> %i.bv, ptr %.03460, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.03460, i64 32 ; 2 uses
  %i.bx = add nuw nsw i32 %.061, 16               ; 3 uses
  %i.by = or disjoint i32 %i.bx, 15
  %i.bz = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.cb = phi i32 [ %i.o, %.noexc ], [ %i.bz, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bw, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bx, %.lr.ph ] ; 3 uses
  %i.cc = icmp slt i32 %.0.lcssa, %i.cb
  br i1 %i.cc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cd = sub nuw nsw i32 %i.cb, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cd
  %i.ce = trunc i32 %notmask to i16
  %i.cf = xor i16 %i.ce, -1
  %i.cg = bitcast i16 %i.cf to <16 x i1>          ; 2 uses
  %i.ch = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.cg, <16 x i16> zeroinitializer)
  %i.ci = bitcast <16 x i16> %i.ch to <16 x bfloat>
  %i.cj = fpext fast <16 x bfloat> %i.ci to <16 x float> ; 2 uses
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cn = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.co = fcmp fast ogt <16 x float> %i.cn, %i.cm
  %i.cp = fadd fast <16 x float> %i.cn, splat (float -1.000000e+00)
  %i.cq = select fast <16 x i1> %i.co, <16 x float> %i.cp, <16 x float> %i.cn ; 2 uses
  %i.cr = fneg fast <16 x float> %i.cq            ; 2 uses
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cr, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cl)
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cr, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cs) ; 8 uses
  %i.cu = fmul fast <16 x float> %i.ct, %i.ct
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3C088908))
  %i.cx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cw, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3D2AA9C1))
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cx, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3E2AAAAA))
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float 5.000000e-01))
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.ct)
  %i.db = fadd fast <16 x float> %i.da, splat (float 1.000000e+00)
  %i.dc = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.cq, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.dd = shl <16 x i32> %i.dc, splat (i32 23)
  %i.de = add <16 x i32> %i.dd, splat (i32 1065353216)
  %i.df = bitcast <16 x i32> %i.de to <16 x float>
  %i.dg = fmul fast <16 x float> %i.db, %i.df
  %i.dh = fneg fast <16 x float> %i.cj
  %i.di = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.dh, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.dj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.di, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.dk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dj, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.dl = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.dk, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.dm = fcmp fast ogt <16 x float> %i.dl, %i.dk
  %i.dn = fadd fast <16 x float> %i.dl, splat (float -1.000000e+00)
  %i.do = select fast <16 x i1> %i.dm, <16 x float> %i.dn, <16 x float> %i.dl ; 2 uses
  %i.dp = fneg fast <16 x float> %i.do            ; 2 uses
  %i.dq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dp, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dj)
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dp, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dq) ; 8 uses
  %i.ds = fmul fast <16 x float> %i.dr, %i.dr
  %i.dt = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dr, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.du = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.dr, <16 x float> splat (float f0x3C088908))
  %i.dv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.du, <16 x float> nofpclass(nan inf) %i.dr, <16 x float> splat (float f0x3D2AA9C1))
  %i.dw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dv, <16 x float> nofpclass(nan inf) %i.dr, <16 x float> splat (float f0x3E2AAAAA))
  %i.dx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.dr, <16 x float> splat (float 5.000000e-01))
  %i.dy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dx, <16 x float> nofpclass(nan inf) %i.ds, <16 x float> nofpclass(nan inf) %i.dr)
  %i.dz = fadd fast <16 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.do, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.eb = shl <16 x i32> %i.ea, splat (i32 23)
  %i.ec = add <16 x i32> %i.eb, splat (i32 1065353216)
  %i.ed = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ee = fmul fast <16 x float> %i.dz, %i.ed
  %i.ef = fadd fast <16 x float> %i.ee, %i.dg
  %i.eg = fmul fast <16 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.eg)
  %i.ei = bitcast <16 x bfloat> %i.eh to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ei, ptr align 1 %.034.lcssa, <16 x i1> %i.cg)
  %.pre76 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ej = phi i32 [ %.pre76, %bb.c ], [ %i.cb, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.cb, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.ek = icmp slt i32 %.1, %i.ej
  br i1 %i.ek, label %iter.check, label %._crit_edge68

iter.check:                                       ; preds = %bb.d
  %i.el = xor i32 %.1, -1
  %i.em = add i32 %i.ej, %i.el                    ; 3 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = add nuw nsw i64 %i.en, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.em, 7
  br i1 %min.iters.check, label %.lr.ph67.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i32 %i.em, 31
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %i.eo, 24
  %n.vec = and i64 %i.eo, 8589934560              ; 5 uses
  %i.eq = trunc i64 %n.vec to i32
  %i.er = add i32 %.1, %i.eq
  %i.es = shl nuw nsw i64 %n.vec, 1
  %i.et = getelementptr i8, ptr %.034.lcssa, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.eu ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.ev = zext <32 x i16> %wide.load to <32 x i32>
  %i.ew = shl nuw <32 x i32> %i.ev, splat (i32 16)
  %i.ex = bitcast <32 x i32> %i.ew to <32 x float>
  %i.ey = call fast <32 x float> @llvm.cosh.v32f32(<32 x float> %i.ex)
  %i.ez = bitcast <32 x float> %i.ey to <32 x i32>
  %i.fa = lshr <32 x i32> %i.ez, splat (i32 16)
  %i.fb = trunc nuw <32 x i32> %i.fa to <32 x i16>
  store <32 x i16> %i.fb, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %._crit_edge68, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ep, 0
  br i1 %min.epilog.iters.check, label %.lr.ph67.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.eo, 8589934584            ; 4 uses
  %i.fd = trunc i64 %n.vec88 to i32
  %i.fe = add i32 %.1, %i.fd
  %i.ff = shl nuw nsw i64 %n.vec88, 1
  %i.fg = getelementptr i8, ptr %.034.lcssa, i64 %i.ff
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.fh = shl i64 %index89, 1
  %next.gep90 = getelementptr i8, ptr %.034.lcssa, i64 %i.fh ; 2 uses
  %wide.load91 = load <8 x i16>, ptr %next.gep90, align 2, !tbaa !21
  %i.fi = zext <8 x i16> %wide.load91 to <8 x i32>
  %i.fj = shl nuw <8 x i32> %i.fi, splat (i32 16)
  %i.fk = bitcast <8 x i32> %i.fj to <8 x float>
  %i.fl = call fast <8 x float> @llvm.cosh.v8f32(<8 x float> %i.fk)
  %i.fm = bitcast <8 x float> %i.fl to <8 x i32>
  %i.fn = lshr <8 x i32> %i.fm, splat (i32 16)
  %i.fo = trunc nuw <8 x i32> %i.fn to <8 x i16>
  store <8 x i16> %i.fo, ptr %next.gep90, align 2, !tbaa !21
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.fp = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.eo, %n.vec88
  br i1 %cmp.n93, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.265.ph = phi i32 [ %.1, %iter.check ], [ %i.er, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ]
  %.13564.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.et, %vec.epilog.iter.check ], [ %i.fg, %vec.epilog.middle.block ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.265 = phi i32 [ %i.fz, %.lr.ph67 ], [ %.265.ph, %.lr.ph67.preheader ]
  %.13564 = phi ptr [ %i.fy, %.lr.ph67 ], [ %.13564.ph, %.lr.ph67.preheader ] ; 3 uses
  %i.fq = load i16, ptr %.13564, align 2, !tbaa !21
  %i.fr = zext i16 %i.fq to i32
  %i.fs = shl nuw i32 %i.fr, 16
  %i.ft = bitcast i32 %i.fs to float
  %i.fu = call fast noundef nofpclass(nan inf) float @llvm.cosh.f32(float %i.ft)
  %i.fv = bitcast float %i.fu to i32
  %i.fw = lshr i32 %i.fv, 16
  %i.fx = trunc nuw i32 %i.fw to i16
  store i16 %i.fx, ptr %.13564, align 2, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %.13564, i64 2
  %i.fz = add nuw nsw i32 %.265, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fz, %i.ej
  br i1 %exitcond.not, label %._crit_edge68, label %.lr.ph67, !llvm.loop !206

._crit_edge68:                                    ; preds = %.lr.ph67, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ga = load i32, ptr %i.b, align 4, !tbaa !14
  %i.gb = sext i32 %i.ga to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gb
  br i1 %.not.not, label %.noexc, label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge68, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge71, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cosh.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_acoshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.gd, %._crit_edge72 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge72 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !212
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !212
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !212
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.065 = phi i32 [ %i.cu, %.lr.ph ], [ 0, %.noexc ]
  %.03464 = phi ptr [ %i.ct, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03464, align 1, !tbaa !18 ; 2 uses
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 5 uses
  %i.y = fadd fast <16 x float> %i.x, splat (float -1.000000e+00)
  %i.z = fadd fast <16 x float> %i.x, splat (float 1.000000e+00)
  %i.aa = fmul fast <16 x float> %i.y, %i.z
  %i.ab = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.aa)
  %i.ac = fadd fast <16 x float> %i.ab, %i.x      ; 2 uses
  %i.ad = fcmp fast ole <16 x float> %i.ac, zeroinitializer
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ac, <16 x float> splat (float f0x00800000), i32 4)
  %i.af = bitcast <16 x float> %i.ae to <16 x i32> ; 2 uses
  %i.ag = lshr <16 x i32> %i.af, splat (i32 23)
  %i.ah = and <16 x i32> %i.af, splat (i32 -2139095041)
  %i.ai = or disjoint <16 x i32> %i.ah, splat (i32 1056964608)
  %i.aj = bitcast <16 x i32> %i.ai to <16 x float> ; 3 uses
  %i.ak = add nsw <16 x i32> %i.ag, splat (i32 -127)
  %i.al = sitofp fast <16 x i32> %i.ak to <16 x float> ; 2 uses
  %i.am = fadd fast <16 x float> %i.al, splat (float 1.000000e+00)
  %i.an = fcmp fast olt <16 x float> %i.aj, splat (float f0x3F3504F3) ; 2 uses
  %i.ao = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.ap = select fast <16 x i1> %i.an, <16 x float> %i.al, <16 x float> %i.am ; 2 uses
  %i.aq = select fast <16 x i1> %i.an, <16 x float> %i.aj, <16 x float> zeroinitializer
  %i.ar = fadd fast <16 x float> %i.ao, %i.aq     ; 12 uses
  %i.as = fmul fast <16 x float> %i.ar, %i.ar     ; 2 uses
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3DEF251A))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBDFE5D4F))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E11E9BF))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE2AAE50))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E4CCEAC))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE7FFFFC))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3EAAAAAA))
  %i.bb = fmul fast <16 x float> %i.as, %i.ar
  %i.bc = fmul fast <16 x float> %i.bb, %i.ba
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bc)
  %i.be = fneg fast <16 x float> %i.as
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.be, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bd)
  %i.bg = fadd fast <16 x float> %i.bf, %i.ar
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bg)
  %i.bi = select <16 x i1> %i.ad, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bh
  %i.bj = fcmp fast ole <16 x bfloat> %i.w, zeroinitializer
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x00800000), i32 4)
  %i.bl = bitcast <16 x float> %i.bk to <16 x i32> ; 2 uses
  %i.bm = lshr <16 x i32> %i.bl, splat (i32 23)
  %i.bn = and <16 x i32> %i.bl, splat (i32 -2139095041)
  %i.bo = or disjoint <16 x i32> %i.bn, splat (i32 1056964608)
  %i.bp = bitcast <16 x i32> %i.bo to <16 x float> ; 3 uses
  %i.bq = add nsw <16 x i32> %i.bm, splat (i32 -127)
  %i.br = sitofp fast <16 x i32> %i.bq to <16 x float> ; 2 uses
  %i.bs = fadd fast <16 x float> %i.br, splat (float 1.000000e+00)
  %i.bt = fcmp fast olt <16 x float> %i.bp, splat (float f0x3F3504F3) ; 2 uses
  %i.bu = fadd fast <16 x float> %i.bp, splat (float -1.000000e+00)
  %i.bv = select fast <16 x i1> %i.bt, <16 x float> %i.br, <16 x float> %i.bs ; 2 uses
  %i.bw = select fast <16 x i1> %i.bt, <16 x float> %i.bp, <16 x float> zeroinitializer
  %i.bx = fadd fast <16 x float> %i.bu, %i.bw     ; 12 uses
  %i.by = fmul fast <16 x float> %i.bx, %i.bx     ; 2 uses
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3DEF251A))
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0xBDFE5D4F))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3E11E9BF))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0xBE2AAE50))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3E4CCEAC))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0xBE7FFFFC))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.bx, <16 x float> splat (float f0x3EAAAAAA))
  %i.ch = fmul fast <16 x float> %i.by, %i.bx
  %i.ci = fmul fast <16 x float> %i.ch, %i.cg
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ci)
  %i.ck = fneg fast <16 x float> %i.by
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ck, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.cj)
  %i.cm = fadd fast <16 x float> %i.cl, %i.bx
  %i.cn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cm)
  %i.co = fadd fast <16 x float> %i.cn, splat (float f0x3F317218)
  %i.cp = select <16 x i1> %i.bj, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.co
  %i.cq = fcmp fast ogt <16 x float> %i.x, splat (float f0x5F0AC723)
  %i.cr = select fast <16 x i1> %i.cq, <16 x float> %i.cp, <16 x float> %i.bi
  %i.cs = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cr)
  store <16 x bfloat> %i.cs, ptr %.03464, align 1, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %.03464, i64 32 ; 2 uses
  %i.cu = add nuw nsw i32 %.065, 16               ; 3 uses
  %i.cv = or disjoint i32 %i.cu, 15
  %i.cw = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.cy = phi i32 [ %i.o, %.noexc ], [ %i.cw, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.ct, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cu, %.lr.ph ] ; 3 uses
  %i.cz = icmp slt i32 %.0.lcssa, %i.cy
  br i1 %i.cz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.da = sub nuw nsw i32 %i.cy, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.da
  %i.db = trunc i32 %notmask to i16
  %i.dc = xor i16 %i.db, -1
  %i.dd = bitcast i16 %i.dc to <16 x i1>          ; 2 uses
  %i.de = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.dd, <16 x i16> zeroinitializer)
  %i.df = bitcast <16 x i16> %i.de to <16 x bfloat> ; 2 uses
  %i.dg = fpext fast <16 x bfloat> %i.df to <16 x float> ; 5 uses
  %i.dh = fadd fast <16 x float> %i.dg, splat (float -1.000000e+00)
  %i.di = fadd fast <16 x float> %i.dg, splat (float 1.000000e+00)
  %i.dj = fmul fast <16 x float> %i.dh, %i.di
  %i.dk = call fast <16 x float> @llvm.sqrt.v16f32(<16 x float> %i.dj)
  %i.dl = fadd fast <16 x float> %i.dk, %i.dg     ; 2 uses
  %i.dm = fcmp fast ole <16 x float> %i.dl, zeroinitializer
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dl, <16 x float> splat (float f0x00800000), i32 4)
  %i.do = bitcast <16 x float> %i.dn to <16 x i32> ; 2 uses
  %i.dp = lshr <16 x i32> %i.do, splat (i32 23)
  %i.dq = and <16 x i32> %i.do, splat (i32 -2139095041)
  %i.dr = or disjoint <16 x i32> %i.dq, splat (i32 1056964608)
  %i.ds = bitcast <16 x i32> %i.dr to <16 x float> ; 3 uses
  %i.dt = add nsw <16 x i32> %i.dp, splat (i32 -127)
  %i.du = sitofp fast <16 x i32> %i.dt to <16 x float> ; 2 uses
  %i.dv = fadd fast <16 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = fcmp fast olt <16 x float> %i.ds, splat (float f0x3F3504F3) ; 2 uses
  %i.dx = fadd fast <16 x float> %i.ds, splat (float -1.000000e+00)
  %i.dy = select fast <16 x i1> %i.dw, <16 x float> %i.du, <16 x float> %i.dv ; 2 uses
  %i.dz = select fast <16 x i1> %i.dw, <16 x float> %i.ds, <16 x float> zeroinitializer
  %i.ea = fadd fast <16 x float> %i.dx, %i.dz     ; 12 uses
  %i.eb = fmul fast <16 x float> %i.ea, %i.ea     ; 2 uses
  %i.ec = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3DEF251A))
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBDFE5D4F))
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3E11E9BF))
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBE2AAE50))
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3E4CCEAC))
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0xBE7FFFFC))
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ea, <16 x float> splat (float f0x3EAAAAAA))
  %i.ek = fmul fast <16 x float> %i.eb, %i.ea
  %i.el = fmul fast <16 x float> %i.ek, %i.ej
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.el)
  %i.en = fneg fast <16 x float> %i.eb
  %i.eo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.en, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.em)
  %i.ep = fadd fast <16 x float> %i.eo, %i.ea
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dy, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ep)
  %i.er = select <16 x i1> %i.dm, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.eq
  %i.es = fcmp fast ole <16 x bfloat> %i.df, zeroinitializer
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dg, <16 x float> splat (float f0x00800000), i32 4)
  %i.eu = bitcast <16 x float> %i.et to <16 x i32> ; 2 uses
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 23)
  %i.ew = and <16 x i32> %i.eu, splat (i32 -2139095041)
  %i.ex = or disjoint <16 x i32> %i.ew, splat (i32 1056964608)
  %i.ey = bitcast <16 x i32> %i.ex to <16 x float> ; 3 uses
  %i.ez = add nsw <16 x i32> %i.ev, splat (i32 -127)
  %i.fa = sitofp fast <16 x i32> %i.ez to <16 x float> ; 2 uses
  %i.fb = fadd fast <16 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fcmp fast olt <16 x float> %i.ey, splat (float f0x3F3504F3) ; 2 uses
  %i.fd = fadd fast <16 x float> %i.ey, splat (float -1.000000e+00)
  %i.fe = select fast <16 x i1> %i.fc, <16 x float> %i.fa, <16 x float> %i.fb ; 2 uses
  %i.ff = select fast <16 x i1> %i.fc, <16 x float> %i.ey, <16 x float> zeroinitializer
  %i.fg = fadd fast <16 x float> %i.fd, %i.ff     ; 12 uses
  %i.fh = fmul fast <16 x float> %i.fg, %i.fg     ; 2 uses
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3DEF251A))
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBDFE5D4F))
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E11E9BF))
  %i.fm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fl, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE2AAE50))
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fm, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E4CCEAC))
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE7FFFFC))
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3EAAAAAA))
  %i.fq = fmul fast <16 x float> %i.fh, %i.fg
  %i.fr = fmul fast <16 x float> %i.fq, %i.fp
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fr)
  %i.ft = fneg fast <16 x float> %i.fh
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ft, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fs)
  %i.fv = fadd fast <16 x float> %i.fu, %i.fg
  %i.fw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fv)
  %i.fx = fadd fast <16 x float> %i.fw, splat (float f0x3F317218)
  %i.fy = select <16 x i1> %i.es, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fx
  %i.fz = fcmp fast ogt <16 x float> %i.dg, splat (float f0x5F0AC723)
  %i.ga = select fast <16 x i1> %i.fz, <16 x float> %i.fy, <16 x float> %i.er
  %i.gb = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ga)
  %i.gc = bitcast <16 x bfloat> %i.gb to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gc, ptr align 1 %.034.lcssa, <16 x i1> %i.dd)
  %.pre80 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gd = phi i32 [ %.pre80, %bb.c ], [ %i.cy, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.cy, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ge = icmp slt i32 %.1, %i.gd
  br i1 %i.ge, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %bb.d, %.lr.ph71
  %.269 = phi i32 [ %i.go, %.lr.ph71 ], [ %.1, %bb.d ]
  %.13568 = phi ptr [ %i.gn, %.lr.ph71 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.gf = load i16, ptr %.13568, align 2, !tbaa !21
  %i.gg = zext i16 %i.gf to i32
  %i.gh = shl nuw i32 %i.gg, 16
  %i.gi = bitcast i32 %i.gh to float
  %i.gj = call fast noundef nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf) %i.gi) #17
  %i.gk = bitcast float %i.gj to i32
  %i.gl = lshr i32 %i.gk, 16
  %i.gm = trunc nuw i32 %i.gl to i16
  store i16 %i.gm, ptr %.13568, align 2, !tbaa !21
  %i.gn = getelementptr inbounds nuw i8, ptr %.13568, i64 2
  %i.go = add nuw nsw i32 %.269, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.go, %i.gd
  br i1 %exitcond.not, label %._crit_edge72, label %.lr.ph71, !llvm.loop !211

._crit_edge72:                                    ; preds = %.lr.ph71, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gp = load i32, ptr %i.b, align 4, !tbaa !14
  %i.gq = sext i32 %i.gp to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gq
  br i1 %.not.not, label %.noexc, label %._crit_edge75

._crit_edge75:                                    ; preds = %._crit_edge72, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge75, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @acoshf(float noundef nofpclass(nan inf)) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_atanhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not94 = icmp sgt i32 %i.k, %i.j
  br i1 %.not94, label %._crit_edge96, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge93
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.gl, %._crit_edge93 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge93 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !217
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !217
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !217
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.086 = phi i32 [ %i.cy, %.lr.ph ], [ 0, %.noexc ]
  %.03485 = phi ptr [ %i.cx, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03485, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 8 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x        ; 2 uses
  %i.z = fmul fast <16 x float> %i.x, splat (float f0x3EAAAAAB) ; 2 uses
  %i.aa = fadd fast <16 x float> %i.z, splat (float -5.000000e-01)
  %i.ab = fmul fast <16 x float> %i.y, %i.aa
  %i.ac = fadd fast <16 x float> %i.ab, %i.x
  %i.ad = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 2 uses
  %6 = fcmp fast ole <16 x float> %i.ad, zeroinitializer
  %i.ae = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x00800000), i32 4)
  %i.af = bitcast <16 x float> %i.ae to <16 x i32> ; 2 uses
  %i.ag = lshr <16 x i32> %i.af, splat (i32 23)
  %i.ah = and <16 x i32> %i.af, splat (i32 -2139095041)
  %i.ai = or disjoint <16 x i32> %i.ah, splat (i32 1056964608)
  %i.aj = bitcast <16 x i32> %i.ai to <16 x float> ; 3 uses
  %i.ak = add nsw <16 x i32> %i.ag, splat (i32 -127)
  %i.al = sitofp fast <16 x i32> %i.ak to <16 x float> ; 2 uses
  %i.am = fadd fast <16 x float> %i.al, splat (float 1.000000e+00)
  %i.an = fcmp fast olt <16 x float> %i.aj, splat (float f0x3F3504F3) ; 2 uses
  %i.ao = fadd fast <16 x float> %i.aj, splat (float -1.000000e+00)
  %i.ap = select fast <16 x i1> %i.an, <16 x float> %i.al, <16 x float> %i.am ; 2 uses
  %i.aq = select fast <16 x i1> %i.an, <16 x float> %i.aj, <16 x float> zeroinitializer
  %i.ar = fadd fast <16 x float> %i.ao, %i.aq     ; 12 uses
  %i.as = fmul fast <16 x float> %i.ar, %i.ar     ; 2 uses
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3DEF251A))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBDFE5D4F))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E11E9BF))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE2AAE50))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3E4CCEAC))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0xBE7FFFFC))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.ar, <16 x float> splat (float f0x3EAAAAAA))
  %i.bb = fmul fast <16 x float> %i.as, %i.ar
  %i.bc = fmul fast <16 x float> %i.bb, %i.ba
  %i.bd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bc)
  %i.be = fneg fast <16 x float> %i.as
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.be, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bd)
  %i.bg = fadd fast <16 x float> %i.bf, %i.ar
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ap, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bg)
  %7 = select <16 x i1> %6, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bh
  %i.bi = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bj = fcmp fast olt <16 x float> %i.bi, splat (float f0x38D1B717) ; 2 uses
  %i.bk = select fast <16 x i1> %i.bj, <16 x float> %i.ac, <16 x float> %7
  %i.bl = fsub fast <16 x float> splat (float -5.000000e-01), %i.z
  %i.bm = fmul fast <16 x float> %i.y, %i.bl
  %i.bn = fsub fast <16 x float> %i.bm, %i.x
  %i.bo = fsub fast <16 x float> splat (float 1.000000e+00), %i.x ; 2 uses
  %8 = fcmp fast ole <16 x float> %i.bo, zeroinitializer
  %i.bp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bo, <16 x float> splat (float f0x00800000), i32 4)
  %i.bq = bitcast <16 x float> %i.bp to <16 x i32> ; 2 uses
  %i.br = lshr <16 x i32> %i.bq, splat (i32 23)
  %i.bs = and <16 x i32> %i.bq, splat (i32 -2139095041)
  %i.bt = or disjoint <16 x i32> %i.bs, splat (i32 1056964608)
  %i.bu = bitcast <16 x i32> %i.bt to <16 x float> ; 3 uses
  %i.bv = add nsw <16 x i32> %i.br, splat (i32 -127)
  %i.bw = sitofp fast <16 x i32> %i.bv to <16 x float> ; 2 uses
  %i.bx = fadd fast <16 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = fcmp fast olt <16 x float> %i.bu, splat (float f0x3F3504F3) ; 2 uses
  %i.bz = fadd fast <16 x float> %i.bu, splat (float -1.000000e+00)
  %i.ca = select fast <16 x i1> %i.by, <16 x float> %i.bw, <16 x float> %i.bx ; 2 uses
  %i.cb = select fast <16 x i1> %i.by, <16 x float> %i.bu, <16 x float> zeroinitializer
  %i.cc = fadd fast <16 x float> %i.bz, %i.cb     ; 12 uses
  %i.cd = fmul fast <16 x float> %i.cc, %i.cc     ; 2 uses
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ce, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3DEF251A))
  %i.cg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cf, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBDFE5D4F))
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3E11E9BF))
  %i.ci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBE2AAE50))
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ci, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3E4CCEAC))
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0xBE7FFFFC))
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> nofpclass(nan inf) %i.cc, <16 x float> splat (float f0x3EAAAAAA))
  %i.cm = fmul fast <16 x float> %i.cd, %i.cc
  %i.cn = fmul fast <16 x float> %i.cm, %i.cl
  %i.co = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cn)
  %i.cp = fneg fast <16 x float> %i.cd
  %i.cq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cp, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.co)
  %i.cr = fadd fast <16 x float> %i.cq, %i.cc
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cr)
  %9 = select <16 x i1> %8, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.cs
  %i.ct = select fast <16 x i1> %i.bj, <16 x float> %i.bn, <16 x float> %9
  %i.cu = fsub fast <16 x float> %i.bk, %i.ct
  %i.cv = fmul fast <16 x float> %i.cu, splat (float 5.000000e-01)
  %i.cw = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cv)
  store <16 x bfloat> %i.cw, ptr %.03485, align 1, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %.03485, i64 32 ; 2 uses
  %i.cy = add nuw nsw i32 %.086, 16               ; 3 uses
  %i.cz = or disjoint i32 %i.cy, 15
  %i.da = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.db = icmp slt i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph, label %._crit_edge, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.dc = phi i32 [ %i.o, %.noexc ], [ %i.da, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cx, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cy, %.lr.ph ] ; 3 uses
  %i.dd = icmp slt i32 %.0.lcssa, %i.dc
  br i1 %i.dd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.de = sub nuw nsw i32 %i.dc, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.de
  %i.df = trunc i32 %notmask to i16
  %i.dg = xor i16 %i.df, -1
  %i.dh = bitcast i16 %i.dg to <16 x i1>          ; 2 uses
  %i.di = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.dh, <16 x i16> zeroinitializer)
  %i.dj = bitcast <16 x i16> %i.di to <16 x bfloat>
  %i.dk = fpext fast <16 x bfloat> %i.dj to <16 x float> ; 8 uses
  %i.dl = fmul fast <16 x float> %i.dk, %i.dk     ; 2 uses
  %i.dm = fmul fast <16 x float> %i.dk, splat (float f0x3EAAAAAB) ; 2 uses
  %i.dn = fadd fast <16 x float> %i.dm, splat (float -5.000000e-01)
  %i.do = fmul fast <16 x float> %i.dl, %i.dn
  %i.dp = fadd fast <16 x float> %i.do, %i.dk
  %i.dq = fadd fast <16 x float> %i.dk, splat (float 1.000000e+00) ; 2 uses
  %10 = fcmp fast ole <16 x float> %i.dq, zeroinitializer
  %i.dr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> splat (float f0x00800000), i32 4)
  %i.ds = bitcast <16 x float> %i.dr to <16 x i32> ; 2 uses
  %i.dt = lshr <16 x i32> %i.ds, splat (i32 23)
  %i.du = and <16 x i32> %i.ds, splat (i32 -2139095041)
  %i.dv = or disjoint <16 x i32> %i.du, splat (i32 1056964608)
  %i.dw = bitcast <16 x i32> %i.dv to <16 x float> ; 3 uses
  %i.dx = add nsw <16 x i32> %i.dt, splat (i32 -127)
  %i.dy = sitofp fast <16 x i32> %i.dx to <16 x float> ; 2 uses
  %i.dz = fadd fast <16 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = fcmp fast olt <16 x float> %i.dw, splat (float f0x3F3504F3) ; 2 uses
  %i.eb = fadd fast <16 x float> %i.dw, splat (float -1.000000e+00)
  %i.ec = select fast <16 x i1> %i.ea, <16 x float> %i.dy, <16 x float> %i.dz ; 2 uses
  %i.ed = select fast <16 x i1> %i.ea, <16 x float> %i.dw, <16 x float> zeroinitializer
  %i.ee = fadd fast <16 x float> %i.eb, %i.ed     ; 12 uses
  %i.ef = fmul fast <16 x float> %i.ee, %i.ee     ; 2 uses
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3DEF251A))
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0xBDFE5D4F))
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3E11E9BF))
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ej, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0xBE2AAE50))
  %i.el = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ek, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3E4CCEAC))
  %i.em = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.el, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0xBE7FFFFC))
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.em, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> splat (float f0x3EAAAAAA))
  %i.eo = fmul fast <16 x float> %i.ef, %i.ee
  %i.ep = fmul fast <16 x float> %i.eo, %i.en
  %i.eq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ep)
  %i.er = fneg fast <16 x float> %i.ef
  %i.es = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.er, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.eq)
  %i.et = fadd fast <16 x float> %i.es, %i.ee
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ec, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.et)
  %11 = select <16 x i1> %10, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.eu
  %i.ev = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.dk)
  %i.ew = fcmp fast olt <16 x float> %i.ev, splat (float f0x38D1B717) ; 2 uses
  %i.ex = select fast <16 x i1> %i.ew, <16 x float> %i.dp, <16 x float> %11
  %i.ey = fsub fast <16 x float> splat (float -5.000000e-01), %i.dm
  %i.ez = fmul fast <16 x float> %i.dl, %i.ey
  %i.fa = fsub fast <16 x float> %i.ez, %i.dk
  %i.fb = fsub fast <16 x float> splat (float 1.000000e+00), %i.dk ; 2 uses
  %12 = fcmp fast ole <16 x float> %i.fb, zeroinitializer
  %i.fc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.fb, <16 x float> splat (float f0x00800000), i32 4)
  %i.fd = bitcast <16 x float> %i.fc to <16 x i32> ; 2 uses
  %i.fe = lshr <16 x i32> %i.fd, splat (i32 23)
  %i.ff = and <16 x i32> %i.fd, splat (i32 -2139095041)
  %i.fg = or disjoint <16 x i32> %i.ff, splat (i32 1056964608)
  %i.fh = bitcast <16 x i32> %i.fg to <16 x float> ; 3 uses
  %i.fi = add nsw <16 x i32> %i.fe, splat (i32 -127)
  %i.fj = sitofp fast <16 x i32> %i.fi to <16 x float> ; 2 uses
  %i.fk = fadd fast <16 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fcmp fast olt <16 x float> %i.fh, splat (float f0x3F3504F3) ; 2 uses
  %i.fm = fadd fast <16 x float> %i.fh, splat (float -1.000000e+00)
  %i.fn = select fast <16 x i1> %i.fl, <16 x float> %i.fj, <16 x float> %i.fk ; 2 uses
  %i.fo = select fast <16 x i1> %i.fl, <16 x float> %i.fh, <16 x float> zeroinitializer
  %i.fp = fadd fast <16 x float> %i.fm, %i.fo     ; 12 uses
  %i.fq = fmul fast <16 x float> %i.fp, %i.fp     ; 2 uses
  %i.fr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0x3DEF251A))
  %i.ft = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fs, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0xBDFE5D4F))
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ft, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0x3E11E9BF))
  %i.fv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0xBE2AAE50))
  %i.fw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fv, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0x3E4CCEAC))
  %i.fx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fw, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0xBE7FFFFC))
  %i.fy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %i.fp, <16 x float> splat (float f0x3EAAAAAA))
  %i.fz = fmul fast <16 x float> %i.fq, %i.fp
  %i.ga = fmul fast <16 x float> %i.fz, %i.fy
  %i.gb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ga)
  %i.gc = fneg fast <16 x float> %i.fq
  %i.gd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.gc, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.gb)
  %i.ge = fadd fast <16 x float> %i.gd, %i.fp
  %i.gf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ge)
  %13 = select <16 x i1> %12, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.gf
  %i.gg = select fast <16 x i1> %i.ew, <16 x float> %i.fa, <16 x float> %13
  %i.gh = fsub fast <16 x float> %i.ex, %i.gg
  %i.gi = fmul fast <16 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.gi)
  %i.gk = bitcast <16 x bfloat> %i.gj to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gk, ptr align 1 %.034.lcssa, <16 x i1> %i.dh)
  %.pre101 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gl = phi i32 [ %.pre101, %bb.c ], [ %i.dc, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.dc, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.gm = icmp slt i32 %.1, %i.gl
  br i1 %i.gm, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.d, %.lr.ph92
  %.290 = phi i32 [ %i.gw, %.lr.ph92 ], [ %.1, %bb.d ]
  %.13589 = phi ptr [ %i.gv, %.lr.ph92 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.gn = load i16, ptr %.13589, align 2, !tbaa !21
  %i.go = zext i16 %i.gn to i32
  %i.gp = shl nuw i32 %i.go, 16
  %i.gq = bitcast i32 %i.gp to float
  %i.gr = call fast noundef nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf) %i.gq) #17
  %i.gs = bitcast float %i.gr to i32
  %i.gt = lshr i32 %i.gs, 16
  %i.gu = trunc nuw i32 %i.gt to i16
  store i16 %i.gu, ptr %.13589, align 2, !tbaa !21
  %i.gv = getelementptr inbounds nuw i8, ptr %.13589, i64 2
  %i.gw = add nuw nsw i32 %.290, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, %i.gl
  br i1 %exitcond.not, label %._crit_edge93, label %.lr.ph92, !llvm.loop !216

._crit_edge93:                                    ; preds = %.lr.ph92, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gx = load i32, ptr %i.b, align 4, !tbaa !14
  %i.gy = sext i32 %i.gx to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gy
  br i1 %.not.not, label %.noexc, label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge93, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge96, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @atanhf(float noundef nofpclass(nan inf)) local_unnamed_addr #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
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
  %.not72 = icmp sgt i32 %i.k, %i.j
  br i1 %.not72, label %._crit_edge74, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge71
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.dt, %._crit_edge71 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge71 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !222
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !222
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !222
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.064 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.noexc ]
  %.03463 = phi ptr [ %i.bo, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03463, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 6 uses
  %i.y = fmul fast <16 x float> %i.x, %i.x
  %i.z = fmul fast <16 x float> %i.x, splat (float f0x3EAAAAAB)
  %i.aa = fadd fast <16 x float> %i.z, splat (float -5.000000e-01)
  %i.ab = fmul fast <16 x float> %i.y, %i.aa
  %i.ac = fadd fast <16 x float> %i.ab, %i.x
  %i.ad = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 2 uses
  %i.ae = fcmp fast ole <16 x float> %i.ad, zeroinitializer
  %i.af = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x00800000), i32 4)
  %i.ag = bitcast <16 x float> %i.af to <16 x i32> ; 2 uses
  %i.ah = lshr <16 x i32> %i.ag, splat (i32 23)
  %i.ai = and <16 x i32> %i.ag, splat (i32 -2139095041)
  %i.aj = or disjoint <16 x i32> %i.ai, splat (i32 1056964608)
  %i.ak = bitcast <16 x i32> %i.aj to <16 x float> ; 3 uses
  %i.al = add nsw <16 x i32> %i.ah, splat (i32 -127)
  %i.am = sitofp fast <16 x i32> %i.al to <16 x float> ; 2 uses
  %i.an = fadd fast <16 x float> %i.am, splat (float 1.000000e+00)
  %i.ao = fcmp fast olt <16 x float> %i.ak, splat (float f0x3F3504F3) ; 2 uses
  %i.ap = fadd fast <16 x float> %i.ak, splat (float -1.000000e+00)
  %i.aq = select fast <16 x i1> %i.ao, <16 x float> %i.am, <16 x float> %i.an ; 2 uses
  %i.ar = select fast <16 x i1> %i.ao, <16 x float> %i.ak, <16 x float> zeroinitializer
  %i.as = fadd fast <16 x float> %i.ap, %i.ar     ; 12 uses
  %i.at = fmul fast <16 x float> %i.as, %i.as     ; 2 uses
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3DEF251A))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBDFE5D4F))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3E11E9BF))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBE2AAE50))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3E4CCEAC))
  %i.ba = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.az, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0xBE7FFFFC))
  %i.bb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ba, <16 x float> nofpclass(nan inf) %i.as, <16 x float> splat (float f0x3EAAAAAA))
  %i.bc = fmul fast <16 x float> %i.at, %i.as
  %i.bd = fmul fast <16 x float> %i.bc, %i.bb
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bd)
  %i.bf = fneg fast <16 x float> %i.at
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bf, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.be)
  %i.bh = fadd fast <16 x float> %i.bg, %i.as
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bh)
  %i.bj = select <16 x i1> %i.ae, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bi
  %i.bk = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x)
  %i.bl = fcmp fast olt <16 x float> %i.bk, splat (float f0x38D1B717)
  %i.bm = select fast <16 x i1> %i.bl, <16 x float> %i.ac, <16 x float> %i.bj
  %i.bn = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bm)
  store <16 x bfloat> %i.bn, ptr %.03463, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %.03463, i64 32 ; 2 uses
  %i.bp = add nuw nsw i32 %.064, 16               ; 3 uses
  %i.bq = or disjoint i32 %i.bp, 15
  %i.br = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.bt = phi i32 [ %i.o, %.noexc ], [ %i.br, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bo, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bp, %.lr.ph ] ; 3 uses
  %i.bu = icmp slt i32 %.0.lcssa, %i.bt
  br i1 %i.bu, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bv = sub nuw nsw i32 %i.bt, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.bv
  %i.bw = trunc i32 %notmask to i16
  %i.bx = xor i16 %i.bw, -1
  %i.by = bitcast i16 %i.bx to <16 x i1>          ; 2 uses
  %i.bz = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.by, <16 x i16> zeroinitializer)
  %i.ca = bitcast <16 x i16> %i.bz to <16 x bfloat>
  %i.cb = fpext fast <16 x bfloat> %i.ca to <16 x float> ; 6 uses
  %i.cc = fmul fast <16 x float> %i.cb, %i.cb
  %i.cd = fmul fast <16 x float> %i.cb, splat (float f0x3EAAAAAB)
  %i.ce = fadd fast <16 x float> %i.cd, splat (float -5.000000e-01)
  %i.cf = fmul fast <16 x float> %i.cc, %i.ce
  %i.cg = fadd fast <16 x float> %i.cf, %i.cb
  %i.ch = fadd fast <16 x float> %i.cb, splat (float 1.000000e+00) ; 2 uses
  %i.ci = fcmp fast ole <16 x float> %i.ch, zeroinitializer
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ch, <16 x float> splat (float f0x00800000), i32 4)
  %i.ck = bitcast <16 x float> %i.cj to <16 x i32> ; 2 uses
  %i.cl = lshr <16 x i32> %i.ck, splat (i32 23)
  %i.cm = and <16 x i32> %i.ck, splat (i32 -2139095041)
  %i.cn = or disjoint <16 x i32> %i.cm, splat (i32 1056964608)
  %i.co = bitcast <16 x i32> %i.cn to <16 x float> ; 3 uses
  %i.cp = add nsw <16 x i32> %i.cl, splat (i32 -127)
  %i.cq = sitofp fast <16 x i32> %i.cp to <16 x float> ; 2 uses
  %i.cr = fadd fast <16 x float> %i.cq, splat (float 1.000000e+00)
  %i.cs = fcmp fast olt <16 x float> %i.co, splat (float f0x3F3504F3) ; 2 uses
  %i.ct = fadd fast <16 x float> %i.co, splat (float -1.000000e+00)
  %i.cu = select fast <16 x i1> %i.cs, <16 x float> %i.cq, <16 x float> %i.cr ; 2 uses
  %i.cv = select fast <16 x i1> %i.cs, <16 x float> %i.co, <16 x float> zeroinitializer
  %i.cw = fadd fast <16 x float> %i.ct, %i.cv     ; 12 uses
  %i.cx = fmul fast <16 x float> %i.cw, %i.cw     ; 2 uses
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0x3DEF251A))
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0xBDFE5D4F))
  %i.db = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.da, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0x3E11E9BF))
  %i.dc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.db, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0xBE2AAE50))
  %i.dd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dc, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0x3E4CCEAC))
  %i.de = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dd, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0xBE7FFFFC))
  %i.df = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> nofpclass(nan inf) %i.cw, <16 x float> splat (float f0x3EAAAAAA))
  %i.dg = fmul fast <16 x float> %i.cx, %i.cw
  %i.dh = fmul fast <16 x float> %i.dg, %i.df
  %i.di = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.dh)
  %i.dj = fneg fast <16 x float> %i.cx
  %i.dk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.dj, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.di)
  %i.dl = fadd fast <16 x float> %i.dk, %i.cw
  %i.dm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cu, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.dl)
  %i.dn = select <16 x i1> %i.ci, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.dm
  %i.do = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.cb)
  %i.dp = fcmp fast olt <16 x float> %i.do, splat (float f0x38D1B717)
  %i.dq = select fast <16 x i1> %i.dp, <16 x float> %i.cg, <16 x float> %i.dn
  %i.dr = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dq)
  %i.ds = bitcast <16 x bfloat> %i.dr to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.ds, ptr align 1 %.034.lcssa, <16 x i1> %i.by)
  %.pre79 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.dt = phi i32 [ %.pre79, %bb.c ], [ %i.bt, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.bt, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.du = icmp slt i32 %.1, %i.dt
  br i1 %i.du, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %bb.d, %.lr.ph70
  %.268 = phi i32 [ %i.ee, %.lr.ph70 ], [ %.1, %bb.d ]
  %.13567 = phi ptr [ %i.ed, %.lr.ph70 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.dv = load i16, ptr %.13567, align 2, !tbaa !21
  %i.dw = zext i16 %i.dv to i32
  %i.dx = shl nuw i32 %i.dw, 16
  %i.dy = bitcast i32 %i.dx to float
  %i.dz = call fast noundef nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf) %i.dy) #17
  %i.ea = bitcast float %i.dz to i32
  %i.eb = lshr i32 %i.ea, 16
  %i.ec = trunc nuw i32 %i.eb to i16
  store i16 %i.ec, ptr %.13567, align 2, !tbaa !21
  %i.ed = getelementptr inbounds nuw i8, ptr %.13567, i64 2
  %i.ee = add nuw nsw i32 %.268, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %i.dt
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !221

._crit_edge71:                                    ; preds = %.lr.ph70, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ef = load i32, ptr %i.b, align 4, !tbaa !14
  %i.eg = sext i32 %i.ef to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.eg
  br i1 %.not.not, label %.noexc, label %._crit_edge74

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge74, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @log1pf(float noundef nofpclass(nan inf)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fabs.v16f32(<16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x bfloat> @llvm.fabs.v16bf16(<16 x bfloat>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.fabs.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.floor.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.ceil.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.ceil.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sqrt.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.exp.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.log.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sin.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sin.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.cos.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cos.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.tan.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tan.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.asin.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.asin.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.acos.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.acos.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.atan.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.atan.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.tanh.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.log10.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log10.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.nearbyint.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.nearbyint.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.trunc.v32f32(<32 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.trunc.v8f32(<8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.sinh.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sinh.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.cosh.v32f32(<32 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.cosh.v8f32(<8 x float>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_expm1f" "_ZGVcN8v_expm1f" "_ZGVdN8v_expm1f" "_ZGVeN16v_expm1f" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_asinhf" "_ZGVcN8v_asinhf" "_ZGVdN8v_asinhf" "_ZGVeN16v_asinhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_acoshf" "_ZGVcN8v_acoshf" "_ZGVdN8v_acoshf" "_ZGVeN16v_acoshf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_atanhf" "_ZGVcN8v_atanhf" "_ZGVdN8v_atanhf" "_ZGVeN16v_atanhf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "_ZGVbN4v_log1pf" "_ZGVcN8v_log1pf" "_ZGVdN8v_log1pf" "_ZGVeN16v_log1pf" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTSN4ncnn9AllocatorE", !9, i64 0}
!13 = !{!"_ZTSN4ncnn3MatE", !9, i64 0, !10, i64 8, !11, i64 16, !6, i64 24, !12, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !11, i64 64}
!14 = !{!6, !6, i64 0}
!15 = !{!13, !9, i64 0}
!16 = !{!13, !11, i64 64}
!17 = !{!13, !11, i64 16}
!18 = !{!5, !5, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"short", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 8, i32 24}
!25 = !{i64 2, i64 -1, i64 -1, i1 true}
!26 = !{!25}
!27 = !{!"branch_weights", i32 16, i32 112}
!28 = !{!"branch_weights", i32 4, i32 28}
!29 = !{!13, !6, i64 44}
!30 = !{!13, !6, i64 48}
!31 = !{!13, !6, i64 52}
!32 = !{!13, !6, i64 56}
!33 = !{!13, !6, i64 24}
!34 = !{!"bool", !5, i64 0}
!35 = !{!"_ZTSN4ncnn6OptionE", !34, i64 0, !34, i64 1, !34, i64 2, !34, i64 3, !6, i64 4, !12, i64 8, !12, i64 16, !6, i64 24, !34, i64 28, !34, i64 29, !34, i64 30, !34, i64 31, !34, i64 32, !34, i64 33, !34, i64 34, !34, i64 35, !34, i64 36, !34, i64 37, !34, i64 38, !34, i64 39, !6, i64 40, !34, i64 44, !34, i64 45, !34, i64 46, !34, i64 47, !5, i64 48, !34, i64 49, !34, i64 50, !34, i64 51, !34, i64 52, !34, i64 53, !34, i64 54, !34, i64 55, !34, i64 56, !34, i64 57, !34, i64 58, !34, i64 59, !34, i64 60, !34, i64 61, !34, i64 62, !34, i64 63}
!36 = !{!35, !6, i64 4}
!37 = distinct !{!37, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!38 = distinct !{!38, !37, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19, !22, !23}
!41 = distinct !{!41, !19, !22, !23}
!42 = distinct !{!42, !19, !23, !22}
!43 = !{!38}
!44 = distinct !{!44, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!45 = distinct !{!45, !44, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19, !22, !23}
!48 = distinct !{!48, !19, !22, !23}
!49 = distinct !{!49, !19, !23, !22}
!50 = !{!45}
!51 = distinct !{!51, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !51, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19, !22, !23}
!55 = distinct !{!55, !19, !22, !23}
!56 = distinct !{!56, !19, !23, !22}
!57 = !{!52}
!58 = distinct !{!58, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!59 = distinct !{!59, !58, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19, !22, !23}
!62 = distinct !{!62, !19, !22, !23}
!63 = distinct !{!63, !19, !23, !22}
!64 = !{!59}
!65 = distinct !{!65, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !65, !"_ZN4ncnn3Mat7channelEi: argument 0"}
end_hunk_2
