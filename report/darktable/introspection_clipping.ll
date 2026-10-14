Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_mask:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.cd = load float, ptr %i.b, align 4           ; 2 uses
  %i.ce = load float, ptr %i.c, align 4           ; 2 uses
  %i.cf = load float, ptr %i.d, align 4           ; 2 uses
  %i.cg = load float, ptr %i.e, align 4           ; 2 uses
  %i.ch = load float, ptr %i.f, align 4
  %i.ci = load float, ptr %i.g, align 4
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cg, %i.cd
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.cl = fsub reassoc nsz arcp contract afn float %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.co = load i32, ptr %i.br, align 4, !tbaa !78 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph156.split.preheader, label %._crit_edge157

.lr.ph156.split.preheader:                        ; preds = %.lr.ph156
  %i.cq = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cf, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cd, i64 1
  br label %.lr.ph156.split

._crit_edge157:                                   ; preds = %._crit_edge, %.lr.ph156, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.p

.lr.ph156.split:                                  ; preds = %.lr.ph156.split.preheader, %._crit_edge
  %i.cu = phi i32 [ %i.dd, %._crit_edge ], [ %i.bp, %.lr.ph156.split.preheader ]
  %i.cv = phi i32 [ %i.de, %._crit_edge ], [ %i.co, %.lr.ph156.split.preheader ] ; 3 uses
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %._crit_edge ], [ 0, %.lr.ph156.split.preheader ] ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %indvars.iv160, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cx
  %i.cz = icmp sgt i32 %i.cv, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph156.split
  %i.da = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.db = uitofp nsz nneg i32 %i.da to float
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, 5.000000e-01
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i32, ptr %i.bo, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph156.split
  %i.dd = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cu, %.lr.ph156.split ] ; 2 uses
  %i.de = phi i32 [ %i.gj, %._crit_edge.loopexit ], [ %i.cv, %.lr.ph156.split ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.df = sext i32 %i.dd to i64
  %i.dg = icmp slt i64 %indvars.iv.next161, %i.df
  br i1 %i.dg, label %.lr.ph156.split, label %._crit_edge157, !llvm.loop !284

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.dh = load float, ptr %i.bs, align 4, !tbaa !85 ; 4 uses
  %i.di = load float, ptr %i.bt, align 4, !tbaa !73
  %i.dj = load float, ptr %i.bu, align 4, !tbaa !72
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  %i.dl = uitofp nsz nneg i32 %i.dk to float
  %i.dm = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dn = sitofp <2 x i32> %i.dm to <2 x float>   ; 2 uses
  %i.do = load float, ptr %i.bv, align 4, !tbaa !75
  %i.dp = load float, ptr %i.bw, align 4, !tbaa !74
  %i.dq = load i32, ptr %i.bx, align 4, !tbaa !71
  %.not115 = icmp eq i32 %i.dq, 0                 ; 2 uses
  %. = select i1 %.not115, ptr %i.bz, ptr %i.by
  %.139 = select i1 %.not115, ptr %i.by, ptr %i.bz
  %.pn138 = load float, ptr %.139, align 4, !tbaa !13
  %reass.add145 = fadd reassoc nsz arcp contract afn float %.pn138, %i.di
  %reass.add141 = fsub reassoc nsz arcp contract afn float %i.dj, %reass.add145
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add141, %i.dh
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dl, 5.000000e-01
  %i.ds = extractelement <2 x float> %i.dn, i64 0
  %i.dt = fadd reassoc nsz arcp contract afn float %i.dr, %i.ds
  %.sroa.0128.0 = fadd reassoc nsz arcp contract afn float %i.dt, %reass.mul
  %.pn136 = load float, ptr %., align 4, !tbaa !13
  %reass.add147 = fadd reassoc nsz arcp contract afn float %.pn136, %i.do
  %reass.add143 = fsub reassoc nsz arcp contract afn float %i.dp, %reass.add147
  %reass.mul144 = fmul reassoc nsz arcp contract afn float %reass.add143, %i.dh
  %i.du = extractelement <2 x float> %i.dn, i64 1
  %i.dv = fadd reassoc nsz arcp contract afn float %i.dc, %i.du
  %.sroa.13.0 = fadd reassoc nsz arcp contract afn float %i.dv, %reass.mul144
  %i.dw = fdiv reassoc nsz arcp contract afn float %.sroa.0128.0, %i.dh ; 2 uses
  %i.dx = load float, ptr %i.cb, align 4, !tbaa !69
  %i.dy = load float, ptr %i.cc, align 4, !tbaa !70
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dw, %i.dx
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dz, 1.000000e+00
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dh
  %i.ec = load float, ptr %i.ae, align 4, !tbaa !85
  %i.ed = fdiv reassoc nsz arcp contract afn float %.sroa.13.0, %i.eb ; 2 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dy
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, 1.000000e+00
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.dw, %i.ef
  %i.eh = load <4 x float>, ptr %i.ca, align 4, !tbaa !13 ; 2 uses
  %i.ei = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ek
  %i.em = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = shufflevector <4 x float> %i.eh, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.en, %i.eo
  %i.eq = load <2 x float>, ptr %i.by, align 4, !tbaa !13
  %i.er = fadd reassoc nsz arcp contract afn <2 x float> %i.eq, %i.ep
  %i.es = fadd reassoc nsz arcp contract afn <2 x float> %i.er, %i.el
  %i.et = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul reassoc nsz arcp contract afn <2 x float> %i.es, %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.bb, align 4, !tbaa !66
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ey = fsub reassoc nsz arcp contract afn <2 x float> %i.ev, %i.au ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.ez ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.fb ; 2 uses
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fa ; 2 uses
  %i.fe = extractelement <2 x float> %i.fd, i64 1
  %i.ff = fmul reassoc nsz arcp contract afn float %i.ci, %i.fe
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, %i.ch
  %i.fi = fadd reassoc nsz arcp contract afn float %i.cl, %i.fh
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %i.ff
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fdiv reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fl ; 2 uses
  %i.fn = fadd reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fo = fsub reassoc nsz arcp contract afn <2 x float> %i.ay, %i.fm
  %i.fp = shufflevector <2 x float> %i.fn, <2 x float> %i.fo, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fq = phi <2 x float> [ %i.fp, %bb.k ], [ %i.ev, %bb.j ]
  %i.fr = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fs = sitofp <2 x i32> %i.fr to <2 x float>   ; 2 uses
  %i.ft = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, splat (float -5.000000e-01) ; 2 uses
  %foldExtExtBinop168 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fu = extractelement <2 x float> %foldExtExtBinop168, i64 0 ; 3 uses
  %foldExtExtBinop170 = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fs
  %i.fv = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 3 uses
  %i.fw = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.fx = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.fy = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fx, i32 noundef 1, i32 noundef %i.fw) #25
  %i.fz = fcmp reassoc nsz arcp contract afn ult float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gb = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gc = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ga, i32 noundef %i.gb, i32 noundef 1, i32 noundef %i.ga) #25
  %i.gd = fcmp reassoc nsz arcp contract afn ugt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ge = load i32, ptr %i.cm, align 4, !tbaa !78 ; 2 uses
  %i.gf = load i32, ptr %i.cn, align 4, !tbaa !79
  %i.gg = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fu, float noundef %i.fv, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 1, i32 noundef %i.ge) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.gh = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.gg, %bb.n ], [ 0.000000e+00, %bb.l ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv
  store float %i.gh, ptr %i.gi, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gj = load i32, ptr %i.br, align 4, !tbaa !78 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %bb.j, label %._crit_edge.loopexit

bb.p:                                             ; preds = %._crit_edge157, %bb.f
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 38 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select nsz i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select nsz i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select nsz i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %.sroa.9344.0, ptr %i.f, align 4, !tbaa !13
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sroa.5343.0, ptr %.sroa.5343.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.9344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.9344.0, ptr %.sroa.9344.0..sroa_idx, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  store float %i.j, ptr %i.f, align 4, !tbaa !13
  %i.k = fneg reassoc nsz arcp contract afn float %.sroa.7.0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.k, %bb.b ], [ %.sroa.7.0, %bb.a ] ; 2 uses
  %i.n = phi float [ %i.j, %bb.b ], [ %.sroa.9344.0, %bb.a ] ; 2 uses
  %i.o = and i32 %i.h, 2
  %.not271 = icmp eq i32 %i.o, 0
  br i1 %.not271, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fneg reassoc nsz arcp contract afn float %.sroa.5343.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.p, ptr %i.q, align 4, !tbaa !13
  %i.r = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi float [ %i.p, %bb.d ], [ %.sroa.5343.0, %bb.c ] ; 2 uses
  %i.u = phi float [ %i.r, %bb.d ], [ %.sroa.9344.0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.m, %i.t
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fneg reassoc nsz arcp contract afn float %i.t
  %i.aa = fneg reassoc nsz arcp contract afn float %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.n, i64 3
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %i.v, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ap = fmul reassoc nsz arcp contract afn float %.sroa.9344.0, %.sroa.9344.0
  %i.aq = fmul reassoc nsz arcp contract afn float %.sroa.5343.0, %.sroa.7.0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.az = load <2 x i32>, ptr %i.as, align 8, !tbaa !14 ; 3 uses
  %i.ba = sitofp <2 x i32> %i.az to <2 x float>   ; 7 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = extractelement <2 x float> %i.ba, i64 1
  %i.bd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bb, float %i.bc)
  %i.be = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.au ; 2 uses
  store float %i.bf, ptr %i.av, align 4, !tbaa !69
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ax, %i.be ; 2 uses
  store float %i.bg, ptr %i.ay, align 4, !tbaa !70
  %i.bh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ba, splat (float 5.000000e-01) ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bn, %i.bg
  %i.bo = shufflevector <2 x float> %i.bh, <2 x float> %i.ba, <2 x i32> <i32 0, i32 2>
  %i.bp = fmul reassoc nnan arcp contract afn <2 x float> %i.bo, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bq = insertelement <2 x float> poison, float %.sroa.9344.0, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bu = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.bv = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bv, %i.bw
  %i.by = shufflevector <2 x float> %i.bh, <2 x float> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bz = fmul reassoc nnan arcp contract afn <2 x float> %i.by, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.ca = insertelement <2 x float> poison, float %.sroa.5343.0, i64 0
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fmul reassoc nsz arcp contract afn <4 x float> %i.cb, %i.cc
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.bz, %i.br
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cg = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.cd
  %i.ch = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = fdiv reassoc nsz arcp contract afn <4 x float> %i.cg, %i.ci ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <4 x float> %i.cf, %i.bx
  %i.cl = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, splat (float 1.000000e+00)
  %i.cp = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck ; 2 uses
  %i.cq = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.cr
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, splat (float 1.000000e+00)
  %i.cu = shufflevector <4 x float> %i.cp, <4 x float> %i.cj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cv = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.cw = shufflevector <8 x float> %i.cv, <8 x float> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison>
  %i.cx = shufflevector <4 x float> %i.ct, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <8 x float> %i.cx, <8 x float> %i.cw, <8 x i32> <i32 8, i32 0, i32 10, i32 1, i32 12, i32 2, i32 14, i32 3>
  %i.cz = fmul reassoc nsz arcp contract afn <8 x float> %i.cu, %i.cy ; 10 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cz, zeroinitializer ; 8 uses
  %i.db = extractelement <8 x i1> %i.da, i64 7    ; 2 uses
  %i.dc = extractelement <8 x i1> %i.da, i64 6    ; 2 uses
  %i.dd = extractelement <8 x i1> %i.da, i64 5    ; 2 uses
  %i.de = extractelement <8 x i1> %i.da, i64 4    ; 2 uses
  %i.df = extractelement <8 x i1> %i.da, i64 3    ; 2 uses
  %i.dg = extractelement <8 x i1> %i.da, i64 2    ; 2 uses
  %i.dh = extractelement <8 x i1> %i.da, i64 1    ; 2 uses
  %i.di = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cz)
  %i.dj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.di, splat (float 1.000000e-03) ; 8 uses
  %i.dk = extractelement <8 x i1> %i.da, i64 0    ; 2 uses
  %i.dl = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = extractelement <8 x float> %i.cz, i64 0 ; 2 uses
  %i.dn = extractelement <8 x float> %i.cz, i64 1 ; 2 uses
  %i.do = extractelement <8 x float> %i.cz, i64 2 ; 2 uses
  %i.dp = extractelement <8 x float> %i.cz, i64 3 ; 2 uses
  %i.dq = extractelement <8 x float> %i.cz, i64 4 ; 2 uses
  %i.dr = extractelement <8 x float> %i.cz, i64 5 ; 2 uses
  %i.ds = extractelement <8 x float> %i.cz, i64 6 ; 2 uses
  %i.dt = extractelement <8 x float> %i.cz, i64 7 ; 2 uses
  %i.du = extractelement <8 x i1> %i.dj, i64 0    ; 2 uses
  %i.dv = extractelement <8 x i1> %i.dj, i64 1    ; 2 uses
  %i.dw = extractelement <8 x i1> %i.dj, i64 2    ; 2 uses
  %i.dx = extractelement <8 x i1> %i.dj, i64 3    ; 2 uses
  %i.dy = extractelement <8 x i1> %i.dj, i64 4    ; 2 uses
  %i.dz = extractelement <8 x i1> %i.dj, i64 5    ; 2 uses
  %i.ea = extractelement <8 x i1> %i.dj, i64 6    ; 2 uses
  %i.eb = extractelement <8 x i1> %i.dj, i64 7    ; 2 uses
  %i.ec = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ed = sitofp <4 x i32> %i.ec to <4 x float>
  %i.ee = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ed, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.eb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.ee, i64 2
  %.sroa.0.0.vec.extract470 = extractelement <4 x float> %i.ee, i64 0
  %.sroa.speculated455 = select i1 %i.db, float %.sroa.0.8.vec.extract, float %.sroa.0.0.vec.extract470
  %i.ef = fdiv reassoc nsz arcp contract afn float %.sroa.speculated455, %i.dt
  %i.eg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ef, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.eg, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.ea, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ee, i64 3
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.ee, i64 1
  %.sroa.speculated431 = select i1 %i.dc, float %.sroa.0.12.vec.extract, float %.sroa.0.4.vec.extract
  %i.eh = fdiv reassoc nsz arcp contract afn float %.sroa.speculated431, %i.ds
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.eh)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.ei, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.dz, label %bb.l, label %bb.m
end_hunk_0
begin_hunk_1_@modify_roi_out:bb.a
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fsub reassoc nsz arcp contract afn <2 x float> %i.jv, %i.jx ; 3 uses
  %i.jz = insertelement <2 x float> poison, float %i.jg, i64 0
  %i.ka = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kb = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.kc = fmul reassoc nsz arcp contract afn <4 x float> %i.ka, %i.kb
  %i.kd = fadd reassoc nsz arcp contract afn <4 x float> %i.kc, splat (float 1.000000e+00)
  %i.ke = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kf = shufflevector <2 x float> %i.jy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kg = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kh = fmul reassoc nsz arcp contract afn <4 x float> %i.kf, %i.kg ; 2 uses
  %i.ki = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.kj = shufflevector <4 x float> %i.ke, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kk = fmul reassoc arcp contract afn <4 x float> %i.ki, %i.kj
  %i.kl = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.km = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kn = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.km, %i.kn
  %i.kp = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.kq = shufflevector <4 x float> %i.jq, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.kr = fmul reassoc nsz arcp contract afn <4 x float> %i.kp, %i.kq ; 2 uses
  %i.ks = shufflevector <4 x float> %i.jq, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.kt = shufflevector <4 x float> %i.kp, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.ku = fmul reassoc arcp contract afn <4 x float> %i.ks, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn <4 x float> %i.kd, %i.ko ; 3 uses
  %i.kw = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, %i.kh
  %i.kx = fdiv reassoc nsz arcp contract afn <4 x float> %i.kw, %i.kv
  %i.ky = fadd reassoc nsz arcp contract afn <4 x float> %i.kx, %i.js
  %i.kz = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.hd
  %i.la = fsub reassoc nsz arcp contract afn <4 x float> %i.kz, %i.iy ; 4 uses
  %i.lb = extractelement <4 x float> %i.la, i64 0
  %i.lc = extractelement <2 x float> %i.hg, i64 0 ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.lb
  %i.le = fadd reassoc arcp contract afn <4 x float> %i.ku, %i.kk
  %i.lf = insertelement <4 x float> %i.kv, float 1.000000e+00, i64 3
  %i.lg = fdiv reassoc arcp contract afn <4 x float> %i.le, %i.lf
  %i.lh = shufflevector <4 x float> %i.js, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.lh, %i.lg
  %i.lj = fadd reassoc nsz arcp contract afn <4 x float> %i.li, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lk = fmul reassoc nsz arcp contract afn <4 x float> %i.lj, %i.iz ; 3 uses
  %i.ll = extractelement <4 x float> %i.lk, i64 0
  %i.lm = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = fadd reassoc nsz arcp contract afn float %i.ln, %i.ld ; 2 uses
  %i.lp = fmul reassoc nsz arcp contract afn float %i.lo, %i.gy
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, 1.000000e+00
  %i.lr = shufflevector <4 x float> %i.hi, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.ls = fmul reassoc arcp contract afn <4 x float> %i.lr, %i.lk
  %i.lt = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = shufflevector <4 x float> %i.la, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lv = fmul reassoc nsz arcp contract afn <2 x float> %i.lt, %i.lu
  %i.lw = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.lx = fmul reassoc nsz arcp contract afn <2 x float> %i.hg, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn <2 x float> %i.lx, %i.lv ; 3 uses
  %i.lz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fmul reassoc nsz arcp contract afn <2 x float> %i.ly, %i.ma
  %i.mc = fadd reassoc nsz arcp contract afn <2 x float> %i.mb, splat (float 1.000000e+00)
  %shift373 = shufflevector <4 x float> %i.kr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop374 = fadd reassoc nsz arcp contract afn <4 x float> %shift373, %i.kh
  %shift376 = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop377 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop374, %shift376
  %foldExtExtBinop379 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.js
  %foldExtExtBinop381 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop379, %i.hd
  %foldExtExtBinop383 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop381, %i.iy ; 2 uses
  %i.md = extractelement <4 x float> %foldExtExtBinop383, i64 0
  %foldExtExtBinop385 = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, %foldExtExtBinop383
  %i.me = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %i.me, %i.la
  %i.mg = fadd reassoc nsz arcp contract afn <4 x float> %i.mf, %i.ls ; 2 uses
  %i.mh = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.mi = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mh, <4 x float> %i.mi, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %foldExtExtBinop385, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.ml = fmul reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mk ; 4 uses
  %i.mm = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mk
  %i.mn = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mo = extractelement <4 x float> %i.ml, i64 0
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.ha
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mp, 1.000000e+00
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, %i.lo
  %i.ms = extractelement <4 x float> %i.ml, i64 1
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %i.ha
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mt, 1.000000e+00
  %i.mv = extractelement <2 x float> %i.ly, i64 0
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mu, %i.mv
  %i.mx = extractelement <4 x float> %i.ml, i64 2
  %i.my = fmul reassoc nsz arcp contract afn float %i.mx, %i.ha
  %i.mz = fadd reassoc nsz arcp contract afn float %i.my, 1.000000e+00
  %i.na = extractelement <2 x float> %i.ly, i64 1
  %i.nb = fmul reassoc nsz arcp contract afn float %i.mz, %i.na
  %i.nc = fmul reassoc nsz arcp contract afn float %i.lc, %i.md
  %i.nd = extractelement <4 x float> %i.la, i64 3
  %i.ne = fmul reassoc nsz arcp contract afn float %i.lm, %i.nd
  %i.nf = fadd reassoc nsz arcp contract afn float %i.ne, %i.nc
  br label %.split297.us

