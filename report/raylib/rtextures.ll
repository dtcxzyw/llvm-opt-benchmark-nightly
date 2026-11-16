Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@stbi_write_jpg_core:bb.a
.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.02.i = phi i32 [ %i.bqf, %bb.m ], [ %i.bpz, %.lr.ph.i.preheader ] ; 2 uses
  %.0181.i = phi i32 [ %i.bqe, %bb.m ], [ %i.bpy, %.lr.ph.i.preheader ] ; 3 uses
  %i.bqa = lshr i32 %.0181.i, 16
  %i.bqb = trunc i32 %i.bqa to i8
  %.val20.i = load ptr, ptr %0, align 8
  %.val21.i = load ptr, ptr %i.qi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.bqb, ptr %i.d, align 1
  call void %.val20.i(ptr noundef %.val21.i, ptr noundef nonnull %i.d, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bqc = and i32 %.0181.i, 16711680
  %i.bqd = icmp eq i32 %i.bqc, 16711680
  br i1 %i.bqd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %.val.i = load ptr, ptr %0, align 8
  %.val19.i = load ptr, ptr %i.qi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.c, align 1
  call void %.val.i(ptr noundef %.val19.i, ptr noundef nonnull %i.c, i32 noundef 1) #52, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bqe = shl i32 %.0181.i, 8
  %i.bqf = add nsw i32 %.02.i, -8
  %i.bqg = icmp sgt i32 %.02.i, 15
  br i1 %i.bqg, label %.lr.ph.i, label %stbiw__jpg_writeBits.exit

stbiw__jpg_writeBits.exit:                        ; preds = %bb.m, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #52
  %.val267 = load ptr, ptr %0, align 8
  %.val268 = load ptr, ptr %i.qi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 -1, ptr %i.b, align 1
  call void %.val267(ptr noundef %.val268, ptr noundef nonnull %i.b, i32 noundef 1) #52, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8
  %.val266 = load ptr, ptr %i.qi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 -39, ptr %i.a, align 1
  call void %.val(ptr noundef %.val266, ptr noundef nonnull %i.a, i32 noundef 1) #52, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %stbiw__jpg_writeBits.exit
  %.0 = phi i32 [ 1, %stbiw__jpg_writeBits.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #52
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @stbi_write_jpg(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #52
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.5) ; 3 uses
  store ptr @stbi__stdio_write, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @stbi_write_jpg_core(ptr noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #52
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #7 {
bb.a:
  %i.a = add i32 %3, 255
  %i.b = and i32 %i.a, 255                        ; 2 uses
  %i.c = add i32 %4, 255
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %i.e = add i32 %5, 255
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = fptosi float %0 to i32                   ; 2 uses
  %i.h = insertelement <2 x float> poison, float %2, i64 0
  %i.i = insertelement <2 x float> %i.h, float %1, i64 1 ; 3 uses
  %i.j = fptosi <2 x float> %i.i to <2 x i32>     ; 2 uses
  %i.k = zext i8 %6 to i32                        ; 2 uses
  %i.l = sitofp i32 %i.g to float
  %i.m = fcmp olt float %0, %i.l
  %i.n = sext i1 %i.m to i32
  %i.o = add nsw i32 %i.n, %i.g                   ; 3 uses
  %i.p = sitofp <2 x i32> %i.j to <2 x float>
  %i.q = fcmp olt <2 x float> %i.i, %i.p
  %i.r = sext <2 x i1> %i.q to <2 x i32>
  %i.s = add nsw <2 x i32> %i.r, %i.j             ; 3 uses
  %i.t = and i32 %i.o, %i.b
  %i.u = add nsw i32 %i.o, 1
  %i.v = and i32 %i.u, %i.b
  %i.w = extractelement <2 x i32> %i.s, i64 1     ; 2 uses
  %i.x = and i32 %i.w, %i.d                       ; 2 uses
  %i.y = add nsw i32 %i.w, 1
  %i.z = and i32 %i.y, %i.d                       ; 2 uses
  %i.aa = extractelement <2 x i32> %i.s, i64 0    ; 2 uses
  %i.ab = and i32 %i.aa, %i.f                     ; 4 uses
  %i.ac = add nsw i32 %i.aa, 1
  %i.ad = and i32 %i.ac, %i.f                     ; 4 uses
  %i.ae = sitofp i32 %i.o to float
  %i.af = fsub float %0, %i.ae                    ; 6 uses
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 6.000000e+00, float -1.500000e+01)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.af, float 1.000000e+01)
  %i.ai = fmul float %i.af, %i.ah
  %i.aj = fmul float %i.af, %i.ai
  %i.ak = fmul float %i.af, %i.aj
  %i.al = sitofp <2 x i32> %i.s to <2 x float>
  %i.am = fsub <2 x float> %i.i, %i.al            ; 8 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.am, <2 x float> splat (float 1.000000e+01))
  %i.ap = fmul <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %i.am, %i.ap
  %i.ar = fmul <2 x float> %i.am, %i.aq           ; 2 uses
  %i.as = add nuw nsw i32 %i.t, %i.k
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = add nuw nsw i32 %i.v, %i.k
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = add nuw nsw i32 %i.x, %i.aw
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = add nuw nsw i32 %i.z, %i.aw
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.x, %i.bb
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = add nuw nsw i32 %i.z, %i.bb
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = add nuw nsw i32 %i.ab, %i.bg
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ca ; 2 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 16   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load float, ptr %i.cd, align 8
  %i.cf = add nuw nsw i32 %i.ad, %i.bg
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.cj ; 2 uses
  %i.cl = load <2 x float>, ptr %i.ck, align 16   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cn = load float, ptr %i.cm, align 8
  %i.co = add nuw nsw i32 %i.ab, %i.bl
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = fadd <2 x float> %i.am, splat (float -1.000000e+00) ; 2 uses
  %i.ct = zext i8 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ct ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 16   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load float, ptr %i.cw, align 8
  %i.cy = add nuw nsw i32 %i.ad, %i.bl
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dc ; 2 uses
  %i.de = load <2 x float>, ptr %i.dd, align 16   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load float, ptr %i.df, align 8
  %i.dh = add nuw nsw i32 %i.ab, %i.bq
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = insertelement <2 x float> poison, float %i.af, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fadd <2 x float> %i.dm, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.do = zext i8 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.do ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 16   ; 2 uses
  %i.dr = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ds = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dn, <2 x float> %i.dt)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = load float, ptr %i.dw, align 8
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.ce, i64 1
  %i.ea = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.ea, <2 x float> %i.dv) ; 2 uses
  %i.ec = add nuw nsw i32 %i.ad, %i.bq
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.eg ; 2 uses
  %i.ei = load <2 x float>, ptr %i.eh, align 16   ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3>
  %i.ek = fmul <2 x float> %i.dr, %i.ej
  %i.el = shufflevector <2 x float> %i.ei, <2 x float> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.dn, <2 x float> %i.ek)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 8
  %i.ep = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cn, i64 1
  %i.er = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.em)
  %i.et = add nuw nsw i32 %i.ab, %i.bv
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ex ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ey, align 16   ; 2 uses
  %i.fa = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 1, i32 3>
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.ez, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.dn, <2 x float> %i.fc)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fg = load float, ptr %i.ff, align 8
  %i.fh = insertelement <2 x float> poison, float %i.fg, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.cx, i64 1
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.ea, <2 x float> %i.fe) ; 2 uses
  %i.fk = add nuw nsw i32 %i.ad, %i.bv
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fo ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fp, align 16   ; 2 uses
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 1, i32 3>
  %i.fs = fmul <2 x float> %i.fa, %i.fr
  %i.ft = shufflevector <2 x float> %i.fq, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.dn, <2 x float> %i.fs)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fw = load float, ptr %i.fv, align 8
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.dg, i64 1
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.er, <2 x float> %i.fu)
  %i.ga = fsub <2 x float> %i.es, %i.eb
  %i.gb = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.eb) ; 2 uses
  %i.gd = fsub <2 x float> %i.fz, %i.fj
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gb, <2 x float> %i.fj)
  %i.gf = fsub <2 x float> %i.ge, %i.gc
  %i.gg = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.gg, <2 x float> %i.gc) ; 2 uses
  %i.gi = extractelement <2 x float> %i.gh, i64 0
  %i.gj = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fsub float %i.gi, %i.gj
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.gk, float %i.ak, float %i.gj)
  ret float %i.gl
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @stb_perlin_noise3(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext 0)
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @stb_perlin_noise3_seed(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = trunc i32 %6 to i8
  %i.b = tail call float @stb_perlin_noise3_internal(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %i.a)
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden float @stb_perlin_ridge_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i32 [ %i.n, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02330 = phi float [ %i.k, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.02429 = phi float [ %i.m, %.lr.ph ], [ 5.000000e-01, %bb.a ] ; 2 uses
  %.02528 = phi float [ %i.i, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.02627 = phi float [ %i.l, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 4 uses
  %i.b = fmul float %0, %.02627
  %i.c = fmul float %1, %.02627
  %i.d = fmul float %2, %.02627
  %i.e = trunc i32 %.031 to i8
  %i.f = tail call float @stb_perlin_noise3_internal(float noundef %i.b, float noundef %i.c, float noundef %i.d, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.e)
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fsub float %5, %i.g                      ; 2 uses
  %i.i = fmul float %i.h, %i.h                    ; 2 uses
  %i.j = fmul float %.02429, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float %.02528, float %.02330) ; 2 uses
  %i.l = fmul float %3, %.02627
  %i.m = fmul float %4, %.02429
  %i.n = add nuw nsw i32 %.031, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.023.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.k, %.lr.ph ]
  ret float %.023.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden float @stb_perlin_fbm_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022 = phi float [ %i.l, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.01819 = phi i32 [ %i.n, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.d = phi <2 x float> [ %i.m, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.01819 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %.022) ; 2 uses
  %i.m = fmul <2 x float> %i.c, %i.d
  %i.n = add nuw nsw i32 %.01819, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.n, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %.lr.ph ]
  ret float %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define hidden float @stb_perlin_turbulence_noise3(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %3, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.023 = phi i32 [ %i.p, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01722 = phi float [ %i.n, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %i.d = phi <2 x float> [ %i.o, %.lr.ph ], [ splat (float 1.000000e+00), %.lr.ph.preheader ] ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 1   ; 3 uses
  %i.f = fmul float %0, %i.e
  %i.g = fmul float %1, %i.e
  %i.h = fmul float %2, %i.e
  %i.i = trunc i32 %.023 to i8
  %i.j = tail call float @stb_perlin_noise3_internal(float noundef %i.f, float noundef %i.g, float noundef %i.h, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext %i.i)
  %i.k = extractelement <2 x float> %i.d, i64 0
  %i.l = fmul float %i.k, %i.j
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = fadd float %.01722, %i.m                 ; 2 uses
  %i.o = fmul <2 x float> %i.c, %i.d
  %i.p = add nuw nsw i32 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %.lr.ph ]
  ret float %.017.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @stb_perlin_noise3_wrap_nonpow2(float noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #7 {
bb.a:
  %i.a = fptosi float %0 to i32                   ; 2 uses
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = insertelement <2 x float> %i.b, float %1, i64 1 ; 3 uses
  %i.d = fptosi <2 x float> %i.c to <2 x i32>     ; 2 uses
  %.not = icmp eq i32 %3, 0
  %i.e = select i1 %.not, i32 256, i32 %3         ; 3 uses
  %i.f = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.g = insertelement <2 x i32> %i.f, i32 %4, i64 1 ; 2 uses
  %i.h = icmp eq <2 x i32> %i.g, zeroinitializer
  %i.i = zext i8 %6 to i32                        ; 2 uses
  %i.j = sitofp i32 %i.a to float
  %i.k = fcmp olt float %0, %i.j
  %i.l = sext i1 %i.k to i32
  %i.m = add nsw i32 %i.l, %i.a                   ; 2 uses
  %i.n = sitofp <2 x i32> %i.d to <2 x float>
  %i.o = fcmp olt <2 x float> %i.c, %i.n
  %i.p = sext <2 x i1> %i.o to <2 x i32>
  %i.q = add nsw <2 x i32> %i.p, %i.d             ; 2 uses
  %i.r = srem i32 %i.m, %i.e                      ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  %i.t = select i1 %i.s, i32 %i.e, i32 0
  %spec.select = add nsw i32 %i.t, %i.r           ; 2 uses
  %i.u = add nsw i32 %spec.select, 1
  %i.v = srem i32 %i.u, %i.e
  %i.w = select <2 x i1> %i.h, <2 x i32> splat (i32 256), <2 x i32> %i.g ; 3 uses
  %i.x = srem <2 x i32> %i.q, %i.w                ; 2 uses
  %i.y = icmp slt <2 x i32> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x i32> %i.w, <2 x i32> zeroinitializer
  %i.aa = add nsw <2 x i32> %i.z, %i.x            ; 3 uses
  %i.ab = add nsw <2 x i32> %i.aa, splat (i32 1)
  %i.ac = srem <2 x i32> %i.ab, %i.w              ; 2 uses
  %i.ad = sitofp i32 %i.m to float
  %i.ae = fsub float %0, %i.ad                    ; 6 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float 6.000000e+00, float -1.500000e+01)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ae, float 1.000000e+01)
  %i.ah = fmul float %i.ae, %i.ag
  %i.ai = fmul float %i.ae, %i.ah
  %i.aj = fmul float %i.ae, %i.ai
  %i.ak = sitofp <2 x i32> %i.q to <2 x float>
  %i.al = fsub <2 x float> %i.c, %i.ak            ; 8 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.al, <2 x float> splat (float 1.000000e+01))
  %i.ao = fmul <2 x float> %i.al, %i.an
  %i.ap = fmul <2 x float> %i.al, %i.ao
  %i.aq = fmul <2 x float> %i.al, %i.ap           ; 2 uses
  %i.ar = sext i32 %spec.select to i64
  %i.as = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.au, %i.i
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = sext i32 %i.v to i64
  %i.bb = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = extractelement <2 x i32> %i.aa, i64 1   ; 2 uses
  %i.bk = add nsw i32 %i.bj, %i.az
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = extractelement <2 x i32> %i.ac, i64 1   ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.az
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add nsw i32 %i.bj, %i.bi
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = add nsw i32 %i.bp, %i.bi
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr @stb__perlin_randtab, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = extractelement <2 x i32> %i.aa, i64 0   ; 4 uses
  %i.cg = add nsw i32 %i.cf, %i.bo
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ck ; 2 uses
  %i.cm = load <2 x float>, ptr %i.cl, align 16   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load float, ptr %i.cn, align 8
  %i.cp = extractelement <2 x i32> %i.ac, i64 0   ; 4 uses
  %i.cq = add nsw i32 %i.cp, %i.bo
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.cu ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cv, align 16   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load float, ptr %i.cx, align 8
  %i.cz = add nsw i32 %i.cf, %i.bu
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = fadd <2 x float> %i.al, splat (float -1.000000e+00) ; 2 uses
  %i.de = zext i8 %i.dc to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.de ; 2 uses
  %i.dg = load <2 x float>, ptr %i.df, align 16   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.di = load float, ptr %i.dh, align 8
  %i.dj = add nsw i32 %i.cp, %i.bu
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dn ; 2 uses
  %i.dp = load <2 x float>, ptr %i.do, align 16   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load float, ptr %i.dq, align 8
  %i.ds = add nsw i32 %i.cf, %i.bz
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fadd <2 x float> %i.dx, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.dz = zext i8 %i.dv to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dz ; 2 uses
  %i.eb = load <2 x float>, ptr %i.ea, align 16   ; 2 uses
  %i.ec = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ed = shufflevector <2 x float> %i.eb, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dy, <2 x float> %i.ee)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ei = load float, ptr %i.eh, align 8
  %i.ej = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.co, i64 1
  %i.el = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.eg) ; 2 uses
  %i.en = add nsw i32 %i.cp, %i.bz
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.er ; 2 uses
  %i.et = load <2 x float>, ptr %i.es, align 16   ; 2 uses
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x float> %i.ec, %i.eu
  %i.ew = shufflevector <2 x float> %i.et, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.dy, <2 x float> %i.ev)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ez = load float, ptr %i.ey, align 8
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.cy, i64 1
  %i.fc = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fc, <2 x float> %i.ex)
  %i.fe = add nsw i32 %i.cf, %i.ce
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fi ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fj, align 16   ; 2 uses
  %i.fl = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fm = shufflevector <2 x float> %i.fk, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3>
  %i.fn = fmul <2 x float> %i.fl, %i.fm
  %i.fo = shufflevector <2 x float> %i.fk, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2>
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.dy, <2 x float> %i.fn)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fr = load float, ptr %i.fq, align 8
  %i.fs = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.di, i64 1
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.el, <2 x float> %i.fp) ; 2 uses
  %i.fv = add nsw i32 %i.cp, %i.ce
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fz ; 2 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 16   ; 2 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x float> %i.fl, %i.gc
  %i.ge = shufflevector <2 x float> %i.gb, <2 x float> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.gf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.dy, <2 x float> %i.gd)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gh = load float, ptr %i.gg, align 8
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.dr, i64 1
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.fc, <2 x float> %i.gf)
  %i.gl = fsub <2 x float> %i.fd, %i.em
  %i.gm = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> %i.gm, <2 x float> %i.em) ; 2 uses
  %i.go = fsub <2 x float> %i.gk, %i.fu
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gm, <2 x float> %i.fu)
  %i.gq = fsub <2 x float> %i.gp, %i.gn
  %i.gr = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gq, <2 x float> %i.gr, <2 x float> %i.gn) ; 2 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %i.gu = extractelement <2 x float> %i.gs, i64 1 ; 2 uses
  %i.gv = fsub float %i.gt, %i.gu
  %i.gw = tail call noundef float @llvm.fmuladd.f32(float %i.gv, float %i.aj, float %i.gu)
  ret float %i.gw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @stbir_resize_init(ptr noundef initializes((8, 24), (56, 80), (96, 112), (116, 120)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %7, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %8, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.k, align 8
  store ptr %0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i8 0, i64 56, i1 false)
  store <2 x double> splat (double 1.000000e+00), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %6, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %7, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %10, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %10, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %9, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %9, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.x, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @stbir_set_datatypes(ptr nofree noundef captures(none) initializes((136, 144)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i32, ptr %i.e, align 8
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @stbir__update_info_from_resize(ptr noundef %i.d, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @stbir__update_info_from_resize(ptr nofree noundef nonnull captures(none) initializes((304, 328), (336, 368), (424, 432), (456, 464)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  store i32 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %i.r, 6
  %i.t = add i32 %i.b, -1
  %or.cond = icmp ult i32 %i.t, 2
  %or.cond111 = select i1 %i.s, i1 %or.cond, i1 false
  %i.u = add i32 %i.d, -1
  %or.cond3 = icmp ult i32 %i.u, 2
  %or.cond112 = select i1 %or.cond111, i1 %or.cond3, i1 false ; 2 uses
  %spec.select = select i1 %or.cond112, i32 0, i32 %i.b
  %spec.select115 = select i1 %or.cond112, i32 0, i32 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.097 = phi i32 [ %i.b, %bb.a ], [ %spec.select, %bb.b ] ; 8 uses
  %.096 = phi i32 [ %i.d, %bb.a ], [ %spec.select115, %bb.b ] ; 10 uses
  %i.v = icmp eq i32 %i.i, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = zext i32 %.097 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nsw i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = icmp eq i32 %i.l, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  br i1 %i.ag, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre118 = zext i32 %.096 to i64
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %.pre118
  %.pre120 = load i8, ptr %.phi.trans.insert119, align 1
  %.pre121 = zext i8 %.pre120 to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = zext i32 %.096 to i64
  %i.an = getelementptr inbounds nuw i8, ptr @stbir__type_size, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = mul nsw i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.m, align 4
  br label %bb.g

end_hunk_0
begin_hunk_1_@GenImageChecked:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.l = sdiv <4 x i32> %vec.ind, %broadcast.splat39
  %i.m = add nsw <4 x i32> %broadcast.splat, %i.l
  %i.n = and <4 x i32> %i.m, splat (i32 1)
  %i.o = icmp eq <4 x i32> %i.n, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i32> %broadcast.splat41, <4 x i32> %broadcast.splat43
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x i32> %i.p, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %invariant.gep36.invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  br label %scalar.ph

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.v, align 4
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = sdiv i32 %i.w, %3
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = and i32 %i.y, 1
  %i.aa = icmp eq i32 %i.z, 0
  %. = select i1 %i.aa, i32 %5, i32 %6
  %gep37 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep, i64 %indvars.iv
  store i32 %., ptr %gep37, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !108
}

; Function Attrs: nounwind uwtable
define void @GenImageWhiteNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fmul float %3, 1.000000e+02
  %i.g = fptosi float %i.f to i32
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.k, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef 99) #52
  %i.m = icmp slt i32 %i.l, %i.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %. = select i1 %i.m, <4 x i8> splat (i8 -1), <4 x i8> <i8 0, i8 0, i8 0, i8 -1>
  store <4 x i8> %., ptr %i.n, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare i32 @GetRandomValue(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImagePerlinNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %2, i64 1
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fdiv float %i.h, %i.i                    ; 2 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = icmp sgt i32 %1, 0
  %i.m = insertelement <2 x float> poison, float %5, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.n, %i.g              ; 2 uses
  %i.p = icmp sgt i32 %1, %2                      ; 2 uses
  br i1 %i.l, label %.preheader.preheader, label %._crit_edge47.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count52 = zext nneg i32 %2 to i64
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = extractelement <2 x float> %i.o, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv49 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.t = trunc i64 %indvars.iv49 to i32
  %i.u = add i32 %4, %i.t
  %i.v = sitofp i32 %i.u to float
  %i.w = fmul float %i.r, %i.v                    ; 2 uses
  %i.x = fdiv float %i.w, %i.j
  %.042 = select i1 %i.p, float %i.w, float %i.x
  %i.y = mul nuw nsw i64 %indvars.iv49, %i.q
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  br label %bb.b

._crit_edge47.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ac, align 4
  ret void

._crit_edge:                                      ; preds = %stb_perlin_fbm_noise3.exit
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge47.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %stb_perlin_fbm_noise3.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %stb_perlin_fbm_noise3.exit ] ; 3 uses
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %3, %i.ad
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fmul float %i.s, %i.af                  ; 2 uses
  %i.ah = fmul float %i.j, %i.ag
  %.041 = select i1 %i.p, float %i.ah, float %i.ag
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.022.i = phi float [ %i.hp, %.lr.ph.i ], [ 0.000000e+00, %bb.b ]
  %.01819.i = phi i32 [ %i.hr, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.ai = phi <2 x float> [ %i.hq, %.lr.ph.i ], [ splat (float 1.000000e+00), %bb.b ] ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ak = fmul float %.041, %i.aj                 ; 3 uses
  %i.al = fmul float %.042, %i.aj
  %i.am = fptosi float %i.ak to i32               ; 2 uses
  %i.an = sitofp i32 %i.am to float
  %i.ao = fcmp olt float %i.ak, %i.an
  %i.ap = sext i1 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, %i.am                ; 3 uses
  %i.ar = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.al, i64 1 ; 3 uses
  %i.at = fptosi <2 x float> %i.as to <2 x i32>   ; 2 uses
  %i.au = sitofp <2 x i32> %i.at to <2 x float>
  %i.av = fcmp olt <2 x float> %i.as, %i.au
  %i.aw = sext <2 x i1> %i.av to <2 x i32>
  %i.ax = add nsw <2 x i32> %i.aw, %i.at          ; 3 uses
  %i.ay = and i32 %i.aq, 255
  %i.az = add nsw i32 %i.aq, 1
  %i.ba = and i32 %i.az, 255
  %i.bb = extractelement <2 x i32> %i.ax, i64 1   ; 2 uses
  %i.bc = and i32 %i.bb, 255                      ; 2 uses
  %i.bd = add nsw i32 %i.bb, 1
  %i.be = and i32 %i.bd, 255                      ; 2 uses
  %i.bf = extractelement <2 x i32> %i.ax, i64 0   ; 2 uses
  %i.bg = and i32 %i.bf, 255                      ; 4 uses
  %i.bh = add nsw i32 %i.bf, 1
  %i.bi = and i32 %i.bh, 255                      ; 4 uses
  %i.bj = sitofp i32 %i.aq to float
  %i.bk = fsub float %i.ak, %i.bj                 ; 6 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bk, float 6.000000e+00, float -1.500000e+01)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bk, float 1.000000e+01)
  %i.bn = fmul float %i.bk, %i.bm
  %i.bo = fmul float %i.bk, %i.bn
  %i.bp = fmul float %i.bk, %i.bo
  %i.bq = sitofp <2 x i32> %i.ax to <2 x float>
  %i.br = fsub <2 x float> %i.as, %i.bq           ; 8 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.br, <2 x float> splat (float 1.000000e+01))
  %i.bu = fmul <2 x float> %i.br, %i.bt
  %i.bv = fmul <2 x float> %i.br, %i.bu
  %i.bw = fmul <2 x float> %i.br, %i.bv           ; 2 uses
  %i.bx = add nuw nsw i32 %i.ay, %.01819.i
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = add nuw nsw i32 %i.ba, %.01819.i
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = add nuw nsw i32 %i.bc, %i.cb
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = add nuw nsw i32 %i.be, %i.cb
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = add nuw nsw i32 %i.bc, %i.cg
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = add nuw nsw i32 %i.be, %i.cg
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = add nuw nsw i32 %i.bg, %i.cl
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.df ; 2 uses
  %i.dh = load <2 x float>, ptr %i.dg, align 16   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load float, ptr %i.di, align 8
  %i.dk = add nuw nsw i32 %i.bi, %i.cl
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.do ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dp, align 16   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load float, ptr %i.dr, align 8
  %i.dt = add nuw nsw i32 %i.bg, %i.cq
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = fadd <2 x float> %i.br, splat (float -1.000000e+00) ; 2 uses
  %i.dy = zext i8 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dy ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 16   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load float, ptr %i.eb, align 8
  %i.ed = add nuw nsw i32 %i.bi, %i.cq
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.eh ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 16   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load float, ptr %i.ek, align 8
  %i.em = add nuw nsw i32 %i.bg, %i.cv
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1
  %6 = insertelement <2 x float> poison, float %i.bk, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fadd <2 x float> %7, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.eq ; 2 uses
  %i.es = load <2 x float>, ptr %i.er, align 16   ; 2 uses
  %i.et = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eu = shufflevector <2 x float> %i.es, <2 x float> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %i.es, <2 x float> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %8, <2 x float> %i.ev)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ez = load float, ptr %i.ey, align 8
  %i.fa = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.dj, i64 1
  %i.fc = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fc, <2 x float> %i.ex) ; 2 uses
  %i.fe = add nuw nsw i32 %i.bi, %i.cv
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fi ; 2 uses
  %i.fk = load <2 x float>, ptr %i.fj, align 16   ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.fm = fmul <2 x float> %i.et, %i.fl
  %i.fn = shufflevector <2 x float> %i.fk, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %8, <2 x float> %i.fm)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load float, ptr %i.fp, align 8
  %i.fr = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.ds, i64 1
  %i.ft = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fo)
  %i.fv = add nuw nsw i32 %i.bg, %i.da
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fz ; 2 uses
  %i.gb = load <2 x float>, ptr %i.ga, align 16   ; 2 uses
  %i.gc = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gd = shufflevector <2 x float> %i.gb, <2 x float> %i.ea, <2 x i32> <i32 1, i32 3>
  %i.ge = fmul <2 x float> %i.gc, %i.gd
  %i.gf = shufflevector <2 x float> %i.gb, <2 x float> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %8, <2 x float> %i.ge)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gi = load float, ptr %i.gh, align 8
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.ec, i64 1
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.fc, <2 x float> %i.gg) ; 2 uses
  %i.gm = add nuw nsw i32 %i.bi, %i.da
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = zext i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.gq ; 2 uses
  %i.gs = load <2 x float>, ptr %i.gr, align 16   ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> %i.ej, <2 x i32> <i32 1, i32 3>
  %i.gu = fmul <2 x float> %i.gc, %i.gt
  %i.gv = shufflevector <2 x float> %i.gs, <2 x float> %i.ej, <2 x i32> <i32 0, i32 2>
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %8, <2 x float> %i.gu)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gy = load float, ptr %i.gx, align 8
  %i.gz = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.el, i64 1
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.ft, <2 x float> %i.gw)
  %i.hc = fsub <2 x float> %i.fu, %i.fd
  %i.hd = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.he = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.hd, <2 x float> %i.fd) ; 2 uses
  %i.hf = fsub <2 x float> %i.hb, %i.gl
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hd, <2 x float> %i.gl)
  %i.hh = fsub <2 x float> %i.hg, %i.he
  %i.hi = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hi, <2 x float> %i.he) ; 2 uses
  %i.hk = extractelement <2 x float> %i.hj, i64 0
  %i.hl = extractelement <2 x float> %i.hj, i64 1 ; 2 uses
  %i.hm = fsub float %i.hk, %i.hl
  %i.hn = tail call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.bp, float %i.hl)
  %i.ho = extractelement <2 x float> %i.ai, i64 0
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.ho, float %.022.i) ; 3 uses
  %i.hq = fmul <2 x float> %i.ai, <float 5.000000e-01, float 2.000000e+00>
  %i.hr = add nuw nsw i32 %.01819.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hr, 6
  br i1 %exitcond.not.i, label %stb_perlin_fbm_noise3.exit, label %.lr.ph.i

