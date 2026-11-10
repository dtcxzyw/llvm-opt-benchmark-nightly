Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw13hat_transformEPfS0_iii:bb.a
  %i.cq = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %i.cr = getelementptr i8, ptr %1, i64 %i.cq     ; 3 uses
  %i.cs = add i32 %.1.lcssa, %5
  %i.ct = add nsw i32 %i.by, -2
  %i.cu = sub i32 %i.ct, %i.cs
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = add nsw i64 %i.bz, %i.cv
  %i.cx = shl nsw i64 %i.cw, 2
  %i.cy = add nsw i64 %i.cx, 4
  %i.cz = sub nsw i64 %i.cy, %i.cq
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = shl nsw i64 %i.cv, 2
  %i.dc = getelementptr i8, ptr %2, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %i.de = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.df = sub nsw i64 %i.co, %i.de
  %i.dg = getelementptr i8, ptr %2, i64 %i.df
  %i.dh = sub nsw i64 %i.cq, %i.de
  %i.di = getelementptr i8, ptr %2, i64 %i.dh
  %i.dj = getelementptr i8, ptr %2, i64 %i.co
  %i.dk = getelementptr i8, ptr %2, i64 %i.cq
  %bound0143 = icmp ult ptr %i.cp, %i.dd
  %bound1144 = icmp ult ptr %i.da, %i.cr
  %found.conflict145 = and i1 %bound0143, %bound1144
  %bound0146 = icmp ult ptr %i.cp, %i.di
  %bound1147 = icmp ult ptr %i.dg, %i.cr
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %found.conflict145, %found.conflict148
  %bound0150 = icmp ult ptr %i.cp, %i.dk
  %bound1151 = icmp ult ptr %i.dj, %i.cr
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %scalar.ph140.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck142
  %n.vec155 = and i64 %i.cc, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec155, %i.bz
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next166, %vector.body156 ] ; 2 uses
  %i.dm = add nuw i64 %index157, %i.bz            ; 4 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %wide.load158 = load <4 x float>, ptr %i.dn, align 4, !tbaa !9, !alias.scope !105
  %wide.load159 = load <4 x float>, ptr %i.do, align 4, !tbaa !9, !alias.scope !105
  %i.dp = sub nsw i64 %i.dm, %i.cb
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load160 = load <4 x float>, ptr %i.dq, align 4, !tbaa !9, !alias.scope !106
  %wide.load161 = load <4 x float>, ptr %i.dr, align 4, !tbaa !9, !alias.scope !106
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load158, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load160)
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load159, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load161)
  %i.du = trunc nsw i64 %i.dm to i32
  %i.dv = add i32 %5, %i.du
  %i.dw = sub i32 %.neg52, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -12
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -28
  %wide.load162 = load <4 x float>, ptr %i.dz, align 4, !tbaa !9, !alias.scope !107
  %wide.load163 = load <4 x float>, ptr %i.ea, align 4, !tbaa !9, !alias.scope !107
  %reverse164 = shufflevector <4 x float> %wide.load162, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse165 = shufflevector <4 x float> %wide.load163, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.eb = fadd <4 x float> %i.ds, %reverse164
  %i.ec = fadd <4 x float> %i.dt, %reverse165
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dm ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <4 x float> %i.eb, ptr %i.ed, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  store <4 x float> %i.ec, ptr %i.ee, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %index.next166 = add nuw i64 %index157, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next166, %n.vec155
  br i1 %i.ef, label %middle.block167, label %vector.body156, !llvm.loop !98

middle.block167:                                  ; preds = %vector.body156
  %cmp.n168 = icmp eq i64 %i.cc, %n.vec155
  br i1 %cmp.n168, label %._crit_edge, label %scalar.ph140.preheader

scalar.ph140.preheader:                           ; preds = %vector.memcheck142, %vector.scevcheck119, %.lr.ph59, %middle.block167
  %indvars.iv69.ph = phi i64 [ %i.bz, %vector.memcheck142 ], [ %i.bz, %vector.scevcheck119 ], [ %i.bz, %.lr.ph59 ], [ %i.dl, %middle.block167 ]
  br label %scalar.ph140

.lr.ph56:                                         ; preds = %.lr.ph56.preheader171, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader171 ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader171 ] ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv64, %i.af
  %i.eh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !9
  %i.ej = sub nsw i64 %indvars.iv64, %i.ac
  %i.ek = mul nsw i64 %i.ej, %i.af
  %i.el = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !9
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ei, float 2.000000e+00, float %i.em)
  %i.eo = mul nsw i64 %indvars.iv62, %i.af
  %i.ep = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !9
  %i.er = fadd float %i.en, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64
  store float %i.er, ptr %i.es, align 4, !tbaa !9
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.et = icmp slt i64 %indvars.iv.next65, %invariant.op
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1
  br i1 %i.et, label %.lr.ph56, label %.preheader.loopexit, !llvm.loop !99

scalar.ph140:                                     ; preds = %scalar.ph140.preheader, %scalar.ph140
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %scalar.ph140 ], [ %indvars.iv69.ph, %scalar.ph140.preheader ] ; 5 uses
  %i.eu = mul nsw i64 %indvars.iv69, %i.ca
  %i.ev = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !9
  %i.ex = sub nsw i64 %indvars.iv69, %i.cb
  %i.ey = mul nsw i64 %i.ex, %i.ca
  %i.ez = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !9
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ew, float 2.000000e+00, float %i.fa)
  %i.fc = trunc nsw i64 %indvars.iv69 to i32
  %i.fd = add i32 %5, %i.fc
  %i.fe = sub i32 %.neg52, %i.fd
  %i.ff = mul nsw i32 %i.fe, %3
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !9
  %i.fj = fadd float %i.fb, %i.fi
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv69
  store float %i.fj, ptr %i.fk, align 4, !tbaa !9
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %scalar.ph140, !llvm.loop !100

