Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_mask:bb.a
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 37 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
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

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract490 = extractelement <4 x float> %i.ee, i64 2
  %.sroa.0.0.vec.extract466 = extractelement <4 x float> %i.ee, i64 0
  %.sroa.speculated449 = select i1 %i.dd, float %.sroa.0.8.vec.extract490, float %.sroa.0.0.vec.extract466
  %i.ej = fdiv reassoc nsz arcp contract afn float %.sroa.speculated449, %i.dr
  %i.ek = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.ej)
  br label %bb.m

end_hunk_0
