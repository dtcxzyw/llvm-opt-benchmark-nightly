Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacps_float?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hybrid_synthesis:bb.a
  %i.lj = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %indvars.iv151 ; 3 uses
  store float %i.li, ptr %i.lj, align 4, !tbaa !12
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv151 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !12
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv151 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !12
  %i.lo = fadd nsz float %i.ll, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store float %i.lo, ptr %i.lp, align 4, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !12
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !12
  %i.lu = fadd nsz float %i.lr, %i.lt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store float %i.lu, ptr %i.lv, align 4, !tbaa !12
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv151 ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !12
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv151 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !12
  %i.ma = fadd nsz float %i.lx, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store float %i.ma, ptr %i.mb, align 4, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !12
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !12
  %i.mg = fadd nsz float %i.md, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store float %i.mg, ptr %i.mh, align 4, !tbaa !12
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, 32
  br i1 %exitcond154.not, label %middle.block, label %scalar.ph, !llvm.loop !61

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !64
  tail call void %i.mj(ptr noundef nonnull %1, ptr noundef nonnull %i.ac, i32 noundef 3, i32 noundef 32) #11
  br label %bb.c

bb.c:                                             ; preds = %middle.block, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_ps_init() local_unnamed_addr #3 {
bb.a:
  tail call fastcc void @ps_tableinit() #12
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ps_tableinit() unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv190 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next191, %bb.f ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv190
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv190
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = shl nuw nsw i64 %indvars.iv190, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv186 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next187, %bb.e ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv186
  %i.g = load float, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv186
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = fmul nsz float %i.g, 5.000000e-01
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.b, float 2.500000e-01, float %i.j)
  %i.l = fmul nsz float %i.i, 5.000000e-01
  %i.m = tail call nsz float @llvm.fmuladd.f32(float %i.d, float 2.500000e-01, float %i.l)
  %i.n = shl nuw nsw i64 %indvars.iv186, 3
  %i.o = add nuw nsw i64 %i.n, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fadd nsz float %i.k, %i.q                ; 2 uses
  %i.u = fadd nsz float %i.m, %i.s                ; 2 uses
  %i.v = fpext nsz float %i.u to double
  %i.w = fpext nsz float %i.t to double
  %i.x = tail call nsz double @hypot(double noundef %i.v, double noundef %i.w) #13
  %i.y = fdiv nsz double 1.000000e+00, %i.x
  %i.z = fptrunc nsz double %i.y to float         ; 2 uses
  %i.aa = fmul nsz float %i.t, %i.z
  %i.ab = add nuw nsw i64 %indvars.iv, %i.o       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @pd_re_smooth, i64 %i.ab
  store float %i.aa, ptr %i.ac, align 4, !tbaa !12
  %i.ad = fmul nsz float %i.u, %i.z
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @pd_im_smooth, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !65

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next187, 8
  br i1 %exitcond189.not, label %bb.f, label %bb.c, !llvm.loop !66

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next191, 8
  br i1 %exitcond193.not, label %.preheader175, label %bb.b, !llvm.loop !67