._crit_edge:                                      ; preds = %scalar.ph140, %middle.block167, %.preheader
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
  %i.ae = mul nuw nsw i32 %i.ac, %i.ad            ; 7 uses
  %i.af = mul nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.ag = add nuw nsw i32 %i.ad, 128
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak) ; 47 uses
  %i.am = zext nneg i32 %i.af to i64              ; 11 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 34 uses
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
  %.0218431 = phi i32 [ %spec.select, %.thread ], [ %i.ap, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count392 = zext nneg i32 %.0218431 to i64
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 4 uses
  %wide.trip.count378 = zext nneg i32 %i.ae to i64
  %wide.trip.count387 = zext nneg i32 %i.ae to i64
  %i.aw = shl nuw nsw i64 %i.am, 2                ; 3 uses
  %scevgep567 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep573 = getelementptr i8, ptr %i.al, i64 4
  %scevgep575 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep578 = getelementptr i8, ptr %i.al, i64 %i.aw
  %scevgep738 = getelementptr i8, ptr %i.al, i64 4
  %scevgep741 = getelementptr i8, ptr %i.al, i64 4
  %i.ax = shl nuw nsw i64 %i.am, 2
  %scevgep745 = getelementptr i8, ptr %i.al, i64 %i.ax
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod789 = trunc i32 %i.ae to i1
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge324, %.preheader294.lr.ph
  %indvars.iv389 = phi i64 [ 0, %.preheader294.lr.ph ], [ %indvars.iv.next390, %._crit_edge324 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv389 ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.new

.preheader293.unr-lcssa:                          ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader293, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader293.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader293.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod789)
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
  %i.bk = zext i16 %i.bi to i64                   ; 18 uses
  %i.bl = zext i16 %i.bg to i64                   ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bh, 1                ; 2 uses
  %invariant.op = add nsw i32 %i.bm, -2           ; 3 uses
  %i.bn = zext i16 %i.bi to i64                   ; 8 uses
  %i.bo = shl nuw nsw i32 %i.bj, 1                ; 2 uses
  %wide.trip.count363 = zext i16 %i.bg to i64     ; 11 uses
  %i.bp = add nsw i32 %i.bo, -2                   ; 5 uses
  %wide.trip.count358 = zext i16 %i.bi to i64
  %wide.trip.count373 = zext i16 %i.bi to i64
  %wide.trip.count368 = zext i16 %i.bg to i64
  %i.bq = add nsw i64 %wide.trip.count363, -1     ; 2 uses
  %i.br = add nsw i32 %i.bm, -2
  %i.bs = shl nuw nsw i64 %wide.trip.count363, 2  ; 2 uses
  %i.bt = add nuw nsw i64 %i.am, %wide.trip.count363
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.bu ; 3 uses
  %i.bv = shl nuw nsw i64 %i.bk, 2                ; 7 uses
  %scevgep568 = getelementptr i8, ptr %scevgep567, i64 %i.bv
  %scevgep571 = getelementptr i8, ptr %i.al, i64 %i.bv
  %scevgep576 = getelementptr i8, ptr %scevgep575, i64 %i.bv
  %i.bw = add nsw i32 %i.bo, -2
  %i.bx = add nuw nsw i64 %i.am, %i.bk
  %i.by = shl nuw nsw i64 %i.bx, 2
  %scevgep651 = getelementptr i8, ptr %i.al, i64 %i.by ; 3 uses
  %i.bz = mul nsw i64 %i.bk, -4
  %i.ca = shl nuw nsw i64 %wide.trip.count363, 2
  %i.cb = add nsw i64 %i.ca, -4
  %i.cc = mul nsw i64 %i.cb, %i.bk                ; 3 uses
  %scevgep735 = getelementptr i8, ptr %i.al, i64 %i.cc
  %scevgep739 = getelementptr i8, ptr %scevgep738, i64 %i.cc
  %scevgep743 = getelementptr i8, ptr %i.al, i64 %i.cc
  %i.cd = add nsw i64 %i.bn, -1
  %min.iters.check613 = icmp ult i16 %i.bi, 8
  %n.vec617 = and i64 %i.bk, 65528                ; 3 uses
  %cmp.n624 = icmp eq i64 %n.vec617, %i.bk
  %xtraiter797 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  %ident.check541.not = icmp eq i16 %i.bi, 1
  %ident.check510.not = icmp eq i16 %i.bi, 1
  %ident.check464 = icmp ne i16 %i.bi, 1
  %min.iters.check = icmp ult i16 %i.bg, 12
  %ident.check = icmp ne i16 %i.bi, 1
  %i.ce = trunc nsw i64 %i.bq to i32
  %i.cf = icmp ugt i64 %i.bq, 4294967295
  %invariant.op826 = or i1 %i.cf, %ident.check
  %n.vec455 = and i64 %wide.trip.count363, 65528  ; 3 uses
  %cmp.n462 = icmp eq i64 %n.vec455, %wide.trip.count363
  %xtraiter799 = and i64 %wide.trip.count363, 1
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  %i.cg = add nsw i64 %wide.trip.count363, -1
  br label %bb.f

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ch = load i16, ptr %gep, align 2, !tbaa !77
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl i32 %i.ci, %i.s
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = tail call float @sqrtf(float noundef %i.ck) #11
  %i.cm = fmul float %i.cl, 2.560000e+02
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %i.cm, ptr %i.cn, align 4, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.co = load i16, ptr %gep.1, align 2, !tbaa !77
  %i.cp = zext i16 %i.co to i32
  %i.cq = shl i32 %i.cp, %i.s
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = tail call float @sqrtf(float noundef %i.cr) #11
  %i.ct = fmul float %i.cs, 2.560000e+02
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  store float %i.ct, ptr %i.cu, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader293.unr-lcssa, label %.lr.ph.new, !llvm.loop !111

.lr.ph323:                                        ; preds = %._crit_edge319
  %invariant.gep325 = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv389 ; 5 uses
  %i.cv = sext i32 %i.ds to i64
  %invariant.gep443 = getelementptr [4 x i8], ptr %i.al, i64 %i.cv ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph323
  %index = phi i64 [ 0, %.lr.ph323 ], [ %index.next, %vector.body ] ; 7 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !9
  %i.cx = getelementptr [4 x i8], ptr %invariant.gep443, i64 %index
  %wide.load452 = load <4 x float>, ptr %i.cx, align 4, !tbaa !9
  %i.cy = fadd <4 x float> %wide.load, %wide.load452 ; 2 uses
  %i.cz = fmul <4 x float> %i.cy, %i.cy
  %i.da = fmul <4 x float> %i.cz, splat (float f0x37800000)
  %i.db = fptosi <4 x float> %i.da to <4 x i32>
  %i.dc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.db, <4 x i32> splat (i32 65535))
  %i.dd = trunc nuw <4 x i32> %i.dc to <4 x i16>  ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = extractelement <4 x i16> %i.dd, i64 0
  store i16 %i.dl, ptr %i.de, align 2, !tbaa !77
  %i.dm = extractelement <4 x i16> %i.dd, i64 1
  store i16 %i.dm, ptr %i.dg, align 2, !tbaa !77
  %i.dn = extractelement <4 x i16> %i.dd, i64 2
  store i16 %i.dn, ptr %i.di, align 2, !tbaa !77
  %i.do = extractelement <4 x i16> %i.dd, i64 3
  store i16 %i.do, ptr %i.dk, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge324, label %scalar.ph

