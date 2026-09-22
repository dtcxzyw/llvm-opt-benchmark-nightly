Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_lut3d?download=true
inline.NumInlined: 477
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@interp_8_prism:bb.a
  %i.cg = fmul nnan nsz <2 x float> %i.cf, splat (float f0x3B808081) ; 2 uses
  %i.ch = add nsw i64 %indvars.iv, %i.bq          ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.088103, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !41
  %i.ck = uitofp i8 %i.cj to float
  %i.cl = fmul nnan nsz float %i.ck, f0x3B808081  ; 2 uses
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !78  ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %apply_prelut.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.co = add nsw i32 %i.cm, -1                   ; 4 uses
  %i.cp = uitofp nneg i32 %i.co to float          ; 3 uses
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %i.cr = load ptr, ptr %i.bh, align 8, !tbaa !80 ; 2 uses
  %i.cs = load <2 x float>, ptr %i.be, align 4, !tbaa !32
  %i.ct = fsub nsz <2 x float> %i.cg, %i.cs
  %i.cu = load <2 x float>, ptr %i.bf, align 4, !tbaa !32
  %i.cv = fmul nsz <2 x float> %i.ct, %i.cu       ; 2 uses
  %i.cw = fcmp nsz ogt <2 x float> %i.cv, zeroinitializer
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> zeroinitializer ; 2 uses
  %i.cy = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = fcmp nsz ogt <2 x float> %i.cx, %i.cz
  %i.db = select <2 x i1> %i.da, <2 x float> %i.cz, <2 x float> %i.cx ; 2 uses
  %i.dc = fptosi <2 x float> %i.db to <2 x i32>   ; 3 uses
  %i.dd = extractelement <2 x i32> %i.dc, i64 0   ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  %i.df = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.co)
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !32
  %i.dj = sext i32 %i.df to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !32
  %i.dm = extractelement <2 x i32> %i.dc, i64 1   ; 2 uses
  %i.dn = add nsw i32 %i.dm, 1
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.co)
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !32
  %i.ds = sext i32 %i.do to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !32
  %i.dv = sitofp <2 x i32> %i.dc to <2 x float>
  %i.dw = fsub nsz <2 x float> %i.db, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ea = insertelement <2 x float> %i.dz, float %i.dr, i64 1 ; 2 uses
  %i.eb = fsub nsz <2 x float> %i.dy, %i.ea
  %i.ec = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.dw, <2 x float> %i.ea)
  %i.ed = load float, ptr %i.bi, align 4, !tbaa !32
  %i.ee = fsub nsz float %i.cl, %i.ed
  %i.ef = load float, ptr %i.bj, align 4, !tbaa !32
  %i.eg = fmul nsz float %i.ee, %i.ef             ; 2 uses
  %i.eh = fcmp nsz ogt float %i.eg, 0.000000e+00
  %i.ei = select nsz i1 %i.eh, float %i.eg, float 0.000000e+00 ; 2 uses
  %i.ej = fcmp nsz ogt float %i.ei, %i.cp
  %..i.i13.i = select nsz i1 %i.ej, float %i.cp, float %i.ei ; 2 uses
  %i.ek = fptosi float %..i.i13.i to i32          ; 3 uses
  %i.el = add nsw i32 %i.ek, 1
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.co)
  %i.en = load ptr, ptr %i.bk, align 8, !tbaa !80 ; 2 uses
  %i.eo = sext i32 %i.ek to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !32 ; 2 uses
  %i.er = sext i32 %i.em to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.er
  %i.et = load float, ptr %i.es, align 4, !tbaa !32
  %i.eu = sitofp nsz i32 %i.ek to float
  %i.ev = fsub nsz float %..i.i13.i, %i.eu
  %i.ew = fsub nsz float %i.et, %i.eq
  %i.ex = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ew, float %i.ev, float %i.eq)
  br label %apply_prelut.exit

