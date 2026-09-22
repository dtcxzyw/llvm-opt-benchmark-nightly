Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/prismatic_joint?download=true
inline.NumInlined: 139
inline.NumDeleted: 24
begin_hunk_0_@b2GetPrismaticJointForce:bb.a
  %i.o = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.q = load float, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.r = load float, ptr %i.e, align 4, !tbaa !85
  %i.s = fmul float %i.q, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !86
  %i.v = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load float, ptr %i.w, align 4, !tbaa !87
  %i.y = fsub float %i.v, %i.x
  %i.z = fmul float %i.q, %i.y                    ; 2 uses
  %i.aa = fmul float %i.s, %i.m
  %i.ab = fmul float %i.m, %i.z
  %i.ac = fmul float %i.o, %i.z
  %i.ad = fmul float %i.s, %i.o
  %i.ae = fsub float %i.ab, %i.ad
  %.sroa.02.0.vec.insert.i29 = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.af = fadd float %i.aa, %i.ac
  %.sroa.02.4.vec.insert.i30 = insertelement <2 x float> %.sroa.02.0.vec.insert.i29, float %i.af, i64 1
  ret <2 x float> %.sroa.02.4.vec.insert.i30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @b2GetPrismaticJointTorque(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load float, ptr %i.c, align 4, !tbaa !69
  %i.e = fmul float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PreparePrismaticJoint(ptr nofree noundef captures(none) initializes((48, 64), (144, 204)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
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
  %i.aj = load <2 x float>, ptr %i.ag, align 4, !tbaa !86
  %i.ak = load <2 x float>, ptr %i.ah, align 4, !tbaa !86
  %i.al = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.al, ptr %i.ai, align 4, !tbaa !86
  %i.am = icmp eq i32 %i.p, 2
  %i.an = select i1 %i.am, i32 %i.x, i32 -1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !100
  %i.ap = icmp eq i32 %i.t, 2
  %i.aq = select i1 %i.ap, i32 %i.z, i32 -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !101
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
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !102
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
  store float %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !86
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
  %i.b = load float, ptr %i.a, align 4, !tbaa !103
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101  ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ad = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load <2 x float>, ptr %i.af, align 4    ; 2 uses
  %.sroa.05.0.vec.extract.i109 = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %.sroa.05.4.vec.extract.i110 = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 100
  %4 = load float, ptr %3, align 4, !tbaa !106
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = load float, ptr %5, align 4, !tbaa !107
  %7 = fadd float %4, %6
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 108
  %9 = load float, ptr %8, align 4, !tbaa !108
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %11 = load float, ptr %10, align 4, !tbaa !87
  %12 = load float, ptr %i.i, align 4, !tbaa !85  ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %14 = load float, ptr %13, align 4, !tbaa !109  ; 2 uses
  %i.ah = fadd float %7, %9
  %15 = fsub float %i.ah, %11                     ; 3 uses
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %i.ad, %i.ai           ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.al = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x float> %i.ak, %i.al           ; 2 uses
  %i.an = fsub <2 x float> %i.aj, %i.am           ; 2 uses
  %i.ao = fadd <2 x float> %i.aj, %i.am           ; 2 uses
  %16 = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3> ; 2 uses
  %17 = extractelement <2 x float> %i.an, i64 0
  %18 = extractelement <2 x float> %i.ao, i64 1
  %i.ap = fmul float %.sroa.05.0.vec.extract.i109, 0.000000e+00
  %19 = fmul float %.sroa.05.4.vec.extract.i110, 0.000000e+00
  %i.aq = fadd float %.sroa.05.4.vec.extract.i110, %i.ap
  %20 = fsub float %.sroa.05.0.vec.extract.i109, %19
  %21 = insertelement <2 x float> poison, float %20, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x float> %i.aa, %22               ; 2 uses
  %24 = insertelement <2 x float> poison, float %i.aq, i64 0
  %25 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %26 = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = fmul <2 x float> %25, %26                 ; 2 uses
  %28 = fsub <2 x float> %23, %27                 ; 3 uses
  %29 = fadd <2 x float> %23, %27                 ; 3 uses
  %30 = shufflevector <2 x float> %28, <2 x float> %29, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %31 = extractelement <2 x float> %29, i64 1     ; 2 uses
  %32 = fmul float %17, %31
  %33 = extractelement <2 x float> %28, i64 0     ; 2 uses
  %34 = fmul float %18, %33
  %i.ar = fsub float %32, %34
  %35 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = insertelement <4 x float> poison, float %15, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %38 = shufflevector <4 x float> %35, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %39 = fmul <4 x float> %38, %30                 ; 4 uses
  %shift = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %39, %shift
  %40 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.as = fmul float %12, %33
  %i.at = fmul float %31, %12
  %41 = extractelement <4 x float> %39, i64 2
  %i.au = fsub float %41, %i.at                   ; 2 uses
  %42 = extractelement <4 x float> %39, i64 3
  %i.av = fadd float %42, %i.as                   ; 2 uses
  %i.aw = fmul float %15, %i.ar
  %i.ax = fmul float %12, %40
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = fadd float %14, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !110
  %i.bc = and i32 %i.bb, 512
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = load <2 x float>, ptr %i.bd, align 4    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bg = load <2 x float>, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bi = load <2 x float>, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bk = load <2 x float>, ptr %i.bj, align 4
  %i.bl = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.aa, %i.bl           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.bq = fsub <2 x float> %i.bm, %i.bp
  %i.br = fadd <2 x float> %i.bm, %i.bp
  %i.bs = shufflevector <2 x float> %i.bq, <2 x float> %i.br, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bt = fsub <2 x float> %i.bg, %i.bi
  %i.bu = fadd <2 x float> %i.bt, %i.bk
  %i.bv = fsub <2 x float> %16, %i.bs
  %i.bw = fadd <2 x float> %i.bv, %i.bu
  %i.bx = fadd <2 x float> %i.bs, %i.bw           ; 2 uses
  %43 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x float> %43, %i.bx             ; 2 uses
  %i.bz = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = fmul <2 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = fsub <2 x float> %i.by, %i.cb
  %i.cd = fadd <2 x float> %i.by, %i.cb
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.cf = insertelement <2 x float> poison, float %15, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %12, i64 1
  %i.ch = fmul <2 x float> %i.cg, %i.ce           ; 2 uses
  %shift172 = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop173 = fadd <2 x float> %i.ch, %shift172
  %i.ci = extractelement <2 x float> %foldExtExtBinop173, i64 0
  %i.cj = fadd float %14, %i.ci
  %i.ck = load <2 x float>, ptr %i.q, align 4
  %44 = insertelement <2 x float> poison, float %i.b, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.au, i64 0
  %46 = insertelement <2 x float> %i.cl, float %i.av, i64 1
  %47 = fmul <2 x float> %45, %46
  %48 = fsub <2 x float> %i.ck, %47
  store <2 x float> %48, ptr %i.q, align 4
  %i.cm = fmul float %i.f, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !83
  %i.cp = fsub float %i.co, %i.cm
  store float %i.cp, ptr %i.cn, align 4, !tbaa !83
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !110
  %i.cs = and i32 %i.cr, 512
  %.not82 = icmp eq i32 %i.cs, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = load <2 x float>, ptr %i.y, align 4
  %49 = insertelement <2 x float> poison, float %i.d, i64 0
  %50 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x float> poison, float %i.au, i64 0
  %51 = insertelement <2 x float> %i.cu, float %i.av, i64 1
  %52 = fmul <2 x float> %50, %51
  %53 = fadd <2 x float> %52, %i.ct
  store <2 x float> %53, ptr %i.y, align 4
  %i.cv = fmul float %i.h, %i.az
  %i.cw = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !83
  %i.cy = fadd float %i.cv, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !83
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolvePrismaticJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !103 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !104 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !86 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolvePrismaticJoint.dummyState, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 4, !tbaa !100  ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !105
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.q = load i32, ptr %i.p, align 4, !tbaa !101  ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105
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
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aj = fmul <4 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.an = load <2 x float>, ptr %i.ak, align 4    ; 3 uses
  %i.ao = load <2 x float>, ptr %i.am, align 4
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.aq = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = fmul <4 x float> %i.ap, %i.aq           ; 2 uses
  %i.as = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.at = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = fadd <2 x float> %i.as, %i.at
  %i.aw = shufflevector <2 x float> %i.au, <2 x float> %i.av, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.ax = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ay = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = fadd <2 x float> %i.ax, %i.ay
  %i.ba = fsub <2 x float> %i.ax, %i.ay
  %i.bb = shufflevector <2 x float> %i.az, <2 x float> %i.ba, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bc = fmul <4 x float> %i.aw, %i.bb           ; 4 uses
  %shift = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.bc, %shift
  %i.bd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift598 = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop599 = fadd <4 x float> %shift598, %i.bc
  %i.be = extractelement <4 x float> %foldExtExtBinop599, i64 2
  %i.bf = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.bg = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bj = load <2 x float>, ptr %i.bh, align 4
  %i.bk = load <2 x float>, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bm = load <2 x float>, ptr %i.bl, align 4
  %i.bn = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.ae, %i.bn           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.ag, %i.bp           ; 2 uses
  %i.br = fadd <2 x float> %i.bo, %i.bq
  %i.bs = fsub <2 x float> %i.bo, %i.bq
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> %i.br, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.an, %i.bu           ; 2 uses
  %i.bw = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = fadd <2 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fsub <2 x float> %i.bv, %i.by           ; 3 uses
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cc = fsub <2 x float> %i.bj, %i.bk
  %i.cd = fadd <2 x float> %i.cc, %i.bm
  %i.ce = fsub <2 x float> %i.cb, %i.bt
  %i.cf = fadd <2 x float> %i.ce, %i.cd           ; 4 uses
  %i.cg = fmul float %.sroa.0.0.vec.extract.i, 0.000000e+00
  %i.ch = fmul float %.sroa.0.4.vec.extract.i, 0.000000e+00
  %i.ci = fadd float %.sroa.0.4.vec.extract.i, %i.cg
  %i.cj = fsub float %.sroa.0.0.vec.extract.i, %i.ch
  %i.ck = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fmul <2 x float> %i.ag, %i.cl           ; 2 uses
  %i.cn = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.ae, %i.co           ; 2 uses
  %i.cq = fsub <2 x float> %i.cm, %i.cp           ; 3 uses
  %i.cr = fadd <2 x float> %i.cm, %i.cp           ; 3 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3> ; 8 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.cu = fmul <2 x float> %i.ct, %i.cf           ; 2 uses
  %shift601 = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop602 = fadd <2 x float> %i.cu, %shift601
  %i.cv = extractelement <2 x float> %foldExtExtBinop602, i64 0 ; 3 uses
  %foldExtExtBinop604 = fadd <2 x float> %i.bt, %i.cf ; 2 uses
  %i.cw = extractelement <2 x float> %foldExtExtBinop604, i64 0
  %foldExtExtBinop606 = fadd <2 x float> %i.bt, %i.cf ; 2 uses
  %i.cx = extractelement <2 x float> %foldExtExtBinop606, i64 1
  %i.cy = fadd float %i.b, %i.d                   ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.db = shufflevector <2 x float> %foldExtExtBinop604, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.dc = fmul <2 x float> %i.cz, %i.db
  %i.dd = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.de = shufflevector <2 x float> %i.cb, <2 x float> %foldExtExtBinop606, <2 x i32> <i32 3, i32 1>
  %i.df = fmul <2 x float> %i.dd, %i.de
  %i.dg = fsub <2 x float> %i.dc, %i.df           ; 10 uses
  %i.dh = fmul <2 x float> %i.f, %i.dg
  %i.di = fmul <2 x float> %i.dg, %i.dh           ; 2 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = fadd float %i.cy, %i.dj
  %i.dl = extractelement <2 x float> %i.di, i64 1
  %i.dm = fadd float %i.dl, %i.dk                 ; 2 uses
  %i.dn = fcmp ogt float %i.dm, 0.000000e+00
  %i.do = fdiv float 1.000000e+00, %i.dm
  %i.dp = select i1 %i.dn, float %i.do, float 0.000000e+00 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0127.0.copyload = load float, ptr %i.dq, align 4, !tbaa !86 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !111, !range !70, !noundef !71
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.dv = load float, ptr %i.du, align 4, !tbaa !112
  %i.dw = fsub float %i.cv, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !139
  %i.dz = fmul float %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !140
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !141
  %i.ee = fsub <2 x float> %.sroa.0208.0.copyload, %.sroa.0231.0.copyload
  %i.ef = fmul <2 x float> %i.ee, %i.ct           ; 2 uses
  %shift608 = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop609 = fadd <2 x float> %i.ef, %shift608
  %i.eg = extractelement <2 x float> %foldExtExtBinop609, i64 0
  %i.eh = extractelement <2 x float> %i.dg, i64 1 ; 2 uses
  %i.ei = fmul float %i.aa, %i.eh
  %i.ej = fadd float %i.eg, %i.ei
  %i.ek = extractelement <2 x float> %i.dg, i64 0 ; 2 uses
  %i.el = fmul float %i.y, %i.ek
  %i.em = fsub float %i.ej, %i.el
  %i.en = fneg float %i.eb
  %i.eo = fmul float %i.dp, %i.en
  %i.ep = fadd float %i.em, %i.dz
  %i.eq = fmul float %i.eo, %i.ep
end_hunk_0
