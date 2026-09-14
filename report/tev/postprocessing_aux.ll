Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  %i.ci = or i1 %i.cg, %i.ch
  %i.cj = or i1 %ident.check112, %i.ci
  br i1 %i.cj, label %scalar.ph133.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %vector.scevcheck111
  %i.ck = shl nsw i64 %i.bv, 2                    ; 3 uses
  %scevgep114 = getelementptr i8, ptr %1, i64 %i.ck ; 3 uses
  %i.cl = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %scevgep115 = getelementptr i8, ptr %1, i64 %i.cl ; 3 uses
  %i.cm = add i32 %i.bu, -2
  %i.cn = add i32 %.1.lcssa, %5
  %i.co = sub i32 %i.cm, %i.cn
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = add nsw i64 %i.bv, %i.cp
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = add nsw i64 %i.cr, 4
  %i.ct = sub nsw i64 %i.cs, %i.cl
  %scevgep116 = getelementptr i8, ptr %2, i64 %i.ct
  %i.cu = shl nsw i64 %i.cp, 2
  %i.cv = getelementptr i8, ptr %2, i64 %i.cu
  %scevgep117 = getelementptr i8, ptr %i.cv, i64 4
  %i.cw = shl nsw i64 %i.bx, 2                    ; 2 uses
  %i.cx = sub nsw i64 %i.ck, %i.cw
  %scevgep118 = getelementptr i8, ptr %2, i64 %i.cx
  %i.cy = sub nsw i64 %i.cl, %i.cw
  %scevgep119 = getelementptr i8, ptr %2, i64 %i.cy
  %scevgep120 = getelementptr i8, ptr %2, i64 %i.ck
  %scevgep121 = getelementptr i8, ptr %2, i64 %i.cl
  %bound0122 = icmp ult ptr %scevgep114, %scevgep117
  %bound1123 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict124 = and i1 %bound0122, %bound1123
  %bound0125 = icmp ult ptr %scevgep114, %scevgep119
  %bound1126 = icmp ult ptr %scevgep118, %scevgep115
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %found.conflict124, %found.conflict127
  %bound0129 = icmp ult ptr %scevgep114, %scevgep121
  %bound1130 = icmp ult ptr %scevgep120, %scevgep115
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph133.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck113
  %n.vec136 = and i64 %i.by, -8                   ; 3 uses
  %i.cz = add nsw i64 %n.vec136, %i.bv
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.da = add nuw i64 %index138, %i.bv            ; 4 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %2, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load139 = load <4 x float>, ptr %i.db, align 4, !tbaa !9, !alias.scope !105
  %wide.load140 = load <4 x float>, ptr %i.dc, align 4, !tbaa !9, !alias.scope !105
  %i.dd = sub nsw i64 %i.da, %i.bx
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load141 = load <4 x float>, ptr %i.de, align 4, !tbaa !9, !alias.scope !106
  %wide.load142 = load <4 x float>, ptr %i.df, align 4, !tbaa !9, !alias.scope !106
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load139, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load141)
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load140, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load142)
  %i.di = trunc nsw i64 %i.da to i32
  %i.dj = add i32 %5, %i.di
  %i.dk = sub i32 %.neg52, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -28
  %wide.load143 = load <4 x float>, ptr %i.dn, align 4, !tbaa !9, !alias.scope !107
  %wide.load144 = load <4 x float>, ptr %i.do, align 4, !tbaa !9, !alias.scope !107
  %reverse145 = shufflevector <4 x float> %wide.load143, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse146 = shufflevector <4 x float> %wide.load144, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dp = fadd <4 x float> %i.dg, %reverse145
  %i.dq = fadd <4 x float> %i.dh, %reverse146
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x float> %i.dp, ptr %i.dr, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  store <4 x float> %i.dq, ptr %i.ds, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %index.next147 = add nuw i64 %index138, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.dt, label %middle.block148, label %vector.body137, !llvm.loop !98

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.by, %n.vec136
  br i1 %cmp.n149, label %._crit_edge, label %scalar.ph133.preheader

scalar.ph133.preheader:                           ; preds = %vector.memcheck113, %vector.scevcheck111, %.lr.ph59, %middle.block148
  %indvars.iv69.ph = phi i64 [ %i.bv, %vector.memcheck113 ], [ %i.bv, %vector.scevcheck111 ], [ %i.bv, %.lr.ph59 ], [ %i.cz, %middle.block148 ]
  br label %scalar.ph133

.lr.ph56:                                         ; preds = %.lr.ph56.preheader152, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader152 ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader152 ] ; 2 uses
  %i.du = mul nsw i64 %indvars.iv64, %i.ab
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !9
  %i.dx = sub nsw i64 %indvars.iv64, %i.y
  %i.dy = mul nsw i64 %i.dx, %i.ab
  %i.dz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dw, float 2.000000e+00, float %i.ea)
  %i.ec = mul nsw i64 %indvars.iv62, %i.ab
  %i.ed = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9
  %i.ef = fadd float %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.ef, ptr %i.eg, align 4, !tbaa !9
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.eh = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.eh, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !99

scalar.ph133:                                     ; preds = %scalar.ph133.preheader, %scalar.ph133
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %scalar.ph133 ], [ %indvars.iv69.ph, %scalar.ph133.preheader ] ; 5 uses
  %i.ei = mul nsw i64 %indvars.iv69, %i.bw
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !9
  %i.el = sub nsw i64 %indvars.iv69, %i.bx
  %i.em = mul nsw i64 %i.el, %i.bw
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !9
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float 2.000000e+00, float %i.eo)
  %i.eq = trunc nsw i64 %indvars.iv69 to i32
  %i.er = add i32 %5, %i.eq
  %i.es = sub i32 %.neg52, %i.er
  %i.et = mul nsw i32 %i.es, %3
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !9
  %i.ex = fadd float %i.ep, %i.ew
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.ex, ptr %i.ey, align 4, !tbaa !9
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %scalar.ph133, !llvm.loop !100

