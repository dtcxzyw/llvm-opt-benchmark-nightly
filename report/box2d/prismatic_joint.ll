Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/prismatic_joint?download=true
inline.NumInlined: 139
inline.NumDeleted: 24
begin_hunk_0_@b2PreparePrismaticJoint:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !122  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !122  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !123  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !123  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 4 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !133
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !101
  %i.ak = load <2 x float>, ptr %i.ah, align 4, !tbaa !101
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.al, ptr %i.ai, align 4, !tbaa !101
  %i.am = icmp eq i32 %i.p, 2
  %i.an = select i1 %i.am, i32 %i.x, i32 -1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !102
  %i.ap = icmp eq i32 %i.t, 2
  %i.aq = select i1 %i.ap, i32 %i.z, i32 -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aw, align 4    ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ax, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = fsub <2 x float> %i.ba, %i.bd
  %i.bf = fadd <2 x float> %i.ba, %i.bd
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bg, ptr %i.at, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bi = load <2 x float>, ptr %i.av, align 4
  %i.bj = load <2 x float>, ptr %i.bh, align 4
  %i.bk = load <2 x float>, ptr %i.au, align 4    ; 2 uses
  %i.bl = fsub <2 x float> %i.bi, %i.bj           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm           ; 2 uses
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = fsub <2 x float> %i.bn, %i.bq
  %i.bs = fadd <2 x float> %i.bn, %i.bq
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bt, ptr %i.as, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load <2 x float>, ptr %i.bw, align 4    ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 4    ; 2 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x float> %i.bz, %i.cb           ; 2 uses
  %i.cd = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.cd, %i.ce           ; 2 uses
  %i.cg = fsub <2 x float> %i.cc, %i.cf
  %i.ch = fadd <2 x float> %i.cc, %i.cf
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ci, ptr %i.bv, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ck = load <2 x float>, ptr %i.bx, align 4
  %i.cl = load <2 x float>, ptr %i.cj, align 4
  %i.cm = load <2 x float>, ptr %i.bw, align 4    ; 2 uses
  %i.cn = fsub <2 x float> %i.ck, %i.cl           ; 2 uses
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cm, %i.co           ; 2 uses
  %i.cq = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = fmul <2 x float> %i.cq, %i.cr           ; 2 uses
  %i.ct = fsub <2 x float> %i.cp, %i.cs
  %i.cu = fadd <2 x float> %i.cp, %i.cs
  %i.cv = shufflevector <2 x float> %i.ct, <2 x float> %i.cu, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cv, ptr %i.bu, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cz = load <2 x float>, ptr %i.cx, align 4
  %i.da = load <2 x float>, ptr %i.cy, align 4
  %i.db = fsub <2 x float> %i.cz, %i.da
  store <2 x float> %i.db, ptr %i.cw, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.de = load float, ptr %i.dd, align 4, !tbaa !134 ; 2 uses
  %i.df = fcmp oeq float %i.de, 0.000000e+00
  br i1 %i.df, label %b2MakeSoft.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !104
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dj = load float, ptr %i.di, align 4, !tbaa !135
  %i.dk = fmul float %i.de, f0x40C90FDB           ; 2 uses
  %i.dl = fmul float %i.dj, 2.000000e+00
  %i.dm = fmul float %i.dk, %i.dh                 ; 2 uses
  %i.dn = fadd float %i.dm, %i.dl                 ; 2 uses
  %i.do = fmul float %i.dm, %i.dn                 ; 2 uses
  %i.dp = fadd float %i.do, 1.000000e+00
  %i.dq = fdiv float 1.000000e+00, %i.dp          ; 2 uses
  %i.dr = fdiv float %i.dk, %i.dn
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ds = fmul float %i.do, %i.dq
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ds, i64 1
  br label %b2MakeSoft.exit

