Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/geometry?download=true
inline.NumInlined: 139
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b2ComputePolygonMass:bb.a
  br label %.lr.ph159

.preheader:                                       ; preds = %bb.d
  br i1 %i.bb, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bf = fmul nnan float %i.az, 1.412000e+00
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.be, i64 %wide.trip.count
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %.sroa.054.0.copyload.peel = load <2 x float>, ptr %i.bh, align 4, !tbaa !20
  %.sroa.053.0.copyload.peel = load <2 x float>, ptr %i.be, align 4, !tbaa !20
  %i.bi = fadd <2 x float> %.sroa.054.0.copyload.peel, %.sroa.053.0.copyload.peel ; 3 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi
  %i.bk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bj) ; 2 uses
  %i.bl = fcmp ogt float %i.bk, f0x057A0000
  br i1 %i.bl, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.lr.ph154
  %sqrt.i.peel = tail call nnan float @llvm.sqrt.f32(float %i.bk)
  %i.bm = fdiv nnan float 1.000000e+00, %sqrt.i.peel
  %i.bn = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x float> %i.bi, %i.bo
  br label %.peel.next

.peel.next:                                       ; preds = %.lr.ph154, %bb.e
  %.sroa.012.0.i.peel = phi <2 x float> [ %i.bp, %bb.e ], [ zeroinitializer, %.lr.ph154 ]
  %i.bq = load <2 x float>, ptr %0, align 4
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %.sroa.012.0.i.peel
  %i.bu = fadd <2 x float> %i.bq, %i.bt           ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.peel.next, %b2Normalize.exit
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %b2Normalize.exit ] ; 4 uses
  %i.bv = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %.sroa.054.0.copyload = load <2 x float>, ptr %i.bw, align 4, !tbaa !20
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.bv, align 4, !tbaa !20
  %i.bx = fadd <2 x float> %.sroa.054.0.copyload, %.sroa.053.0.copyload ; 3 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx
  %i.bz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by) ; 2 uses
  %i.ca = fcmp ogt float %i.bz, f0x057A0000
  br i1 %i.ca, label %bb.g, label %b2Normalize.exit