._crit_edge:                                      ; preds = %scalar.ph133, %middle.block148, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15wavelet_denoiseEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !160  ; 3 uses
  %i.f = icmp ult i16 %i.e, 65
  br i1 %i.f, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !161  ; 3 uses
  %i.i = icmp ult i16 %i.h, 65
  %i.j = zext i16 %i.e to i64
  %i.k = zext i16 %i.h to i64
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %i.m = icmp samesign ugt i64 %i.l, 357826559
  %or.cond = select i1 %i.i, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.x, label %.preheader295

.preheader295:                                    ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !162  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader295
  %.0231 = phi i32 [ %i.r, %bb.c ], [ 1, %.preheader295 ] ; 3 uses
  %i.p = shl i32 %i.o, %.0231
  %i.q = icmp ult i32 %i.p, 65536
  %i.r = add nuw nsw i32 %.0231, 1
  br i1 %i.q, label %bb.c, label %bb.d, !llvm.loop !110

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.0231, -1                   ; 6 uses
  %i.t = shl i32 %i.o, %i.s
  store i32 %i.t, ptr %i.n, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !163
  %i.w = shl i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !74
  %i.z = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = shl <4 x i32> %i.y, %i.aa
  store <4 x i32> %i.ab, ptr %i.x, align 8, !tbaa !74
  %i.ac = zext i16 %i.h to i32                    ; 2 uses
  %i.ad = zext i16 %i.e to i32                    ; 2 uses
  %i.ae = mul nuw nsw i32 %i.ac, %i.ad            ; 8 uses
  %i.af = mul nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.ag = add nuw nsw i32 %i.ad, 128
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak) ; 47 uses
  %i.am = zext nneg i32 %i.af to i64              ; 9 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 32 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75 ; 3 uses
  %i.aq = icmp ne i32 %i.ap, 3                    ; 2 uses
  br i1 %i.aq, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %.not = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader294.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.at = icmp sgt i32 %i.ap, 0
  br i1 %i.at, label %.preheader294.lr.ph, label %.loopexit288