.split297.us:                                     ; preds = %.split.preheader, %.split.us
  %.sink367 = phi float [ %i.ia, %.split.preheader ], [ %i.nf, %.split.us ] ; 2 uses
  %.pn = phi float [ %i.in, %.split.preheader ], [ %i.mr, %.split.us ]
  %.pn350 = phi float [ %i.is, %.split.preheader ], [ %i.mw, %.split.us ]
  %.pn351 = phi float [ %i.ix, %.split.preheader ], [ %i.nb, %.split.us ]
  %i.ng = phi <4 x float> [ %i.ii, %.split.preheader ], [ %i.mn, %.split.us ]
  %.scalar = fmul reassoc arcp contract afn float %.sink367, %i.gy
  %.scalar387 = fadd reassoc nsz arcp contract afn float %.scalar, 1.000000e+00
  %i.nh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar387, i64 3
  %i.ni = fmul <4 x float> %i.ng, %i.nh           ; 2 uses
  %i.nj = extractelement <4 x float> %i.ni, i64 3
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, %i.ha
  %i.nl = fadd reassoc nsz arcp contract afn float %i.nk, 1.000000e+00
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %.sink367
  %i.nn = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = fadd reassoc nsz arcp contract afn <4 x float> %i.ni, %i.nn ; 4 uses
  %i.np = extractelement <2 x float> %i.hf, i64 0 ; 5 uses
  %.sroa.12313.0 = fadd reassoc nsz arcp contract afn float %i.nm, %i.np ; 2 uses
  %.sroa.9312.0 = fadd reassoc nsz arcp contract afn float %.pn351, %i.np ; 2 uses
  %.sroa.6311.0 = fadd reassoc nsz arcp contract afn float %.pn350, %i.np ; 2 uses
  %.sroa.0310.0 = fadd reassoc nsz arcp contract afn float %.pn, %i.np ; 2 uses
  %i.nq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.nr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nq, float %.sroa.9312.0)
  %i.ns = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nr, float %.sroa.12313.0) ; 2 uses
  %i.nt = extractelement <4 x float> %i.hd, i64 0 ; 5 uses
  %i.nu = fadd reassoc nsz arcp contract afn float %i.ns, %i.nt
  %i.nv = fcmp reassoc nsz arcp contract afn olt float %i.nu, 0.000000e+00
  %i.nw = extractelement <4 x float> %i.no, i64 0 ; 2 uses
  %i.nx = extractelement <4 x float> %i.no, i64 1 ; 2 uses
  %i.ny = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.nw, float %i.nx)
  %i.nz = extractelement <4 x float> %i.no, i64 2 ; 2 uses
  %i.oa = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ny, float %i.nz)
  %i.ob = extractelement <4 x float> %i.no, i64 3 ; 2 uses
  %i.oc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oa, float %i.ob) ; 2 uses
  %i.od = extractelement <4 x float> %i.hd, i64 1 ; 6 uses
  %i.oe = fadd reassoc nsz arcp contract afn float %i.oc, %i.od
  %i.of = fcmp reassoc nsz arcp contract afn olt float %i.oe, 0.000000e+00
  %i.og = sub nsw <2 x i32> zeroinitializer, %i.hb
  %i.oh = sitofp <2 x i32> %i.og to <2 x float>   ; 2 uses
  %i.oi = extractelement <2 x float> %i.oh, i64 0
  %.0250 = select nsz i1 %i.nv, float %i.oi, float %i.ns ; 3 uses
  %i.oj = extractelement <2 x float> %i.oh, i64 1
  %.0248 = select nsz i1 %i.of, float %i.oj, float %i.oc ; 3 uses
  %i.ok = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0310.0, float %.sroa.6311.0)
  %i.ol = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ok, float %.sroa.9312.0)
  %i.om = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ol, float %.sroa.12313.0) ; 2 uses
  %i.on = fmul reassoc nnan nsz arcp contract afn float %i.nt, 2.000000e+00 ; 2 uses
  %i.oo = fcmp reassoc nsz arcp contract afn ogt float %i.om, %i.on
  %.0246 = select nsz i1 %i.oo, float %i.on, float %i.om ; 3 uses
  %i.op = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nw, float %i.nx)
  %i.oq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.op, float %i.nz)
  %i.or = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oq, float %i.ob) ; 2 uses
  %i.os = fmul reassoc nnan nsz arcp contract afn float %i.od, 2.000000e+00 ; 2 uses
  %i.ot = fcmp reassoc nsz arcp contract afn ogt float %i.or, %i.os
  %.0244 = select nsz i1 %i.ot, float %i.os, float %i.or ; 2 uses
  %i.ou = fsub reassoc nsz arcp contract afn float %.0246, %.0250
  %i.ov = fmul reassoc nnan nsz arcp contract afn float %i.nt, 1.250000e-01
  %i.ow = fcmp reassoc nsz arcp contract afn olt float %i.ou, %i.ov
  br i1 %i.ow, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split297.us
  %i.ox = fadd reassoc nsz arcp contract afn float %.0250, %.0246
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, 5.000000e-01 ; 2 uses
  %i.oz = fmul reassoc nnan nsz arcp contract afn float %i.nt, 6.250000e-02 ; 4 uses
  %i.pa = fcmp reassoc nsz arcp contract afn olt float %i.oy, %i.oz
  %spec.select = select nsz i1 %i.pa, float %i.oz, float %i.oy ; 2 uses
  %i.pb = fmul reassoc nnan nsz arcp contract afn float %i.nt, 9.375000e-01 ; 2 uses
  %i.pc = fcmp reassoc nsz arcp contract afn ult float %spec.select, %i.pb
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pb, -1.000000e+00
  %.1243 = select nsz i1 %i.pc, float %spec.select, float %i.pd ; 2 uses
  %i.pe = fsub reassoc nsz arcp contract afn float %.1243, %i.oz
  %i.pf = fadd reassoc nsz arcp contract afn float %.1243, %i.oz
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split297.us
  %.1251 = phi nsz float [ %i.pe, %bb.aq ], [ %.0250, %.split297.us ] ; 2 uses
  %.1247 = phi nsz float [ %i.pf, %bb.aq ], [ %.0246, %.split297.us ]
  %i.pg = fsub reassoc nsz arcp contract afn float %.0244, %.0248 ; 2 uses
  %i.ph = fmul reassoc nnan nsz arcp contract afn float %i.od, 1.250000e-01
  %i.pi = fcmp reassoc nsz arcp contract afn olt float %i.pg, %i.ph
  br i1 %i.pi, label %bb.as, label %.thread358