bb.f:                                             ; preds = %.preheader293, %._crit_edge319
  %indvars.iv380 = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next381, %._crit_edge319 ] ; 7 uses
  %.0229321 = phi i32 [ 0, %.preheader293 ], [ %i.ds, %._crit_edge319 ] ; 3 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv380 to i32 ; 5 uses
  %i.dr = and i32 %i.dq, 1
  %i.ds = shl nuw i32 %i.ae, %i.dr                ; 6 uses
  br i1 %.not347, label %.preheader291, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.f
  %i.dt = zext i32 %.0229321 to i64               ; 5 uses
  %i.du = getelementptr [4 x i8], ptr %i.al, i64 %i.dt ; 2 uses
  %i.dv = shl nuw nsw i32 1, %i.dq                ; 8 uses
  %i.dw = zext nneg i32 %i.dv to i64              ; 26 uses
  %i.dx = shl nuw nsw i32 2, %i.dq
  %i.dy = icmp samesign ult i32 %i.dx, %i.bj
  %i.dz = shl nuw nsw i64 %i.dw, 1                ; 4 uses
  %invariant.op.i = sub nsw i64 %i.bk, %i.dw      ; 2 uses
  %i.ea = sext i32 %i.ds to i64                   ; 2 uses
  %invariant.gep437 = getelementptr [4 x i8], ptr %i.al, i64 %i.ea
  %i.eb = sub nsw i64 %i.ea, %i.am
  %i.ec = shl nsw i64 %i.eb, 2
  %i.ed = shl nuw nsw i64 %i.dt, 2                ; 5 uses
  %reass.sub = sub nsw i64 %i.ed, %i.bv
  %i.ee = add nuw nsw i64 %i.bv, %i.ed            ; 2 uses
  %i.ef = shl nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.eg = sub nsw i64 %i.ee, %i.ef
  %i.eh = sub nsw i64 %i.ed, %i.ef
  %i.ei = add nuw nsw i64 %i.dt, %i.dw
  %i.ej = sub nsw i64 %i.am, %i.ei
  %i.ek = shl nsw i64 %i.ej, 2
  %i.el = add nuw nsw i64 %i.am, %i.dw
  %i.em = shl nuw nsw i64 %i.dt, 2                ; 4 uses
  %i.en = sub nsw i64 %i.el, %i.dt
  %i.eo = shl nsw i64 %i.en, 2
  %i.ep = sub nsw i64 %i.aw, %i.em
  %i.eq = shl nuw nsw i64 %i.dw, 3
  %i.er = getelementptr i8, ptr %scevgep735, i64 %i.eq
  %scevgep736 = getelementptr i8, ptr %i.er, i64 %i.em
  %i.es = shl nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.et = add nuw nsw i64 %i.em, %i.es            ; 3 uses
  %scevgep737 = getelementptr i8, ptr %i.al, i64 %i.et
  %scevgep740 = getelementptr i8, ptr %scevgep739, i64 %i.et
  %scevgep742 = getelementptr i8, ptr %scevgep741, i64 %i.em
  %scevgep744 = getelementptr i8, ptr %scevgep743, i64 %i.et
  %scevgep746 = getelementptr i8, ptr %scevgep745, i64 %i.es ; 3 uses
  %min.iters.check748 = icmp samesign ult i64 %indvars.iv380, 3
  %bound0750 = icmp ult ptr %i.an, %scevgep744
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.gg = add nuw nsw i64 %i.fl, 1
  %i.gh = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.gg)
  %i.gi = sub nsw i64 %i.gh, %i.fl                ; 3 uses
  %min.iters.check518 = icmp ugt i64 %i.gi, 7
  %or.cond779 = select i1 %min.iters.check518, i1 %ident.check510.not, i1 false
  %invariant.op818.a = add i64 %i.gb, -1
  %invariant.op820.a = add i64 %i.ga, -1
  %invariant.op822 = add i64 %i.fw, -1
  %n.vec526 = and i64 %i.gi, -8                   ; 4 uses
  %i.gj = add i64 %n.vec526, %i.fl                ; 2 uses
  %i.gk = add i64 %i.fo, %n.vec526
  %cmp.n537 = icmp eq i64 %i.gi, %n.vec526
  %i.gl = getelementptr i8, ptr %i.al, i64 %i.fp
  %i.gm = getelementptr i8, ptr %i.al, i64 %i.fq
  %i.gn = getelementptr i8, ptr %i.al, i64 %i.ft
  %i.go = getelementptr i8, ptr %i.al, i64 %i.fs
  %i.gp = getelementptr i8, ptr %i.al, i64 %reass.sub777
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %i.gr = getelementptr i8, ptr %i.al, i64 %i.fp
  %i.gs = getelementptr i8, ptr %i.gr, i64 4
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv360 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next361, %._crit_edge ] ; 5 uses
  %i.gt = mul nuw nsw i64 %indvars.iv360, %i.bn   ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.gt ; 27 uses
  %invariant.gep302 = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.dw ; 4 uses
  %brmerge828 = select i1 %min.iters.check748, i1 true, i1 %conflict.rdx760
  br i1 %brmerge828, label %.lr.ph.i.preheader, label %vector.body763

.lr.ph.i.preheader:                               ; preds = %bb.g
  br i1 %i.eu, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body763:                                   ; preds = %bb.g, %vector.body763
  %index764 = phi i64 [ %index.next773, %vector.body763 ], [ 0, %bb.g ] ; 5 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index764 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load765 = load <4 x float>, ptr %i.gv, align 4, !tbaa !9, !alias.scope !165
  %wide.load766 = load <4 x float>, ptr %i.gw, align 4, !tbaa !9, !alias.scope !165
  %i.gx = sub nuw nsw i64 %i.dw, %index764
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -12
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -28
  %wide.load767 = load <4 x float>, ptr %i.gz, align 4, !tbaa !9, !alias.scope !166
  %wide.load768 = load <4 x float>, ptr %i.ha, align 4, !tbaa !9, !alias.scope !166
  %reverse769 = shufflevector <4 x float> %wide.load767, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse770 = shufflevector <4 x float> %wide.load768, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.hb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load765, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse769)
  %i.hc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load766, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse770)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %index764 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load771 = load <4 x float>, ptr %i.hd, align 4, !tbaa !9, !alias.scope !167
  %wide.load772 = load <4 x float>, ptr %i.he, align 4, !tbaa !9, !alias.scope !167
  %i.hf = fadd <4 x float> %i.hb, %wide.load771
  %i.hg = fadd <4 x float> %i.hc, %wide.load772
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index764 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %i.hf, ptr %i.hh, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  store <4 x float> %i.hg, ptr %i.hi, align 4, !tbaa !9, !alias.scope !168, !noalias !169
  %index.next773 = add nuw i64 %index764, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next773, %n.vec762
  br i1 %i.hj, label %.preheader53.i, label %vector.body763, !llvm.loop !118

.preheader53.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod791.not, label %.preheader53.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader53.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.preheader53.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod792)
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i.epil.init
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !9
  %i.hm = sub nuw nsw i64 %i.dw, %indvars.iv.i.epil.init
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !9
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hl, float 2.000000e+00, float %i.ho)
  %gep303.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.i.epil.init
  %i.hq = load float, ptr %gep303.epil, align 4, !tbaa !9
  %i.hr = fadd float %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.epil.init
  store float %i.hr, ptr %i.hs, align 4, !tbaa !9
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %vector.body763, %.lr.ph.i.epil.preheader, %.preheader53.i.loopexit.unr-lcssa
  br i1 %i.dy, label %.lr.ph56.i.preheader, label %.preheader.i

.lr.ph56.i.preheader:                             ; preds = %.preheader53.i
  br i1 %min.iters.check689, label %.lr.ph56.i.preheader784, label %vector.memcheck690

vector.memcheck690:                               ; preds = %.lr.ph56.i.preheader
  %i.ht = mul i64 %indvars.iv360, %i.bz           ; 3 uses
  %.reass = add i64 %i.ht, %invariant.op807
  %diff.check691 = icmp ult i64 %.reass, 31
  %.reass809 = add i64 %i.ht, %invariant.op808
  %diff.check692 = icmp ult i64 %.reass809, 31
  %conflict.rdx693 = or i1 %diff.check691, %diff.check692
  %.reass811 = add i64 %i.ht, %invariant.op810
  %diff.check694 = icmp ult i64 %.reass811, 31
  %conflict.rdx695 = or i1 %conflict.rdx693, %diff.check694
  br i1 %conflict.rdx695, label %.lr.ph56.i.preheader784, label %vector.ph696

vector.ph696:                                     ; preds = %vector.memcheck690
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.dz
  br label %vector.body698

vector.body698:                                   ; preds = %vector.body698, %vector.ph696
  %index699 = phi i64 [ 0, %vector.ph696 ], [ %index.next706, %vector.body698 ] ; 4 uses
  %i.hv = add nuw i64 %index699, %i.dw            ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hv ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load700 = load <4 x float>, ptr %i.hw, align 4, !tbaa !9
  %wide.load701 = load <4 x float>, ptr %i.hx, align 4, !tbaa !9
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index699 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load702 = load <4 x float>, ptr %i.hy, align 4, !tbaa !9
  %wide.load703 = load <4 x float>, ptr %i.hz, align 4, !tbaa !9
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load700, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load702)
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load701, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load703)
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %index699 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load704 = load <4 x float>, ptr %i.ic, align 4, !tbaa !9
  %wide.load705 = load <4 x float>, ptr %i.id, align 4, !tbaa !9
  %i.ie = fadd <4 x float> %i.ia, %wide.load704
  %i.if = fadd <4 x float> %i.ib, %wide.load705
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.hv ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <4 x float> %i.ie, ptr %i.ig, align 4, !tbaa !9
  store <4 x float> %i.if, ptr %i.ih, align 4, !tbaa !9
  %index.next706 = add nuw i64 %index699, 8       ; 2 uses
  %i.ii = icmp eq i64 %index.next706, %n.vec697
  br i1 %i.ii, label %middle.block707, label %vector.body698, !llvm.loop !119