.preheader294.lr.ph:                              ; preds = %.thread, %bb.e
  %.0218433 = phi i32 [ %spec.select, %.thread ], [ %i.ap, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count394 = zext nneg i32 %.0218433 to i64
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 4 uses
  %wide.trip.count379 = zext nneg i32 %i.ae to i64
  %wide.trip.count389 = zext nneg i32 %i.ae to i64
  %i.aw = mul nsw i64 %i.am, -4                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.am, 2                ; 6 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep533.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep535.a = getelementptr i8, ptr %i.al, i64 -4
  %scevgep538.a = getelementptr i8, ptr %i.al, i64 4
  %scevgep543 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep591.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep656.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep660.a = getelementptr i8, ptr %i.al, i64 4
  %scevgep662.a = getelementptr i8, ptr %i.al, i64 4
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod711 = trunc i32 %i.ae to i1
  %invariant.op748 = add i64 %i.aw, -1
  %invariant.op746 = add i64 %i.aw, -1
  %min.iters.check = icmp samesign ult i32 %i.ae, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge324, %.preheader294.lr.ph
  %indvars.iv391 = phi i64 [ 0, %.preheader294.lr.ph ], [ %indvars.iv.next392, %._crit_edge324 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv391 ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.new

.preheader293.unr-lcssa:                          ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader293, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader293.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader293.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod711)
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.az = load i16, ptr %gep.epil, align 2, !tbaa !77
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl i32 %i.ba, %i.s
  %i.bc = sitofp i32 %i.bb to float
  %i.bd = tail call float @sqrtf(float noundef %i.bc) #11
  %i.be = fmul float %i.bd, 2.560000e+02
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  store float %i.be, ptr %i.bf, align 4, !tbaa !9
  br label %.preheader293

.preheader293:                                    ; preds = %.preheader293.unr-lcssa, %.epil.preheader
  %i.bg = load i16, ptr %i.g, align 4, !tbaa !161 ; 6 uses
  %i.bh = zext i16 %i.bg to i32                   ; 3 uses
  %.not347 = icmp eq i16 %i.bg, 0                 ; 2 uses
  %i.bi = load i16, ptr %i.d, align 2, !tbaa !160 ; 11 uses
  %i.bj = zext i16 %i.bi to i32                   ; 4 uses
  %.not348 = icmp eq i16 %i.bi, 0                 ; 2 uses
  %i.bk = zext i16 %i.bi to i64                   ; 21 uses
  %i.bl = zext i16 %i.bg to i64                   ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bh, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.bm, -2           ; 2 uses
  %i.bn = zext i16 %i.bi to i64                   ; 8 uses
  %i.bo = shl nuw nsw i32 %i.bj, 1                ; 3 uses
  %wide.trip.count363 = zext i16 %i.bg to i64     ; 11 uses
  %i.bp = add nsw i32 %i.bo, -2                   ; 4 uses
  %wide.trip.count358 = zext i16 %i.bi to i64
  %wide.trip.count373 = zext i16 %i.bi to i64
  %wide.trip.count368 = zext i16 %i.bg to i64
  %i.bq = add nsw i64 %wide.trip.count363, -1     ; 2 uses
  %i.br = add nsw i32 %i.bm, -2
  %i.bs = add nuw nsw i64 %i.am, %wide.trip.count363
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %scevgep471.a = getelementptr i8, ptr %i.al, i64 %i.bt ; 3 uses
  %i.bu = shl nuw nsw i64 %wide.trip.count363, 2  ; 2 uses
  %i.bv = add nsw i32 %i.bm, -2
  %i.bw = shl nuw nsw i64 %i.bk, 2                ; 3 uses
  %scevgep536.a = getelementptr i8, ptr %scevgep535.a, i64 %i.bw
  %scevgep540.a = getelementptr i8, ptr %i.al, i64 %i.bw
  %scevgep544 = getelementptr i8, ptr %scevgep543, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bk, 2
  %i.by = add nsw i32 %i.bo, -2
  %i.bz = add nuw nsw i64 %i.am, %i.bk
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %scevgep593.a = getelementptr i8, ptr %i.al, i64 %i.ca ; 3 uses
  %i.cb = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.cc = shl nuw nsw i64 %i.bk, 2
  %i.cd = add nsw i32 %i.bo, -2
  %i.ce = mul nsw i64 %i.bk, -4
  %i.cf = shl nuw nsw i64 %wide.trip.count363, 2
  %i.cg = add nsw i64 %i.cf, -4
  %i.ch = mul nsw i64 %i.cg, %i.bk                ; 3 uses
  %scevgep658 = getelementptr i8, ptr %i.al, i64 %i.ch
  %scevgep663.a = getelementptr i8, ptr %scevgep662.a, i64 %i.ch
  %scevgep666 = getelementptr i8, ptr %i.al, i64 %i.ch
  %i.ci = add nsw i64 %i.bn, -1
  %min.iters.check578 = icmp ult i16 %i.bi, 8
  %n.vec580 = and i64 %i.bk, 65528                ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec580, %i.bk
  %xtraiter719 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  %ident.check531.not = icmp eq i16 %i.bi, 1
  %ident.check506.not = icmp eq i16 %i.bi, 1
  %ident.check468 = icmp ne i16 %i.bi, 1
  %min.iters.check456 = icmp ult i16 %i.bg, 12
  %ident.check = icmp ne i16 %i.bi, 1
  %i.cj = trunc nsw i64 %i.bq to i32
  %i.ck = icmp ugt i64 %i.bq, 4294967295
  %invariant.op744 = or i1 %i.ck, %ident.check
  %n.vec458 = and i64 %wide.trip.count363, 65528  ; 3 uses
  %cmp.n465 = icmp eq i64 %n.vec458, %wide.trip.count363
  %xtraiter721 = and i64 %wide.trip.count363, 1
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  %i.cl = add nsw i64 %wide.trip.count363, -1
  br label %bb.f

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cm = load i16, ptr %gep, align 2, !tbaa !77
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl i32 %i.cn, %i.s
  %i.cp = sitofp i32 %i.co to float
  %i.cq = tail call float @sqrtf(float noundef %i.cp) #11
  %i.cr = fmul float %i.cq, 2.560000e+02
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %i.cr, ptr %i.cs, align 4, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ct = load i16, ptr %gep.1, align 2, !tbaa !77
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl i32 %i.cu, %i.s
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = tail call float @sqrtf(float noundef %i.cw) #11
  %i.cy = fmul float %i.cx, 2.560000e+02
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  store float %i.cy, ptr %i.cz, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader293.unr-lcssa, label %.lr.ph.new, !llvm.loop !111

.lr.ph323:                                        ; preds = %._crit_edge319
  %invariant.gep325 = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv391 ; 5 uses
  %i.da = sext i32 %i.dx to i64
  %invariant.gep445.a = getelementptr [4 x i8], ptr %i.al, i64 %i.da ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph323, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph323 ] ; 7 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !9
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep445.a, i64 %index
  %wide.load454 = load <4 x float>, ptr %i.dc, align 4, !tbaa !9
  %i.dd = fadd <4 x float> %wide.load, %wide.load454 ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fmul <4 x float> %i.de, splat (float f0x37800000)
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.dg, <4 x i32> splat (i32 65535))
  %i.di = trunc nuw <4 x i32> %i.dh to <4 x i16>  ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = extractelement <4 x i16> %i.di, i64 0
  store i16 %i.dq, ptr %i.dj, align 2, !tbaa !77
  %i.dr = extractelement <4 x i16> %i.di, i64 1
  store i16 %i.dr, ptr %i.dl, align 2, !tbaa !77
  %i.ds = extractelement <4 x i16> %i.di, i64 2
  store i16 %i.ds, ptr %i.dn, align 2, !tbaa !77
  %i.dt = extractelement <4 x i16> %i.di, i64 3
  store i16 %i.dt, ptr %i.dp, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge324, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph323, %middle.block
  %indvars.iv385.ph = phi i64 [ 0, %.lr.ph323 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %.preheader293, %._crit_edge319
  %indvars.iv381 = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next382, %._crit_edge319 ] ; 7 uses
  %.0229321 = phi i32 [ 0, %.preheader293 ], [ %i.dx, %._crit_edge319 ] ; 3 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv381 to i32 ; 5 uses
  %i.dw = and i32 %i.dv, 1
  %i.dx = shl nuw i32 %i.ae, %i.dw                ; 7 uses
  br i1 %.not347, label %.preheader291, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.f
  %i.dy = zext i32 %.0229321 to i64               ; 5 uses
  %i.dz = getelementptr [4 x i8], ptr %i.al, i64 %i.dy ; 2 uses
  %i.ea = shl nuw nsw i32 1, %i.dv                ; 8 uses
  %i.eb = zext nneg i32 %i.ea to i64              ; 25 uses
  %i.ec = shl nuw nsw i32 2, %i.dv
  %i.ed = icmp samesign ult i32 %i.ec, %i.bj
  %i.ee = shl nuw nsw i64 %i.eb, 1                ; 4 uses
  %invariant.op.i = sub nsw i64 %i.bk, %i.eb      ; 2 uses
  %i.ef = sext i32 %i.dx to i64                   ; 2 uses
  %invariant.gep439.a = getelementptr [4 x i8], ptr %i.al, i64 %i.ef
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.ei = add nuw nsw i64 %i.cb, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eb, 2                ; 4 uses
  %i.ek = sub nsw i64 %i.eh, %i.ej
  %i.el = sub nsw i64 %i.ei, %i.ej
  %reass.sub = sub nsw i64 %i.eh, %i.cb
  %i.em = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.en = sub nsw i64 %i.ax, %i.em
  %i.eo = add nuw nsw i64 %i.am, %i.eb
  %i.ep = sub nsw i64 %i.eo, %i.dy
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.dy, %i.eb
  %i.es = sub nsw i64 %i.am, %i.er
  %i.et = shl nsw i64 %i.es, 2
  %scevgep657.a = getelementptr i8, ptr %scevgep656.a, i64 %i.ej ; 3 uses
  %i.eu = add nuw nsw i64 %i.ej, %i.em            ; 3 uses
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.eu
  %scevgep661.a = getelementptr i8, ptr %scevgep660.a, i64 %i.em
  %scevgep664 = getelementptr i8, ptr %scevgep663.a, i64 %i.eu
  %scevgep665 = getelementptr i8, ptr %i.al, i64 %i.eu
  %i.ev = shl nuw nsw i64 %i.eb, 3
  %i.ew = getelementptr i8, ptr %scevgep666, i64 %i.ev
  %scevgep667 = getelementptr i8, ptr %i.ew, i64 %i.em
  %i.ex = getelementptr i8, ptr %i.al, i64 %i.ei
  %i.ey = getelementptr i8, ptr %i.al, i64 %i.ek
  %i.ez = getelementptr i8, ptr %i.al, i64 %i.el
  %i.fa = getelementptr i8, ptr %i.al, i64 %reass.sub
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = getelementptr i8, ptr %i.al, i64 %i.eh
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %min.iters.check680 = icmp samesign ult i64 %indvars.iv381, 3
  %bound0668 = icmp ult ptr %i.an, %scevgep659
  %bound1669 = icmp ult ptr %i.dz, %scevgep657.a
  %found.conflict670 = and i1 %bound0668, %bound1669
  %bound0671.a = icmp ult ptr %i.an, %scevgep664
  %bound1672.a = icmp ult ptr %scevgep661.a, %scevgep657.a
  %found.conflict673.a = and i1 %bound0671.a, %bound1672.a
  %conflict.rdx674.a = or i1 %found.conflict670, %found.conflict673.a
  %bound0675 = icmp ult ptr %i.an, %scevgep667
  %bound1676 = icmp ult ptr %scevgep665, %scevgep657.a
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674.a, %found.conflict677
  %n.vec682 = and i64 %i.eb, 2147483640
  %xtraiter712 = and i64 %i.eb, 1
  %i.fe = icmp eq i64 %indvars.iv381, 0
  %unroll_iter715 = and i64 %i.eb, 2147483646
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  %lcmp.mod714 = icmp eq i64 %indvars.iv381, 0
  %i.ff = add nuw nsw i64 %i.eb, 1
  %i.fg = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ff)
  %i.fh = sub nsw i64 %i.fg, %i.eb                ; 3 uses
  %min.iters.check639 = icmp ult i64 %i.fh, 8
  %invariant.op729 = add i64 %i.en, -1
  %invariant.op730 = add i64 %i.eq, -1
  %invariant.op732 = add i64 %i.et, -1
  %n.vec641 = and i64 %i.fh, -8                   ; 4 uses
  %i.fi = add i64 %n.vec641, %i.eb                ; 2 uses
  %i.fj = add i64 %i.ee, %n.vec641
  %cmp.n652 = icmp eq i64 %i.fh, %n.vec641
  %invariant.op734.reass = add i64 %i.eg, %invariant.op748
  br label %bb.g