bb.as:                                            ; preds = %bb.ar
  %i.pj = fadd reassoc nsz arcp contract afn float %.0248, %.0244
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, 5.000000e-01 ; 2 uses
  %i.pl = fmul reassoc nnan nsz arcp contract afn float %i.od, 6.250000e-02 ; 3 uses
  %i.pm = fcmp reassoc nsz arcp contract afn olt float %i.pk, %i.pl
  %spec.select275 = select nsz i1 %i.pm, float %i.pl, float %i.pk ; 2 uses
  %i.pn = fmul reassoc nnan nsz arcp contract afn float %i.od, 9.375000e-01 ; 2 uses
  %i.po = fcmp reassoc nsz arcp contract afn ult float %spec.select275, %i.pn
  %i.pp = fadd reassoc nsz arcp contract afn float %i.pn, -1.000000e+00
  %.1 = select nsz i1 %i.po, float %spec.select275, float %i.pp
  %i.pq = fsub reassoc nsz arcp contract afn float %.1, %i.pl
  %.pre347 = fmul reassoc nnan nsz arcp contract afn float %i.od, 1.250000e-01
  br label %.thread358

.thread358:                                       ; preds = %bb.ar, %bb.as
  %.pre-phi = phi float [ %.pre347, %bb.as ], [ %i.pg, %bb.ar ]
  %.1249 = phi nsz float [ %i.pq, %bb.as ], [ %.0248, %bb.ar ]
  %i.pr = fsub reassoc nsz arcp contract afn float %.1247, %.1251
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.pu = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.pv = load <2 x float>, ptr %i.ps, align 4, !tbaa !13 ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %i.pr, i64 0
  %i.px = insertelement <2 x float> %i.pw, float %.pre-phi, i64 1 ; 2 uses
  %i.py = fmul reassoc nsz arcp contract afn <2 x float> %i.pv, %i.px
  %i.pz = insertelement <2 x float> poison, float %.1251, i64 0
  %i.qa = insertelement <2 x float> %i.pz, float %.1249, i64 1
  %i.qb = fadd reassoc nsz arcp contract afn <2 x float> %i.py, %i.qa ; 2 uses
  %i.qc = load <2 x float>, ptr %i.pt, align 4, !tbaa !13
  %i.qd = fsub reassoc nsz arcp contract afn <2 x float> %i.qc, %i.pv
  %i.qe = fmul reassoc nsz arcp contract afn <2 x float> %i.qd, %i.px
  %i.qf = fneg reassoc nsz arcp contract afn <2 x float> %i.qb
  %i.qg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qf, <2 x float> zeroinitializer) ; 2 uses
  %6 = extractelement <2 x float> %i.qg, i64 0
  store float %6, ptr %i.pu, align 4, !tbaa !73
  %7 = extractelement <2 x float> %i.qg, i64 1
  store float %7, ptr %5, align 4, !tbaa !75
  %i.qh = shufflevector <2 x float> %i.qe, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.qi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qb, <2 x float> zeroinitializer)
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.qh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ql = fptosi <4 x float> %i.qk to <4 x i32>   ; 2 uses
  store <4 x i32> %i.ql, ptr %2, align 4, !tbaa !14
  %i.qm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.np, ptr %i.qm, align 4, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.qo = extractelement <2 x float> %i.hf, i64 1
  store float %i.qo, ptr %i.qn, align 4, !tbaa !68
  %i.qp = extractelement <4 x i32> %i.ql, i64 0
  br label %bb.au