middle.block707:                                  ; preds = %vector.body698
  br i1 %cmp.n708, label %.preheader.loopexit.i, label %.lr.ph56.i.preheader784

.lr.ph56.i.preheader784:                          ; preds = %vector.memcheck690, %.lr.ph56.i.preheader, %middle.block707
  %indvars.iv64.i.ph = phi i64 [ %i.dw, %vector.memcheck690 ], [ %i.dw, %.lr.ph56.i.preheader ], [ %i.ey, %middle.block707 ]
  %indvars.iv62.i.ph = phi i64 [ %i.dz, %vector.memcheck690 ], [ %i.dz, %.lr.ph56.i.preheader ], [ %i.ez, %middle.block707 ]
  br label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 6 uses
  %niter794 = phi i64 [ %niter794.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.i
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !9
  %i.il = sub nuw nsw i64 %i.dw, %indvars.iv.i
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !9
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ik, float 2.000000e+00, float %i.in)
  %gep303 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.i
  %i.ip = load float, ptr %gep303, align 4, !tbaa !9
  %i.iq = fadd float %i.io, %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  store float %i.iq, ptr %i.ir, align 4, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !9
  %i.iu = sub nuw nsw i64 %i.dw, %indvars.iv.next.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !9
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.it, float 2.000000e+00, float %i.iw)
  %gep303.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next.i
  %i.iy = load float, ptr %gep303.1, align 4, !tbaa !9
  %i.iz = fadd float %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  store float %i.iz, ptr %i.ja, align 4, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter794.next.1 = add i64 %niter794, 2         ; 2 uses
  %niter794.ncmp.1 = icmp eq i64 %niter794.next.1, %unroll_iter793
  br i1 %niter794.ncmp.1, label %.preheader53.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !120

.preheader.loopexit.i:                            ; preds = %.lr.ph56.i, %middle.block707
  %indvars.iv.next65.i.lcssa = phi i64 [ %i.ey, %middle.block707 ], [ %indvars.iv.next65.i, %.lr.ph56.i ]
  %i.jb = trunc nuw nsw i64 %indvars.iv.next65.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.dv, %.preheader53.i ], [ %i.jb, %.preheader.loopexit.i ] ; 4 uses
  %i.jc = icmp slt i32 %.1.lcssa.i, %i.bj
  br i1 %i.jc, label %.lr.ph59.i, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit

.lr.ph59.i:                                       ; preds = %.preheader.i
  %i.jd = sext i32 %.1.lcssa.i to i64             ; 9 uses
  %i.je = sub nsw i64 %i.bk, %i.jd                ; 3 uses
  %min.iters.check653 = icmp ult i64 %i.je, 12
  br i1 %min.iters.check653, label %scalar.ph652.preheader, label %vector.scevcheck626

vector.scevcheck626:                              ; preds = %.lr.ph59.i
  %i.jf = xor i64 %i.jd, -1
  %i.jg = add nsw i64 %i.jf, %i.bk                ; 2 uses
  %i.jh = add i32 %i.dv, %.1.lcssa.i
  %i.ji = sub i32 %i.bw, %i.jh                    ; 2 uses
  %i.jj = trunc i64 %i.jg to i32
  %i.jk = sub i32 %i.ji, %i.jj
  %i.jl = icmp sgt i32 %i.jk, %i.ji
  %i.jm = icmp ugt i64 %i.jg, 4294967295
  %i.jn = or i1 %i.jl, %i.jm
  br i1 %i.jn, label %scalar.ph652.preheader, label %vector.memcheck654

vector.memcheck654:                               ; preds = %vector.scevcheck626
  %i.jo = shl nsw i64 %i.jd, 2                    ; 3 uses
  %gep813 = getelementptr i8, ptr %i.an, i64 %i.jo ; 3 uses
  %i.jp = mul nuw nsw i64 %indvars.iv360, %i.bv   ; 6 uses
  %i.jq = getelementptr i8, ptr %i.fa, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.jo
  %i.js = getelementptr i8, ptr %i.fb, i64 %i.jp
  %i.jt = getelementptr i8, ptr %i.fc, i64 %i.jp
  %i.ju = getelementptr i8, ptr %i.jt, i64 %i.jo
  %i.jv = getelementptr i8, ptr %i.fd, i64 %i.jp
  %i.jw = add i32 %.1.lcssa.i, %i.dv
  %i.jx = sub i32 %i.bp, %i.jw
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = add nsw i64 %i.jd, %i.jy
  %i.ka = shl nsw i64 %i.jz, 2
  %i.kb = getelementptr i8, ptr %i.ff, i64 %i.jp
  %i.kc = getelementptr i8, ptr %i.kb, i64 %i.ka
  %i.kd = shl nsw i64 %i.jy, 2
  %i.ke = getelementptr i8, ptr %i.fh, i64 %i.jp
  %i.kf = getelementptr i8, ptr %i.ke, i64 %i.kd
  %bound0655 = icmp ult ptr %gep813, %i.js
  %bound1656 = icmp ult ptr %i.jr, %scevgep651
  %found.conflict657 = and i1 %bound0655, %bound1656
  %bound0658 = icmp ult ptr %gep813, %i.jv
  %bound1659 = icmp ult ptr %i.ju, %scevgep651
  %found.conflict660 = and i1 %bound0658, %bound1659
  %conflict.rdx661 = or i1 %found.conflict657, %found.conflict660
  %bound0662 = icmp ult ptr %gep813, %i.kf
  %bound1663 = icmp ult ptr %i.kc, %scevgep651
  %found.conflict664 = and i1 %bound0662, %bound1663
  %conflict.rdx665 = or i1 %conflict.rdx661, %found.conflict664
  br i1 %conflict.rdx665, label %scalar.ph652.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck654
  %n.vec667 = and i64 %i.je, -8                   ; 3 uses
  %i.kg = add nsw i64 %n.vec667, %i.jd
  br label %vector.body668

vector.body668:                                   ; preds = %vector.body668, %vector.ph666
  %index669 = phi i64 [ 0, %vector.ph666 ], [ %index.next678, %vector.body668 ] ; 2 uses
  %i.kh = add nuw i64 %index669, %i.jd            ; 4 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load670 = load <4 x float>, ptr %i.ki, align 4, !tbaa !9, !alias.scope !170
  %wide.load671 = load <4 x float>, ptr %i.kj, align 4, !tbaa !9, !alias.scope !170
  %i.kk = sub nsw i64 %i.kh, %i.dw
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %wide.load672 = load <4 x float>, ptr %i.kl, align 4, !tbaa !9, !alias.scope !171
  %wide.load673 = load <4 x float>, ptr %i.km, align 4, !tbaa !9, !alias.scope !171
  %i.kn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load670, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load672)
  %i.ko = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load671, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load673)
  %i.kp = trunc nsw i64 %i.kh to i32
  %i.kq = add i32 %i.dv, %i.kp
  %i.kr = sub i32 %i.bp, %i.kq
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 -12
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 -28
  %wide.load674 = load <4 x float>, ptr %i.ku, align 4, !tbaa !9, !alias.scope !172
  %wide.load675 = load <4 x float>, ptr %i.kv, align 4, !tbaa !9, !alias.scope !172
  %reverse676 = shufflevector <4 x float> %wide.load674, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse677 = shufflevector <4 x float> %wide.load675, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kw = fadd <4 x float> %i.kn, %reverse676
  %i.kx = fadd <4 x float> %i.ko, %reverse677
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.kh ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store <4 x float> %i.kw, ptr %i.ky, align 4, !tbaa !9, !alias.scope !173, !noalias !174
  store <4 x float> %i.kx, ptr %i.kz, align 4, !tbaa !9, !alias.scope !173, !noalias !174
  %index.next678 = add nuw i64 %index669, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next678, %n.vec667
  br i1 %i.la, label %middle.block679, label %vector.body668, !llvm.loop !126