.preheader291:                                    ; preds = %._crit_edge, %bb.f
  br i1 %.not348, label %.lr.ph318, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader291
  %i.fk = zext i32 %i.dx to i64                   ; 5 uses
  %i.fl = getelementptr [4 x i8], ptr %i.al, i64 %i.fk ; 2 uses
  %i.fm = shl nuw nsw i32 1, %i.dv                ; 6 uses
  %i.fn = zext nneg i32 %i.fm to i64              ; 21 uses
  %i.fo = shl nuw nsw i32 2, %i.dv
  %i.fp = icmp samesign ult i32 %i.fo, %i.bh
  %i.fq = shl nuw nsw i64 %i.fn, 1                ; 4 uses
  %invariant.op.i266 = sub nsw i64 %i.bl, %i.fn   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fk, 2                ; 4 uses
  %i.fs = add nuw nsw i64 %i.bu, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fn, 2                ; 5 uses
  %i.fu = sub nsw i64 %i.fr, %i.ft
  %i.fv = sub nsw i64 %i.fs, %i.ft
  %reass.sub697 = sub nsw i64 %i.fr, %i.bu
  %i.fw = shl nuw nsw i64 %i.fk, 2                ; 5 uses
  %i.fx = sub nsw i64 %i.ax, %i.fw
  %i.fy = add nuw nsw i64 %i.am, %i.fn
  %i.fz = sub nsw i64 %i.fy, %i.fk
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.fk, %i.fn
  %i.gc = sub nsw i64 %i.am, %i.gb
  %i.gd = shl nsw i64 %i.gc, 2
  %scevgep534 = getelementptr i8, ptr %scevgep533.a, i64 %i.ft ; 3 uses
  %i.ge = getelementptr i8, ptr %scevgep536.a, i64 %i.ft
  %scevgep537.a = getelementptr i8, ptr %i.ge, i64 %i.fw
  %scevgep539 = getelementptr i8, ptr %scevgep538.a, i64 %i.fw
  %i.gf = add nuw nsw i64 %i.fw, %i.ft            ; 2 uses
  %scevgep541.a = getelementptr i8, ptr %scevgep540.a, i64 %i.gf
  %scevgep542 = getelementptr i8, ptr %i.al, i64 %i.gf
  %i.gg = shl nuw nsw i64 %i.fn, 3
  %i.gh = getelementptr i8, ptr %scevgep544, i64 %i.gg
  %scevgep545 = getelementptr i8, ptr %i.gh, i64 %i.fw
  %i.gi = getelementptr i8, ptr %i.al, i64 %i.fs
  %i.gj = getelementptr i8, ptr %i.al, i64 %i.fu
  %i.gk = getelementptr i8, ptr %i.al, i64 %i.fv
  %i.gl = getelementptr i8, ptr %i.al, i64 %reass.sub697
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  %i.gn = getelementptr i8, ptr %i.al, i64 %i.fr
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %min.iters.check558 = icmp samesign ugt i64 %indvars.iv381, 2
  %or.cond699 = select i1 %min.iters.check558, i1 %ident.check531.not, i1 false
  %bound0546 = icmp ult ptr %i.an, %scevgep537.a
  %bound1547 = icmp ult ptr %i.fl, %scevgep534
  %found.conflict548 = and i1 %bound0546, %bound1547
  %bound0549.a = icmp ult ptr %i.an, %scevgep541.a
  %bound1550.a = icmp ult ptr %scevgep539, %scevgep534
  %found.conflict551.a = and i1 %bound0549.a, %bound1550.a
  %conflict.rdx552.a = or i1 %found.conflict548, %found.conflict551.a
  %bound0553 = icmp ult ptr %i.an, %scevgep545
  %bound1554 = icmp ult ptr %scevgep542, %scevgep534
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx556 = or i1 %conflict.rdx552.a, %found.conflict555
  %n.vec560 = and i64 %i.fn, 2147483640
  %i.gp = add nuw nsw i64 %i.fn, 1
  %i.gq = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.gp)
  %i.gr = sub nsw i64 %i.gq, %i.fn                ; 3 uses
  %min.iters.check514 = icmp ugt i64 %i.gr, 7
  %or.cond700 = select i1 %min.iters.check514, i1 %ident.check506.not, i1 false
  %invariant.op738.a = add i64 %i.fx, -1
  %invariant.op740 = add i64 %i.ga, -1
  %invariant.op742 = add i64 %i.gd, -1
  %n.vec516 = and i64 %i.gr, -8                   ; 4 uses
  %i.gs = add i64 %n.vec516, %i.fn                ; 2 uses
  %i.gt = add i64 %i.fq, %n.vec516
  %cmp.n527 = icmp eq i64 %i.gr, %n.vec516
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv360 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next361, %._crit_edge ] ; 5 uses
  %i.gu = mul i64 %i.ce, %indvars.iv360           ; 3 uses
  %i.gv = mul i64 %i.cc, %indvars.iv360           ; 5 uses
  %scevgep595.a = getelementptr i8, ptr %i.ex, i64 %i.gv
  %scevgep596.a = getelementptr i8, ptr %i.ey, i64 %i.gv
  %scevgep598.a = getelementptr i8, ptr %i.ez, i64 %i.gv
  %scevgep599 = getelementptr i8, ptr %i.fb, i64 %i.gv
  %scevgep601 = getelementptr i8, ptr %i.fd, i64 %i.gv
  %i.gw = mul i64 %i.bx, %indvars.iv360
  %i.gx = mul nuw nsw i64 %indvars.iv360, %i.bn   ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gx ; 28 uses
  %invariant.gep302 = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.eb ; 4 uses
  %brmerge749 = select i1 %min.iters.check680, i1 true, i1 %conflict.rdx678
  br i1 %brmerge749, label %.lr.ph.i.preheader, label %vector.body683

