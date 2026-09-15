Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/wheel_joint?download=true
inline.NumInlined: 108
inline.NumDeleted: 18
begin_hunk_0_@b2PrepareWheelJoint:bb.a
  %i.bk = shufflevector <2 x float> %i.bi, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3> ; 3 uses
  store <2 x float> %i.bk, ptr %i.ax, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bm = load <2 x float>, ptr %i.az, align 4
  %i.bn = load <2 x float>, ptr %i.bl, align 4
  %i.bo = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bp = fsub <2 x float> %i.bm, %i.bn           ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bo, %i.bq           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = fmul <2 x float> %i.bs, %i.bt           ; 2 uses
  %i.bv = fsub <2 x float> %i.br, %i.bu
  %i.bw = fadd <2 x float> %i.br, %i.bu
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3> ; 3 uses
  store <2 x float> %i.bx, ptr %i.aw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load <2 x float>, ptr %i.ca, align 4    ; 2 uses
  %i.ce = load <2 x float>, ptr %i.cc, align 4    ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cd, %i.cf           ; 2 uses
  %i.ch = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x float> %i.ch, %i.ci           ; 2 uses
  %i.ck = fsub <2 x float> %i.cg, %i.cj
  %i.cl = fadd <2 x float> %i.cg, %i.cj
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> %i.cl, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cm, ptr %i.bz, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.co = load <2 x float>, ptr %i.cb, align 4
  %i.cp = load <2 x float>, ptr %i.cn, align 4
  %i.cq = load <2 x float>, ptr %i.ca, align 4    ; 2 uses
  %i.cr = fsub <2 x float> %i.co, %i.cp           ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = fmul <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = fsub <2 x float> %i.ct, %i.cw           ; 2 uses
  %i.cy = fadd <2 x float> %i.ct, %i.cw           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 4 uses
  store <2 x float> %i.cz, ptr %i.by, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dd = load <2 x float>, ptr %i.db, align 4
  %i.de = load <2 x float>, ptr %i.dc, align 4
  %i.df = fsub <2 x float> %i.dd, %i.de           ; 2 uses
  store <2 x float> %i.df, ptr %i.da, align 4
  %i.dg = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.al, %i.an
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.di = fsub <2 x float> %i.cz, %i.bx
  %i.dj = fadd <2 x float> %i.di, %i.df
  %i.dk = fmul <2 x float> %i.bk, zeroinitializer ; 2 uses
  %i.dl = fadd <2 x float> %i.dg, %i.dk
  %i.dm = fsub <2 x float> %i.dg, %i.dk
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.do = fadd <2 x float> %i.bx, %i.dj           ; 3 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> %i.cx, <2 x i32> <i32 1, i32 2>
  %i.dq = fmul <2 x float> %i.dn, %i.dp
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = shufflevector <2 x float> %i.cy, <2 x float> %i.do, <2 x i32> <i32 1, i32 2>
  %i.dt = fmul <2 x float> %i.dn, %i.ds
  %i.du = fadd <2 x float> %i.dt, %i.dr           ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.am, i64 1
  %i.dx = fmul <2 x float> %i.dw, %i.du
  %i.dy = fmul <2 x float> %i.du, %i.dx           ; 2 uses
  %i.dz = fmul <2 x float> %i.dn, %i.do           ; 2 uses
  %shift = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop195 = fsub <2 x float> %i.dz, %shift
  %i.ea = extractelement <2 x float> %foldExtExtBinop195, i64 0 ; 2 uses
  %foldExtExtBinop197 = fmul <2 x float> %i.dn, %i.cz
  %foldExtExtBinop199 = fmul <2 x float> %i.dn, %i.cz
  %shift201 = shufflevector <2 x float> %foldExtExtBinop199, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop202 = fsub <2 x float> %foldExtExtBinop197, %shift201
  %i.eb = extractelement <2 x float> %foldExtExtBinop202, i64 0 ; 2 uses
  %i.ec = fmul float %i.am, %i.ea
  %i.ed = fmul float %i.ea, %i.ec
  %i.ee = fmul float %i.ao, %i.eb
  %i.ef = fmul float %i.eb, %i.ee
  %i.eg = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = insertelement <2 x float> %i.eh, float %i.ed, i64 1
  %i.ej = fadd <2 x float> %i.eg, %i.ei
  %i.ek = insertelement <2 x float> %i.dy, float %i.ef, i64 1
  %i.el = fadd <2 x float> %i.ek, %i.ej           ; 2 uses
  %i.em = fdiv <2 x float> splat (float 1.000000e+00), %i.el
  %i.en = fcmp ogt <2 x float> %i.el, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.em, <2 x float> zeroinitializer ; 2 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0
  store float %i.ep, ptr %i.dh, align 4, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.er = extractelement <2 x float> %i.eo, i64 1
  store float %i.er, ptr %i.eq, align 4, !tbaa !99
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eu = load float, ptr %i.et, align 4, !tbaa !138 ; 2 uses
  %i.ev = fcmp oeq float %i.eu, 0.000000e+00
  br i1 %i.ev, label %b2MakeSoft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load float, ptr %i.ew, align 8, !tbaa !100
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !139
  %i.fa = fmul float %i.eu, f0x40C90FDB           ; 2 uses
  %i.fb = fmul float %i.ez, 2.000000e+00
  %i.fc = fmul float %i.fa, %i.ex                 ; 2 uses
  %i.fd = fadd float %i.fc, %i.fb                 ; 2 uses
  %i.fe = fmul float %i.fc, %i.fd                 ; 2 uses
  %i.ff = fadd float %i.fe, 1.000000e+00
  %i.fg = fdiv float 1.000000e+00, %i.ff          ; 2 uses
  %i.fh = fdiv float %i.fa, %i.fd
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fi = fmul float %i.fe, %i.fg
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.fi, i64 1
  br label %b2MakeSoft.exit