middle.block679:                                  ; preds = %vector.body668
  %cmp.n680 = icmp eq i64 %i.je, %n.vec667
  br i1 %cmp.n680, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph652.preheader

scalar.ph652.preheader:                           ; preds = %vector.memcheck654, %vector.scevcheck626, %.lr.ph59.i, %middle.block679
  %indvars.iv69.i.ph = phi i64 [ %i.jd, %vector.memcheck654 ], [ %i.jd, %vector.scevcheck626 ], [ %i.jd, %.lr.ph59.i ], [ %i.kg, %middle.block679 ] ; 8 uses
  %i.lb = sub nsw i64 %i.bn, %indvars.iv69.i.ph
  %xtraiter795 = and i64 %i.lb, 1
  %lcmp.mod796.not = icmp eq i64 %xtraiter795, 0
  br i1 %lcmp.mod796.not, label %scalar.ph652.prol.loopexit, label %scalar.ph652.prol

scalar.ph652.prol:                                ; preds = %scalar.ph652.preheader
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %indvars.iv69.i.ph
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !9
  %i.le = sub nsw i64 %indvars.iv69.i.ph, %i.dw
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !9
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.ld, float 2.000000e+00, float %i.lg)
  %i.li = trunc nsw i64 %indvars.iv69.i.ph to i32
  %i.lj = add i32 %i.dv, %i.li
  %i.lk = sub i32 %i.bp, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !9
  %i.lo = fadd float %i.lh, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i.ph
  store float %i.lo, ptr %i.lp, align 4, !tbaa !9
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.ph, 1
  br label %scalar.ph652.prol.loopexit

scalar.ph652.prol.loopexit:                       ; preds = %scalar.ph652.prol, %scalar.ph652.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %scalar.ph652.preheader ], [ %indvars.iv.next70.i.prol, %scalar.ph652.prol ]
  %i.lq = icmp eq i64 %indvars.iv69.i.ph, %i.cd
  br i1 %i.lq, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph652

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.preheader784, %.lr.ph56.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph56.i ], [ %indvars.iv64.i.ph, %.lr.ph56.i.preheader784 ] ; 4 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.lr.ph56.i ], [ %indvars.iv62.i.ph, %.lr.ph56.i.preheader784 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv64.i
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !9
  %i.lt = sub nuw nsw i64 %indvars.iv64.i, %i.dw
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !9
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.ls, float 2.000000e+00, float %i.lv)
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv62.i
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !9
  %i.lz = fadd float %i.lw, %i.ly
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i
  store float %i.lz, ptr %i.ma, align 4, !tbaa !9
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 3 uses
  %i.mb = icmp slt i64 %indvars.iv.next65.i, %invariant.op.i
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  br i1 %i.mb, label %.lr.ph56.i, label %.preheader.loopexit.i, !llvm.loop !127

scalar.ph652:                                     ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.1, %scalar.ph652 ], [ %indvars.iv69.i.unr, %scalar.ph652.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %indvars.iv69.i
  %i.md = load float, ptr %i.mc, align 4, !tbaa !9
  %i.me = sub nsw i64 %indvars.iv69.i, %i.dw
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.me
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !9
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.md, float 2.000000e+00, float %i.mg)
  %i.mi = trunc nsw i64 %indvars.iv69.i to i32
  %i.mj = add i32 %i.dv, %i.mi
  %i.mk = sub i32 %i.bp, %i.mj
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ml
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !9
  %i.mo = fadd float %i.mh, %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i
  store float %i.mo, ptr %i.mp, align 4, !tbaa !9
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 4 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %indvars.iv.next70.i
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !9
  %i.ms = sub nsw i64 %indvars.iv.next70.i, %i.dw
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !9
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.mr, float 2.000000e+00, float %i.mu)
  %i.mw = trunc nsw i64 %indvars.iv.next70.i to i32
  %i.mx = add i32 %i.dv, %i.mw
  %i.my = sub i32 %i.bp, %i.mx
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.mz
  %i.nb = load float, ptr %i.na, align 4, !tbaa !9
  %i.nc = fadd float %i.mv, %i.nb
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next70.i
  store float %i.nc, ptr %i.nd, align 4, !tbaa !9
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %exitcond73.not.i.1 = icmp eq i64 %indvars.iv.next70.i.1, %i.bk
  br i1 %exitcond73.not.i.1, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit, label %scalar.ph652, !llvm.loop !128

_ZN6LibRaw13hat_transformEPfS0_iii.exit:          ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652, %middle.block679, %.preheader.i
  br i1 %.not348, label %._crit_edge, label %.lr.ph305

.lr.ph305:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %gep438 = getelementptr [4 x i8], ptr %invariant.gep437, i64 %i.gt ; 6 uses
  br i1 %min.iters.check613, label %scalar.ph612.preheader, label %vector.memcheck614

vector.memcheck614:                               ; preds = %.lr.ph305
  %i.ne = mul nuw nsw i64 %indvars.iv360, %i.bv
  %.reass815 = add i64 %i.ne, %invariant.op814
  %diff.check615 = icmp ult i64 %.reass815, 31
  br i1 %diff.check615, label %scalar.ph612.preheader, label %vector.body618