.lr.ph.i.preheader:                               ; preds = %bb.g
  br i1 %i.fe, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body683:                                   ; preds = %bb.g, %vector.body683
  %index684 = phi i64 [ %index.next693, %vector.body683 ], [ 0, %bb.g ] ; 5 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index684 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load685 = load <4 x float>, ptr %i.gz, align 4, !tbaa !9, !alias.scope !165
  %wide.load686 = load <4 x float>, ptr %i.ha, align 4, !tbaa !9, !alias.scope !165
  %i.hb = sub nuw nsw i64 %i.eb, %index684
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -12
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -28
  %wide.load687.a = load <4 x float>, ptr %i.hd, align 4, !tbaa !9, !alias.scope !166
  %wide.load688.a = load <4 x float>, ptr %i.he, align 4, !tbaa !9, !alias.scope !166
  %reverse689 = shufflevector <4 x float> %wide.load687.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse690 = shufflevector <4 x float> %wide.load688.a, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load685, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse689)
  %i.hg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load686, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse690)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %index684 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load691 = load <4 x float>, ptr %i.hh, align 4, !tbaa !9, !alias.scope !167
  %wide.load692 = load <4 x float>, ptr %i.hi, align 4, !tbaa !9, !alias.scope !167
  %i.hj = fadd <4 x float> %i.hf, %wide.load691
  %i.hk = fadd <4 x float> %i.hg, %wide.load692
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index684 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <4 x float> %i.hj, ptr %i.hl, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  store <4 x float> %i.hk, ptr %i.hm, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  %index.next693 = add nuw i64 %index684, 8       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  br i1 %cmp.n503, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %vector.memcheck469, %vector.scevcheck467, %.lr.ph59.i259, %middle.block502
  %indvars.iv69.i262.ph = phi i64 [ %i.pz, %vector.memcheck469 ], [ %i.pz, %vector.scevcheck467 ], [ %i.pz, %.lr.ph59.i259 ], [ %i.qs, %middle.block502 ]
  br label %scalar.ph488