b2MakeSoft.exit:                                  ; preds = %bb.a, %bb.b
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.fg, %bb.b ], [ 0.000000e+00, %bb.a ]
  store <2 x float> %.sroa.014.0.i, ptr %i.es, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 204
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !82
  %i.fj = fadd float %i.am, %i.ao                 ; 2 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  %i.fl = fdiv float 1.000000e+00, %i.fj
  %i.fm = select i1 %i.fk, float %i.fl, float 0.000000e+00
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %i.fm, ptr %i.fn, align 4, !tbaa !101
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.fp = load i8, ptr %i.fo, align 4, !tbaa !140, !range !70, !noundef !71
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b2MakeSoft.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fr, i8 0, i64 20, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b2MakeSoft.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartWheelJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveWheelJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 2 uses
  %.sroa.05.0.vec.extract.i106 = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i107 = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.am = load float, ptr %i.al, align 4, !tbaa !83
  %i.an = load float, ptr %i.i, align 4, !tbaa !81 ; 4 uses
  %i.ao = fadd float %i.ai, %i.ak
  %i.ap = fsub float %i.ao, %i.am                 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.ad, %i.aq           ; 2 uses
  %i.as = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = fmul <2 x float> %i.as, %i.at           ; 2 uses
  %i.av = fsub <2 x float> %i.ar, %i.au           ; 2 uses
  %i.aw = fadd <2 x float> %i.ar, %i.au           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ay = extractelement <2 x float> %i.av, i64 0
  %i.az = extractelement <2 x float> %i.aw, i64 1
  %3 = fmul float %.sroa.05.0.vec.extract.i106, 0.000000e+00
  %4 = fmul float %.sroa.05.4.vec.extract.i107, 0.000000e+00
  %5 = fadd float %.sroa.05.4.vec.extract.i107, %3
  %6 = fsub float %.sroa.05.0.vec.extract.i106, %4
  %7 = insertelement <2 x float> poison, float %6, i64 0
  %i.ba = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.aa, %i.ba           ; 2 uses
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %i.bc = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %i.bc, %9              ; 2 uses
  %i.be = fsub <2 x float> %i.bb, %i.bd           ; 3 uses
  %i.bf = fadd <2 x float> %i.bb, %i.bd           ; 3 uses
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bh = extractelement <2 x float> %i.bf, i64 1 ; 2 uses
  %i.bi = fmul float %i.ay, %i.bh
  %i.bj = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bk = fmul float %i.az, %i.bj
  %i.bl = fsub float %i.bi, %i.bk
  %i.bm = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bn = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.bp = shufflevector <4 x float> %i.bm, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = fmul <4 x float> %i.bp, %i.bg           ; 4 uses
  %shift = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bq, %shift
  %i.br = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bs = fmul float %i.an, %i.bj
  %i.bt = fmul float %i.an, %i.bh
  %i.bu = extractelement <4 x float> %i.bq, i64 2
  %i.bv = fsub float %i.bu, %i.bt                 ; 2 uses
  %i.bw = extractelement <4 x float> %i.bq, i64 3
  %i.bx = fadd float %i.bw, %i.bs                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load float, ptr %i.by, align 4, !tbaa !109 ; 2 uses
  %i.ca = fmul float %i.ap, %i.bl
  %i.cb = fmul float %i.an, %i.br
  %i.cc = fadd float %i.ca, %i.cb
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !111
  %i.cg = and i32 %i.cf, 512
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ci = load <2 x float>, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ck = load <2 x float>, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cm = load <2 x float>, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.co = load <2 x float>, ptr %i.cn, align 4    ; 2 uses
  %i.cp = fsub <2 x float> %i.ci, %i.ck
  %i.cq = fadd <2 x float> %i.cp, %i.cm
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.aa, %i.cr           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cu = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x float> %i.ct, %i.cu           ; 2 uses
  %i.cw = fsub <2 x float> %i.cs, %i.cv
  %i.cx = fadd <2 x float> %i.cs, %i.cv
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cz = fsub <2 x float> %i.ax, %i.cy
  %i.da = fadd <2 x float> %i.cq, %i.cz
  %i.db = fadd <2 x float> %i.cy, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = fmul <2 x float> %i.dc, %i.db           ; 2 uses
  %i.de = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = fmul <2 x float> %i.de, %i.df           ; 2 uses
  %i.dh = fsub <2 x float> %i.dd, %i.dg
  %i.di = fadd <2 x float> %i.dd, %i.dg
  %i.dj = shufflevector <2 x float> %i.dh, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.an, i64 1
  %i.dm = fmul <2 x float> %i.dl, %i.dj           ; 2 uses
  %shift169 = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = fadd <2 x float> %i.dm, %shift169
  %i.dn = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.do = fadd float %i.bz, %i.dn
  %i.dp = load <2 x float>, ptr %i.q, align 4
  %i.dq = insertelement <2 x float> poison, float %i.b, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.bx, i64 1
  %i.du = fmul <2 x float> %i.dr, %i.dt
  %i.dv = fsub <2 x float> %i.dp, %i.du
  store <2 x float> %i.dv, ptr %i.q, align 4
  %i.dw = fmul float %i.f, %i.do
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !112
  %i.dz = fsub float %i.dy, %i.dw
  store float %i.dz, ptr %i.dx, align 4, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !111
  %i.ec = and i32 %i.eb, 512
  %.not79 = icmp eq i32 %i.ec, 0
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = load <2 x float>, ptr %i.y, align 4
  %i.ee = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.bx, i64 1
  %i.ei = fmul <2 x float> %i.ef, %i.eh
  %i.ej = fadd <2 x float> %i.ei, %i.ed
  store <2 x float> %i.ej, ptr %i.y, align 4
  %i.ek = fmul float %i.h, %i.cd
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !112
  %i.en = fadd float %i.ek, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !112
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2SolveWheelJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !102 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !103 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !104 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !105 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveWheelJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %.sroa.0142.0.copyload.pre = load <2 x float>, ptr %i.x, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0142.0.copyload = phi <2 x float> [ %.sroa.0142.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.x, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.q, align 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !112 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load <2 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load <2 x float>, ptr %i.ah, align 4    ; 2 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 4    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.an = load <2 x float>, ptr %i.al, align 4
  %i.ao = load <2 x float>, ptr %i.am, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = load <2 x float>, ptr %i.ar, align 4    ; 2 uses
  %.sroa.05.0.vec.extract.i313 = extractelement <2 x float> %i.as, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i314 = extractelement <2 x float> %i.as, i64 1 ; 2 uses
  %i.at = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.af, %i.at           ; 2 uses
  %i.av = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = fadd <2 x float> %i.au, %i.ax
  %i.az = fsub <2 x float> %i.au, %i.ax
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> %i.ay, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.aj, %i.bb           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.be = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 2 uses
  %i.bg = fadd <2 x float> %i.bc, %i.bf
  %i.bh = fsub <2 x float> %i.bc, %i.bf
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.bj = fsub <2 x float> %i.an, %i.ao
  %i.bk = fadd <2 x float> %i.bj, %i.aq
  %i.bl = fsub <2 x float> %i.bi, %i.ba
  %i.bm = fadd <2 x float> %i.bl, %i.bk           ; 4 uses
  %4 = fmul float %.sroa.05.0.vec.extract.i313, 0.000000e+00
  %5 = fmul float %.sroa.05.4.vec.extract.i314, 0.000000e+00
  %6 = fadd float %.sroa.05.4.vec.extract.i314, %4
  %7 = fsub float %.sroa.05.0.vec.extract.i313, %5
  %8 = insertelement <2 x float> poison, float %7, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.av, %9              ; 2 uses
  %10 = insertelement <2 x float> poison, float %6, i64 0
  %i.bo = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.af, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.br = fadd <2 x float> %i.bn, %i.bp           ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3> ; 12 uses
  %i.bt = extractelement <2 x float> %i.bm, i64 0
  %i.bu = extractelement <2 x float> %i.bq, i64 1 ; 4 uses
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = extractelement <2 x float> %i.br, i64 0 ; 4 uses
  %shift = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bs
  %i.bx = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.by = fadd float %i.bv, %i.bx                 ; 3 uses
  %i.bz = fadd <2 x float> %i.ba, %i.bm           ; 3 uses
  %foldExtExtBinop468 = fmul <2 x float> %i.bz, %i.bs
  %foldExtExtBinop470 = fmul <2 x float> %i.bz, %i.bs
  %shift472 = shufflevector <2 x float> %foldExtExtBinop470, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop473 = fsub <2 x float> %foldExtExtBinop468, %shift472
  %i.ca = extractelement <2 x float> %foldExtExtBinop473, i64 0 ; 6 uses
  %foldExtExtBinop475 = fmul <2 x float> %i.bi, %i.bs
  %foldExtExtBinop477 = fmul <2 x float> %i.bi, %i.bs
  %shift479 = shufflevector <2 x float> %foldExtExtBinop477, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop480 = fsub <2 x float> %foldExtExtBinop475, %shift479
  %i.cb = extractelement <2 x float> %foldExtExtBinop480, i64 0 ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !141, !range !70, !noundef !71
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = fadd float %i.f, %i.h
  %i.cg = fcmp une float %i.cf, 0.000000e+00
  %or.cond = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ch = fsub float %i.ac, %i.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !142
  %i.ck = fsub float %i.ch, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !101
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !109 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !100
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !143
  %i.ct = fmul float %i.cq, %i.cs                 ; 3 uses
  %i.cu = fmul float %i.cm, %i.ck
  %i.cv = fsub float %i.co, %i.cu                 ; 3 uses
  %i.cw = fneg float %i.ct                        ; 2 uses
  %i.cx = fcmp olt float %i.cv, %i.cw
  %i.cy = fcmp ogt float %i.cv, %i.ct
  %i.cz = select i1 %i.cy, float %i.ct, float %i.cv
  %i.da = select i1 %i.cx, float %i.cw, float %i.cz ; 2 uses
  store float %i.da, ptr %i.cn, align 4, !tbaa !109
  %i.db = fsub float %i.da, %i.co                 ; 2 uses
  %i.dc = fmul float %i.f, %i.db
  %i.dd = fsub float %i.aa, %i.dc
  %i.de = fmul float %i.h, %i.db
  %i.df = fadd float %i.ac, %i.de
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0267 = phi float [ %i.df, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %.0 = phi float [ %i.dd, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dh = load i8, ptr %i.dg, align 4, !tbaa !144, !range !70, !noundef !71
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !145
  %i.dl = fmul float %i.by, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !146
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dp = load float, ptr %i.do, align 4, !tbaa !147
  %i.dq = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fsub <2 x float> %.sroa.0142.0.copyload, %.sroa.0162.0.copyload
  %i.ds = fmul <2 x float> %i.dr, %i.dq           ; 2 uses
  %shift482 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop483 = fadd <2 x float> %i.ds, %shift482
  %i.dt = extractelement <2 x float> %foldExtExtBinop483, i64 0
  %i.du = fmul float %i.cb, %.0267
  %i.dv = fadd float %i.dt, %i.du
  %i.dw = fmul float %i.ca, %.0
  %i.dx = fsub float %i.dv, %i.dw
  %i.dy = fneg float %i.dn
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !99
  %i.eb = fmul float %i.ea, %i.dy
  %i.ec = fadd float %i.dx, %i.dl
  %i.ed = fmul float %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !107 ; 2 uses
  %i.eg = fmul float %i.dp, %i.ef
  %i.eh = fsub float %i.ed, %i.eg                 ; 4 uses
  %i.ei = fadd float %i.ef, %i.eh
  store float %i.ei, ptr %i.ee, align 4, !tbaa !107
  %i.ej = fmul float %i.ca, %i.eh
  %i.ek = fmul float %i.cb, %i.eh
  %i.el = fmul float %i.f, %i.ej
  %i.em = fsub float %.0, %i.el
  %i.en = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x float> %i.bs, %i.eo           ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.b, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.et = fmul <2 x float> %i.er, %i.es
  %i.eu = fsub <2 x float> %.sroa.0162.0.copyload, %i.et
  %i.ev = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = fmul <2 x float> %i.ew, %i.ex
  %i.ez = fadd <2 x float> %.sroa.0142.0.copyload, %i.ey
  %i.fa = fmul float %i.h, %i.ek
  %i.fb = fadd float %.0267, %i.fa
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1268 = phi float [ %i.fb, %bb.h ], [ %.0267, %bb.g ] ; 3 uses
  %.sroa.0142.0 = phi <2 x float> [ %i.ez, %bb.h ], [ %.sroa.0142.0.copyload, %bb.g ] ; 4 uses
  %.1 = phi float [ %i.em, %bb.h ], [ %.0, %bb.g ] ; 3 uses
  %.sroa.0162.0 = phi <2 x float> [ %i.eu, %bb.h ], [ %.sroa.0162.0.copyload, %bb.g ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.fd = load i8, ptr %i.fc, align 2, !tbaa !113, !range !70, !noundef !71
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !114
  %i.fh = fsub float %i.by, %i.fg                 ; 3 uses
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !148
  %i.fl = fmul float %i.fh, %i.fk
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !149
  %i.fo = fmul float %i.fh, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !150
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !151
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0278 = phi float [ 0.000000e+00, %bb.k ], [ %i.fs, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.0277 = phi float [ 1.000000e+00, %bb.k ], [ %i.fq, %bb.m ], [ 1.000000e+00, %bb.l ]
  %.0276 = phi float [ %i.fl, %bb.k ], [ %i.fo, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.sroa.01.0.vec.extract.i363 = extractelement <2 x float> %.sroa.0142.0, i64 0
  %.sroa.0.0.vec.extract.i364 = extractelement <2 x float> %.sroa.0162.0, i64 0
  %.sroa.01.4.vec.extract.i366 = extractelement <2 x float> %.sroa.0142.0, i64 1
  %.sroa.0.4.vec.extract.i367 = extractelement <2 x float> %.sroa.0162.0, i64 1
  %i.ft = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = fsub <2 x float> %.sroa.0142.0, %.sroa.0162.0
  %i.fv = fmul <2 x float> %i.ft, %i.fu           ; 2 uses
  %shift485 = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop486 = fadd <2 x float> %i.fv, %shift485
  %i.fw = extractelement <2 x float> %foldExtExtBinop486, i64 0
  %i.fx = fmul float %i.cb, %.1268
  %i.fy = fadd float %i.fx, %i.fw
  %i.fz = fmul float %i.ca, %.1
  %i.ga = fsub float %i.fy, %i.fz
  %i.gb = fneg float %.0277
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !99 ; 2 uses
  %i.ge = fmul float %i.gd, %i.gb
  %i.gf = fadd float %i.ga, %.0276
  %i.gg = fmul float %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !108 ; 3 uses
  %i.gj = fmul float %.0278, %i.gi
  %i.gk = fsub float %i.gg, %i.gj
  %i.gl = fadd float %i.gi, %i.gk                 ; 2 uses
  %i.gm = fcmp ogt float %i.gl, 0.000000e+00
  %i.gn = select i1 %i.gm, float %i.gl, float 0.000000e+00 ; 2 uses
  store float %i.gn, ptr %i.gh, align 4, !tbaa !108
  %i.go = fsub float %i.gn, %i.gi                 ; 4 uses
  %i.gp = fmul float %i.bu, %i.go                 ; 2 uses
  %i.gq = fmul float %i.bw, %i.go                 ; 2 uses
  %i.gr = fmul float %i.ca, %i.go
  %i.gs = fmul float %i.cb, %i.go
  %i.gt = fmul float %i.b, %i.gp
  %i.gu = fsub float %.sroa.0.0.vec.extract.i364, %i.gt ; 2 uses
  %i.gv = fmul float %i.b, %i.gq
  %i.gw = fsub float %.sroa.0.4.vec.extract.i367, %i.gv ; 2 uses
  %i.gx = fmul float %i.f, %i.gr
  %i.gy = fsub float %.1, %i.gx                   ; 2 uses
  %i.gz = fmul float %i.d, %i.gp
  %i.ha = fadd float %.sroa.01.0.vec.extract.i363, %i.gz ; 2 uses
end_hunk_0