bb.g:                                             ; preds = %bb.f
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.bz)
  %i.cb = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bx, %i.cd
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.f, %bb.g
  %.sroa.012.0.i = phi <2 x float> [ %i.ce, %bb.g ], [ zeroinitializer, %bb.f ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ch = load <2 x float>, ptr %i.cg, align 4
  %i.ci = fmul <2 x float> %i.bs, %.sroa.012.0.i
  %i.cj = fadd <2 x float> %i.ch, %i.ci
  store <2 x float> %i.cj, ptr %i.cf, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !80

.loopexit:                                        ; preds = %b2Normalize.exit
  %i.ck = icmp sgt i32 %i.b, 2
  br i1 %i.ck, label %.lr.ph159, label %._crit_edge

.lr.ph159:                                        ; preds = %.loopexit.thread183, %.loopexit
  %.sroa.031.0.copyload185 = phi <2 x float> [ %.sroa.031.0.copyload.pre, %.loopexit.thread183 ], [ %i.bu, %.loopexit ] ; 3 uses
  %i.cl = add nsw i32 %i.b, -1
  %i.cm = shufflevector <2 x float> %.sroa.031.0.copyload185, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %wide.trip.count170 = zext nneg i32 %i.cl to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load <2 x float>, ptr %.phi.trans.insert, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %.loopexit, %.preheader150, %.preheader
  %.093.lcssa = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader150 ], [ %i.eg, %bb.h ]
  %.092.lcssa = phi float [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.preheader150 ], [ %i.dl, %bb.h ] ; 2 uses
  %.sroa.039.0.lcssa = phi <2 x float> [ zeroinitializer, %.loopexit ], [ zeroinitializer, %.preheader ], [ zeroinitializer, %.preheader150 ], [ %i.du, %bb.h ]
  %i.cn = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.bu, %.loopexit ], [ zeroinitializer, %.preheader150 ], [ %.sroa.031.0.copyload185, %bb.h ]
  %i.co = fmul float %1, %.092.lcssa              ; 2 uses
  store float %i.co, ptr %2, align 8, !tbaa !84
  %i.cp = fdiv float 1.000000e+00, %.092.lcssa
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %.sroa.039.0.lcssa ; 5 uses
  %i.ct = fadd <2 x float> %i.cn, %i.cs
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> %i.ct, ptr %.4..4..4..4..sroa_idx, align 4, !tbaa !20
  %i.cu = fmul float %1, %.093.lcssa
  %foldExtExtBinop = fmul <2 x float> %i.cs, %i.cs
  %foldExtExtBinop189 = fmul <2 x float> %i.cs, %i.cs
  %shift = shufflevector <2 x float> %foldExtExtBinop189, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fadd <2 x float> %foldExtExtBinop, %shift
  %i.cv = extractelement <2 x float> %foldExtExtBinop191, i64 0
  %i.cw = fmul float %i.co, %i.cv
  %i.cx = fsub float %i.cu, %i.cw
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.cx, ptr %.12..12..12..12..sroa_idx, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.0..0..0..0..fca.0.load.pre = load <2 x float>, ptr %2, align 8
  %.8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.8..8..8..8..fca.1.load.pre = load <2 x float>, ptr %.8..8..8..8..fca.1.gep.sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph159, %bb.h
  %i.cy = phi <2 x float> [ %.pre, %.lr.ph159 ], [ %i.da, %bb.h ]
  %indvars.iv167 = phi i64 [ 1, %.lr.ph159 ], [ %indvars.iv.next168, %bb.h ]
  %.sroa.039.0158 = phi <2 x float> [ zeroinitializer, %.lr.ph159 ], [ %i.du, %bb.h ]
  %.092157 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %i.dl, %bb.h ]
  %.093156 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %i.eg, %bb.h ]
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next168
  %i.da = load <2 x float>, ptr %i.cz, align 8    ; 3 uses
  %foldExtExtBinop193 = fsub <2 x float> %i.da, %.sroa.031.0.copyload185 ; 2 uses
  %i.db = extractelement <2 x float> %foldExtExtBinop193, i64 1 ; 4 uses
  %i.dc = shufflevector <2 x float> %i.cy, <2 x float> %i.da, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.dd = fsub <4 x float> %i.dc, %i.cm           ; 7 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0
  %i.df = fmul float %i.de, %i.db
  %i.dg = extractelement <4 x float> %i.dd, i64 2
  %i.dh = extractelement <4 x float> %i.dd, i64 3 ; 2 uses
  %i.di = fmul float %i.dh, %i.dg
  %i.dj = fsub float %i.df, %i.di                 ; 2 uses
  %i.dk = fmul float %i.dj, 5.000000e-01          ; 2 uses
  %i.dl = fadd float %.092157, %i.dk              ; 2 uses
  %i.dm = fmul float %i.dk, f0x3EAAAAAB
  %i.dn = shufflevector <4 x float> %i.dd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.do = shufflevector <4 x float> %i.dd, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> %foldExtExtBinop193, <2 x i32> <i32 0, i32 3>
  %i.dq = fadd <2 x float> %i.dn, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.dq, %i.ds
  %i.du = fadd <2 x float> %.sroa.039.0158, %i.dt ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.dw = fmul <4 x float> %i.dd, %i.dv           ; 4 uses
  %shift195 = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop196 = fadd <4 x float> %i.dw, %shift195
  %shift198 = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop199 = fadd <4 x float> %shift198, %foldExtExtBinop196
  %i.dx = extractelement <4 x float> %foldExtExtBinop199, i64 0
  %i.dy = fmul float %i.dh, %i.db
  %i.dz = extractelement <4 x float> %i.dw, i64 3
  %i.ea = fadd float %i.dz, %i.dy
  %i.eb = fmul float %i.db, %i.db
  %i.ec = fadd float %i.eb, %i.ea
  %i.ed = fmul float %i.dj, f0x3DAAAAAB
  %i.ee = fadd float %i.dx, %i.ec
  %i.ef = fmul float %i.ed, %i.ee
  %i.eg = fadd float %.093156, %i.ef              ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge, label %bb.h, !llvm.loop !81