.lr.ph56.i267:                                    ; preds = %.lr.ph56.i267.preheader704, %.lr.ph56.i267
  %indvars.iv64.i268 = phi i64 [ %indvars.iv.next65.i270, %.lr.ph56.i267 ], [ %indvars.iv64.i268.ph, %.lr.ph56.i267.preheader704 ] ; 4 uses
  %indvars.iv62.i269 = phi i64 [ %indvars.iv.next63.i271, %.lr.ph56.i267 ], [ %indvars.iv62.i269.ph, %.lr.ph56.i267.preheader704 ] ; 2 uses
  %i.rn = mul nuw nsw i64 %indvars.iv64.i268, %i.bk
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !9
  %i.rq = sub nuw nsw i64 %indvars.iv64.i268, %i.fn
  %i.rr = mul nuw nsw i64 %i.rq, %i.bk
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rr
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !9
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rp, float 2.000000e+00, float %i.rt)
  %i.rv = mul nuw nsw i64 %indvars.iv62.i269, %i.bk
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !9
  %i.ry = fadd float %i.ru, %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i268
  store float %i.ry, ptr %i.rz, align 4, !tbaa !9
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.sa = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.sa, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !147

scalar.ph488:                                     ; preds = %scalar.ph488.preheader, %scalar.ph488
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263, %scalar.ph488 ], [ %indvars.iv69.i262.ph, %scalar.ph488.preheader ] ; 5 uses
  %i.sb = mul nsw i64 %indvars.iv69.i262, %i.bk
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sb
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !9
  %i.se = sub nsw i64 %indvars.iv69.i262, %i.fn
  %i.sf = mul nsw i64 %i.se, %i.bk
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !9
  %i.si = tail call float @llvm.fmuladd.f32(float %i.sd, float 2.000000e+00, float %i.sh)
  %i.sj = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.sk = add i32 %i.fm, %i.sj
  %i.sl = sub i32 %invariant.op, %i.sk
  %i.sm = mul nsw i32 %i.sl, %i.bj
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !9
  %i.sq = fadd float %i.si, %i.sp
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i262
  store float %i.sq, ptr %i.sr, align 4, !tbaa !9
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 2 uses
  %exitcond73.not.i264 = icmp eq i64 %indvars.iv.next70.i263, %i.bl
  br i1 %exitcond73.not.i264, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph488, !llvm.loop !148

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %scalar.ph488, %middle.block502, %.preheader.i257
  br i1 %.not347, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.ss = trunc nuw nsw i64 %indvars.iv370 to i32
  %i.st = add i32 %i.dx, %i.ss                    ; 6 uses
  br i1 %min.iters.check456, label %scalar.ph455.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.su = add i32 %i.st, %i.cj
  %i.sv = icmp slt i32 %i.su, %i.st
  %.reass745 = or i1 %i.sv, %invariant.op744
  %.reass747 = add i64 %i.oe, %invariant.op746
  %diff.check = icmp ult i64 %.reass747, 31
  %or.cond701 = select i1 %.reass745, i1 true, i1 %diff.check
  br i1 %or.cond701, label %scalar.ph455.preheader, label %vector.body459