.loopexit:                                        ; preds = %bb.ao, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !93    ; 2 uses
  %i.qq = icmp slt i32 %.pre, 0
  br i1 %i.qq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  store i32 0, ptr %2, align 4, !tbaa !93
  br label %bb.au

bb.au:                                            ; preds = %.thread358, %bb.at, %.loopexit
  %i.qr = phi i32 [ 0, %bb.at ], [ %.pre, %.loopexit ], [ %i.qp, %.thread358 ]
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !94 ; 2 uses
  %i.qu = icmp slt i32 %i.qt, 0
  br i1 %i.qu, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.qs, align 4, !tbaa !94
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qv = phi i32 [ 0, %bb.av ], [ %i.qt, %bb.au ]
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !78
  %i.qy = icmp slt i32 %i.qx, 4
  br i1 %i.qy, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !79
  %i.rb = icmp slt i32 %i.ra, 4
  br i1 %i.rb, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.rc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132
  %i.rd = and i32 %i.rc, 33554432
  %.not272 = icmp eq i32 %i.rd, 0
  br i1 %.not272, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !33
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef %i.rf, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.rg = load <4 x i32>, ptr %4, align 16, !tbaa !14 ; 3 uses
  store <4 x i32> %i.rg, ptr %2, align 4, !tbaa !14
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.rh, align 16, !tbaa !285
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !33
  %i.rk = getelementptr i8, ptr %i.rj, i64 644
  %.val = load i32, ptr %i.rk, align 4, !tbaa !50
  %i.rl = and i32 %.val, 2
  %.not273 = icmp eq i32 %i.rl, 0
  %i.rm = extractelement <4 x i32> %i.rg, i64 0
  %i.rn = extractelement <4 x i32> %i.rg, i64 1
  br i1 %.not273, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ro = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !133
  %i.rr = call ptr %i.rq() #25
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ro, ptr noundef %i.rr) #25
  %.pre345 = load i32, ptr %2, align 4, !tbaa !93
  %.pre346 = load i32, ptr %i.qs, align 4, !tbaa !94
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %bb.ax
  %i.rs = phi i32 [ %i.rn, %bb.ba ], [ %.pre346, %bb.bb ], [ %i.qv, %bb.ax ]
  %i.rt = phi i32 [ %i.rm, %bb.ba ], [ %.pre345, %bb.bb ], [ %i.qr, %bb.ax ]
  %i.ru = sitofp reassoc nsz arcp contract afn i32 %i.rt to float
  %i.rv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float %i.ru, ptr %i.rv, align 4, !tbaa !72
  %i.rw = sitofp reassoc nsz arcp contract afn i32 %i.rs to float
  %i.rx = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store float %i.rw, ptr %i.rx, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 26 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !87
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !85 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.g = load float, ptr %i.f, align 4, !tbaa !73
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.j = load float, ptr %i.i, align 4, !tbaa !75
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = load float, ptr %i.l, align 4, !tbaa !72
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.p = load float, ptr %i.o, align 4, !tbaa !74
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.t = load <4 x i32>, ptr %2, align 4, !tbaa !14
  %i.u = sitofp <4 x i32> %i.t to <4 x float>     ; 4 uses
  %i.v = extractelement <4 x float> %i.u, i64 0
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.h
  %i.x = extractelement <4 x float> %i.u, i64 1
  %i.y = fsub reassoc nsz arcp contract afn float %i.x, %i.k
  %i.z = fadd reassoc nsz arcp contract afn float %i.n, %i.w ; 3 uses
  %i.aa = fadd reassoc nsz arcp contract afn float %i.q, %i.y ; 3 uses
  %i.ab = extractelement <4 x float> %i.u, i64 2
  %i.ac = fadd reassoc nsz arcp contract afn float %i.z, %i.ab ; 2 uses
  %i.ad = extractelement <4 x float> %i.u, i64 3
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71
  %.not116 = icmp eq i32 %i.ag, 0                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %. = select i1 %.not116, ptr %i.ai, ptr %i.ah
  %.151 = select i1 %.not116, ptr %i.ah, ptr %i.ai
  %.pn150 = load float, ptr %.151, align 4, !tbaa !13
  %i.aj = load <2 x i32>, ptr %i.e, align 16, !tbaa !14
  %i.ak = sitofp <2 x i32> %i.aj to <2 x float>
  %i.al = insertelement <2 x float> poison, float %i.d, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.am, %i.ak ; 5 uses
  %.pn149 = fmul reassoc nsz arcp contract afn float %.pn150, %i.d ; 2 uses
  %.pn148 = load float, ptr %., align 4, !tbaa !13
  %.pn = fmul reassoc nsz arcp contract afn float %.pn148, %i.d ; 2 uses
  %i.ao = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.ap = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.au = load float, ptr %i.at, align 4, !tbaa !70 ; 2 uses
  %i.av = load float, ptr %i.aq, align 4, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = load float, ptr %i.ah, align 4, !tbaa !67 ; 2 uses
  %i.bd = load float, ptr %i.ai, align 4, !tbaa !68 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !66
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = fdiv reassoc nsz arcp contract afn <2 x float> %i.am, %i.an ; 4 uses
  br i1 %i.bg, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.bi = getelementptr i8, ptr %i.b, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bs = load float, ptr %i.bq, align 4, !tbaa !286 ; 2 uses
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !287 ; 2 uses
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !288 ; 2 uses
end_hunk_1