b2MakeSoft.exit:                                  ; preds = %bb.a, %bb.b
  %.sroa.014.0.i = phi <2 x float> [ %.sroa.014.4.vec.insert19.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.5.0.i = phi float [ %i.dq, %bb.b ], [ 0.000000e+00, %bb.a ]
  store <2 x float> %.sroa.014.0.i, ptr %i.dc, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !101
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !136, !range !70, !noundef !71
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %b2MakeSoft.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %b2MakeSoft.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartPrismaticJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 4, !tbaa !102  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !103  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 2 uses
  %.sroa.05.0.vec.extract.i109 = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i110 = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %3 = fmul float %.sroa.05.4.vec.extract.i110, 0.000000e+00
  %4 = fmul float %.sroa.05.0.vec.extract.i109, 0.000000e+00
  %5 = fadd float %.sroa.05.4.vec.extract.i110, %4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !86
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.an = load float, ptr %i.am, align 4, !tbaa !87
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !88
  %i.aq = load float, ptr %i.i, align 4, !tbaa !85 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load float, ptr %i.ar, align 4, !tbaa !109 ; 2 uses
  %i.at = fadd float %i.al, %i.an
  %6 = fsub float %.sroa.05.0.vec.extract.i109, %3
  %i.au = fsub float %i.at, %i.ap                 ; 4 uses
  %i.av = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.ad, %i.av           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ax, %i.ay           ; 2 uses
  %i.ba = fsub <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = fadd <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bd = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %7 = insertelement <2 x float> poison, float %6, i64 0
  %i.be = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bd, %i.be           ; 2 uses
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.aa, %9              ; 2 uses
  %i.bh = fadd <2 x float> %i.bf, %i.bg           ; 3 uses
  %10 = fsub <2 x float> %i.bf, %i.bg             ; 3 uses
  %11 = shufflevector <2 x float> %i.bh, <2 x float> %10, <2 x i32> <i32 0, i32 3>
  %12 = extractelement <2 x float> %i.ba, i64 0
  %i.bi = extractelement <2 x float> %i.bh, i64 0 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bc, %11
  %13 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %14 = extractelement <2 x float> %i.bb, i64 1   ; 2 uses
  %15 = extractelement <2 x float> %10, i64 1     ; 4 uses
  %16 = fmul float %14, %15
  %17 = fsub float %13, %16
  %18 = fmul float %12, %15
  %19 = fmul float %14, %i.bi
  %20 = fadd float %18, %19
  %21 = fmul float %i.au, %i.bi
  %i.bj = fmul float %i.au, %15
  %i.bk = fmul float %i.aq, %15
  %22 = fmul float %i.bi, %i.aq
  %i.bl = fsub float %i.bj, %22                   ; 2 uses
  %i.bm = fadd float %21, %i.bk                   ; 2 uses
  %i.bn = fmul float %i.au, %17
  %i.bo = fmul float %i.aq, %20
  %i.bp = fadd float %i.bn, %i.bo
  %i.bq = fadd float %i.as, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !110
  %i.bt = and i32 %i.bs, 512
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load <2 x float>, ptr %i.bu, align 4    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bx = load <2 x float>, ptr %i.bw, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bz = load <2 x float>, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cb = load <2 x float>, ptr %i.ca, align 4
  %i.cc = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.aa, %i.cc           ; 2 uses
  %i.ce = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = fmul <2 x float> %i.bd, %i.ce           ; 2 uses
  %i.cg = fsub <2 x float> %i.cd, %i.cf
  %i.ch = fadd <2 x float> %i.cd, %i.cf
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cj = fsub <2 x float> %i.bx, %i.bz
  %i.ck = fadd <2 x float> %i.cj, %i.cb
  %i.cl = fsub <2 x float> %i.bc, %i.ci
  %i.cm = fadd <2 x float> %i.cl, %i.ck
  %i.cn = fadd <2 x float> %i.ci, %i.cm           ; 2 uses
  %23 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %23, %i.cn             ; 2 uses
  %24 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = fmul <2 x float> %24, %i.cp             ; 2 uses
  %i.cr = fsub <2 x float> %i.co, %i.cq
  %i.cs = fadd <2 x float> %i.co, %i.cq
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = insertelement <2 x float> poison, float %i.au, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.aq, i64 1
  %i.cw = fmul <2 x float> %i.cv, %i.ct           ; 2 uses
  %shift.a = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop172 = fadd <2 x float> %i.cw, %shift.a
  %i.cx = extractelement <2 x float> %foldExtExtBinop172, i64 0
  %i.cy = fadd float %i.as, %i.cx
  %i.cz = load <2 x float>, ptr %i.q, align 4
  %i.da = insertelement <2 x float> poison, float %i.b, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.bm, i64 1
  %i.de = fmul <2 x float> %i.db, %i.dd
  %i.df = fsub <2 x float> %i.cz, %i.de
  store <2 x float> %i.df, ptr %i.q, align 4
  %i.dg = fmul float %i.f, %i.cy
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !83
  %i.dj = fsub float %i.di, %i.dg
  store float %i.dj, ptr %i.dh, align 4, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !110
  %i.dm = and i32 %i.dl, 512
  %.not82 = icmp eq i32 %i.dm, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = load <2 x float>, ptr %i.y, align 4
  %i.do = insertelement <2 x float> poison, float %i.d, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.bm, i64 1
  %i.ds = fmul <2 x float> %i.dp, %i.dr
  %i.dt = fadd <2 x float> %i.ds, %i.dn
  store <2 x float> %i.dt, ptr %i.y, align 4
  %i.du = fmul float %i.h, %i.bq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !83
  %i.dx = fadd float %i.du, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolvePrismaticJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !105 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !106 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !101 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 4, !tbaa !102  ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.q = load i32, ptr %i.p, align 4, !tbaa !103  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !107
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.0208.0.copyload.pre = load <2 x float>, ptr %i.v, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0208.0.copyload = phi <2 x float> [ %.sroa.0208.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.w = phi ptr [ %i.v, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.0231.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !83 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !83 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load <2 x float>, ptr %i.ab, align 4    ; 4 uses
  %i.af = load <2 x float>, ptr %i.ad, align 4    ; 3 uses
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ak = fmul <4 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = load <2 x float>, ptr %i.al, align 4    ; 3 uses
  %i.ap = load <2 x float>, ptr %i.an, align 4
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.as = fmul <4 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.au = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.av = fsub <2 x float> %i.at, %i.au
  %i.aw = fadd <2 x float> %i.at, %i.au
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> %i.aw, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.ay = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.az = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ba = fadd <2 x float> %i.ay, %i.az
  %i.bb = fsub <2 x float> %i.ay, %i.az
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bd = fmul <4 x float> %i.ax, %i.bc           ; 4 uses
  %shift = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.bd, %shift
  %i.be = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift598 = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop599 = fadd <4 x float> %shift598, %i.bd
  %i.bf = extractelement <4 x float> %foldExtExtBinop599, i64 2
  %i.bg = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.bh = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bk = load <2 x float>, ptr %i.bi, align 4
  %i.bl = load <2 x float>, ptr %i.bj, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bn = load <2 x float>, ptr %i.bm, align 4
  %i.bo = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.ae, %i.bo           ; 2 uses
  %i.bq = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fmul <2 x float> %i.ag, %i.bq           ; 2 uses
  %i.bs = fadd <2 x float> %i.bp, %i.br
  %i.bt = fsub <2 x float> %i.bp, %i.br
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> %i.bs, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bv = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.ao, %i.bv           ; 2 uses
  %i.bx = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = fadd <2 x float> %i.bw, %i.bz           ; 2 uses
  %i.cb = fsub <2 x float> %i.bw, %i.bz           ; 3 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> %i.ca, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cd = fsub <2 x float> %i.bk, %i.bl
  %i.ce = fadd <2 x float> %i.cd, %i.bn
  %i.cf = fsub <2 x float> %i.cc, %i.bu
  %i.cg = fadd <2 x float> %i.cf, %i.ce           ; 4 uses
  %i.ch = fmul <2 x float> %i.af, zeroinitializer ; 2 uses
  %i.ci = fsub <2 x float> %i.ah, %i.ch
  %i.cj = fadd <2 x float> %i.ah, %i.ch
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fmul <2 x float> %i.ag, %i.ck           ; 2 uses
  %i.cm = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.ae, %i.cm           ; 2 uses
  %i.co = fsub <2 x float> %i.cl, %i.cn           ; 3 uses
  %i.cp = fadd <2 x float> %i.cl, %i.cn           ; 3 uses
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> %i.co, <2 x i32> <i32 0, i32 3> ; 8 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.cs = fmul <2 x float> %i.cr, %i.cg           ; 2 uses
  %shift601 = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop602 = fadd <2 x float> %i.cs, %shift601
  %i.ct = extractelement <2 x float> %foldExtExtBinop602, i64 0 ; 3 uses
  %foldExtExtBinop604 = fadd <2 x float> %i.bu, %i.cg ; 2 uses
  %i.cu = extractelement <2 x float> %foldExtExtBinop604, i64 0
  %foldExtExtBinop606 = fadd <2 x float> %i.bu, %i.cg ; 2 uses
  %i.cv = extractelement <2 x float> %foldExtExtBinop606, i64 1
  %i.cw = fadd float %i.b, %i.d                   ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cz = shufflevector <2 x float> %foldExtExtBinop604, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.da = fmul <2 x float> %i.cx, %i.cz
  %i.db = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = shufflevector <2 x float> %i.cc, <2 x float> %foldExtExtBinop606, <2 x i32> <i32 3, i32 1>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = fsub <2 x float> %i.da, %i.dd           ; 10 uses
  %i.df = fmul <2 x float> %i.f, %i.de
  %i.dg = fmul <2 x float> %i.de, %i.df           ; 2 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = fadd float %i.cw, %i.dh
  %i.dj = extractelement <2 x float> %i.dg, i64 1
  %i.dk = fadd float %i.dj, %i.di                 ; 2 uses
  %i.dl = fcmp ogt float %i.dk, 0.000000e+00
  %i.dm = fdiv float 1.000000e+00, %i.dk
  %i.dn = select i1 %i.dl, float %i.dm, float 0.000000e+00 ; 4 uses
end_hunk_0