vector.body459:                                   ; preds = %vector.scevcheck, %vector.body459
  %index460 = phi i64 [ %index.next463, %vector.body459 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index460 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load461 = load <4 x float>, ptr %i.sw, align 4, !tbaa !9
  %wide.load462 = load <4 x float>, ptr %i.sx, align 4, !tbaa !9
  %i.sy = fmul <4 x float> %wide.load461, splat (float 2.500000e-01)
  %i.sz = fmul <4 x float> %wide.load462, splat (float 2.500000e-01)
  %i.ta = trunc nuw nsw i64 %index460 to i32
  %i.tb = add i32 %i.st, %i.ta
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store <4 x float> %i.sy, ptr %i.td, align 4, !tbaa !9
  store <4 x float> %i.sz, ptr %i.te, align 4, !tbaa !9
  %index.next463 = add nuw i64 %index460, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next463, %n.vec458
  br i1 %i.tf, label %middle.block464, label %vector.body459, !llvm.loop !149

middle.block464:                                  ; preds = %vector.body459
  br i1 %cmp.n465, label %._crit_edge312, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %vector.scevcheck, %.lr.ph311, %middle.block464
  %indvars.iv365.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph311 ], [ %n.vec458, %middle.block464 ] ; 5 uses
  br i1 %lcmp.mod722.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365.ph
  %i.th = load float, ptr %i.tg, align 4, !tbaa !9
  %i.ti = fmul float %i.th, 2.500000e-01
  %i.tj = mul nuw nsw i64 %indvars.iv365.ph, %i.bn
  %i.tk = trunc nuw nsw i64 %i.tj to i32
  %i.tl = add i32 %i.st, %i.tk
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tm
  store float %i.ti, ptr %i.tn, align 4, !tbaa !9
  %indvars.iv.next366.prol = or disjoint i64 %indvars.iv365.ph, 1
  br label %scalar.ph455.prol.loopexit

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph455.preheader ], [ %indvars.iv.next366.prol, %scalar.ph455.prol ]
  %i.to = icmp eq i64 %indvars.iv365.ph, %i.cl
  br i1 %i.to, label %._crit_edge312, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.1, %scalar.ph455 ], [ %indvars.iv365.unr, %scalar.ph455.prol.loopexit ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !9
  %i.tr = fmul float %i.tq, 2.500000e-01
  %i.ts = mul nuw nsw i64 %indvars.iv365, %i.bn
  %i.tt = trunc nuw nsw i64 %i.ts to i32
  %i.tu = add i32 %i.st, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tv
  store float %i.tr, ptr %i.tw, align 4, !tbaa !9
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next366
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !9
  %i.tz = fmul float %i.ty, 2.500000e-01
  %i.ua = mul nuw nsw i64 %indvars.iv.next366, %i.bn
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.st, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ud
  store float %i.tz, ptr %i.ue, align 4, !tbaa !9
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %exitcond369.not.1 = icmp eq i64 %indvars.iv.next366.1, %wide.trip.count368
  br i1 %exitcond369.not.1, label %._crit_edge312, label %scalar.ph455, !llvm.loop !150

._crit_edge312:                                   ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455, %middle.block464, %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %.lr.ph318, label %bb.h, !llvm.loop !151

.lr.ph318:                                        ; preds = %._crit_edge312, %.preheader291
  %i.uf = load float, ptr %i.au, align 4, !tbaa !185
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv381
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !9
  %i.ui = fmul float %i.uf, %i.uh                 ; 4 uses
  %i.uj = fneg float %i.ui
  %.not252 = icmp eq i32 %.0229321, 0
  %i.uk = sext i32 %i.dx to i64
  %i.ul = sext i32 %.0229321 to i64
  %invariant.gep441.a = getelementptr [4 x i8], ptr %i.al, i64 %i.uk
  %invariant.gep443 = getelementptr [4 x i8], ptr %i.al, i64 %i.ul
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph318, %bb.o
  %indvars.iv375 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next376, %bb.o ] ; 4 uses
  %gep442.a = getelementptr [4 x i8], ptr %invariant.gep441.a, i64 %indvars.iv375
  %i.um = load float, ptr %gep442.a, align 4, !tbaa !9
  %gep444.a = getelementptr [4 x i8], ptr %invariant.gep443, i64 %indvars.iv375 ; 2 uses
  %i.un = load float, ptr %gep444.a, align 4, !tbaa !9
  %i.uo = fsub float %i.un, %i.um                 ; 4 uses
  %i.up = fcmp olt float %i.uo, %i.uj
  br i1 %i.up, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.uq = fadd float %i.ui, %i.uo
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ur = fcmp ogt float %i.uo, %i.ui
  br i1 %i.ur, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.us = fsub float %i.uo, %i.ui
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sink = phi float [ %i.us, %bb.l ], [ %i.uq, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  store float %.sink, ptr %gep444.a, align 4, !tbaa !9
  br i1 %.not252, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv375 ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !9
  %i.uv = fadd float %.sink, %i.uu
  store float %i.uv, ptr %i.ut, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379
  br i1 %exitcond380.not, label %._crit_edge319, label %bb.i, !llvm.loop !152

._crit_edge319:                                   ; preds = %bb.o
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next382, 5
  br i1 %exitcond384.not, label %.lr.ph323, label %bb.f, !llvm.loop !153

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %scalar.ph ], [ %indvars.iv385.ph, %scalar.ph.preheader ] ; 4 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv385
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !9
  %gep446.a = getelementptr [4 x i8], ptr %invariant.gep445.a, i64 %indvars.iv385
  %i.uy = load float, ptr %gep446.a, align 4, !tbaa !9
  %i.uz = fadd float %i.ux, %i.uy                 ; 2 uses
  %i.va = fmul float %i.uz, %i.uz
  %i.vb = fmul float %i.va, f0x37800000
  %i.vc = fptosi float %i.vb to i32
  %i.vd = tail call i32 @llvm.umin.i32(i32 %i.vc, i32 65535)
  %i.ve = trunc nuw i32 %i.vd to i16
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %indvars.iv385
  store i16 %i.ve, ptr %gep326, align 2, !tbaa !77
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge324, label %scalar.ph, !llvm.loop !154

._crit_edge324:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge328, label %.lr.ph, !llvm.loop !155

._crit_edge328:                                   ; preds = %._crit_edge324
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !164 ; 8 uses
  %.not250 = icmp eq i32 %i.vg, 0
  %brmerge = or i1 %i.aq, %.not250
  br i1 %brmerge, label %.loopexit288, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge328
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.vi = lshr i32 %i.vg, 4
  %i.vj = and i32 %i.vi, 2                        ; 2 uses
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vn = load float, ptr %i.vm, align 8, !tbaa !9 ; 2 uses
  %i.vo = and i32 %i.vg, 2
  %i.vp = or disjoint i32 %i.vo, 1
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vq
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !9
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.vq
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !74
  store i32 %i.vu, ptr %i.b, align 4, !tbaa !74
  %i.vv = lshr i32 %i.vg, 8
  %i.vw = and i32 %i.vv, 2
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !9
  %i.wb = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.wa, i64 1
  %i.wd = fmul <2 x float> %i.wc, splat (float 1.250000e-01)
  %i.we = insertelement <2 x float> poison, float %i.vs, i64 0
  %i.wf = insertelement <2 x float> %i.we, float %i.vn, i64 1
  %i.wg = fdiv <2 x float> %i.wd, %i.wf
  store <2 x float> %i.wg, ptr %i.a, align 8, !tbaa !9
  %i.wh = zext nneg i32 %i.vj to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !74
  %i.wl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !74
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.wp = icmp ugt i16 %i.wo, 2
  br i1 %i.wp, label %.preheader.lr.ph, label %.loopexit288

.preheader.lr.ph:                                 ; preds = %.preheader290
  %i.wq = load i16, ptr %i.wm, align 2, !tbaa !80 ; 2 uses
  %i.wr = zext i16 %i.wq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.wr, 2
  %i.ws = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !185
  %i.wx = fmul float %i.ww, f0x3B000000           ; 4 uses
  %i.wy = fneg float %i.wx
  br label %.preheader