bb.i:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %.8..8..8..fca.1.load = phi <2 x float> [ %.8..8..8..8..fca.1.load.pre, %._crit_edge ], [ %.sroa.3.12.vec.insert.i, %bb.c ], [ %.sroa.4.12.vec.insert.i, %bb.b ]
  %.0..0..0..fca.0.load = phi <2 x float> [ %.0..0..0..0..fca.0.load.pre, %._crit_edge ], [ %i.ae, %bb.c ], [ %.sroa.0.4.vec.insert.i, %bb.b ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.0..0..0..fca.0.load, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.8..8..8..fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCircleAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #9 {
bb.a:
  %.val = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load float, ptr %i.a, align 4, !tbaa !26
  %i.b = fpext float %.val3 to double
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fmul <2 x float> %2, %i.d                ; 2 uses
  %i.f = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.g = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.h = fmul <2 x float> %i.f, %i.g              ; 2 uses
  %i.i = fsub <2 x float> %i.e, %i.h
  %i.j = fadd <2 x float> %i.e, %i.h
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 3>
  %i.l = fadd <2 x float> %1, %i.k
  %i.m = fpext <2 x float> %i.l to <2 x double>   ; 2 uses
  %i.n = insertelement <2 x double> poison, double %i.c, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.p = fsub <2 x double> %i.m, %i.o
  %i.q = fptrunc <2 x double> %i.p to <2 x float>
  %i.r = fadd <2 x double> %i.o, %i.m
  %i.s = fptrunc <2 x double> %i.r to <2 x float>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.s, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeCapsuleAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #9 {
bb.a:
  %3 = load <2 x float>, ptr %0, align 4          ; 2 uses
  %i.a = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.b = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load <2 x float>, ptr %4, align 4          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !28
  %i.e = fpext float %i.d to double
  %i.f = fadd double %i.e, 0.000000e+00
  %i.g = shufflevector <2 x float> %3, <2 x float> %5, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.h = fmul <4 x float> %i.a, %i.g              ; 2 uses
  %i.i = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.j = shufflevector <2 x float> %3, <2 x float> %5, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.k = fmul <4 x float> %i.i, %i.j              ; 2 uses
  %i.l = fsub <4 x float> %i.h, %i.k
  %i.m = fadd <4 x float> %i.h, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.o = fadd <4 x float> %i.b, %i.n              ; 4 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.q = fcmp olt <4 x float> %i.o, %i.p
  %i.r = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.t = select <4 x i1> %i.q, <4 x float> %i.r, <4 x float> %i.s
  %i.u = fpext <4 x float> %i.t to <4 x double>   ; 2 uses
  %i.v = insertelement <4 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.w = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.x = fsub <4 x double> %i.u, %i.w
  %i.y = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.z = fptrunc <2 x double> %i.y to <2 x float>
  %i.aa = shufflevector <4 x double> %i.u, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ab = shufflevector <4 x double> %i.v, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fadd <2 x double> %i.aa, %i.ab
  %i.ad = fptrunc <2 x double> %i.ac to <2 x float>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.z, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.ad, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputePolygonAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.b = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %2, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = shufflevector <2 x float> %i.a, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.j = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.k = fadd <4 x float> %i.i, %i.j
  %i.l = fpext <4 x float> %i.k to <4 x double>   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader.i, label %b2ComputePolygonFatAABB.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.p = phi <4 x double> [ %i.l, %.lr.ph.preheader.i ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.r = load <2 x float>, ptr %i.q, align 4      ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %2, %i.s                ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul <2 x float> %i.d, %i.u              ; 2 uses
  %i.w = fsub <2 x float> %i.t, %i.v
  %i.x = fadd <2 x float> %i.t, %i.v
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3>
  %i.z = fadd <2 x float> %1, %i.y
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ac = fcmp ogt <4 x double> %i.p, %i.ab
  %i.ad = fcmp olt <4 x double> %i.p, %i.ab
  %i.ae = shufflevector <4 x i1> %i.ac, <4 x i1> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.af = select <4 x i1> %i.ae, <4 x double> %i.ab, <4 x double> %i.p ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %b2ComputePolygonFatAABB.exit, label %.lr.ph.i, !llvm.loop !3

b2ComputePolygonFatAABB.exit:                     ; preds = %.lr.ph.i, %bb.a
  %i.ag = phi <4 x double> [ %i.l, %bb.a ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %i.aj, 0.000000e+00
  %i.al = insertelement <4 x double> poison, double %i.ak, i64 0 ; 2 uses
  %i.am = shufflevector <4 x double> %i.al, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.an = fsub <4 x double> %i.ag, %i.am
  %i.ao = shufflevector <4 x double> %i.an, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float>
  %i.aq = shufflevector <4 x double> %i.ag, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ar = shufflevector <4 x double> %i.al, <4 x double> poison, <2 x i32> zeroinitializer
  %i.as = fadd <2 x double> %i.aq, %i.ar
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ap, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.at, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @b2ComputeSegmentAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #9 {
bb.a:
  %.val = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val3 = load <2 x float>, ptr %i.a, align 4    ; 2 uses
  %i.b = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x float> %2, %i.b                ; 2 uses
  %i.d = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.e = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.f = fmul <2 x float> %i.d, %i.e              ; 2 uses
  %i.g = fsub <2 x float> %i.c, %i.f
  %i.h = fadd <2 x float> %i.c, %i.f
  %i.i = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 3>
  %i.j = fadd <2 x float> %1, %i.i                ; 4 uses
  %i.k = shufflevector <2 x float> %.val3, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %2, %i.k                ; 2 uses
  %i.m = shufflevector <2 x float> %.val3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x float> %i.d, %i.m              ; 2 uses
  %i.o = fsub <2 x float> %i.l, %i.n
  %i.p = fadd <2 x float> %i.l, %i.n
  %i.q = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  %i.r = fadd <2 x float> %1, %i.q                ; 4 uses
  %i.s = fcmp olt <2 x float> %i.j, %i.r
  %i.t = select <2 x i1> %i.s, <2 x float> %i.j, <2 x float> %i.r
  %i.u = fcmp ogt <2 x float> %i.j, %i.r
  %i.v = select <2 x i1> %i.u, <2 x float> %i.j, <2 x float> %i.r
  %i.w = fadd <2 x float> %i.v, zeroinitializer
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.t, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.w, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden { <2 x float>, <2 x float> } @b2ComputeFatShapeAABB(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93
  switch i32 %i.b, label %bb.g [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load <2 x float>, ptr %i.c, align 4      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load <2 x float>, ptr %i.e, align 4      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load float, ptr %i.g, align 4, !tbaa !28
  %i.i = fpext float %i.h to double
  %i.j = fpext float %3 to double
  %i.k = fadd double %i.j, %i.i
  %i.l = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x float> %2, %i.l                ; 2 uses
  %i.n = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.o = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fmul <2 x float> %i.n, %i.o              ; 2 uses
  %i.q = fsub <2 x float> %i.m, %i.p
  %i.r = fadd <2 x float> %i.m, %i.p
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.t = fadd <2 x float> %1, %i.s                ; 4 uses
  %i.u = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %2, %i.u                ; 2 uses
  %i.w = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.x = fmul <2 x float> %i.n, %i.w              ; 2 uses
  %i.y = fsub <2 x float> %i.v, %i.x
  %i.z = fadd <2 x float> %i.v, %i.x
  %i.aa = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 3>
  %i.ab = fadd <2 x float> %1, %i.aa              ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.t, %i.ab
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.t, <2 x float> %i.ab
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  %i.af = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = fsub <2 x double> %i.ae, %i.ag
  %i.ai = fptrunc <2 x double> %i.ah to <2 x float>
  %i.aj = fcmp ogt <2 x float> %i.t, %i.ab
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.t, <2 x float> %i.ab
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  %i.am = fadd <2 x double> %i.ag, %i.al
  %i.an = fptrunc <2 x double> %i.am to <2 x float>
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %i.ap = getelementptr i8, ptr %0, i64 152
  %.val20 = load float, ptr %i.ap, align 4, !tbaa !26
  %i.aq = fpext float %.val20 to double
  %i.ar = fpext float %3 to double
  %i.as = fadd double %i.ar, %i.aq
  %i.at = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %2, %i.at              ; 2 uses
  %i.av = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = shufflevector <2 x float> %.val, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = fmul <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = fsub <2 x float> %i.au, %i.ax
  %i.az = fadd <2 x float> %i.au, %i.ax
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bb = fadd <2 x float> %1, %i.ba
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.as, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = fsub <2 x double> %i.bc, %i.be
end_hunk_0