vector.body618:                                   ; preds = %vector.memcheck614, %vector.body618
  %index619 = phi i64 [ %index.next622, %vector.body618 ], [ 0, %vector.memcheck614 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index619 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load620 = load <4 x float>, ptr %i.nf, align 4, !tbaa !9
  %wide.load621 = load <4 x float>, ptr %i.ng, align 4, !tbaa !9
  %i.nh = fmul <4 x float> %wide.load620, splat (float 2.500000e-01)
  %i.ni = fmul <4 x float> %wide.load621, splat (float 2.500000e-01)
  %i.nj = getelementptr [4 x i8], ptr %gep438, i64 %index619 ; 2 uses
  %i.nk = getelementptr i8, ptr %i.nj, i64 16
  store <4 x float> %i.nh, ptr %i.nj, align 4, !tbaa !9
  store <4 x float> %i.ni, ptr %i.nk, align 4, !tbaa !9
  %index.next622 = add nuw i64 %index619, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next622, %n.vec617
  br i1 %i.nl, label %middle.block623, label %vector.body618, !llvm.loop !129

middle.block623:                                  ; preds = %vector.body618
  br i1 %cmp.n624, label %._crit_edge, label %scalar.ph612.preheader

scalar.ph612.preheader:                           ; preds = %vector.memcheck614, %.lr.ph305, %middle.block623
  %indvars.iv355.ph = phi i64 [ 0, %vector.memcheck614 ], [ 0, %.lr.ph305 ], [ %n.vec617, %middle.block623 ] ; 3 uses
  br i1 %lcmp.mod798.not, label %scalar.ph612.prol.loopexit, label %scalar.ph612.prol

scalar.ph612.prol:                                ; preds = %scalar.ph612.preheader, %scalar.ph612.prol
  %indvars.iv355.prol = phi i64 [ %indvars.iv.next356.prol, %scalar.ph612.prol ], [ %indvars.iv355.ph, %scalar.ph612.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph612.prol ], [ 0, %scalar.ph612.preheader ]
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv355.prol
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !9
  %i.no = fmul float %i.nn, 2.500000e-01
  %i.np = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv355.prol
  store float %i.no, ptr %i.np, align 4, !tbaa !9
  %indvars.iv.next356.prol = add nuw nsw i64 %indvars.iv355.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter797
  br i1 %prol.iter.cmp.not, label %scalar.ph612.prol.loopexit, label %scalar.ph612.prol, !llvm.loop !130

scalar.ph612.prol.loopexit:                       ; preds = %scalar.ph612.prol, %scalar.ph612.preheader
  %indvars.iv355.unr = phi i64 [ %indvars.iv355.ph, %scalar.ph612.preheader ], [ %indvars.iv.next356.prol, %scalar.ph612.prol ]
  %i.nq = sub nsw i64 %indvars.iv355.ph, %i.bn
  %i.nr = icmp ugt i64 %i.nq, -4
  br i1 %i.nr, label %._crit_edge, label %scalar.ph612

scalar.ph612:                                     ; preds = %scalar.ph612.prol.loopexit, %scalar.ph612
  %indvars.iv355 = phi i64 [ %indvars.iv.next356.3, %scalar.ph612 ], [ %indvars.iv355.unr, %scalar.ph612.prol.loopexit ] ; 6 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv355
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !9
  %i.nu = fmul float %i.nt, 2.500000e-01
  %i.nv = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv355
  store float %i.nu, ptr %i.nv, align 4, !tbaa !9
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !9
  %i.ny = fmul float %i.nx, 2.500000e-01
  %i.nz = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next356
  store float %i.ny, ptr %i.nz, align 4, !tbaa !9
  %indvars.iv.next356.1 = add nuw nsw i64 %indvars.iv355, 2 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356.1
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !9
  %i.oc = fmul float %i.ob, 2.500000e-01
  %i.od = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next356.1
  store float %i.oc, ptr %i.od, align 4, !tbaa !9
  %indvars.iv.next356.2 = add nuw nsw i64 %indvars.iv355, 3 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next356.2
  %i.of = load float, ptr %i.oe, align 4, !tbaa !9
  %i.og = fmul float %i.of, 2.500000e-01
  %i.oh = getelementptr [4 x i8], ptr %gep438, i64 %indvars.iv.next356.2
  store float %i.og, ptr %i.oh, align 4, !tbaa !9
  %indvars.iv.next356.3 = add nuw nsw i64 %indvars.iv355, 4 ; 2 uses
  %exitcond359.not.3 = icmp eq i64 %indvars.iv.next356.3, %wide.trip.count358
  br i1 %exitcond359.not.3, label %._crit_edge, label %scalar.ph612, !llvm.loop !131

._crit_edge:                                      ; preds = %scalar.ph612.prol.loopexit, %scalar.ph612, %middle.block623, %_ZN6LibRaw13hat_transformEPfS0_iii.exit
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.preheader291, label %bb.g, !llvm.loop !132

bb.h:                                             ; preds = %.lr.ph314, %._crit_edge312
  %indvars.iv370 = phi i64 [ 0, %.lr.ph314 ], [ %indvars.iv.next371, %._crit_edge312 ] ; 5 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %indvars.iv370 ; 18 uses
  %or.cond778.not = xor i1 %or.cond778, true
  %brmerge829 = select i1 %or.cond778.not, i1 true, i1 %conflict.rdx593
  br i1 %brmerge829, label %.lr.ph.i274, label %vector.ph594

vector.ph594:                                     ; preds = %bb.h
  %invariant.gep816 = getelementptr [4 x i8], ptr %i.oi, i64 %i.fl
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next606, %vector.body596 ] ; 5 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %index597 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load598 = load <4 x float>, ptr %i.oj, align 4, !tbaa !9, !alias.scope !175
  %wide.load599 = load <4 x float>, ptr %i.ok, align 4, !tbaa !9, !alias.scope !175
  %i.ol = sub nuw nsw i64 %i.fl, %index597
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.ol ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -12
  %i.oo = getelementptr inbounds i8, ptr %i.om, i64 -28
  %wide.load600 = load <4 x float>, ptr %i.on, align 4, !tbaa !9, !alias.scope !176
  %wide.load601 = load <4 x float>, ptr %i.oo, align 4, !tbaa !9, !alias.scope !176
  %reverse602 = shufflevector <4 x float> %wide.load600, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse603 = shufflevector <4 x float> %wide.load601, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.op = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load598, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse602)
  %i.oq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load599, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse603)
  %gep817 = getelementptr [4 x i8], ptr %invariant.gep816, i64 %index597 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %gep817, i64 16
  %wide.load604 = load <4 x float>, ptr %gep817, align 4, !tbaa !9, !alias.scope !177
  %wide.load605 = load <4 x float>, ptr %i.or, align 4, !tbaa !9, !alias.scope !177
  %i.os = fadd <4 x float> %i.op, %wide.load604
  %i.ot = fadd <4 x float> %i.oq, %wide.load605
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index597 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store <4 x float> %i.os, ptr %i.ou, align 4, !tbaa !9, !alias.scope !178, !noalias !179
  store <4 x float> %i.ot, ptr %i.ov, align 4, !tbaa !9, !alias.scope !178, !noalias !179
  %index.next606 = add nuw i64 %index597, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next606, %n.vec595
  br i1 %i.ow, label %.preheader53.i256, label %vector.body596, !llvm.loop !138

.preheader53.i256:                                ; preds = %vector.body596, %.lr.ph.i274
  br i1 %i.fn, label %.lr.ph56.i267.preheader, label %.preheader.i257

.lr.ph56.i267.preheader:                          ; preds = %.preheader53.i256
  br i1 %or.cond779, label %vector.memcheck519, label %.lr.ph56.i267.preheader782

vector.memcheck519:                               ; preds = %.lr.ph56.i267.preheader
  %i.ox = mul nsw i64 %indvars.iv370, -4          ; 3 uses
  %.reass819.a = add i64 %i.ox, %invariant.op818.a
  %diff.check520 = icmp ult i64 %.reass819.a, 31
  %.reass821.a = add i64 %i.ox, %invariant.op820.a
  %diff.check521 = icmp ult i64 %.reass821.a, 31
  %conflict.rdx522 = or i1 %diff.check520, %diff.check521
  %.reass823.a = add i64 %i.ox, %invariant.op822
  %diff.check523 = icmp ult i64 %.reass823.a, 31
  %conflict.rdx524 = or i1 %conflict.rdx522, %diff.check523
  br i1 %conflict.rdx524, label %.lr.ph56.i267.preheader782, label %vector.ph525

vector.ph525:                                     ; preds = %vector.memcheck519
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.fo
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph525
  %index528 = phi i64 [ 0, %vector.ph525 ], [ %index.next535, %vector.body527 ] ; 4 uses
  %i.oz = add nuw i64 %index528, %i.fl            ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load529 = load <4 x float>, ptr %i.pa, align 4, !tbaa !9
  %wide.load530 = load <4 x float>, ptr %i.pb, align 4, !tbaa !9
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %index528 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %wide.load531 = load <4 x float>, ptr %i.pc, align 4, !tbaa !9
  %wide.load532 = load <4 x float>, ptr %i.pd, align 4, !tbaa !9
  %i.pe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load529, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load531)
  %i.pf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load530, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load532)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index528 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %wide.load533 = load <4 x float>, ptr %i.pg, align 4, !tbaa !9
  %wide.load534 = load <4 x float>, ptr %i.ph, align 4, !tbaa !9
  %i.pi = fadd <4 x float> %i.pe, %wide.load533
  %i.pj = fadd <4 x float> %i.pf, %wide.load534
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.oz ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  store <4 x float> %i.pi, ptr %i.pk, align 4, !tbaa !9
  store <4 x float> %i.pj, ptr %i.pl, align 4, !tbaa !9
  %index.next535 = add nuw i64 %index528, 8       ; 2 uses
  %i.pm = icmp eq i64 %index.next535, %n.vec526
  br i1 %i.pm, label %middle.block536, label %vector.body527, !llvm.loop !139

middle.block536:                                  ; preds = %vector.body527
  br i1 %cmp.n537, label %.preheader.loopexit.i272, label %.lr.ph56.i267.preheader782

