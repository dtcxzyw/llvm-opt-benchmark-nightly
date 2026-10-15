Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512bf16?download=true
inline.NumInlined: 28
inline.NumDeleted: 28
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_ceilEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.bx = icmp eq i64 %index.next86, %n.vec82
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !62

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
  %i.ce = trunc nuw nsw <32 x i32> %i.ca to <32 x i16>
  %i.cf = trunc nuw nsw <32 x i32> %i.cb to <32 x i16>
  %i.cg = trunc nuw nsw <32 x i32> %i.cc to <32 x i16>
  %i.ch = trunc nuw nsw <32 x i32> %i.cd to <32 x i16>
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
  %n.vec85 = and i64 %i.aw, 8589934576            ; 4 uses
  %i.cj = trunc i64 %n.vec85 to i32
  %i.ck = add i32 %.1, %i.cj
  %i.cl = shl nuw nsw i64 %n.vec85, 1
  %i.cm = getelementptr i8, ptr %.034.lcssa, i64 %i.cl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl i64 %index86, 1
  %next.gep87 = getelementptr i8, ptr %.034.lcssa, i64 %i.cn ; 2 uses
  %wide.load88 = load <16 x i16>, ptr %next.gep87, align 2, !tbaa !21
  %i.co = zext <16 x i16> %wide.load88 to <16 x i32>
  %i.cp = shl nuw <16 x i32> %i.co, splat (i32 16)
  %i.cq = bitcast <16 x i32> %i.cp to <16 x float> ; 2 uses
  %i.cr = fmul fast <16 x float> %i.cq, %i.cq
  %i.cs = bitcast <16 x float> %i.cr to <16 x i32>
  %i.ct = lshr <16 x i32> %i.cs, splat (i32 16)
  %i.cu = trunc nuw nsw <16 x i32> %i.ct to <16 x i16>
  store <16 x i16> %i.cu, ptr %next.gep87, align 2, !tbaa !21
  %index.next89 = add nuw i64 %index86, 16        ; 2 uses
  %i.cv = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.aw, %n.vec85
  br i1 %cmp.n90, label %._crit_edge61, label %.lr.ph60.preheader

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
  %i.dd = trunc nuw nsw i32 %i.dc to i16
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
  %n.vec82 = and i64 %i.aw, 8589934588            ; 4 uses
  %i.bl = trunc i64 %n.vec82 to i32
  %i.bm = add i32 %.1, %i.bl
  %i.bn = shl nuw nsw i64 %n.vec82, 1
  %i.bo = getelementptr i8, ptr %.034.lcssa, i64 %i.bn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = shl i64 %index83, 1
  %next.gep84 = getelementptr i8, ptr %.034.lcssa, i64 %i.bp ; 2 uses
  %wide.load85 = load <4 x i16>, ptr %next.gep84, align 2, !tbaa !21
  %i.bq = zext <4 x i16> %wide.load85 to <4 x i32>
  %i.br = shl nuw <4 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <4 x i32> %i.br to <4 x float>
  %i.bt = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bs)
  %i.bu = bitcast <4 x float> %i.bt to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 16)
  %i.bw = trunc nuw <4 x i32> %i.bv to <4 x i16>
  store <4 x i16> %i.bw, ptr %next.gep84, align 2, !tbaa !21
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next86, %n.vec82
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !76

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n87 = icmp eq i64 %i.aw, %n.vec82
  br i1 %cmp.n87, label %._crit_edge61, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.258.ph = phi i32 [ %.1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.13557.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
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
  %n.vec87 = and i64 %i.cu, 8589934584            ; 4 uses
  %i.dj = trunc i64 %n.vec87 to i32
  %i.dk = add i32 %.1, %i.dj
  %i.dl = shl nuw nsw i64 %n.vec87, 1
  %i.dm = getelementptr i8, ptr %.034.lcssa, i64 %i.dl
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.dn = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.034.lcssa, i64 %i.dn ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %next.gep89, align 2, !tbaa !21
  %i.do = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.dp = shl nuw <8 x i32> %i.do, splat (i32 16)
  %i.dq = bitcast <8 x i32> %i.dp to <8 x float>
  %i.dr = call fast <8 x float> @llvm.asin.v8f32(<8 x float> %i.dq)
  %i.ds = bitcast <8 x float> %i.dr to <8 x i32>
  %i.dt = lshr <8 x i32> %i.ds, splat (i32 16)
  %i.du = trunc nuw <8 x i32> %i.dt to <8 x i16>
  store <8 x i16> %i.du, ptr %next.gep89, align 2, !tbaa !21
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.dv = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.cu, %n.vec87
  br i1 %cmp.n92, label %._crit_edge66, label %.lr.ph65.preheader

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
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 3 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = and <16 x i32> %i.y, splat (i32 -2147483648)
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
  %6 = call <16 x float> @llvm.copysign.v16f32(<16 x float> %i.an, <16 x float> %i.x)
  %i.ao = fsub fast <16 x float> splat (float f0x3FC90FDB), %6
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
  %i.bk = fpext fast <16 x bfloat> %i.bj to <16 x float> ; 3 uses
  %i.bl = bitcast <16 x float> %i.bk to <16 x i32>
  %i.bm = and <16 x i32> %i.bl, splat (i32 -2147483648)
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
  %7 = call <16 x float> @llvm.copysign.v16f32(<16 x float> %i.ca, <16 x float> %i.bk)
  %i.cb = fsub fast <16 x float> splat (float f0x3FC90FDB), %7
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
  %i.dd = trunc nuw nsw <32 x i32> %i.dc to <32 x i16>
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
  %n.vec87 = and i64 %i.cq, 8589934584            ; 4 uses
  %i.df = trunc i64 %n.vec87 to i32
  %i.dg = add i32 %.1, %i.df
  %i.dh = shl nuw nsw i64 %n.vec87, 1
  %i.di = getelementptr i8, ptr %.034.lcssa, i64 %i.dh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.dj = shl i64 %index88, 1
  %next.gep89 = getelementptr i8, ptr %.034.lcssa, i64 %i.dj ; 2 uses
  %wide.load90 = load <8 x i16>, ptr %next.gep89, align 2, !tbaa !21
  %i.dk = zext <8 x i16> %wide.load90 to <8 x i32>
  %i.dl = shl nuw <8 x i32> %i.dk, splat (i32 16)
  %i.dm = bitcast <8 x i32> %i.dl to <8 x float>
  %i.dn = call fast <8 x float> @llvm.acos.v8f32(<8 x float> %i.dm)
  %i.do = bitcast <8 x float> %i.dn to <8 x i32>
  %i.dp = lshr <8 x i32> %i.do, splat (i32 16)
  %i.dq = trunc nuw nsw <8 x i32> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %next.gep89, align 2, !tbaa !21
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.dr = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.cq, %n.vec87
  br i1 %cmp.n92, label %._crit_edge66, label %.lr.ph65.preheader

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
  %i.dz = trunc nuw nsw i32 %i.dy to i16
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
end_hunk_1
begin_hunk_2_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_log1pEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
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
declare <16 x float> @llvm.copysign.v16f32(<16 x float>, <16 x float>) #9

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
!37 = distinct !{!37, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!38 = distinct !{!38, !37, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19, !22, !23}
!41 = distinct !{!41, !19, !22, !23}
!42 = distinct !{!42, !19, !23, !22}
!43 = !{!38}
!44 = distinct !{!44, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!45 = distinct !{!45, !44, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19, !22, !23}
!48 = distinct !{!48, !19, !22, !23}
!49 = distinct !{!49, !19, !23, !22}
!50 = !{!45}
!51 = distinct !{!51, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !51, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19, !22, !23}
!55 = distinct !{!55, !19, !22, !23}
!56 = distinct !{!56, !19, !23, !22}
!57 = !{!52}
!58 = distinct !{!58, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!59 = distinct !{!59, !58, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19, !22, !23}
!62 = distinct !{!62, !19, !22, !23}
!63 = distinct !{!63, !19, !23, !22}
!64 = !{!59}
!65 = distinct !{!65, i1 false, !"_ZN4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !65, !"_ZN4ncnn3Mat7channelEi: argument 0"}
end_hunk_2
