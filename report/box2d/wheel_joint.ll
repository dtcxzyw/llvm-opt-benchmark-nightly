Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/wheel_joint?download=true
inline.NumInlined: 108
inline.NumDeleted: 18
begin_hunk_0_@b2PrepareWheelJoint:bb.a
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !125  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !125  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !135
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !135
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load <2 x float>, ptr %i.ag, align 4, !tbaa !82 ; 2 uses
  %i.am = load float, ptr %i.ah, align 4, !tbaa !137 ; 3 uses
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !82 ; 2 uses
  %i.ao = load float, ptr %i.aj, align 4, !tbaa !137 ; 3 uses
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ap, ptr %i.ak, align 4, !tbaa !82
  %i.aq = icmp eq i32 %i.p, 2
  %i.ar = select i1 %i.aq, i32 %i.x, i32 -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !96
  %i.at = icmp eq i32 %i.t, 2
  %i.au = select i1 %i.at, i32 %i.z, i32 -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.au, ptr %i.av, align 4, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load <2 x float>, ptr %i.ay, align 4    ; 2 uses
  %i.bc = load <2 x float>, ptr %i.ba, align 4    ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bb, %i.bd           ; 2 uses
  %i.bf = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bh = fmul <2 x float> %i.bf, %i.bg           ; 2 uses
  %i.bi = fsub <2 x float> %i.be, %i.bh
  %i.bj = fadd <2 x float> %i.be, %i.bh
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
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %4 = load float, ptr %3, align 4, !tbaa !107
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = load float, ptr %5, align 4, !tbaa !108
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %8 = load float, ptr %7, align 4, !tbaa !83
  %9 = load float, ptr %i.i, align 4, !tbaa !81   ; 4 uses
  %i.ah = fadd float %4, %6
  %10 = fsub float %i.ah, %8                      ; 3 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ad, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = fsub <2 x float> %i.aj, %i.am           ; 2 uses
  %i.ao = fadd <2 x float> %i.aj, %i.am           ; 2 uses
  %11 = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = extractelement <2 x float> %i.an, i64 0
  %13 = extractelement <2 x float> %i.ao, i64 1
  %i.ap = fmul float %.sroa.05.0.vec.extract.i106, 0.000000e+00
  %i.aq = fmul float %.sroa.05.4.vec.extract.i107, 0.000000e+00
  %14 = fadd float %.sroa.05.4.vec.extract.i107, %i.ap
  %i.ar = fsub float %.sroa.05.0.vec.extract.i106, %i.aq
  %15 = insertelement <2 x float> poison, float %i.ar, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = fmul <2 x float> %i.aa, %16               ; 2 uses
  %18 = insertelement <2 x float> poison, float %14, i64 0
  %19 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %20 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %19, %20                 ; 2 uses
  %22 = fsub <2 x float> %17, %21                 ; 3 uses
  %23 = fadd <2 x float> %17, %21                 ; 3 uses
  %24 = shufflevector <2 x float> %22, <2 x float> %23, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %25 = extractelement <2 x float> %23, i64 1     ; 2 uses
  %i.as = fmul float %12, %25
  %26 = extractelement <2 x float> %22, i64 0     ; 2 uses
  %27 = fmul float %13, %26
  %28 = fsub float %i.as, %27
  %29 = shufflevector <2 x float> %11, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = insertelement <4 x float> poison, float %10, i64 0
  %31 = shufflevector <4 x float> %30, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %32 = shufflevector <4 x float> %29, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %33 = fmul <4 x float> %32, %24                 ; 4 uses
  %shift = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %33, %shift
  %34 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %35 = fmul float %9, %26
  %i.at = fmul float %9, %25
  %36 = extractelement <4 x float> %33, i64 2
  %i.au = fsub float %36, %i.at                   ; 2 uses
  %37 = extractelement <4 x float> %33, i64 3
  %i.av = fadd float %37, %35                     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !109 ; 2 uses
  %i.ay = fmul float %10, %28
  %i.az = fmul float %9, %34
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = fadd float %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !111
  %i.be = and i32 %i.bd, 512
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bg = load <2 x float>, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bi = load <2 x float>, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bk = load <2 x float>, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = load <2 x float>, ptr %i.bl, align 4    ; 2 uses
  %i.bn = fsub <2 x float> %i.bg, %i.bi
  %i.bo = fadd <2 x float> %i.bn, %i.bk
  %i.bp = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.aa, %i.bp           ; 2 uses
  %i.br = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.br, %i.bs           ; 2 uses
  %i.bu = fsub <2 x float> %i.bq, %i.bt
  %i.bv = fadd <2 x float> %i.bq, %i.bt
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bx = fsub <2 x float> %11, %i.bw
  %i.by = fadd <2 x float> %i.bo, %i.bx
  %i.bz = fadd <2 x float> %i.bw, %i.by           ; 2 uses
  %38 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x float> %38, %i.bz             ; 2 uses
  %i.cb = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cd = fmul <2 x float> %i.cb, %i.cc           ; 2 uses
  %i.ce = fsub <2 x float> %i.ca, %i.cd
  %i.cf = fadd <2 x float> %i.ca, %i.cd
  %i.cg = shufflevector <2 x float> %i.ce, <2 x float> %i.cf, <2 x i32> <i32 0, i32 3>
  %i.ch = insertelement <2 x float> poison, float %10, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %9, i64 1
  %i.cj = fmul <2 x float> %i.ci, %i.cg           ; 2 uses
  %shift169 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = fadd <2 x float> %i.cj, %shift169
  %i.ck = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.cl = fadd float %i.ax, %i.ck
  %i.cm = load <2 x float>, ptr %i.q, align 4
  %39 = insertelement <2 x float> poison, float %i.b, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x float> poison, float %i.au, i64 0
  %41 = insertelement <2 x float> %i.cn, float %i.av, i64 1
  %42 = fmul <2 x float> %40, %41
  %43 = fsub <2 x float> %i.cm, %42
  store <2 x float> %43, ptr %i.q, align 4
  %i.co = fmul float %i.f, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !112
  %i.cr = fsub float %i.cq, %i.co
  store float %i.cr, ptr %i.cp, align 4, !tbaa !112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !111
  %i.cu = and i32 %i.ct, 512
  %.not79 = icmp eq i32 %i.cu, 0
  br i1 %.not79, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cv = load <2 x float>, ptr %i.y, align 4
  %44 = insertelement <2 x float> poison, float %i.d, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> poison, float %i.au, i64 0
  %46 = insertelement <2 x float> %i.cw, float %i.av, i64 1
  %47 = fmul <2 x float> %45, %46
  %48 = fadd <2 x float> %47, %i.cv
  store <2 x float> %48, ptr %i.y, align 4
  %i.cx = fmul float %i.h, %i.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !112
  %i.da = fadd float %i.cx, %i.cz
  store float %i.da, ptr %i.cy, align 4, !tbaa !112
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
  %i.bn = fmul float %.sroa.05.0.vec.extract.i313, 0.000000e+00
  %i.bo = fmul float %.sroa.05.4.vec.extract.i314, 0.000000e+00
  %i.bp = fadd float %.sroa.05.4.vec.extract.i314, %i.bn
  %i.bq = fsub float %.sroa.05.0.vec.extract.i313, %i.bo
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.av, %i.bs           ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.af, %i.bv           ; 2 uses
  %i.bx = fsub <2 x float> %i.bt, %i.bw           ; 2 uses
  %i.by = fadd <2 x float> %i.bt, %i.bw           ; 2 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3> ; 12 uses
  %i.ca = extractelement <2 x float> %i.bm, i64 0
  %i.cb = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cc = fmul float %i.ca, %i.cb
  %i.cd = extractelement <2 x float> %i.by, i64 0 ; 4 uses
  %shift = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.bz
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cf = fadd float %i.cc, %i.ce                 ; 3 uses
  %i.cg = fadd <2 x float> %i.ba, %i.bm           ; 3 uses
  %foldExtExtBinop468 = fmul <2 x float> %i.cg, %i.bz
  %foldExtExtBinop470 = fmul <2 x float> %i.cg, %i.bz
  %shift472 = shufflevector <2 x float> %foldExtExtBinop470, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop473 = fsub <2 x float> %foldExtExtBinop468, %shift472
  %i.ch = extractelement <2 x float> %foldExtExtBinop473, i64 0 ; 6 uses
  %foldExtExtBinop475 = fmul <2 x float> %i.bi, %i.bz
  %foldExtExtBinop477 = fmul <2 x float> %i.bi, %i.bz
  %shift479 = shufflevector <2 x float> %foldExtExtBinop477, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop480 = fsub <2 x float> %foldExtExtBinop475, %shift479
  %i.ci = extractelement <2 x float> %foldExtExtBinop480, i64 0 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !141, !range !70, !noundef !71
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = fadd float %i.f, %i.h
  %i.cn = fcmp une float %i.cm, 0.000000e+00
  %or.cond = select i1 %i.cl, i1 %i.cn, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.co = fsub float %i.ac, %i.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !142
  %i.cr = fsub float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !101
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !109 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !143
  %i.da = fmul float %i.cx, %i.cz                 ; 3 uses
  %i.db = fmul float %i.ct, %i.cr
  %i.dc = fsub float %i.cv, %i.db                 ; 3 uses
  %i.dd = fneg float %i.da                        ; 2 uses
  %i.de = fcmp olt float %i.dc, %i.dd
  %i.df = fcmp ogt float %i.dc, %i.da
  %i.dg = select i1 %i.df, float %i.da, float %i.dc
  %i.dh = select i1 %i.de, float %i.dd, float %i.dg ; 2 uses
  store float %i.dh, ptr %i.cu, align 4, !tbaa !109
  %i.di = fsub float %i.dh, %i.cv                 ; 2 uses
  %i.dj = fmul float %i.f, %i.di
  %i.dk = fsub float %i.aa, %i.dj
  %i.dl = fmul float %i.h, %i.di
  %i.dm = fadd float %i.ac, %i.dl
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0267 = phi float [ %i.dm, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %.0 = phi float [ %i.dk, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !144, !range !70, !noundef !71
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !145
  %i.ds = fmul float %i.cf, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.du = load float, ptr %i.dt, align 4, !tbaa !146
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !147
  %i.dx = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dy = fsub <2 x float> %.sroa.0142.0.copyload, %.sroa.0162.0.copyload
  %i.dz = fmul <2 x float> %i.dy, %i.dx           ; 2 uses
  %shift482 = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop483 = fadd <2 x float> %i.dz, %shift482
  %i.ea = extractelement <2 x float> %foldExtExtBinop483, i64 0
  %i.eb = fmul float %i.ci, %.0267
  %i.ec = fadd float %i.ea, %i.eb
  %i.ed = fmul float %i.ch, %.0
  %i.ee = fsub float %i.ec, %i.ed
  %i.ef = fneg float %i.du
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !99
  %i.ei = fmul float %i.eh, %i.ef
  %i.ej = fadd float %i.ee, %i.ds
end_hunk_0