.preheader175:                                    ; preds = %bb.f, %middle.block
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %middle.block ], [ 0, %bb.f ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.iid_par_dequant, i64 %indvars.iv198
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12 ; 8 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr @HA, i64 %indvars.iv198
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float -1.000000e+00)
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr @HB, i64 %indvars.iv198
  %i.ak = fdiv nsz float 1.000000e+00, %i.ag
  %i.al = fadd nsz float %i.ag, %i.ak             ; 2 uses
  %i.am = fmul nsz float %i.al, %i.al
  %i.an = fmul nsz float %i.ag, 2.000000e+00
  %i.ao = tail call nsz float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float 1.000000e+00)
  %i.ap = tail call nsz float @llvm.sqrt.f32(float %i.ao)
  %i.aq = fdiv nsz float f0x3FB504F3, %i.ap       ; 3 uses
  %i.ar = fmul nsz float %i.ag, %i.aq             ; 2 uses
  %i.as = fsub nsz float %i.aq, %i.ar
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert218 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat219 = shufflevector <4 x float> %broadcast.splatinsert218, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert220 = insertelement <4 x float> poison, float %i.as, i64 0
  %broadcast.splat221 = shufflevector <4 x float> %broadcast.splatinsert220, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat223 = shufflevector <4 x float> %broadcast.splatinsert222, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.am, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer
  %i.at = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader175
  %index = phi i64 [ 0, %.preheader175 ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader175 ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.acos_icc_invq, i64 %index
  %wide.load = load <4 x float>, ptr %i.av, align 16, !tbaa !12
  %i.aw = fmul nsz <4 x float> %wide.load, splat (float 5.000000e-01) ; 3 uses
  %i.ax = fmul nsz <4 x float> %broadcast.splat221, %i.aw
  %i.ay = fmul nsz <4 x float> %i.ax, splat (float f0x3F3504F3) ; 2 uses
  %i.az = fadd nsz <4 x float> %i.aw, %i.ay
  %i.ba = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.az) ; 2 uses
  %i.bb = extractvalue { <4 x float>, <4 x float> } %i.ba, 0
  %i.bc = extractvalue { <4 x float>, <4 x float> } %i.ba, 1
  %i.bd = fmul nsz <4 x float> %broadcast.splat219, %i.bc
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index
  %i.bf = fsub nsz <4 x float> %i.ay, %i.aw
  %i.bg = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.bf) ; 2 uses
  %i.bh = extractvalue { <4 x float>, <4 x float> } %i.bg, 0
  %i.bi = extractvalue { <4 x float>, <4 x float> } %i.bg, 1
  %i.bj = fmul nsz <4 x float> %broadcast.splat, %i.bi
  %i.bk = fmul nsz <4 x float> %broadcast.splat219, %i.bb
  %i.bl = fmul nsz <4 x float> %broadcast.splat, %i.bh
  %i.bm = shufflevector <4 x float> %i.bd, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bm, <8 x float> %i.bn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.be, align 16, !tbaa !12
  %i.bo = icmp samesign ult <4 x i64> %vec.ind, splat (i64 5)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.icc_invq, i64 %index
  %wide.load226 = load <4 x float>, ptr %i.bp, align 16, !tbaa !12
  %predphi = select nsz <4 x i1> %i.bo, <4 x float> %wide.load226, <4 x float> splat (float 5.000000e-02) ; 3 uses
  %i.bq = fmul nsz <4 x float> %broadcast.splat223, %predphi
  %i.br = tail call nsz <4 x float> @llvm.atan2.v4f32(<4 x float> %i.bq, <4 x float> %i.au)
  %i.bs = fmul nsz <4 x float> %i.br, splat (float 5.000000e-01) ; 3 uses
  %i.bt = fmul nsz <4 x float> %predphi, splat (float 4.000000e+00)
  %i.bu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %predphi, <4 x float> splat (float -4.000000e+00))
  %i.bv = fdiv nsz <4 x float> %i.bu, %broadcast.splat225
  %i.bw = fadd nsz <4 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bw) ; 2 uses
  %i.by = fsub nsz <4 x float> splat (float 1.000000e+00), %i.bx
  %i.bz = fadd nsz <4 x float> %i.bx, splat (float 1.000000e+00)
  %i.ca = fdiv nsz <4 x float> %i.by, %i.bz
  %i.cb = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ca) ; 4 uses
  %i.cc = extractelement <4 x float> %i.cb, i64 0
  %i.cd = tail call nsz float @llvm.atan.f32(float %i.cc)
  %i.ce = extractelement <4 x float> %i.cb, i64 1
  %i.cf = tail call nsz float @llvm.atan.f32(float %i.ce)
  %i.cg = extractelement <4 x float> %i.cb, i64 2
  %i.ch = tail call nsz float @llvm.atan.f32(float %i.cg)
  %i.ci = extractelement <4 x float> %i.cb, i64 3
  %i.cj = tail call nsz float @llvm.atan.f32(float %i.ci)
  %i.ck = tail call nsz { float, float } @llvm.sincos.f32(float %i.cd) ; 2 uses
  %i.cl = tail call nsz { float, float } @llvm.sincos.f32(float %i.cf) ; 2 uses
  %i.cm = tail call nsz { float, float } @llvm.sincos.f32(float %i.ch) ; 2 uses
  %i.cn = tail call nsz { float, float } @llvm.sincos.f32(float %i.cj) ; 2 uses
  %i.co = extractvalue { float, float } %i.ck, 0
  %0 = insertelement <4 x float> poison, float %i.co, i64 0
  %1 = extractvalue { float, float } %i.ck, 1
  %2 = insertelement <4 x float> poison, float %1, i64 0
  %3 = extractvalue { float, float } %i.cl, 0
  %i.cp = insertelement <4 x float> %0, float %3, i64 1
  %4 = extractvalue { float, float } %i.cl, 1
  %i.cq = insertelement <4 x float> %2, float %4, i64 1
  %5 = extractvalue { float, float } %i.cm, 0
  %6 = insertelement <4 x float> %i.cp, float %5, i64 2
  %i.cr = extractvalue { float, float } %i.cm, 1
  %7 = insertelement <4 x float> %i.cq, float %i.cr, i64 2
  %8 = extractvalue { float, float } %i.cn, 0
  %i.cs = insertelement <4 x float> %6, float %8, i64 3
  %9 = extractvalue { float, float } %i.cn, 1
  %i.ct = insertelement <4 x float> %7, float %9, i64 3
  %i.cu = fcmp nsz olt <4 x float> %i.bs, zeroinitializer
  %i.cv = fpext nsz <4 x float> %i.bs to <4 x double>
  %i.cw = fadd nsz <4 x double> %i.cv, splat (double f0x3FF921FB54442D18)
  %i.cx = fptrunc nsz <4 x double> %i.cw to <4 x float>
  %i.cy = select nsz <4 x i1> %i.cu, <4 x float> %i.cx, <4 x float> %i.bs
  %i.cz = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.cy) ; 2 uses
  %i.da = extractvalue { <4 x float>, <4 x float> } %i.cz, 0
  %i.db = extractvalue { <4 x float>, <4 x float> } %i.cz, 1
  %i.dc = fpext nsz <4 x float> %i.db to <4 x double>
  %i.dd = fmul nsz <4 x double> %i.dc, splat (double f0x3FF6A09E667F3BCD) ; 2 uses
  %i.de = fpext nsz <4 x float> %i.ct to <4 x double>
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %index
  %i.dg = fpext nsz <4 x float> %i.da to <4 x double> ; 2 uses
  %i.dh = fmul nsz <4 x double> %i.dg, splat (double f0x3FF6A09E667F3BCD)
  %i.di = fmul nsz <4 x double> %i.dg, splat (double f0xBFF6A09E667F3BCD)
  %i.dj = fpext nsz <4 x float> %i.cs to <4 x double>
  %i.dk = shufflevector <4 x double> %i.dd, <4 x double> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x double> %i.de, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dm = fmul nsz <8 x double> %i.dk, %i.dl
  %i.dn = shufflevector <4 x double> %i.di, <4 x double> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.do = shufflevector <4 x double> %i.dj, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dp = fmul nsz <8 x double> %i.dn, %i.do
  %i.dq = shufflevector <8 x double> %i.dm, <8 x double> %i.dp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec227 = fptrunc nsz <16 x double> %i.dq to <16 x float>
  store <16 x float> %interleaved.vec227, ptr %i.df, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.dr = icmp eq i64 %index.next, 8
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next199, 46
  br i1 %exitcond201.not, label %.preheader174, label %.preheader175, !llvm.loop !69