apply_prelut.exit:                                ; preds = %.lr.ph, %bb.b
  %.sroa.09.0.i = phi nsz <2 x float> [ %i.ec, %bb.b ], [ %i.cg, %.lr.ph ]
  %.sroa.411.0.i = phi nsz float [ %i.ex, %bb.b ], [ %i.cl, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ey = fmul nsz <2 x float> %i.af, %.sroa.09.0.i ; 2 uses
  %i.ez = fcmp nsz ogt <2 x float> %i.ey, zeroinitializer
  %i.fa = select <2 x i1> %i.ez, <2 x float> %i.ey, <2 x float> zeroinitializer ; 2 uses
  %i.fb = fcmp nsz ogt <2 x float> %i.fa, %i.ae
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.ae, <2 x float> %i.fa
  store <2 x float> %i.fc, ptr %4, align 8, !tbaa !32
  %i.fd = fmul nsz float %i.ai, %.sroa.411.0.i    ; 2 uses
  %i.fe = fcmp nsz ogt float %i.fd, 0.000000e+00
  %i.ff = select nsz i1 %i.fe, float %i.fd, float 0.000000e+00 ; 2 uses
  %i.fg = fcmp nsz ogt float %i.ff, %i.aa
  %..i = select nsz i1 %i.fg, float %i.aa, float %i.ff
  store float %..i, ptr %i.bl, align 8, !tbaa !38
  %i.fh = call fastcc { <2 x float>, float } @interp_prism(ptr noundef nonnull %i.b, ptr noundef %4) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.fh, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.fh, 1
  %i.fi = getelementptr inbounds i8, ptr %.089102, i64 %i.bx
  %i.fj = fmul nsz <2 x float> %.fca.0.extract, splat (float 2.550000e+02)
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>   ; 3 uses
  %i.fl = extractelement <2 x i32> %i.fk, i64 0   ; 2 uses
  %isnotneg.i96 = icmp sgt i32 %i.fl, -1
  %i.fm = sext i1 %isnotneg.i96 to i8
  %i.fn = trunc nuw i32 %i.fl to i8
  %i.fo = icmp ult <2 x i32> %i.fk, splat (i32 256) ; 2 uses
  %i.fp = extractelement <2 x i1> %i.fo, i64 0
  %.0.i97 = select i1 %i.fp, i8 %i.fn, i8 %i.fm
  store i8 %.0.i97, ptr %i.fi, align 1, !tbaa !41
  %i.fq = extractelement <2 x i32> %i.fk, i64 1   ; 2 uses
  %isnotneg.i93 = icmp sgt i32 %i.fq, -1
  %i.fr = sext i1 %isnotneg.i93 to i8
  %i.fs = trunc nuw i32 %i.fq to i8
  %i.ft = extractelement <2 x i1> %i.fo, i64 1
  %.0.i94 = select i1 %i.ft, i8 %i.fs, i8 %i.fr
  %i.fu = getelementptr inbounds i8, ptr %.089102, i64 %i.ca
  store i8 %.0.i94, ptr %i.fu, align 1, !tbaa !41
  %i.fv = fmul nsz float %.fca.1.extract, 2.550000e+02
  %i.fw = fptosi float %i.fv to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.fw, 256
  %isnotneg.i = icmp sgt i32 %i.fw, -1
  %i.fx = sext i1 %isnotneg.i to i8
  %i.fy = trunc nuw i32 %i.fw to i8
  %.0.i = select i1 %.not.i, i8 %i.fy, i8 %i.fx
  %i.fz = getelementptr inbounds i8, ptr %.089102, i64 %i.ch
  store i8 %.0.i, ptr %i.fz, align 1, !tbaa !41
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %apply_prelut.exit
  %i.ga = add nsw i64 %indvars.iv, %i.br          ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.088103, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !41
  %i.gd = getelementptr inbounds i8, ptr %.089102, i64 %i.ga
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %apply_prelut.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bn ; 2 uses
  %i.ge = load i32, ptr %i.bd, align 8, !tbaa !76 ; 2 uses
  %i.gf = mul nsw i32 %i.ge, %i.h
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next, %i.gg
  br i1 %i.gh, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !225

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre107 = load i32, ptr %i.v, align 8, !tbaa !35
  %.pre108 = load i32, ptr %i.w, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.gi = phi i32 [ %.pre108, %._crit_edge.loopexit ], [ %i.bs, %.preheader ] ; 2 uses
  %i.gj = phi i32 [ %.pre107, %._crit_edge.loopexit ], [ %i.bt, %.preheader ] ; 2 uses
  %i.gk = phi i32 [ %i.ge, %._crit_edge.loopexit ], [ %i.bu, %.preheader ]
  %i.gl = sext i32 %i.gj to i64
  %i.gm = getelementptr inbounds i8, ptr %.089102, i64 %i.gl
  %i.gn = sext i32 %i.gi to i64
  %i.go = getelementptr inbounds i8, ptr %.088103, i64 %i.gn
  %i.gp = add nsw i32 %.087104, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gp, %i.u
  br i1 %exitcond.not, label %._crit_edge105, label %.preheader, !llvm.loop !226

._crit_edge105:                                   ; preds = %._crit_edge, %bb.a
  ret i32 0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { <2 x float>, float } @interp_tetrahedral(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = add nsw i32 %i.d, -1                     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 13 uses
  %i.h = load <3 x float>, ptr %1, align 4, !tbaa !32
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 2 uses
  %i.j = fptosi <3 x float> %i.i to <3 x i32>     ; 4 uses
  %i.k = extractelement <3 x i32> %i.j, i64 1     ; 3 uses
  %.not = icmp sgt i32 %i.e, %i.k
  %i.l = add nsw i32 %i.k, 1
  %i.m = select i1 %.not, i32 %i.l, i32 %i.e
  %i.n = extractelement <3 x i32> %i.j, i64 2     ; 3 uses
  %.not317 = icmp sgt i32 %i.e, %i.n
  %i.o = add nsw i32 %i.n, 1
  %i.p = select i1 %.not317, i32 %i.o, i32 %i.e
  %i.q = extractelement <3 x i32> %i.j, i64 0     ; 8 uses
  %.not318 = icmp sgt i32 %i.e, %i.q
  %i.r = add nsw i32 %i.q, 1
  %i.s = select i1 %.not318, i32 %i.r, i32 %i.e   ; 7 uses
  %i.t = sitofp <3 x i32> %i.j to <3 x float>
  %i.u = fsub nsz <3 x float> %i.i, %i.t          ; 18 uses
  %i.v = mul nsw i32 %i.b, %i.k                   ; 3 uses
  %i.w = mul nsw i32 %i.d, %i.n                   ; 4 uses
  %i.x = add nsw i32 %i.w, %i.v                   ; 3 uses
  %i.y = add nsw i32 %i.x, %i.q
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.z ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !32 ; 6 uses
  %.sroa.1563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.1563.0.copyload = load float, ptr %.sroa.1563.0..sroa_idx, align 4, !tbaa !32 ; 6 uses
  %i.ac = mul nsw i32 %i.m, %i.b                  ; 4 uses
  %i.ad = mul nsw i32 %i.p, %i.d                  ; 3 uses
  %i.ae = add nsw i32 %i.ad, %i.ac                ; 3 uses
  %i.af = add nsw i32 %i.ae, %i.s
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !32 ; 6 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.15.0.copyload = load float, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !32 ; 6 uses
  %i.aj = extractelement <3 x float> %i.u, i64 1  ; 8 uses
  %i.ak = extractelement <3 x float> %i.u, i64 2  ; 8 uses
  %i.al = fcmp nsz ogt float %i.aj, %i.ak
  br i1 %i.al, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.am = extractelement <3 x float> %i.u, i64 0  ; 5 uses
  %i.an = fcmp nsz ogt float %i.ak, %i.am
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = add nsw i32 %i.ac, %i.w
  %i.ap = add nsw i32 %i.ao, %i.q
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.aq ; 2 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.534.0.copyload = load float, ptr %.sroa.534.0..sroa_idx, align 4, !tbaa !32
  %i.as = add nsw i32 %i.ae, %i.q
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.at ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.531.0.copyload = load float, ptr %.sroa.531.0..sroa_idx, align 4, !tbaa !32
  %i.av = shufflevector <3 x float> %i.u, <3 x float> <float poison, float 1.000000e+00, float poison>, <3 x i32> <i32 2, i32 4, i32 1>
  %i.aw = fsub nsz <3 x float> %i.av, %i.u        ; 6 uses
  %i.ax = load <2 x float>, ptr %i.ar, align 4, !tbaa !32
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !32
  %i.az = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ba = fmul nsz <2 x float> %i.az, %i.ax
  %i.bb = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.ab, <2 x float> %i.ba)
  %i.bd = shufflevector <3 x float> %i.aw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ay, <2 x float> %i.bc)
  %i.bf = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ai, <2 x float> %i.be)
  %i.bh = extractelement <3 x float> %i.aw, i64 2
  %i.bi = fmul nsz float %i.bh, %.sroa.534.0.copyload
  %i.bj = extractelement <3 x float> %i.aw, i64 1
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float %.sroa.1563.0.copyload, float %i.bi)
  %i.bl = extractelement <3 x float> %i.aw, i64 0
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %.sroa.531.0.copyload, float %i.bk)
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.am, float %.sroa.15.0.copyload, float %i.bm)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bo = fcmp nsz ogt float %i.aj, %i.am
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = add nsw i32 %i.ac, %i.w                 ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.q
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.br ; 2 uses
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.528.0.copyload = load float, ptr %.sroa.528.0..sroa_idx, align 4, !tbaa !32
  %i.bt = add nsw i32 %i.bp, %i.s
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.bu ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 4, !tbaa !32
  %i.bw = load <2 x float>, ptr %i.bs, align 4, !tbaa !32
  %i.bx = load <2 x float>, ptr %i.bv, align 4, !tbaa !32
  %i.by = fsub nsz float %i.aj, %i.am             ; 2 uses
  %i.bz = fsub nsz float 1.000000e+00, %i.aj      ; 2 uses
  %i.ca = fsub nsz float %i.am, %i.ak             ; 2 uses
  %i.cb = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul nsz <2 x float> %i.cc, %i.bw
  %i.ce = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ab, <2 x float> %i.cd)
  %i.ch = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.bx, <2 x float> %i.cg)
  %i.ck = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ai, <2 x float> %i.cj)
  %i.cm = fmul nsz float %i.by, %.sroa.528.0.copyload
  %i.cn = tail call nsz float @llvm.fmuladd.f32(float %i.bz, float %.sroa.1563.0.copyload, float %i.cm)
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.ca, float %.sroa.525.0.copyload, float %i.cn)
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %.sroa.15.0.copyload, float %i.co)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.cq = add nsw i32 %i.s, %i.x
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.cr ; 2 uses
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.522.0.copyload = load float, ptr %.sroa.522.0..sroa_idx, align 4, !tbaa !32
  %i.ct = add nsw i32 %i.ac, %i.w
  %i.cu = add nsw i32 %i.ct, %i.s
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.cv ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.519.0.copyload = load float, ptr %.sroa.519.0..sroa_idx, align 4, !tbaa !32
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !tbaa !32
  %i.cy = load <2 x float>, ptr %i.cw, align 4, !tbaa !32
  %2 = shufflevector <3 x float> %i.u, <3 x float> <float 1.000000e+00, float poison, float poison>, <3 x i32> <i32 3, i32 0, i32 1>
  %3 = fsub nsz <3 x float> %2, %i.u              ; 6 uses
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = fmul nsz <2 x float> %4, %i.cx
  %i.da = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.ab, <2 x float> %i.cz)
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.cy, <2 x float> %i.db)
  %i.dd = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.de = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.ai, <2 x float> %i.dc)
  %6 = extractelement <3 x float> %3, i64 1
  %i.df = fmul nsz float %6, %.sroa.522.0.copyload
  %7 = extractelement <3 x float> %3, i64 0
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %7, float %.sroa.1563.0.copyload, float %i.df)
  %8 = extractelement <3 x float> %3, i64 2
  %i.dh = tail call nsz float @llvm.fmuladd.f32(float %8, float %.sroa.519.0.copyload, float %i.dg)
  %i.di = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %.sroa.15.0.copyload, float %i.dh)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.dj = extractelement <3 x float> %i.u, i64 0  ; 5 uses
  %i.dk = fcmp nsz ogt float %i.dj, %i.ak
  br i1 %i.dk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dl = add nsw i32 %i.s, %i.x
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.dm ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.516.0.copyload = load float, ptr %.sroa.516.0..sroa_idx, align 4, !tbaa !32
  %i.do = add nsw i32 %i.ad, %i.v
  %i.dp = add nsw i32 %i.do, %i.s
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.dq ; 2 uses
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.513.0.copyload = load float, ptr %.sroa.513.0..sroa_idx, align 4, !tbaa !32
  %i.ds = load <2 x float>, ptr %i.dn, align 4, !tbaa !32
  %i.dt = load <2 x float>, ptr %i.dr, align 4, !tbaa !32
  %9 = shufflevector <3 x float> %i.u, <3 x float> <float 1.000000e+00, float poison, float poison>, <3 x i32> <i32 3, i32 2, i32 0>
  %10 = fsub nsz <3 x float> %9, %i.u             ; 6 uses
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.du = fmul nsz <2 x float> %11, %i.ds
  %i.dv = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.ab, <2 x float> %i.du)
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %i.dt, <2 x float> %i.dw)
  %i.dy = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ai, <2 x float> %i.dx)
  %13 = extractelement <3 x float> %10, i64 2
  %i.ea = fmul nsz float %13, %.sroa.516.0.copyload
  %14 = extractelement <3 x float> %10, i64 0
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %14, float %.sroa.1563.0.copyload, float %i.ea)
  %15 = extractelement <3 x float> %10, i64 1
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %15, float %.sroa.513.0.copyload, float %i.eb)
  %i.ed = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %.sroa.15.0.copyload, float %i.ec)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ee = fcmp nsz ogt float %i.dj, %i.aj
  %i.ef = add nsw i32 %i.ad, %i.v                 ; 2 uses
  %i.eg = add nsw i32 %i.ef, %i.q
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.eh ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !32 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.510.0.copyload = load float, ptr %.sroa.510.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.ek = fsub nsz float 1.000000e+00, %i.ak      ; 4 uses
  br i1 %i.ee, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.el = add nsw i32 %i.ef, %i.s
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.em ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.57.0.copyload = load float, ptr %.sroa.57.0..sroa_idx, align 4, !tbaa !32
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !32
  %i.ep = fsub nsz float %i.ak, %i.dj             ; 2 uses
  %i.eq = fsub nsz float %i.dj, %i.aj             ; 2 uses
  %i.er = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul nsz <2 x float> %i.es, %i.ej
  %i.eu = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ab, <2 x float> %i.et)
  %i.ex = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.eo, <2 x float> %i.ew)
  %i.fa = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.ai, <2 x float> %i.ez)
  %i.fc = fmul nsz float %i.ep, %.sroa.510.0.copyload
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.ek, float %.sroa.1563.0.copyload, float %i.fc)
  %i.fe = tail call nsz float @llvm.fmuladd.f32(float %i.eq, float %.sroa.57.0.copyload, float %i.fd)
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %i.aj, float %.sroa.15.0.copyload, float %i.fe)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.fg = add nsw i32 %i.ae, %i.q
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.fh ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !32
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !32
  %i.fk = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.fl = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fm = fsub nsz <2 x float> %i.fk, %i.fl       ; 4 uses
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = fmul nsz <2 x float> %i.fn, %i.ej
  %i.fp = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.ab, <2 x float> %i.fo)
  %i.fs = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fj, <2 x float> %i.fr)
  %i.fu = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.ai, <2 x float> %i.ft)
  %i.fw = extractelement <2 x float> %i.fm, i64 1
  %i.fx = fmul nsz float %i.fw, %.sroa.510.0.copyload
  %i.fy = tail call nsz float @llvm.fmuladd.f32(float %i.ek, float %.sroa.1563.0.copyload, float %i.fx)
  %i.fz = extractelement <2 x float> %i.fm, i64 0
  %i.ga = tail call nsz float @llvm.fmuladd.f32(float %i.fz, float %.sroa.5.0.copyload, float %i.fy)
  %i.gb = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %.sroa.15.0.copyload, float %i.ga)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  %.sroa.0286.0 = phi nsz <2 x float> [ %i.bg, %bb.c ], [ %i.cl, %bb.e ], [ %i.de, %bb.f ], [ %i.dz, %bb.h ], [ %i.fb, %bb.j ], [ %i.fv, %bb.k ]
  %.sroa.13.0 = phi nsz float [ %i.bn, %bb.c ], [ %i.cp, %bb.e ], [ %i.di, %bb.f ], [ %i.ed, %bb.h ], [ %i.ff, %bb.j ], [ %i.gb, %bb.k ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0286.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %.sroa.13.0, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { <2 x float>, float } @interp_pyramid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = add nsw i32 %i.d, -1                     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 11 uses
  %i.h = load <3 x float>, ptr %1, align 4, !tbaa !32
  %i.i = shufflevector <3 x float> %i.h, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0> ; 2 uses
  %i.j = fptosi <3 x float> %i.i to <3 x i32>     ; 4 uses
  %i.k = extractelement <3 x i32> %i.j, i64 2     ; 3 uses
  %.not = icmp sgt i32 %i.e, %i.k
  %i.l = add nsw i32 %i.k, 1
  %i.m = select i1 %.not, i32 %i.l, i32 %i.e
  %i.n = extractelement <3 x i32> %i.j, i64 0     ; 3 uses
  %.not248 = icmp sgt i32 %i.e, %i.n
  %i.o = add nsw i32 %i.n, 1
  %i.p = select i1 %.not248, i32 %i.o, i32 %i.e
  %i.q = extractelement <3 x i32> %i.j, i64 1     ; 8 uses
  %.not249 = icmp sgt i32 %i.e, %i.q
  %i.r = add nsw i32 %i.q, 1
  %i.s = select i1 %.not249, i32 %i.r, i32 %i.e   ; 5 uses
  %i.t = sitofp <3 x i32> %i.j to <3 x float>
  %i.u = fsub nsz <3 x float> %i.i, %i.t          ; 12 uses
  %i.v = mul nsw i32 %i.b, %i.k                   ; 3 uses
  %i.w = mul nsw i32 %i.d, %i.n                   ; 3 uses
  %i.x = add nsw i32 %i.w, %i.v                   ; 3 uses
  %i.y = add nsw i32 %i.x, %i.q
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.z ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !32 ; 12 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !32 ; 12 uses
  %i.ac = mul nsw i32 %i.m, %i.b                  ; 3 uses
  %i.ad = mul nsw i32 %i.p, %i.d                  ; 3 uses
  %i.ae = add nsw i32 %i.ad, %i.ac                ; 2 uses
  %i.af = add nsw i32 %i.ae, %i.s
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ah, align 4, !tbaa !32 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !32 ; 3 uses
  %i.aj = extractelement <3 x float> %i.u, i64 0  ; 8 uses
  %i.ak = extractelement <3 x float> %i.u, i64 2  ; 8 uses
  %i.al = fcmp nsz ogt float %i.aj, %i.ak
  %i.am = extractelement <3 x float> %i.u, i64 1  ; 7 uses
  %i.an = fcmp nsz ogt float %i.am, %i.ak
  %or.cond = and i1 %i.al, %i.an
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = add nsw i32 %i.s, %i.x
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ap ; 2 uses
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.751.0.copyload = load float, ptr %.sroa.751.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.ar = add nsw i32 %i.ad, %i.v                 ; 2 uses
  %i.as = add nsw i32 %i.ar, %i.q
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.at ; 2 uses
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.745.0.copyload = load float, ptr %.sroa.745.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.av = add nsw i32 %i.ar, %i.s
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.aw ; 2 uses
  %.sroa.739.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.739.0.copyload = load float, ptr %.sroa.739.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aq, align 4, !tbaa !32 ; 2 uses
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !32 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !32 ; 2 uses
  %i.bb = fsub nsz <2 x float> %i.ai, %i.ba
  %i.bc = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bc, <2 x float> %i.ab)
  %i.be = fsub nsz <2 x float> %i.az, %i.ab
  %i.bf = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = fsub nsz <2 x float> %i.ay, %i.ab
  %i.bi = shufflevector <3 x float> %i.u, <3 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fsub nsz <2 x float> %i.ba, %i.ay
  %i.bl = fsub nsz <2 x float> %i.bk, %i.az
  %i.bm = fadd nsz <2 x float> %i.ab, %i.bl
  %i.bn = fmul nsz <2 x float> %i.bf, %i.bm
  %i.bo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bi, <2 x float> %i.bj)
  %i.bp = fsub nsz float %.sroa.9.0.copyload, %.sroa.739.0.copyload
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.ak, float %.sroa.27.0.copyload)
  %i.br = fsub nsz float %.sroa.745.0.copyload, %.sroa.27.0.copyload
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.aj, float %i.bq)
  %i.bt = fsub nsz float %.sroa.751.0.copyload, %.sroa.27.0.copyload
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float %i.am, float %i.bs)
  %i.bv = fsub nsz float %.sroa.739.0.copyload, %.sroa.751.0.copyload
  %i.bw = fsub nsz float %i.bv, %.sroa.745.0.copyload
  %i.bx = fadd nsz float %.sroa.27.0.copyload, %i.bw
  %i.by = fmul nsz float %i.aj, %i.bx
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.am, float %i.bu)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ca = fcmp nsz ogt float %i.ak, %i.aj
  %i.cb = fcmp nsz ogt float %i.am, %i.aj
  %or.cond250 = and i1 %i.ca, %i.cb
  br i1 %or.cond250, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cc = add nsw i32 %i.s, %i.x
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.cd ; 2 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.733.0.copyload = load float, ptr %.sroa.733.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.cf = add nsw i32 %i.ac, %i.w                 ; 2 uses
  %i.cg = add nsw i32 %i.cf, %i.q
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ch ; 2 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.727.0.copyload = load float, ptr %.sroa.727.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.cj = add nsw i32 %i.cf, %i.s
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [12 x i8], ptr %i.g, i64 %i.ck ; 2 uses
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.721.0.copyload = load float, ptr %.sroa.721.0..sroa_idx, align 4, !tbaa !32 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ce, align 4, !tbaa !32 ; 2 uses
end_hunk_0
