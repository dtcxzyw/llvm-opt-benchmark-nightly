Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/weld_joint?download=true
inline.NumInlined: 44
inline.NumDeleted: 16
begin_hunk_0_@b2WeldJoint_SetLinearHertz
define void @b2WeldJoint_SetLinearHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WeldJointSetLinearHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_WeldJointSetLinearHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 92
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @b2GetWorld(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @b2RecWrite_WeldJointSetLinearHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @b2GetJointSimCheckType(i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2WeldJoint_GetLinearHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2WeldJoint_SetLinearDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WeldJointSetLinearDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_WeldJointSetLinearDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_WeldJointSetLinearDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2WeldJoint_GetLinearDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2WeldJoint_SetAngularHertz(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WeldJointSetAngularHertz, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_WeldJointSetAngularHertz(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_WeldJointSetAngularHertz(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2WeldJoint_GetAngularHertz(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: nounwind uwtable
define void @b2WeldJoint_SetAngularDampingRatio(i64 %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2RecArgs_WeldJointSetAngularDampingRatio, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b2GetWorld(i32 noundef %i.b) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.f, align 8, !tbaa !68
  call void @b2RecWrite_WeldJointSetAngularDampingRatio(ptr noundef nonnull %i.e, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store float %1, ptr %i.h, align 4, !tbaa !69
  ret void
}

declare void @b2RecWrite_WeldJointSetAngularDampingRatio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define float @b2WeldJoint_GetAngularDampingRatio(i64 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @b2GetJointSimCheckType(i64 %0, i32 noundef 7) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load float, ptr %i.b, align 4, !tbaa !69
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden <2 x float> @b2GetWeldJointForce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load <2 x float>, ptr %i.c, align 4
  %i.e = insertelement <2 x float> poison, float %i.b, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x float> %i.f, %i.d
  ret <2 x float> %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @b2GetWeldJointTorque(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.b = load float, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.d = load float, ptr %i.c, align 4, !tbaa !69
  %i.e = fmul float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PrepareWeldJoint(ptr nofree noundef captures(none) initializes((48, 64), (144, 196)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = sext i32 %i.d to i64
  %i.l = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1960
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !106  ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106  ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [88 x i8], ptr %i.n, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !107  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !107  ; 2 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !117
  %i.ab = sext i32 %i.x to i64
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.aa, i64 %i.ab ; 5 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [96 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load <2 x float>, ptr %i.ag, align 4, !tbaa !87
  %i.am = load float, ptr %i.ah, align 4, !tbaa !119
  %i.an = load <2 x float>, ptr %i.ai, align 4, !tbaa !87
  %i.ao = load float, ptr %i.aj, align 4, !tbaa !119
  %i.ap = shufflevector <2 x float> %i.al, <2 x float> %i.an, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ap, ptr %i.ak, align 4, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ar = icmp eq i32 %i.p, 2
  %i.as = select i1 %i.ar, i32 %i.x, i32 -1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.as, ptr %i.at, align 4, !tbaa !89
  %i.au = icmp eq i32 %i.t, 2
  %i.av = select i1 %i.au, i32 %i.z, i32 -1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.bc, %i.be           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = fsub <2 x float> %i.bf, %i.bi
  %i.bk = fadd <2 x float> %i.bf, %i.bi
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bl, ptr %i.ay, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.bn = load <2 x float>, ptr %i.ba, align 4
  %i.bo = load <2 x float>, ptr %i.bm, align 4
  %i.bp = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bq = fsub <2 x float> %i.bn, %i.bo           ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x float> %i.bt, %i.bu           ; 2 uses
  %i.bw = fsub <2 x float> %i.bs, %i.bv
  %i.bx = fadd <2 x float> %i.bs, %i.bv
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> %i.bx, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.by, ptr %i.ax, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load <2 x float>, ptr %i.cb, align 4    ; 2 uses
  %i.cf = load <2 x float>, ptr %i.cd, align 4    ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fmul <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = fsub <2 x float> %i.ch, %i.ck
  %i.cm = fadd <2 x float> %i.ch, %i.ck
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.cn, ptr %i.ca, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.cp = load <2 x float>, ptr %i.cc, align 4
  %i.cq = load <2 x float>, ptr %i.co, align 4
  %i.cr = load <2 x float>, ptr %i.cb, align 4    ; 2 uses
  %i.cs = fsub <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cr, %i.ct           ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %i.cy = fsub <2 x float> %i.cu, %i.cx
  %i.cz = fadd <2 x float> %i.cu, %i.cx
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.da, ptr %i.bz, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dc = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.de = load <2 x float>, ptr %i.dc, align 4
  %i.df = load <2 x float>, ptr %i.dd, align 4
  %i.dg = fsub <2 x float> %i.de, %i.df
  store <2 x float> %i.dg, ptr %i.db, align 4
  %i.dh = fadd float %i.am, %i.ao                 ; 2 uses
  %i.di = fcmp ogt float %i.dh, 0.000000e+00
  %i.dj = fdiv float 1.000000e+00, %i.dh
  %i.dk = select i1 %i.di, float %i.dj, float 0.000000e+00
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 192
  store float %i.dk, ptr %i.dl, align 4, !tbaa !91
  %i.dm = load float, ptr %i.aq, align 4, !tbaa !92 ; 2 uses
  %i.dn = fcmp oeq float %i.dm, 0.000000e+00
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  br i1 %i.dn, label %bb.b, label %b2MakeSoft.exit

bb.b:                                             ; preds = %bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.do, ptr noundef nonnull align 4 dereferenceable(12) %i.dp, i64 12, i1 false), !tbaa.struct !120
  br label %bb.c

b2MakeSoft.exit:                                  ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !121
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !122
  %i.du = fmul float %i.dm, f0x40C90FDB           ; 2 uses
  %i.dv = fmul float %i.dr, 2.000000e+00
  %i.dw = fmul float %i.du, %i.dt                 ; 2 uses
  %i.dx = fadd float %i.dv, %i.dw                 ; 2 uses
  %i.dy = fmul float %i.dw, %i.dx                 ; 2 uses
  %i.dz = fadd float %i.dy, 1.000000e+00
  %i.ea = fdiv float 1.000000e+00, %i.dz          ; 2 uses
  %i.eb = fdiv float %i.du, %i.dx
  %.sroa.014.0.vec.insert17.i = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ec = fmul float %i.dy, %i.ea
  %.sroa.014.4.vec.insert19.i = insertelement <2 x float> %.sroa.014.0.vec.insert17.i, float %i.ec, i64 1
  store <2 x float> %.sroa.014.4.vec.insert19.i, ptr %i.do, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float %i.ea, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !87
  br label %bb.c

bb.c:                                             ; preds = %b2MakeSoft.exit, %bb.b
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !93 ; 2 uses
  %i.ef = fcmp oeq float %i.ee, 0.000000e+00
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br i1 %i.ef, label %bb.d, label %b2MakeSoft.exit125

bb.d:                                             ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eg, ptr noundef nonnull align 4 dereferenceable(12) %i.eh, i64 12, i1 false), !tbaa.struct !120
  br label %bb.e

b2MakeSoft.exit125:                               ; preds = %bb.c
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !123
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.el = load float, ptr %i.ek, align 8, !tbaa !122
  %i.em = fmul float %i.ee, f0x40C90FDB           ; 2 uses
  %i.en = fmul float %i.ej, 2.000000e+00
  %i.eo = fmul float %i.em, %i.el                 ; 2 uses
  %i.ep = fadd float %i.en, %i.eo                 ; 2 uses
  %i.eq = fmul float %i.eo, %i.ep                 ; 2 uses
  %i.er = fadd float %i.eq, 1.000000e+00
  %i.es = fdiv float 1.000000e+00, %i.er          ; 2 uses
  %i.et = fdiv float %i.em, %i.ep
  %.sroa.014.0.vec.insert17.i119 = insertelement <2 x float> poison, float %i.et, i64 0
  %i.eu = fmul float %i.eq, %i.es
  %.sroa.014.4.vec.insert19.i120 = insertelement <2 x float> %.sroa.014.0.vec.insert17.i119, float %i.eu, i64 1
  store <2 x float> %.sroa.014.4.vec.insert19.i120, ptr %i.eg, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.es, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %b2MakeSoft.exit125, %bb.d
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !124, !range !125, !noundef !126
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i64 0, ptr %i.ey, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartWeldJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 4, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load float, ptr %i.e, align 4, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveWeldJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ %2, %bb.a ]   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !90   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !96
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %2, %bb.c ]   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load <2 x float>, ptr %i.y, align 4     ; 2 uses
  %i.ab = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ac, %i.ad           ; 2 uses
  %i.af = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.aa, %i.af           ; 2 uses
  %i.ah = fsub <2 x float> %i.ae, %i.ag
  %i.ai = fadd <2 x float> %i.ae, %i.ag
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98
  %i.am = and i32 %i.al, 512
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.as = load <2 x float>, ptr %i.p, align 4
  %i.at = load <2 x float>, ptr %i.ar, align 4
  %i.au = insertelement <2 x float> poison, float %i.b, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.av, %i.at
  %i.ax = fsub <2 x float> %i.as, %i.aw
  store <2 x float> %i.ax, ptr %i.p, align 4
  %i.ay = load <2 x float>, ptr %i.ar, align 4
  %i.az = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.az, %i.ba           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x float> %i.ao, %i.bc           ; 2 uses
  %i.be = fsub <2 x float> %i.bb, %i.bd
  %i.bf = fadd <2 x float> %i.bb, %i.bd
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bh = fmul <2 x float> %i.bg, %i.ay           ; 2 uses
  %shift = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bh
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !94
  %i.bl = fadd float %i.bk, %i.bi
  %i.bm = fmul float %i.f, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !99
  %i.bp = fsub float %i.bo, %i.bm
  store float %i.bp, ptr %i.bn, align 4, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !98
  %i.bs = and i32 %i.br, 512
  %.not37 = icmp eq i32 %i.bs, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.x, align 4
  %i.bv = load <2 x float>, ptr %i.bt, align 4
  %i.bw = insertelement <2 x float> poison, float %i.d, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x float> %i.bx, %i.bv
  %i.bz = fadd <2 x float> %i.bu, %i.by
  store <2 x float> %i.bz, ptr %i.x, align 4
  %i.ca = load <2 x float>, ptr %i.bt, align 4
  %i.cb = fmul <2 x float> %i.aj, %i.ca           ; 2 uses
  %shift58 = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fsub <2 x float> %shift58, %i.cb
  %i.cc = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !94
  %i.cf = fadd float %i.ce, %i.cc
  %i.cg = fmul float %i.h, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !99
  %i.cj = fadd float %i.ci, %i.cg
  store float %i.cj, ptr %i.ch, align 4, !tbaa !99
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolveWeldJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %4 = load <2 x float>, ptr %i.a, align 4, !tbaa !87 ; 2 uses
  %i.d = load float, ptr %i.b, align 4, !tbaa !95 ; 2 uses
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !87 ; 5 uses
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveWeldJoint.dummyState, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load i32, ptr %i.h, align 4, !tbaa !89   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.q = load i32, ptr %i.p, align 4, !tbaa !90   ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.072.0.copyload.pre = load <2 x float>, ptr %i.v, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.072.0.copyload = phi <2 x float> [ %.sroa.072.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.w = phi ptr [ %i.v, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.080.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !99 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !99 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = load <2 x float>, ptr %i.ab, align 4
  %i.af = load <2 x float>, ptr %i.ad, align 4
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ai = fmul <4 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load <2 x float>, ptr %i.aj, align 4
  %i.an = load <2 x float>, ptr %i.al, align 4
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aq = fmul <4 x float> %i.ao, %i.ap           ; 2 uses
  %i.ar = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.as = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.at = fsub <2 x float> %i.ar, %i.as
  %i.au = fadd <2 x float> %i.ar, %i.as
  %i.av = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.aw = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ax = shufflevector <4 x float> %i.aq, <4 x float> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ay = fadd <2 x float> %i.aw, %i.ax
  %i.az = fsub <2 x float> %i.aw, %i.ax
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bb = fmul <4 x float> %i.av, %i.ba           ; 4 uses
  %shift = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.bb, %shift
  %i.bc = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift261 = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop262 = fadd <4 x float> %shift261, %i.bb
  %i.bd = extractelement <4 x float> %foldExtExtBinop262, i64 2
  %i.be = tail call float @b2Atan2(float noundef %i.bc, float noundef %i.bd) #8
  br i1 %2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !93
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !130
  %i.bk = fmul float %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0148 = phi float [ %i.bo, %bb.g ], [ 0.000000e+00, %bb.f ]
  %.0147 = phi float [ %i.bm, %bb.g ], [ 1.000000e+00, %bb.f ]
  %.0 = phi float [ %i.bk, %bb.g ], [ 0.000000e+00, %bb.f ]
  %i.bp = fsub float %i.aa, %i.y
  %i.bq = fneg float %.0147
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = load float, ptr %i.br, align 4, !tbaa !91
  %i.bt = fmul float %i.bs, %i.bq
  %i.bu = fadd float %i.bp, %.0
  %i.bv = fmul float %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !94 ; 2 uses
  %i.by = fmul float %.0148, %i.bx
  %i.bz = fsub float %i.bv, %i.by                 ; 3 uses
  %i.ca = fadd float %i.bx, %i.bz
  store float %i.ca, ptr %i.bw, align 4, !tbaa !94
  %i.cb = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.cc = load <2 x float>, ptr %i.ac, align 4    ; 2 uses
  %i.cd = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.ce = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.cf = extractelement <2 x float> %i.e, i64 0  ; 2 uses
  %i.cg = fmul float %i.cf, %i.bz
  %i.ch = extractelement <2 x float> %i.e, i64 1  ; 2 uses
  %i.ci = fmul float %i.ch, %i.bz
  %i.cj = fsub float %i.y, %i.cg                  ; 2 uses
  %i.ck = fadd float %i.aa, %i.ci                 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul <2 x float> %i.cl, %i.cm           ; 2 uses
  %i.co = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cp = fmul <2 x float> %i.cb, %i.co           ; 2 uses
  %i.cq = fsub <2 x float> %i.cn, %i.cp           ; 2 uses
  %i.cr = fadd <2 x float> %i.cn, %i.cp
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3> ; 6 uses
  %i.ct = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.cd, %i.ct           ; 2 uses
  %i.cv = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %i.cy = fadd <2 x float> %i.cu, %i.cx           ; 3 uses
  %i.cz = fsub <2 x float> %i.cu, %i.cx           ; 3 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 4 uses
  br i1 %2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = load float, ptr %i.g, align 4, !tbaa !92
  %i.dc = fcmp ogt float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.de, align 4
  %i.df = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dh = load <2 x float>, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.dj = load float, ptr %i.di, align 4, !tbaa !133
  %i.dk = fsub <2 x float> %.sroa.025.0.copyload, %.sroa.026.0.copyload
  %i.dl = fsub <2 x float> %i.da, %i.df
  %i.dm = fadd <2 x float> %i.dl, %i.dk
  %i.dn = fadd <2 x float> %i.dh, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.030.0 = phi <2 x float> [ %i.dq, %bb.j ], [ zeroinitializer, %bb.i ]
  %i.dt = phi <2 x float> [ %i.ds, %bb.j ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.i ] ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.ck, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %8 = fmul <2 x float> %6, %7                    ; 2 uses
  %i.du = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.dv, %i.cs           ; 2 uses
  %i.dx = fmul <2 x float> %i.cs, %i.cs
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = fmul <2 x float> %i.da, %i.da
  %9 = extractelement <2 x float> %i.cz, i64 0
  %i.ea = shufflevector <2 x float> %i.cy, <2 x float> %i.cq, <2 x i32> <i32 1, i32 3>
  %i.eb = fneg <2 x float> %i.cs
  %i.ec = shufflevector <2 x float> %i.cz, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.ed = fmul <2 x float> %i.ea, %i.ec
  %i.ee = fmul <2 x float> %i.f, %i.ed            ; 2 uses
  %i.ef = extractelement <2 x float> %i.dt, i64 0
  %i.eg = fneg float %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %10 = fadd <2 x float> %.sroa.072.0.copyload, %8
  %11 = fsub <2 x float> %.sroa.072.0.copyload, %8
  %12 = shufflevector <2 x float> %11, <2 x float> %10, <2 x i32> <i32 0, i32 3>
  %i.ei = fadd <2 x float> %.sroa.080.0.copyload, %i.dw
  %i.ej = fsub <2 x float> %.sroa.080.0.copyload, %i.dw
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> %i.ei, <2 x i32> <i32 0, i32 3>
  %13 = fsub <2 x float> %12, %i.ek
  %shift264 = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.el = fsub <2 x float> %shift264, %i.ee       ; 3 uses
  %14 = extractelement <2 x float> %4, i64 0      ; 2 uses
  %i.em = fadd float %14, %i.d
  %i.en = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x float> %i.en, %i.dy
  %i.ep = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fadd <2 x float> %i.eq, %i.eo
  %i.es = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.es, %i.dz
  %i.eu = fadd <2 x float> %i.er, %i.et           ; 3 uses
  %i.ev = fadd <2 x float> %13, %.sroa.030.0      ; 2 uses
  %shift267 = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop268 = fmul <2 x float> %shift267, %i.eu
  %foldExtExtBinop270 = fmul <2 x float> %i.el, %i.el
  %foldExtExtBinop272 = fsub <2 x float> %foldExtExtBinop268, %foldExtExtBinop270
  %i.ew = extractelement <2 x float> %foldExtExtBinop272, i64 0 ; 3 uses
  %i.ex = fcmp une float %i.ew, 0.000000e+00
  %i.ey = fdiv float 1.000000e+00, %i.ew
  %.0.i = select i1 %i.ex, float %i.ey, float %i.ew
  %i.ez = fmul <2 x float> %i.eu, %i.ev
  %i.fa = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = fmul <2 x float> %i.fa, %i.fb
  %i.fd = fsub <2 x float> %i.ez, %i.fc
  %i.fe = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x float> %i.ff, %i.fd
  %i.fh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = load <2 x float>, ptr %i.eh, align 4, !tbaa !87 ; 2 uses
  %i.fl = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = fmul <2 x float> %i.fl, %i.fk
  %i.fn = fsub <2 x float> %i.fj, %i.fm           ; 6 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 1 ; 2 uses
  %i.fp = fadd <2 x float> %i.fk, %i.fn
  store <2 x float> %i.fp, ptr %i.eh, align 4
  %i.fq = insertelement <2 x float> poison, float %i.d, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x float> %i.fr, %i.fn
  %i.ft = fadd <2 x float> %.sroa.072.0.copyload, %i.fs
  %i.fu = fmul float %9, %i.fo
  %shift274 = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop275 = fmul <2 x float> %shift274, %i.fn
  %15 = extractelement <2 x float> %foldExtExtBinop275, i64 0
  %i.fv = fsub float %i.fu, %15
  %i.fw = fmul float %i.ch, %i.fv
  %i.fx = fadd float %i.ck, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !98
  %i.ga = and i32 %i.fz, 512
  %.not = icmp eq i32 %i.ga, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.01.4.vec.extract.i218 = extractelement <2 x float> %.sroa.080.0.copyload, i64 1
  %i.gb = fmul <2 x float> %i.cs, %i.fn           ; 2 uses
  %shift274.a = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop275.a = fsub <2 x float> %shift274.a, %i.gb
  %i.gc = extractelement <2 x float> %foldExtExtBinop275.a, i64 0
  %foldExtExtBinop280 = fmul <2 x float> %4, %i.fn
  %foldExtExtBinop282 = fsub <2 x float> %.sroa.080.0.copyload, %foldExtExtBinop280
  %i.gd = fmul float %14, %i.fo
  %i.ge = fsub float %.sroa.01.4.vec.extract.i218, %i.gd
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %foldExtExtBinop282, float %i.ge, i64 1
  %i.gf = fmul float %i.cf, %i.gc
  %i.gg = fsub float %i.cj, %i.gf
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.o, align 4
  store float %i.gg, ptr %i.x, align 4, !tbaa !99
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !98
  %i.gj = and i32 %i.gi, 512
  %.not153 = icmp eq i32 %i.gj, 0
  br i1 %.not153, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store <2 x float> %i.ft, ptr %i.w, align 4
  store float %i.fx, ptr %i.z, align 4, !tbaa !99
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2DrawWeldJoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, float noundef %6) local_unnamed_addr #7 {
bb.a:
  %7 = alloca %struct.b2Polygon, align 4          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x float>, ptr %i.a, align 4      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load <2 x float>, ptr %i.c, align 4      ; 2 uses
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x float> %3, %i.e                ; 2 uses
  %i.g = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.h = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fmul <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = fsub <2 x float> %i.f, %i.i
  %i.k = fadd <2 x float> %i.f, %i.i
  %i.l = shufflevector <2 x float> %i.j, <2 x float> %i.k, <2 x i32> <i32 0, i32 3>
  %i.m = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %3, %i.m                ; 2 uses
  %i.o = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.p = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x float> %i.o, %i.p              ; 2 uses
  %i.r = fsub <2 x float> %i.n, %i.q
  %i.s = fadd <2 x float> %i.n, %i.q
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.u = fadd <2 x float> %2, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load <2 x float>, ptr %i.v, align 4      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load <2 x float>, ptr %i.x, align 4      ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %5, %i.z               ; 2 uses
  %i.ab = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = fmul <2 x float> %i.ab, %i.ac           ; 2 uses
  %i.ae = fsub <2 x float> %i.aa, %i.ad
  %i.af = fadd <2 x float> %i.aa, %i.ad
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %5, %i.ah              ; 2 uses
  %i.aj = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x float> %i.aj, %i.ak           ; 2 uses
  %i.am = fsub <2 x float> %i.ai, %i.al
  %i.an = fadd <2 x float> %i.ai, %i.al
  %i.ao = shufflevector <2 x float> %i.am, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  %i.ap = fadd <2 x float> %4, %i.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.aq = fmul float %6, 2.500000e-01
  %i.ar = fmul float %6, 1.250000e-01
  call void @b2MakeBox(ptr dead_on_unwind nonnull writable sret(%struct.b2Polygon) align 4 %7, float noundef %i.aq, float noundef %i.ar) #8
  %i.as = load ptr, ptr %0, align 8, !tbaa !136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137
  call void %i.as(<2 x float> %i.u, <2 x float> %i.l, ptr noundef nonnull %7, i32 noundef 4, i32 noundef 16747520, ptr noundef %i.au) #8
  %i.av = load ptr, ptr %0, align 8, !tbaa !136
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !137
  call void %i.av(<2 x float> %i.ap, <2 x float> %i.ag, ptr noundef nonnull %7, i32 noundef 4, i32 noundef 35723, ptr noundef %i.aw) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  ret void
}

declare void @b2MakeBox(ptr dead_on_unwind writable sret(%struct.b2Polygon) align 4, float noundef, float noundef) local_unnamed_addr #2

declare float @b2Atan2(float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 _ZTS12b2StackEntry", !8, i64 0}
!11 = !{!"b2DynamicArray_b2StackEntry", !10, i64 0, !5, i64 8, !5, i64 12}
!12 = !{!"b2Stack", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !11, i64 24}
!13 = !{!"p1 int", !8, i64 0}
!14 = !{!"b2DynamicArray_int", !13, i64 0, !5, i64 8, !5, i64 12}
!15 = !{!"p1 _ZTS12b2MoveResult", !8, i64 0}
!16 = !{!"p1 _ZTS10b2MovePair", !8, i64 0}
!17 = !{!"b2AtomicInt", !5, i64 0}
!18 = !{!"p1 _ZTS9b2SetItem", !8, i64 0}
!19 = !{!"b2HashSet", !18, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !14, i64 264, !15, i64 280, !16, i64 288, !5, i64 296, !17, i64 300, !19, i64 304}
!21 = !{!"b2ConstraintGraph", !4, i64 0}
!22 = !{!"b2IdPool", !14, i64 0, !5, i64 16}
!23 = !{!"p1 _ZTS6b2Body", !8, i64 0}
!24 = !{!"b2DynamicArray_b2Body", !23, i64 0, !5, i64 8, !5, i64 12}
!25 = !{!"p1 _ZTS11b2SolverSet", !8, i64 0}
!26 = !{!"b2DynamicArray_b2SolverSet", !25, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTS7b2Joint", !8, i64 0}
!28 = !{!"b2DynamicArray_b2Joint", !27, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 _ZTS9b2Contact", !8, i64 0}
!30 = !{!"b2DynamicArray_b2Contact", !29, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!"p1 _ZTS8b2Island", !8, i64 0}
!32 = !{!"b2DynamicArray_b2Island", !31, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS7b2Shape", !8, i64 0}
!34 = !{!"b2DynamicArray_b2Shape", !33, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"p1 _ZTS12b2ChainShape", !8, i64 0}
!36 = !{!"b2DynamicArray_b2ChainShape", !35, i64 0, !5, i64 8, !5, i64 12}
!37 = !{!"p1 _ZTS8b2Sensor", !8, i64 0}
!38 = !{!"b2DynamicArray_b2Sensor", !37, i64 0, !5, i64 8, !5, i64 12}
!39 = !{!"p1 _ZTS13b2TaskContext", !8, i64 0}
!40 = !{!"b2DynamicArray_b2TaskContext", !39, i64 0, !5, i64 8, !5, i64 12}
!41 = !{!"p1 _ZTS19b2SensorTaskContext", !8, i64 0}
!42 = !{!"b2DynamicArray_b2SensorTaskContext", !41, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTS15b2BodyMoveEvent", !8, i64 0}
!44 = !{!"b2DynamicArray_b2BodyMoveEvent", !43, i64 0, !5, i64 8, !5, i64 12}
!45 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !8, i64 0}
!46 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !45, i64 0, !5, i64 8, !5, i64 12}
!47 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !8, i64 0}
!48 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !47, i64 0, !5, i64 8, !5, i64 12}
!49 = !{!"p1 _ZTS17b2ContactHitEvent", !8, i64 0}
!50 = !{!"b2DynamicArray_b2ContactHitEvent", !49, i64 0, !5, i64 8, !5, i64 12}
!51 = !{!"p1 _ZTS12b2JointEvent", !8, i64 0}
!52 = !{!"b2DynamicArray_b2JointEvent", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 long", !8, i64 0}
!54 = !{!"b2BitSet", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"long", !4, i64 0}
!56 = !{!"float", !4, i64 0}
!57 = !{!"b2Vec2", !56, i64 0, !56, i64 4}
!58 = !{!"short", !4, i64 0}
!59 = !{!"b2Profile", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!60 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!61 = !{!"p1 _ZTS11b2Scheduler", !8, i64 0}
!62 = !{!"p1 _ZTS11b2Recording", !8, i64 0}
!63 = !{!"_Bool", !4, i64 0}
!64 = !{!"b2World", !12, i64 0, !20, i64 40, !21, i64 360, !22, i64 1896, !24, i64 1920, !22, i64 1936, !26, i64 1960, !22, i64 1976, !28, i64 2000, !22, i64 2016, !30, i64 2040, !22, i64 2056, !32, i64 2080, !22, i64 2096, !22, i64 2120, !34, i64 2144, !36, i64 2160, !38, i64 2176, !40, i64 2192, !42, i64 2208, !44, i64 2224, !46, i64 2240, !48, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !50, i64 2344, !52, i64 2360, !54, i64 2376, !54, i64 2392, !54, i64 2408, !54, i64 2424, !55, i64 2440, !5, i64 2448, !57, i64 2452, !56, i64 2460, !56, i64 2464, !56, i64 2468, !56, i64 2472, !56, i64 2476, !56, i64 2480, !56, i64 2484, !8, i64 2488, !8, i64 2496, !58, i64 2504, !59, i64 2508, !60, i64 2596, !8, i64 2616, !8, i64 2624, !8, i64 2632, !8, i64 2640, !8, i64 2648, !5, i64 2656, !8, i64 2664, !8, i64 2672, !8, i64 2680, !8, i64 2688, !61, i64 2696, !8, i64 2704, !62, i64 2712, !56, i64 2720, !56, i64 2724, !5, i64 2728, !5, i64 2732, !58, i64 2736, !63, i64 2738, !63, i64 2739, !63, i64 2740, !63, i64 2741, !63, i64 2742}
!65 = !{!64, !62, i64 2712}
!66 = !{!"b2JointId", !5, i64 0, !58, i64 4, !58, i64 6}
!67 = !{!"", !66, i64 0, !56, i64 8}
!68 = !{!67, !56, i64 8}
!69 = !{!4, !4, i64 0}
!70 = !{!64, !56, i64 2720}
!71 = !{!"b2Rot", !56, i64 0, !56, i64 4}
!72 = !{!"b2Transform", !57, i64 0, !71, i64 8}
!73 = !{!"b2Softness", !56, i64 0, !56, i64 4, !56, i64 8}
!74 = !{!"b2JointSim", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !72, i64 16, !72, i64 32, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !73, i64 72, !56, i64 84, !56, i64 88, !4, i64 92}
!75 = !{!"p1 _ZTS7b2World", !8, i64 0}
!76 = !{!"p1 _ZTS17b2ConstraintGraph", !8, i64 0}
!77 = !{!"p1 _ZTS11b2BodyState", !8, i64 0}
!78 = !{!"p1 _ZTS9b2BodySim", !8, i64 0}
!79 = !{!"any p2 pointer", !8, i64 0}
!80 = !{!"p2 _ZTS12b2ContactSim", !79, i64 0}
!81 = !{!"p1 _ZTS23b2ContactConstraintWide", !8, i64 0}
!82 = !{!"p1 _ZTS20b2ContactPrepareSpan", !8, i64 0}
!83 = !{!"p1 _ZTS18b2JointPrepareSpan", !8, i64 0}
!84 = !{!"p1 _ZTS13b2SolverStage", !8, i64 0}
!85 = !{!"b2AtomicU32", !5, i64 0}
!86 = !{!"b2StepContext", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !5, i64 16, !73, i64 20, !73, i64 32, !56, i64 44, !56, i64 48, !75, i64 56, !76, i64 64, !77, i64 72, !78, i64 80, !13, i64 88, !5, i64 96, !13, i64 104, !17, i64 112, !80, i64 120, !81, i64 128, !82, i64 136, !5, i64 144, !83, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !84, i64 176, !5, i64 184, !63, i64 188, !4, i64 189, !85, i64 256, !4, i64 260, !17, i64 324, !4, i64 328}
!87 = !{!56, !56, i64 0}
!88 = !{!"b2WeldJoint", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !73, i64 16, !73, i64 28, !57, i64 40, !56, i64 48, !5, i64 52, !5, i64 56, !72, i64 60, !72, i64 76, !57, i64 92, !56, i64 100}
!89 = !{!88, !5, i64 52}
!90 = !{!88, !5, i64 56}
!91 = !{!88, !56, i64 100}
!92 = !{!88, !56, i64 0}
!93 = !{!88, !56, i64 8}
!94 = !{!88, !56, i64 48}
!95 = !{!74, !56, i64 52}
!96 = !{!86, !77, i64 72}
!97 = !{!"b2BodyState", !57, i64 0, !56, i64 8, !5, i64 12, !57, i64 16, !71, i64 24}
!98 = !{!97, !5, i64 12}
!99 = !{!97, !56, i64 8}
!100 = !{!74, !5, i64 4}
!101 = !{!74, !5, i64 8}
!102 = !{!86, !75, i64 56}
!103 = !{!64, !23, i64 1920}
!104 = !{!64, !25, i64 1960}
!105 = !{!"b2Body", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !58, i64 88, !4, i64 90}
!106 = !{!105, !5, i64 8}
!107 = !{!105, !5, i64 12}
!108 = !{!"b2DynamicArray_b2BodySim", !78, i64 0, !5, i64 8, !5, i64 12}
!109 = !{!"b2DynamicArray_b2BodyState", !77, i64 0, !5, i64 8, !5, i64 12}
!110 = !{!"p1 _ZTS10b2JointSim", !8, i64 0}
!111 = !{!"b2DynamicArray_b2JointSim", !110, i64 0, !5, i64 8, !5, i64 12}
!112 = !{!"p1 _ZTS12b2ContactSim", !8, i64 0}
!113 = !{!"b2DynamicArray_b2ContactSim", !112, i64 0, !5, i64 8, !5, i64 12}
!114 = !{!"p1 _ZTS11b2IslandSim", !8, i64 0}
!115 = !{!"b2DynamicArray_b2IslandSim", !114, i64 0, !5, i64 8, !5, i64 12}
!116 = !{!"b2SolverSet", !108, i64 0, !109, i64 16, !111, i64 32, !113, i64 48, !115, i64 64, !5, i64 80}
!117 = !{!116, !78, i64 0}
!118 = !{!"b2BodySim", !72, i64 0, !57, i64 16, !71, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !5, i64 88, !5, i64 92}
!119 = !{!118, !56, i64 64}
!120 = !{i64 0, i64 4, !87, i64 4, i64 4, !87, i64 8, i64 4, !87}
!121 = !{!88, !56, i64 4}
!122 = !{!86, !56, i64 8}
!123 = !{!88, !56, i64 12}
!124 = !{!86, !63, i64 188}
!125 = !{i8 0, i8 2}
!126 = !{}
!127 = !{!74, !56, i64 48}
!128 = !{!74, !56, i64 56}
!129 = !{!74, !56, i64 60}
!130 = !{!88, !56, i64 28}
!131 = !{!88, !56, i64 32}
!132 = !{!88, !56, i64 36}
!133 = !{!88, !56, i64 16}
!134 = !{!"b2AABB", !57, i64 0, !57, i64 8}
!135 = !{!"b2DebugDraw", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !134, i64 80, !56, i64 96, !56, i64 100, !63, i64 104, !63, i64 105, !63, i64 106, !63, i64 107, !63, i64 108, !63, i64 109, !63, i64 110, !63, i64 111, !63, i64 112, !63, i64 113, !63, i64 114, !63, i64 115, !63, i64 116, !63, i64 117, !63, i64 118, !8, i64 120}
!136 = !{!135, !8, i64 0}
!137 = !{!135, !8, i64 120}
end_hunk_0