.preheader174:                                    ; preds = %middle.block, %bb.k
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %bb.k ], [ 0, %middle.block ] ; 6 uses
  %i.ds = icmp samesign ult i64 %indvars.iv206, 10
  br i1 %i.ds, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader174
  %i.dt = getelementptr inbounds nuw i8, ptr @ps_tableinit.f_center_20, i64 %indvars.iv206
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17
  %i.dv = sitofp i8 %i.du to double
  %i.dw = fmul nnan nsz double %i.dv, 1.250000e-01
  br label %bb.i

bb.h:                                             ; preds = %.preheader174
  %i.dx = trunc nuw nsw i64 %indvars.iv206 to i32
  %i.dy = uitofp nsz nneg i32 %i.dx to float
  %i.dz = fadd nsz float %i.dy, -6.500000e+00
  %i.ea = fpext nsz float %i.dz to double
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0138 = phi nsz double [ %i.dw, %bb.g ], [ %i.ea, %bb.h ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr @Q_fract_allpass, i64 %indvars.iv206
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %indvars.iv202 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next203, %bb.j ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.fractional_delay_links, i64 %indvars.iv202
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !12
  %i.ee = fpext nsz float %i.ed to double
  %i.ef = fmul nsz double %i.ee, f0xC00921FB54442D18
  %i.eg = fmul nsz double %.0138, %i.ef
  %sincos159 = tail call nsz { double, double } @llvm.sincos.f64(double %i.eg) ; 2 uses
  %sin160 = extractvalue { double, double } %sincos159, 0
  %cos161 = extractvalue { double, double } %sincos159, 1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv202
  %i.ei = insertelement <2 x double> poison, double %cos161, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %sin160, i64 1
  %i.ek = fptrunc <2 x double> %i.ej to <2 x float>
  store <2 x float> %i.ek, ptr %i.eh, align 8, !tbaa !12
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, 3
  br i1 %exitcond205.not, label %bb.k, label %bb.j, !llvm.loop !70

bb.k:                                             ; preds = %bb.j
  %i.el = fmul nsz double %.0138, f0xBFF39A816DFBE7FA
  %sincos156 = tail call nsz { double, double } @llvm.sincos.f64(double %i.el) ; 2 uses
  %sin157 = extractvalue { double, double } %sincos156, 0
  %cos158 = extractvalue { double, double } %sincos156, 1
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @phi_fract, i64 %indvars.iv206
  %i.en = insertelement <2 x double> poison, double %cos158, i64 0
  %i.eo = insertelement <2 x double> %i.en, double %sin157, i64 1
  %i.ep = fptrunc <2 x double> %i.eo to <2 x float>
  store <2 x float> %i.ep, ptr %i.em, align 8, !tbaa !12
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, 30
  br i1 %exitcond209.not, label %.preheader, label %.preheader174, !llvm.loop !71

.preheader:                                       ; preds = %bb.k, %bb.p
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.p ], [ 0, %bb.k ] ; 6 uses
  %i.eq = icmp samesign ult i64 %indvars.iv214, 32
  br i1 %i.eq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.er = getelementptr inbounds nuw i8, ptr @ps_tableinit.f_center_34, i64 %indvars.iv214
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = sitofp i8 %i.es to double
  %i.eu = fdiv nsz double %i.et, 2.400000e+01
  br label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.ev = trunc nuw nsw i64 %indvars.iv214 to i32
  %i.ew = uitofp nsz nneg i32 %i.ev to float
  %i.ex = fadd nsz float %i.ew, -2.650000e+01
  %i.ey = fpext nsz float %i.ex to double
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi nsz double [ %i.eu, %bb.l ], [ %i.ey, %bb.m ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @Q_fract_allpass, i64 1200), i64 %indvars.iv214
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.o
  %indvars.iv210 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next211, %bb.o ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.fractional_delay_links, i64 %indvars.iv210
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = fpext nsz float %i.fb to double
  %i.fd = fmul nsz double %i.fc, f0xC00921FB54442D18
  %i.fe = fmul nsz double %.0, %i.fd
  %sincos153 = tail call nsz { double, double } @llvm.sincos.f64(double %i.fe) ; 2 uses
  %sin154 = extractvalue { double, double } %sincos153, 0
  %cos155 = extractvalue { double, double } %sincos153, 1
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv210
  %i.fg = insertelement <2 x double> poison, double %cos155, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %sin154, i64 1
  %i.fi = fptrunc <2 x double> %i.fh to <2 x float>
  store <2 x float> %i.fi, ptr %i.ff, align 8, !tbaa !12
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next211, 3
  br i1 %exitcond213.not, label %bb.p, label %bb.o, !llvm.loop !72