.loopexit286:                                     ; preds = %bb.w, %._crit_edge338
  %i.wz = phi i16 [ %i.yp, %._crit_edge338 ], [ %i.abv, %bb.w ]
  %i.xa = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, -1
  %i.xd = icmp slt i32 %.pre, %i.xc
  br i1 %i.xd, label %.preheader, label %.loopexit288, !llvm.loop !156

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit286
  %i.xe = phi i16 [ %i.wq, %.preheader.lr.ph ], [ %i.wz, %.loopexit286 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.ws, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit286 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.wt, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit286 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit286 ] ; 2 uses
  %.0343 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit286 ] ; 3 uses
  %.3226342 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre, %.loopexit286 ] ; 6 uses
  %.not251335 = icmp sgt i32 %.0343, %.3226342
  %.pre = add nuw i32 %.3226342, 1                ; 3 uses
  br i1 %.not251335, label %._crit_edge338, label %.lr.ph337

.loopexit:                                        ; preds = %bb.p, %.lr.ph337
  %i.xf = phi i16 [ %i.xh, %.lr.ph337 ], [ %i.ym, %bb.p ] ; 2 uses
  %i.xg = phi i16 [ %i.xi, %.lr.ph337 ], [ %i.ym, %bb.p ]
  %exitcond410.not = icmp eq i32 %.1336, %.3226342
  br i1 %exitcond410.not, label %._crit_edge338, label %.lr.ph337, !llvm.loop !157

.lr.ph337:                                        ; preds = %.preheader, %.loopexit
  %i.xh = phi i16 [ %i.xf, %.loopexit ], [ %i.xe, %.preheader ]
  %i.xi = phi i16 [ %i.xg, %.loopexit ], [ %i.xe, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1336 = phi i32 [ %i.xj, %.loopexit ], [ %.0343, %.preheader ] ; 2 uses
  %i.xj = add nsw i32 %.1336, 1                   ; 3 uses
  %i.xk = shl i32 %i.xj, 1
  %i.xl = and i32 %i.xk, 14                       ; 2 uses
  %i.xm = shl nuw nsw i32 %i.xl, 1
  %i.xn = or disjoint i32 %i.xm, 2
  %i.xo = lshr i32 %i.vg, %i.xn                   ; 2 uses
  %i.xp = and i32 %i.xo, 1                        ; 2 uses
  %i.xq = zext i16 %i.xi to i32
  %i.xr = icmp samesign ult i32 %i.xp, %i.xq
  br i1 %i.xr, label %.lr.ph334, label %.loopexit

.lr.ph334:                                        ; preds = %.lr.ph337
  %i.xs = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.xt = and i32 %i.xo, 1
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = or disjoint i32 %i.xp, %i.xl
  %i.xw = shl nuw nsw i32 %i.xv, 1
  %i.xx = lshr i32 %i.vg, %i.xw
  %i.xy = and i32 %i.xx, 3
  %i.xz = zext nneg i32 %i.xy to i64
  %invariant.gep447.a = getelementptr [2 x i8], ptr %i.xs, i64 %i.xz
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph334, %bb.p
  %indvars.iv407 = phi i64 [ %i.xu, %.lr.ph334 ], [ %indvars.iv.next408, %bb.p ] ; 3 uses
  %i.ya = load i16, ptr %i.wu, align 4, !tbaa !81
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = ashr i32 %i.xj, %i.yb
  %i.yd = load i16, ptr %i.d, align 2, !tbaa !160
  %i.ye = zext i16 %i.yd to i32
  %i.yf = mul nsw i32 %i.yc, %i.ye
  %i.yg = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.yh = lshr i32 %i.yg, %i.yb
  %i.yi = add nsw i32 %i.yf, %i.yh
  %i.yj = sext i32 %i.yi to i64
  %gep448.a = getelementptr [8 x i8], ptr %invariant.gep447.a, i64 %i.yj
  %i.yk = load i16, ptr %gep448.a, align 2, !tbaa !77
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv407
  store i16 %i.yk, ptr %i.yl, align 2, !tbaa !77
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.ym = load i16, ptr %i.wm, align 2, !tbaa !80 ; 3 uses
  %i.yn = zext i16 %i.ym to i64
  %i.yo = icmp samesign ult i64 %indvars.iv.next408, %i.yn
  br i1 %i.yo, label %bb.p, label %.loopexit, !llvm.loop !158

._crit_edge338:                                   ; preds = %.loopexit, %.preheader
  %i.yp = phi i16 [ %i.xe, %.preheader ], [ %i.xf, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0343, %.preheader ], [ %.pre, %.loopexit ]
  %i.yq = shl nuw nsw i32 %.3226342, 1
  %i.yr = and i32 %i.yq, 14                       ; 2 uses
  %i.ys = shl nuw nsw i32 %i.yr, 1
  %i.yt = lshr i32 %i.vg, %i.ys                   ; 3 uses
  %i.yu = and i32 %i.yt, 1
  %i.yv = add nuw nsw i32 %i.yu, 1
  %i.yw = zext i16 %i.yp to i32
  %i.yx = add nsw i32 %i.yw, -1
  %i.yy = icmp slt i32 %i.yv, %i.yx
  br i1 %i.yy, label %.lr.ph341, label %.loopexit286

.lr.ph341:                                        ; preds = %._crit_edge338
  %i.yz = and i32 %.3226342, 1                    ; 2 uses
  %i.za = xor i32 %i.yz, 1
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !74
  %i.ze = zext nneg i32 %i.yz to i64              ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ze
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !9
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ze
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !74
  %i.zj = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.zk = and i32 %i.yt, 1
  %i.zl = and i32 %i.yt, 1
  %narrow = add nuw nsw i32 %i.zl, 1
  %i.zm = zext nneg i32 %narrow to i64
  %i.zn = shl i32 %i.zd, 2
  %i.zo = or disjoint i32 %i.zk, %i.yr
  %i.zp = shl nuw nsw i32 %i.zo, 1
  %i.zq = xor i32 %i.zp, 2
  %i.zr = lshr i32 %i.vg, %i.zq
  %i.zs = and i32 %i.zr, 3
  %i.zt = zext nneg i32 %i.zs to i64
  %invariant.gep449 = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %i.zt
end_hunk_1
