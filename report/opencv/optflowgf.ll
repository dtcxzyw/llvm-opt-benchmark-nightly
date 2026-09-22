Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optflowgf?download=true
inline.NumInlined: 292
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv3Mat5zerosEiii
declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #23
  ret void
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree readonly captures(none) %.24.val, i64 %.128.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !56   ; 5 uses
  %i.e = lshr i64 %.128.val, 2                    ; 2 uses
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.d, i32 noundef %i.b, i32 noundef 133)
  %i.f = icmp slt i32 %3, %4
  br i1 %i.f, label %.lr.ph5, label %._crit_edge6.split

.lr.ph5:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  %i.s = icmp sgt i32 %i.b, 0
  %i.t = add nsw i32 %i.b, -1
  %i.u = add nsw i32 %i.d, -1
  %i.v = add nsw i32 %i.b, -10
  %i.w = add nsw i32 %i.d, -10
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge6.split

.lr.ph.preheader:                                 ; preds = %.lr.ph5
  %i.x = add nsw i32 %i.d, -5
  %i.y = add nsw i32 %i.b, -5
  %i.z = zext nneg i32 %i.b to i64
  %i.aa = sext i32 %i.y to i64
  %i.ab = sext i32 %3 to i64
  %i.ac = sext i32 %i.x to i64
  %wide.trip.count11 = sext i32 %4 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.ad = getelementptr [4 x i8], ptr @_ZZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_iiE6border, i64 %i.z
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv8 = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next9, %._crit_edge ] ; 9 uses
  %i.ae = mul i64 %i.j, %indvars.iv8
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae
  %i.ag = mul i64 %i.n, %indvars.iv8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag ; 3 uses
  %i.ai = mul i64 %i.r, %indvars.iv8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ai
  %i.ak = trunc nsw i64 %indvars.iv8 to i32       ; 2 uses
  %i.al = sitofp i32 %i.ak to float
  %i.am = trunc i64 %indvars.iv8 to i32
  %i.an = add i32 %i.am, -5
  %.not198 = icmp uge i32 %i.an, %i.w
  %i.ao = icmp slt i64 %indvars.iv8, 5
  %i.ap = getelementptr inbounds [4 x i8], ptr @_ZZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_iiE6border, i64 %indvars.iv8
  %.not200 = icmp slt i64 %indvars.iv8, %i.ac
  %i.aq = xor i32 %i.ak, -1
  %i.ar = add i32 %i.d, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr @_ZZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_iiE6border, i64 %i.as
  %i.au = insertelement <2 x float> poison, float %i.al, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 10 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = uitofp nneg i32 %i.aw to float
  %i.ay = load <2 x float>, ptr %i.av, align 4, !tbaa !58 ; 3 uses
  %i.az = insertelement <2 x float> %i.au, float %i.ax, i64 0
  %i.ba = fadd <2 x float> %i.ay, %i.az           ; 3 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1
  %i.bc = tail call float @llvm.floor.f32(float %i.bb)
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = tail call float @llvm.floor.f32(float %i.bd)
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = insertelement <2 x float> %i.bf, float %i.bc, i64 1
  %i.bh = fptosi <2 x float> %i.bg to <2 x i32>   ; 3 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  %i.bj = icmp ugt i32 %i.t, %i.bi
  %i.bk = extractelement <2 x i32> %i.bh, i64 1   ; 2 uses
  %i.bl = icmp ugt i32 %i.u, %i.bk
  %or.cond = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bm = sitofp <2 x i32> %i.bh to <2 x float>
  %i.bn = fsub <2 x float> %i.ba, %i.bm           ; 3 uses
  %i.bo = sext i32 %i.bk to i64
  %i.bp = mul i64 %i.e, %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.24.val, i64 %i.bp
  %i.br = mul nuw nsw i32 %i.bi, 5
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bs ; 5 uses
  %i.bu = extractelement <2 x float> %i.bn, i64 0 ; 2 uses
  %i.bv = extractelement <2 x float> %i.bn, i64 1 ; 2 uses
  %i.bw = fsub <2 x float> splat (float 1.000000e+00), %i.bn ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.e ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.ce = mul nuw nsw i64 %indvars.iv, 5          ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load <2 x float>, ptr %i.bt, align 4, !tbaa !58
  %i.ci = load <2 x float>, ptr %i.bx, align 4, !tbaa !58
  %i.cj = load <2 x float>, ptr %i.by, align 4, !tbaa !58
  %i.ck = load <2 x float>, ptr %i.bz, align 4, !tbaa !58
  %i.cl = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.cm = fmul float %i.bu, %i.cl                 ; 2 uses
  %i.cn = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.co = fmul float %i.cn, %i.cl                 ; 2 uses
  %i.cp = fmul float %i.cn, %i.bv                 ; 2 uses
  %i.cq = fmul float %i.bu, %i.bv                 ; 2 uses
  %i.cr = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cs, %i.ci
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ch, <2 x float> %i.ct)
  %i.cx = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cj, <2 x float> %i.cw)
  %i.da = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.ck, <2 x float> %i.cz)
  %i.dd = load <3 x float>, ptr %i.ca, align 4, !tbaa !58
  %i.de = shufflevector <3 x float> %i.dd, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.df = load <3 x float>, ptr %i.cb, align 4, !tbaa !58
  %i.dg = shufflevector <3 x float> %i.df, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.dh = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dj = fmul <4 x float> %i.di, %i.dg
  %i.dk = insertelement <4 x float> poison, float %i.co, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.de, <4 x float> %i.dj)
  %i.dn = load <3 x float>, ptr %i.cc, align 4, !tbaa !58
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.dp = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.do, <4 x float> %i.dm)
  %i.ds = load <3 x float>, ptr %i.cd, align 4, !tbaa !58
  %i.dt = shufflevector <3 x float> %i.ds, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.du = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dt, <4 x float> %i.dr)
  %i.dx = load <3 x float>, ptr %i.cg, align 4, !tbaa !58
  %i.dy = shufflevector <3 x float> %i.dx, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.dz = fadd <4 x float> %i.dw, %i.dy
  %i.ea = fmul <4 x float> %i.dz, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 2.500000e-01>
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.eb = mul nuw nsw i64 %indvars.iv, 5          ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !58
  %i.eg = load <2 x float>, ptr %i.ed, align 4, !tbaa !58
  %i.eh = fmul float %i.ef, 5.000000e-01
  %i.ei = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.ej = insertelement <4 x float> %i.ei, float %i.eh, i64 3
  %i.ek = shufflevector <4 x float> %i.ei, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.eb, %bb.d ], [ %i.ce, %bb.c ] ; 2 uses
  %i.el = phi <4 x float> [ %i.ek, %bb.d ], [ %i.ea, %bb.c ] ; 5 uses
  %i.em = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.dc, %bb.c ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.pre-phi
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !58
  %i.ep = fsub <2 x float> %i.eo, %i.em
  %i.eq = fmul <2 x float> %i.ep, splat (float 5.000000e-01) ; 2 uses
  %i.er = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <4 x float> %i.el, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.es = fmul <2 x float> %i.er, %5
  %6 = shufflevector <4 x float> %i.el, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.et = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %i.et, <2 x float> %i.es) ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.eu, %i.eq
  %i.ev = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop19 = fadd <2 x float> %i.eu, %i.eq
  %i.ew = extractelement <2 x float> %foldExtExtBinop19, i64 1 ; 2 uses
  %i.ex = trunc i64 %indvars.iv to i32
  %i.ey = add i32 %i.ex, -5
  %.not = icmp uge i32 %i.ey, %i.v
  %brmerge = select i1 %.not, i1 true, i1 %.not198
  %i.ez = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  br i1 %brmerge, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.fb = icmp samesign ult i64 %indvars.iv, 5
  br i1 %i.fb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZZN2cvL23FarnebackUpdateMatricesERKNS_3MatES2_S2_RS0_iiE6border, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.fe = phi float [ %i.fd, %bb.g ], [ 1.000000e+00, %bb.f ] ; 2 uses
  %.not199 = icmp slt i64 %indvars.iv, %i.aa
  br i1 %.not199, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ff = xor i64 %indvars.iv, -1
  %i.fg = getelementptr [4 x i8], ptr %i.ad, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !58
  %i.fi = fmul float %i.fe, %i.fh
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.fj = phi float [ %i.fi, %bb.i ], [ %i.fe, %bb.h ] ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fk = load float, ptr %i.ap, align 4, !tbaa !58
  %i.fl = fmul float %i.fj, %i.fk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.fm = phi float [ %i.fl, %bb.k ], [ %i.fj, %bb.j ] ; 2 uses
  br i1 %.not200, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fn = load float, ptr %i.at, align 4, !tbaa !58
  %i.fo = fmul float %i.fm, %i.fn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fp = phi float [ %i.fo, %bb.m ], [ %i.fm, %bb.l ] ; 2 uses
  %i.fq = fmul float %i.ew, %i.fp
  %i.fr = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ft = fmul <4 x float> %i.fa, %i.fs
  %i.fu = fmul <4 x float> %i.el, %i.fs
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %bb.n
  %.1192 = phi float [ %i.fq, %bb.n ], [ %i.ew, %bb.e ] ; 2 uses
  %i.fv = phi <4 x float> [ %i.ft, %bb.n ], [ %i.fa, %bb.e ] ; 4 uses
  %i.fw = phi <4 x float> [ %i.fu, %bb.n ], [ %i.el, %bb.e ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.pre-phi ; 2 uses
  %i.fy = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison>, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fz = fadd <4 x float> %i.fv, %i.fy
  %i.ga = extractelement <4 x float> %i.fw, i64 3
  %i.gb = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 poison, i32 7>
  %i.gc = insertelement <4 x float> %i.gb, float %.1192, i64 2
  %i.gd = shufflevector <4 x float> %i.fw, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.ge = fmul <4 x float> %i.gc, %i.gd
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.fw, <4 x float> %i.ge)
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 1, i32 2>
  store <4 x float> %i.gg, ptr %i.fx, align 4, !tbaa !58
  %i.gh = extractelement <4 x float> %i.fv, i64 1
  %i.gi = fmul float %.1192, %i.gh
  %i.gj = extractelement <4 x float> %i.fv, i64 2
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gj, float %i.gi)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store float %i.gk, ptr %i.gl, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.o
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, 1 ; 2 uses
  %exitcond12.not = icmp eq i64 %indvars.iv.next9, %wide.trip.count11
  br i1 %exitcond12.not, label %._crit_edge6.split, label %.lr.ph, !llvm.loop !207

._crit_edge6.split:                               ; preds = %._crit_edge, %.lr.ph5, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #10

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse2.cvtsd2si(<2 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #10

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

end_hunk_0
