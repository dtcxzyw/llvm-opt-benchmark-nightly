inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn5LayerC2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #3

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

declare void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18InverseSpectrogram7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.h, ptr %i.b, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !59
  %i.i = load i32, ptr %0, align 4, !tbaa !59     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !59
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !59
  %i.l = load i32, ptr %i.a, align 4, !tbaa !59   ; 2 uses
  %.not66 = icmp sgt i32 %i.l, %i.k
  br i1 %.not66, label %._crit_edge68, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load i32, ptr %i.e, align 8, !tbaa !22   ; 6 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = uitofp nneg i32 %i.m to double           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = sitofp fast i32 %i.m to float
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = load i32, ptr %4, align 4, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39
  %i.x = mul nsw i32 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.z = load i32, ptr %i.y, align 4, !tbaa !42
  %i.aa = icmp eq i32 %i.z, 1
  %.neg = sdiv i32 %i.m, -2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = sext i32 %i.l to i64
  %i.af = add nsw i32 %i.k, 1
  %wide.trip.count = zext i32 %i.m to i64         ; 3 uses
  %i.ag = select i1 %i.aa, i32 %.neg, i32 0
  %invariant.op = add i32 %i.x, %i.ag
  %i.ah = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.m, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert80 = insertelement <4 x double> poison, double %i.o, i64 0
  %broadcast.splat81 = shufflevector <4 x double> %broadcast.splatinsert80, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aj = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat81
  %i.ak = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat81
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.al = fdiv fast double 1.000000e+00, %i.o
  %i.am = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ai
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread59
  %indvars.iv71 = phi i64 [ %i.ae, %.preheader.lr.ph ], [ %indvars.iv.next72, %.thread59 ] ; 4 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.an = trunc nsw i64 %indvars.iv71 to i32
  %i.ao = sitofp fast i32 %i.an to double
  %i.ap = fmul fast double %i.ao, f0x401921FB54442D18 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !18    ; 9 uses
  %i.ar = load i32, ptr %i.p, align 4, !tbaa !64
  %i.as = sext i32 %i.ar to i64
  %i.at = load i64, ptr %i.q, align 8, !tbaa !60
  %factor.op.mul = mul i64 %i.at, %i.as           ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ap, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %vec.phi82 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi83 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi84 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.au = or disjoint i64 %index, 1
  %i.av = or disjoint i64 %index, 2
  %i.aw = or disjoint i64 %index, 3
  %i.ax = or disjoint i64 %index, 4
  %i.ay = or disjoint i64 %index, 5
  %i.az = or disjoint i64 %index, 6
  %i.ba = or disjoint i64 %index, 7
  %i.bb = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.bc = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.bd = fmul fast <4 x double> %broadcast.splat, %i.bb
  %i.be = fmul fast <4 x double> %broadcast.splat, %i.bc
  %i.bf = fmul fast <4 x double> %i.bd, %i.aj
  %i.bg = fmul fast <4 x double> %i.be, %i.ak
  %i.bh = mul i64 %factor.op.mul, %index
  %i.bi = mul i64 %factor.op.mul, %i.au
  %i.bj = mul i64 %factor.op.mul, %i.av
  %i.bk = mul i64 %factor.op.mul, %i.aw
  %i.bl = mul i64 %factor.op.mul, %i.ax
  %i.bm = mul i64 %factor.op.mul, %i.ay
  %i.bn = mul i64 %factor.op.mul, %i.az
  %i.bo = mul i64 %factor.op.mul, %i.ba
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bh ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bi ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bk ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bm ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bn ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo ; 2 uses
  %i.bx = load float, ptr %i.bp, align 4, !tbaa !44
  %i.by = load float, ptr %i.bq, align 4, !tbaa !44
  %i.bz = load float, ptr %i.br, align 4, !tbaa !44
  %i.ca = load float, ptr %i.bs, align 4, !tbaa !44
  %i.cb = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 1
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 2
  %i.ce = insertelement <4 x float> %i.cd, float %i.ca, i64 3 ; 2 uses
  %i.cf = load float, ptr %i.bt, align 4, !tbaa !44
  %i.cg = load float, ptr %i.bu, align 4, !tbaa !44
  %i.ch = load float, ptr %i.bv, align 4, !tbaa !44
  %i.ci = load float, ptr %i.bw, align 4, !tbaa !44
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3 ; 2 uses
  %i.cn = fptrunc fast <4 x double> %i.bf to <4 x float>
  %i.co = fptrunc fast <4 x double> %i.bg to <4 x float>
  %i.cp = call fast { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.cn) ; 2 uses
  %i.cq = call fast { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.co) ; 2 uses
  %i.cr = extractvalue { <4 x float>, <4 x float> } %i.cp, 0 ; 2 uses
  %i.cs = extractvalue { <4 x float>, <4 x float> } %i.cq, 0 ; 2 uses
  %i.ct = extractvalue { <4 x float>, <4 x float> } %i.cp, 1 ; 2 uses
  %i.cu = extractvalue { <4 x float>, <4 x float> } %i.cq, 1 ; 2 uses
  %i.cv = fmul fast <4 x float> %i.ce, %i.ct
  %i.cw = fmul fast <4 x float> %i.cm, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.df = load float, ptr %i.cx, align 4, !tbaa !44
  %i.dg = load float, ptr %i.cy, align 4, !tbaa !44
  %i.dh = load float, ptr %i.cz, align 4, !tbaa !44
  %i.di = load float, ptr %i.da, align 4, !tbaa !44
  %i.dj = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 3 ; 2 uses
  %i.dn = load float, ptr %i.db, align 4, !tbaa !44
  %i.do = load float, ptr %i.dc, align 4, !tbaa !44
  %i.dp = load float, ptr %i.dd, align 4, !tbaa !44
  %i.dq = load float, ptr %i.de, align 4, !tbaa !44
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3 ; 2 uses
  %i.dv = fadd fast <4 x float> %i.cv, %vec.phi83
  %i.dw = fadd fast <4 x float> %i.cw, %vec.phi84
  %i.dx = fmul fast <4 x float> %i.cr, %i.dm
  %i.dy = fmul fast <4 x float> %i.cs, %i.du
  %i.dz = fsub fast <4 x float> %i.dv, %i.dx      ; 2 uses
  %i.ea = fsub fast <4 x float> %i.dw, %i.dy      ; 2 uses
  %i.eb = fmul fast <4 x float> %i.ce, %i.cr
  %i.ec = fmul fast <4 x float> %i.cm, %i.cs
  %i.ed = fmul fast <4 x float> %i.dm, %i.ct
  %i.ee = fmul fast <4 x float> %i.du, %i.cu
  %i.ef = fadd fast <4 x float> %i.eb, %vec.phi
  %i.eg = fadd fast <4 x float> %i.ec, %vec.phi82
  %i.eh = fadd fast <4 x float> %i.ef, %i.ed      ; 2 uses
  %i.ei = fadd fast <4 x float> %i.eg, %i.ee      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.ei, %i.eh
  %i.ek = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %bin.rdx85 = fadd fast <4 x float> %i.ea, %i.dz
  %i.el = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx85) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.05662.ph = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ek, %middle.block ]
  %.05761.ph = phi float [ 0.000000e+00, %.lr.ph ], [ %i.el, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %.057.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.el, %middle.block ], [ %i.fl, %scalar.ph ]
  %.056.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ek, %middle.block ], [ %i.fm, %scalar.ph ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv71
  %i.en = load float, ptr %i.em, align 4, !tbaa !44 ; 3 uses
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x float> poison, float %.057.lcssa, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.056.lcssa, i64 1
  %i.es = fmul fast <2 x float> %i.ep, %i.er
  %i.et = fmul fast <2 x float> %i.es, %i.am      ; 3 uses
  %i.eu = trunc i64 %indvars.iv71 to i32
  %spec.select.reass = add i32 %invariant.op, %i.eu ; 3 uses
  %i.ev = icmp sgt i32 %spec.select.reass, -1
  br i1 %i.ev, label %bb.c, label %.thread59

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.05662 = phi float [ %i.fm, %scalar.ph ], [ %.05662.ph, %scalar.ph.preheader ]
  %.05761 = phi float [ %i.fl, %scalar.ph ], [ %.05761.ph, %scalar.ph.preheader ]
  %i.ew = trunc nuw nsw i64 %indvars.iv to i32
  %i.ex = uitofp nneg i32 %i.ew to double
  %i.ey = fmul fast double %i.ap, %i.ex
  %i.ez = fmul fast double %i.ey, %i.al
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.reass ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !44 ; 2 uses
  %i.fc = fptrunc fast double %i.ez to float
  %sincos = call fast { float, float } @llvm.sincos.f32(float %i.fc) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !44 ; 2 uses
  %i.ff = fmul fast float %i.fb, %sin
  %i.fg = fmul fast float %i.fb, %cos
  %i.fh = fmul fast float %i.fe, %cos
  %i.fi = fmul fast float %sin, %i.fe
  %i.fj = fadd fast float %i.ff, %.05662
  %i.fk = fadd fast float %i.fg, %.05761
  %i.fl = fsub fast float %i.fk, %i.fi            ; 2 uses
  %i.fm = fadd fast float %i.fj, %i.fh            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !88

bb.c:                                             ; preds = %._crit_edge
  %i.fn = load i32, ptr %5, align 4, !tbaa !59
  %i.fo = icmp slt i32 %spec.select.reass, %i.fn
  br i1 %i.fo, label %bb.d, label %.thread59

bb.d:                                             ; preds = %bb.c
  %i.fp = fmul fast float %i.en, %i.en
  %i.fq = zext nneg i32 %spec.select.reass to i64 ; 4 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fq ; 2 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !44
  %i.fu = fadd fast float %i.ft, %i.fp
  store float %i.fu, ptr %i.fs, align 4, !tbaa !44
  %i.fv = load i32, ptr %i.ab, align 4, !tbaa !38
  switch i32 %i.fv, label %.thread59 [
    i32 0, label %.thread
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

.thread:                                          ; preds = %bb.d
  %i.fw = load ptr, ptr %7, align 8, !tbaa !18
  %i.fx = load i32, ptr %i.ac, align 4, !tbaa !64
  %i.fy = sext i32 %i.fx to i64
  %i.fz = mul nsw i64 %i.fy, %i.fq
  %i.ga = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.gb = mul i64 %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gb ; 2 uses
  %i.gd = load <2 x float>, ptr %i.gc, align 4, !tbaa !44
  %i.ge = fadd fast <2 x float> %i.gd, %i.et
  store <2 x float> %i.ge, ptr %i.gc, align 4, !tbaa !44
  br label %.thread59

bb.e:                                             ; preds = %bb.d
  %i.gf = load ptr, ptr %7, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.fq ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !44
  %i.gi = extractelement <2 x float> %i.et, i64 0
  %i.gj = fadd fast float %i.gh, %i.gi
  store float %i.gj, ptr %i.gg, align 4, !tbaa !44
  br label %.thread59

bb.f:                                             ; preds = %bb.d
  %i.gk = load ptr, ptr %7, align 8, !tbaa !18
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.fq ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !44
  %i.gn = extractelement <2 x float> %i.et, i64 1
  %i.go = fadd fast float %i.gm, %i.gn
  store float %i.go, ptr %i.gl, align 4, !tbaa !44
  br label %.thread59

.thread59:                                        ; preds = %bb.d, %bb.e, %.thread, %bb.f, %bb.c, %._crit_edge
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next72 to i32
  %exitcond74.not = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond74.not, label %._crit_edge68, label %.preheader

._crit_edge68:                                    ; preds = %.thread59, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge68, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !89 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.cos.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #12

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{ptr @_ZN4ncnn18InverseSpectrogramD2Ev}
!22 = !{!23, !6, i64 208}
!23 = !{!"_ZTSN4ncnn18InverseSpectrogramE", !24, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !12, i64 240}
!24 = !{!"_ZTSN4ncnn5LayerE", !25, i64 8, !25, i64 9, !25, i64 10, !25, i64 11, !25, i64 12, !25, i64 13, !25, i64 14, !25, i64 15, !25, i64 16, !25, i64 17, !25, i64 18, !25, i64 19, !25, i64 20, !25, i64 21, !25, i64 22, !25, i64 23, !25, i64 24, !25, i64 25, !25, i64 26, !25, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !26, i64 48, !26, i64 80, !29, i64 112, !29, i64 136, !33, i64 160, !33, i64 184}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !15, i64 8, !7, i64 16}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!28 = !{!"p1 omnipotent char", !13, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!33 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!38 = !{!23, !6, i64 212}
!39 = !{!23, !6, i64 216}
!40 = !{!23, !6, i64 220}
!41 = !{!23, !6, i64 224}
end_hunk_0