.lr.ph56.i267.preheader782:                       ; preds = %vector.memcheck519, %.lr.ph56.i267.preheader, %middle.block536
  %indvars.iv64.i268.ph = phi i64 [ %i.fl, %vector.memcheck519 ], [ %i.fl, %.lr.ph56.i267.preheader ], [ %i.gj, %middle.block536 ]
  %indvars.iv62.i269.ph = phi i64 [ %i.fo, %vector.memcheck519 ], [ %i.fo, %.lr.ph56.i267.preheader ], [ %i.gk, %middle.block536 ]
  br label %.lr.ph56.i267

.lr.ph.i274:                                      ; preds = %bb.h, %.lr.ph.i274
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276, %.lr.ph.i274 ], [ 0, %bb.h ] ; 5 uses
  %i.pn = mul nuw nsw i64 %indvars.iv.i275, %i.bk
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.pn
  %i.pp = load float, ptr %i.po, align 4, !tbaa !9
  %i.pq = sub nuw nsw i64 %i.fl, %indvars.iv.i275
  %i.pr = mul nuw nsw i64 %i.pq, %i.bk
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.pr
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !9
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.pp, float 2.000000e+00, float %i.pt)
  %i.pv = add nuw nsw i64 %indvars.iv.i275, %i.fl
  %i.pw = mul nuw nsw i64 %i.pv, %i.bk
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.pw
  %i.py = load float, ptr %i.px, align 4, !tbaa !9
  %i.pz = fadd float %i.pu, %i.py
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i275
  store float %i.pz, ptr %i.qa, align 4, !tbaa !9
  %indvars.iv.next.i276 = add nuw nsw i64 %indvars.iv.i275, 1 ; 2 uses
  %exitcond.not.i277 = icmp eq i64 %indvars.iv.next.i276, %i.fl
  br i1 %exitcond.not.i277, label %.preheader53.i256, label %.lr.ph.i274, !llvm.loop !140

.preheader.loopexit.i272:                         ; preds = %.lr.ph56.i267, %middle.block536
  %indvars.iv.next65.i270.lcssa = phi i64 [ %i.gj, %middle.block536 ], [ %indvars.iv.next65.i270, %.lr.ph56.i267 ]
  %i.qb = trunc nuw nsw i64 %indvars.iv.next65.i270.lcssa to i32
  br label %.preheader.i257

.preheader.i257:                                  ; preds = %.preheader.loopexit.i272, %.preheader53.i256
  %.1.lcssa.i258 = phi i32 [ %i.fk, %.preheader53.i256 ], [ %i.qb, %.preheader.loopexit.i272 ] ; 4 uses
  %i.qc = icmp slt i32 %.1.lcssa.i258, %i.bh
  br i1 %i.qc, label %.lr.ph59.i259, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278

.lr.ph59.i259:                                    ; preds = %.preheader.i257
  %i.qd = sext i32 %.1.lcssa.i258 to i64          ; 9 uses
  %i.qe = sub nsw i64 %wide.trip.count363, %i.qd  ; 3 uses
  %min.iters.check485 = icmp ult i64 %i.qe, 12
  br i1 %min.iters.check485, label %scalar.ph484.preheader, label %vector.scevcheck463

vector.scevcheck463:                              ; preds = %.lr.ph59.i259
  %i.qf = xor i64 %i.qd, -1
  %i.qg = add nsw i64 %i.qf, %wide.trip.count363  ; 2 uses
  %i.qh = add i32 %i.fk, %.1.lcssa.i258
  %i.qi = sub i32 %i.br, %i.qh                    ; 2 uses
  %i.qj = trunc i64 %i.qg to i32
  %i.qk = sub i32 %i.qi, %i.qj
  %i.ql = icmp sgt i32 %i.qk, %i.qi
  %i.qm = icmp ugt i64 %i.qg, 4294967295
  %i.qn = or i1 %i.ql, %i.qm
  %i.qo = or i1 %ident.check464, %i.qn
  br i1 %i.qo, label %scalar.ph484.preheader, label %vector.memcheck486

vector.memcheck486:                               ; preds = %vector.scevcheck463
  %i.qp = shl nsw i64 %i.qd, 2                    ; 3 uses
  %gep825 = getelementptr i8, ptr %i.an, i64 %i.qp ; 3 uses
  %i.qq = shl nuw nsw i64 %indvars.iv370, 2       ; 6 uses
  %i.qr = getelementptr i8, ptr %i.gl, i64 %i.qq
  %i.qs = getelementptr i8, ptr %i.qr, i64 %i.qp
  %i.qt = getelementptr i8, ptr %i.gm, i64 %i.qq
  %i.qu = getelementptr i8, ptr %i.gn, i64 %i.qq
  %i.qv = getelementptr i8, ptr %i.qu, i64 %i.qp
  %i.qw = getelementptr i8, ptr %i.go, i64 %i.qq
  %i.qx = add i32 %.1.lcssa.i258, %i.fk
  %i.qy = sub i32 %invariant.op, %i.qx
  %i.qz = sext i32 %i.qy to i64                   ; 2 uses
  %i.ra = add nsw i64 %i.qd, %i.qz
  %i.rb = shl nsw i64 %i.ra, 2
  %i.rc = getelementptr i8, ptr %i.gq, i64 %i.qq
  %i.rd = getelementptr i8, ptr %i.rc, i64 %i.rb
  %i.re = shl nsw i64 %i.qz, 2
  %i.rf = getelementptr i8, ptr %i.gs, i64 %i.qq
  %i.rg = getelementptr i8, ptr %i.rf, i64 %i.re
  %bound0 = icmp ult ptr %gep825, %i.qt
  %bound1 = icmp ult ptr %i.qs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0487 = icmp ult ptr %gep825, %i.qw
  %bound1488 = icmp ult ptr %i.qv, %scevgep
  %found.conflict489 = and i1 %bound0487, %bound1488
  %conflict.rdx = or i1 %found.conflict, %found.conflict489
  %bound0490 = icmp ult ptr %gep825, %i.rg
  %bound1491 = icmp ult ptr %i.rd, %scevgep
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx, %found.conflict492
  br i1 %conflict.rdx493, label %scalar.ph484.preheader, label %vector.ph494

vector.ph494:                                     ; preds = %vector.memcheck486
  %n.vec495 = and i64 %i.qe, -8                   ; 3 uses
  %i.rh = add nsw i64 %n.vec495, %i.qd
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph494
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next505, %vector.body496 ] ; 2 uses
  %i.ri = add nuw i64 %index497, %i.qd            ; 4 uses
  %i.rj = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.ri ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %wide.load498 = load <4 x float>, ptr %i.rj, align 4, !tbaa !9, !alias.scope !180
  %wide.load499 = load <4 x float>, ptr %i.rk, align 4, !tbaa !9, !alias.scope !180
  %i.rl = sub nsw i64 %i.ri, %i.fl
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.rl ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %wide.load500 = load <4 x float>, ptr %i.rm, align 4, !tbaa !9, !alias.scope !181
  %wide.load501 = load <4 x float>, ptr %i.rn, align 4, !tbaa !9, !alias.scope !181
  %i.ro = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load498, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load500)
  %i.rp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load499, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load501)
  %i.rq = trunc nsw i64 %i.ri to i32
  %i.rr = add i32 %i.fk, %i.rq
  %i.rs = sub i32 %invariant.op, %i.rr
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.rt ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 -12
  %i.rw = getelementptr inbounds i8, ptr %i.ru, i64 -28
  %wide.load502 = load <4 x float>, ptr %i.rv, align 4, !tbaa !9, !alias.scope !182
  %wide.load503 = load <4 x float>, ptr %i.rw, align 4, !tbaa !9, !alias.scope !182
  %reverse = shufflevector <4 x float> %wide.load502, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse504 = shufflevector <4 x float> %wide.load503, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.rx = fadd <4 x float> %i.ro, %reverse
  %i.ry = fadd <4 x float> %i.rp, %reverse504
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ri ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store <4 x float> %i.rx, ptr %i.rz, align 4, !tbaa !9, !alias.scope !183, !noalias !184
  store <4 x float> %i.ry, ptr %i.sa, align 4, !tbaa !9, !alias.scope !183, !noalias !184
  %index.next505 = add nuw i64 %index497, 8       ; 2 uses
  %i.sb = icmp eq i64 %index.next505, %n.vec495
  br i1 %i.sb, label %middle.block506, label %vector.body496, !llvm.loop !146