bb.p:                                             ; preds = %bb.o
  %i.fj = fmul nsz double %.0, f0xBFF39A816DFBE7FA
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.fj) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @phi_fract, i64 400), i64 %indvars.iv214
  %i.fl = insertelement <2 x double> poison, double %cos, i64 0
  %i.fm = insertelement <2 x double> %i.fl, double %sin, i64 1
  %i.fn = fptrunc <2 x double> %i.fm to <2 x float>
  store <2 x float> %i.fn, ptr %i.fk, align 8, !tbaa !12
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, 50
  br i1 %exitcond217.not, label %bb.q, label %.preheader, !llvm.loop !73

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f20_0_8, ptr noundef nonnull @g0_Q8, i32 noundef 8) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_0_12, ptr noundef nonnull @g0_Q12, i32 noundef 12) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_1_8, ptr noundef nonnull @g1_Q8, i32 noundef 8) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_2_4, ptr noundef nonnull @g2_Q4, i32 noundef 4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hybrid4_8_12_cx(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 4, 13) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void %i.b(ptr noundef %2, ptr noundef %1, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void %i.d(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void %i.j(ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void %i.p(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void %i.s(ptr noundef nonnull %i.t, ptr noundef nonnull %i.r, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void %i.v(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void %i.y(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void %i.ab(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aa, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call void %i.ae(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ad, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void %i.ah(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ag, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void %i.ak(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void %i.an(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.am, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
end_hunk_0