stb_perlin_fbm_noise3.exit:                       ; preds = %.lr.ph.i
  %i.hs = fcmp olt float %i.hp, -1.000000e+00
  %spec.store.select = select i1 %i.hs, float -1.000000e+00, float %i.hp ; 2 uses
  %i.ht = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.ht, float 1.000000e+00, float %spec.store.select
  %i.hu = fadd float %spec.store.select1, 1.000000e+00
  %i.hv = fmul float %i.hu, 5.000000e-01
  %i.hw = fmul float %i.hv, 2.550000e+02
  %i.hx = fptoui float %i.hw to i8                ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  store i8 %i.hx, ptr %gep, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 %i.hx, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i8 %i.hx, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 3
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @GenImageCellular(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sdiv i32 %1, %3                          ; 15 uses
  %i.f = sdiv i32 %2, %3                          ; 8 uses
  %i.g = mul nsw i32 %i.f, %i.e                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #53 ; 11 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %.preheader88

.lr.ph:                                           ; preds = %bb.a
  %i.l = add nsw i32 %3, -1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader88:                                     ; preds = %bb.b, %bb.a
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph97, label %._crit_edge98.split

.lr.ph97:                                         ; preds = %.preheader88
  %i.n = icmp sgt i32 %1, 0
  %i.o = sitofp i32 %3 to float
  br i1 %i.n, label %.lr.ph95.preheader, label %._crit_edge98.split

.lr.ph95.preheader:                               ; preds = %.lr.ph97
  %i.p = sext i32 %i.e to i64
  %i.q = sext i32 %i.f to i64                     ; 3 uses
  %i.r = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count128 = zext nneg i32 %2 to i64
  br label %.lr.ph95

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = sdiv i32 %i.s, %i.e
  %i.u = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.v = srem i32 %i.s, %i.e
  %i.w = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = mul nsw i32 %i.t, %3
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = mul nsw i32 %i.v, %3
  %i.ab = add nsw i32 %i.aa, %i.w
  %i.ac = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.z, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  store <2 x float> %i.ae, ptr %i.x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %bb.b

._crit_edge98.split:                              ; preds = %._crit_edge, %.lr.ph97, %.preheader88
  tail call void @free(ptr noundef %i.j) #52
  store ptr %i.d, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ai, align 4
  ret void

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv125 to i32     ; 2 uses
  %i.ak = sdiv i32 %i.aj, %3                      ; 22 uses
  %i.al = mul nuw nsw i64 %indvars.iv125, %i.r
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = icmp sgt i32 %i.ak, 0
  %.not86 = icmp sle i32 %i.ak, %i.f
  %or.cond87 = and i1 %i.an, %.not86
  %i.ao = add nsw i32 %i.ak, -1
  %i.ap = mul i32 %i.ao, %i.e
  %i.aq = icmp sgt i32 %i.ak, -1
  %.not86.1 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1 = and i1 %i.aq, %.not86.1
  %i.ar = mul i32 %i.ak, %i.e
  %i.as = add nsw i64 %i.am, 1                    ; 2 uses
  %i.at = icmp sgt i32 %i.ak, -2
  %.not86.2 = icmp slt i64 %i.as, %i.q
  %or.cond87.2 = and i1 %i.at, %.not86.2
  %i.au = trunc i64 %i.as to i32
  %i.av = mul i32 %i.e, %i.au
  %i.aw = icmp sgt i32 %i.ak, 0
  %.not86.1108 = icmp sle i32 %i.ak, %i.f
  %or.cond87.1109 = and i1 %i.aw, %.not86.1108
  %i.ax = add nsw i32 %i.ak, -1
  %i.ay = mul i32 %i.ax, %i.e
  %i.az = icmp sgt i32 %i.ak, -1
  %.not86.1.1 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1.1 = and i1 %i.az, %.not86.1.1
  %i.ba = mul i32 %i.ak, %i.e
  %i.bb = add nsw i64 %i.am, 1                    ; 2 uses
  %i.bc = icmp sgt i32 %i.ak, -2
end_hunk_1