middle.block506:                                  ; preds = %vector.body496
  %cmp.n507 = icmp eq i64 %i.qe, %n.vec495
  br i1 %cmp.n507, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph484.preheader

scalar.ph484.preheader:                           ; preds = %vector.memcheck486, %vector.scevcheck463, %.lr.ph59.i259, %middle.block506
  %indvars.iv69.i262.ph = phi i64 [ %i.qd, %vector.memcheck486 ], [ %i.qd, %vector.scevcheck463 ], [ %i.qd, %.lr.ph59.i259 ], [ %i.rh, %middle.block506 ]
  br label %scalar.ph484

.lr.ph56.i267:                                    ; preds = %.lr.ph56.i267.preheader782, %.lr.ph56.i267
  %indvars.iv64.i268 = phi i64 [ %indvars.iv.next65.i270, %.lr.ph56.i267 ], [ %indvars.iv64.i268.ph, %.lr.ph56.i267.preheader782 ] ; 4 uses
  %indvars.iv62.i269 = phi i64 [ %indvars.iv.next63.i271, %.lr.ph56.i267 ], [ %indvars.iv62.i269.ph, %.lr.ph56.i267.preheader782 ] ; 2 uses
  %i.sc = mul nuw nsw i64 %indvars.iv64.i268, %i.bk
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.sc
  %i.se = load float, ptr %i.sd, align 4, !tbaa !9
  %i.sf = sub nuw nsw i64 %indvars.iv64.i268, %i.fl
  %i.sg = mul nuw nsw i64 %i.sf, %i.bk
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.sg
  %i.si = load float, ptr %i.sh, align 4, !tbaa !9
  %i.sj = tail call float @llvm.fmuladd.f32(float %i.se, float 2.000000e+00, float %i.si)
  %i.sk = mul nuw nsw i64 %indvars.iv62.i269, %i.bk
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.sk
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !9
  %i.sn = fadd float %i.sj, %i.sm
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i268
  store float %i.sn, ptr %i.so, align 4, !tbaa !9
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.sp = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.sp, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !147

scalar.ph484:                                     ; preds = %scalar.ph484.preheader, %scalar.ph484
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263, %scalar.ph484 ], [ %indvars.iv69.i262.ph, %scalar.ph484.preheader ] ; 5 uses
  %i.sq = mul nsw i64 %indvars.iv69.i262, %i.bk
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.sq
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !9
  %i.st = sub nsw i64 %indvars.iv69.i262, %i.fl
  %i.su = mul nsw i64 %i.st, %i.bk
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.su
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !9
  %i.sx = tail call float @llvm.fmuladd.f32(float %i.ss, float 2.000000e+00, float %i.sw)
  %i.sy = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.sz = add i32 %i.fk, %i.sy
  %i.ta = sub i32 %invariant.op, %i.sz
  %i.tb = mul nsw i32 %i.ta, %i.bj
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.tc
  %i.te = load float, ptr %i.td, align 4, !tbaa !9
  %i.tf = fadd float %i.sx, %i.te
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i262
  store float %i.tf, ptr %i.tg, align 4, !tbaa !9
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 2 uses
  %exitcond73.not.i264 = icmp eq i64 %indvars.iv.next70.i263, %i.bl
  br i1 %exitcond73.not.i264, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph484, !llvm.loop !148

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %scalar.ph484, %middle.block506, %.preheader.i257
  br i1 %.not347, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.th = trunc nuw nsw i64 %indvars.iv370 to i32
  %i.ti = add i32 %i.ds, %i.th                    ; 7 uses
  br i1 %min.iters.check, label %scalar.ph453.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.tj = add i32 %i.ti, %i.ce
  %i.tk = icmp slt i32 %i.tj, %i.ti
  %.reass827 = or i1 %i.tk, %invariant.op826
  br i1 %.reass827, label %scalar.ph453.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.tl = sext i32 %i.ti to i64
  %i.tm = sub nsw i64 %i.tl, %i.am
  %i.tn = shl nsw i64 %i.tm, 2
  %i.to = add nsw i64 %i.tn, -1
  %diff.check = icmp ult i64 %i.to, 31
  br i1 %diff.check, label %scalar.ph453.preheader, label %vector.body456

vector.body456:                                   ; preds = %vector.memcheck, %vector.body456
  %index457 = phi i64 [ %index.next460, %vector.body456 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index457 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %wide.load458 = load <4 x float>, ptr %i.tp, align 4, !tbaa !9
  %wide.load459 = load <4 x float>, ptr %i.tq, align 4, !tbaa !9
  %i.tr = fmul <4 x float> %wide.load458, splat (float 2.500000e-01)
  %i.ts = fmul <4 x float> %wide.load459, splat (float 2.500000e-01)
  %i.tt = trunc nuw nsw i64 %index457 to i32
  %i.tu = add i32 %i.ti, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tv ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store <4 x float> %i.tr, ptr %i.tw, align 4, !tbaa !9
  store <4 x float> %i.ts, ptr %i.tx, align 4, !tbaa !9
  %index.next460 = add nuw i64 %index457, 8       ; 2 uses
  %i.ty = icmp eq i64 %index.next460, %n.vec455
  br i1 %i.ty, label %middle.block461, label %vector.body456, !llvm.loop !149

middle.block461:                                  ; preds = %vector.body456
  br i1 %cmp.n462, label %._crit_edge312, label %scalar.ph453.preheader

scalar.ph453.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph311, %middle.block461
  %indvars.iv365.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph311 ], [ %n.vec455, %middle.block461 ] ; 5 uses
  br i1 %lcmp.mod800.not, label %scalar.ph453.prol.loopexit, label %scalar.ph453.prol

scalar.ph453.prol:                                ; preds = %scalar.ph453.preheader
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365.ph
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !9
  %i.ub = fmul float %i.ua, 2.500000e-01
  %i.uc = mul nuw nsw i64 %indvars.iv365.ph, %i.bn
  %i.ud = trunc nuw nsw i64 %i.uc to i32
  %i.ue = add i32 %i.ti, %i.ud
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.uf
  store float %i.ub, ptr %i.ug, align 4, !tbaa !9
  %indvars.iv.next366.prol = or disjoint i64 %indvars.iv365.ph, 1
  br label %scalar.ph453.prol.loopexit

scalar.ph453.prol.loopexit:                       ; preds = %scalar.ph453.prol, %scalar.ph453.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph453.preheader ], [ %indvars.iv.next366.prol, %scalar.ph453.prol ]
  %i.uh = icmp eq i64 %indvars.iv365.ph, %i.cg
  br i1 %i.uh, label %._crit_edge312, label %scalar.ph453

scalar.ph453:                                     ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.1, %scalar.ph453 ], [ %indvars.iv365.unr, %scalar.ph453.prol.loopexit ] ; 4 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !9
  %i.uk = fmul float %i.uj, 2.500000e-01
  %i.ul = mul nuw nsw i64 %indvars.iv365, %i.bn
  %i.um = trunc nuw nsw i64 %i.ul to i32
  %i.un = add i32 %i.ti, %i.um
  %i.uo = sext i32 %i.un to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.uo
end_hunk_1
