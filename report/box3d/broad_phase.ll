Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/broad_phase?download=true
inline.NumInlined: 59
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b3DynamicTree_Validate
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @b3ValidateNoEnlarged(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

declare void @b3GrowBitSet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @b3DynamicTree_Query(ptr noundef, ptr noundef byval(%struct.b3AABB) align 8, i64 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @b3PairQueryCallback(i32 noundef %0, i64 noundef %1, ptr noundef %2) #6 {
bb.a:
  %3 = alloca %struct.b3Transform, align 8        ; 6 uses
  %4 = alloca %struct.b3AABB, align 8             ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !93     ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !94   ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i32                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87
  %sext = shl i64 %1, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = getelementptr inbounds [232 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !132
  %.not = icmp eq i32 %i.n, 1
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133
  call void @b3GetBodyTransform(ptr dead_on_unwind nonnull writable sret(%struct.b3Transform) align 4 %3, ptr noundef nonnull %i.a, i32 noundef %i.p) #8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6207.sroa.0.0.copyload = load <2 x float>, ptr %.sroa.6207.0..sroa_idx, align 4 ; 16 uses
  %.sroa.6207.sroa.4.0..sroa.6207.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6207.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.6207.sroa.4.0..sroa.6207.0..sroa_idx.sroa_idx, align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.6207.sroa.4.0.copyload, i64 0
  %.sroa.011.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.6207.sroa.0.0.copyload, i64 0
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6207.sroa.4.0.copyload, i64 1
  %i.q = fneg float %.sroa.3.8.vec.extract.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0185.0.copyload = load <2 x float>, ptr %i.r, align 8 ; 2 uses
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.5187.0.copyload = load float, ptr %.sroa.5187.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.7188.0.copyload = load <2 x float>, ptr %.sroa.7188.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %i.s = load <2 x float>, ptr %3, align 8        ; 4 uses
  %.sroa.5206.0.copyload = load float, ptr %.sroa.5206.0..sroa_idx, align 8 ; 2 uses
  %i.t = load <2 x float>, ptr %.sroa.4205.0..sroa_idx, align 4 ; 3 uses
  %i.u = fmul float %.sroa.5206.0.copyload, %.sroa.011.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %i.s, %.sroa.6207.sroa.4.0.copyload
  %i.v = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.w = fsub float %i.u, %i.v
  %i.x = shufflevector <2 x float> %.sroa.6207.sroa.0.0.copyload, <2 x float> %.sroa.6207.sroa.4.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.y = fmul <2 x float> %i.s, %i.x
  %i.z = fmul <2 x float> %i.t, %.sroa.6207.sroa.0.0.copyload
  %i.aa = fsub <2 x float> %i.y, %i.z             ; 2 uses
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.ac = shufflevector <2 x float> %.sroa.6207.sroa.4.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 5 uses
  %i.ad = fmul <2 x float> %i.ab, %i.ac
  %i.ae = fmul <2 x float> %i.t, %i.ac
  %i.af = fadd <2 x float> %i.aa, %i.ad           ; 2 uses
  %i.ag = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %i.w, i64 0
  %i.ai = fadd <2 x float> %i.ae, %i.ah           ; 2 uses
  %i.aj = fmul <2 x float> %i.x, %i.af
  %i.ak = shufflevector <2 x float> %.sroa.6207.sroa.4.0.copyload, <2 x float> %.sroa.6207.sroa.0.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.al = fmul <2 x float> %i.ak, %i.ai
  %i.am = fsub <2 x float> %i.aj, %i.al
  %foldExtExtBinop242 = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.ai
  %foldExtExtBinop244 = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.af
  %shift = shufflevector <2 x float> %foldExtExtBinop244, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop246 = fsub <2 x float> %foldExtExtBinop242, %shift
  %i.an = extractelement <2 x float> %foldExtExtBinop246, i64 0
  %i.ao = fmul <2 x float> %i.am, splat (float 2.000000e+00)
  %i.ap = fsub <2 x float> %i.ao, %i.s
  %i.aq = fmul float %i.an, 2.000000e+00
  %i.ar = fsub float %i.aq, %.sroa.5206.0.copyload
  %i.as = fneg <2 x float> %.sroa.6207.sroa.0.0.copyload
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fadd <2 x float> %.sroa.0185.0.copyload, %.sroa.7188.0.copyload
  %i.av = fadd float %.sroa.5187.0.copyload, %.sroa.9.0.copyload
  %i.aw = fmul <2 x float> %i.au, splat (float 5.000000e-01) ; 5 uses
  %i.ax = fmul float %i.av, 5.000000e-01          ; 4 uses
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.az = insertelement <2 x float> %i.ay, float %i.ax, i64 0
  %i.ba = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.az
  %i.bb = fmul <2 x float> %i.x, %i.aw
  %i.bc = fmul <2 x float> %i.ak, %i.aw
  %i.bd = insertelement <2 x float> %i.ay, float %i.ax, i64 1 ; 2 uses
  %i.be = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.bd
  %i.bf = fsub <2 x float> %i.ba, %i.bc
  %i.bg = fsub <2 x float> %i.bb, %i.be
  %i.bh = fmul <2 x float> %i.ac, %i.bd
  %i.bi = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bk = fmul <2 x float> %i.ac, %i.bj
  %i.bl = fadd <2 x float> %i.bh, %i.bf           ; 2 uses
  %i.bm = fadd <2 x float> %i.bk, %i.bg           ; 2 uses
  %i.bn = fmul <2 x float> %i.ak, %i.bl
  %i.bo = fmul <2 x float> %i.x, %i.bm
  %i.bp = fsub <2 x float> %i.bn, %i.bo
  %foldExtExtBinop248 = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.bm
  %foldExtExtBinop250 = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.bl
  %shift252 = shufflevector <2 x float> %foldExtExtBinop248, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop253 = fsub <2 x float> %shift252, %foldExtExtBinop250
  %i.bq = extractelement <2 x float> %foldExtExtBinop253, i64 0
  %i.br = fmul <2 x float> %i.bp, splat (float 2.000000e+00)
  %i.bs = fadd <2 x float> %i.aw, %i.br
  %i.bt = fmul float %i.bq, 2.000000e+00
  %i.bu = fadd float %i.ax, %i.bt
  %i.bv = fadd <2 x float> %i.ap, %i.bs           ; 2 uses
  %i.bw = fadd float %i.ar, %i.bu                 ; 2 uses
  %i.bx = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %.sroa.6207.sroa.0.0.copyload ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop255 = fmul <2 x float> %.sroa.6207.sroa.4.0.copyload, %.sroa.6207.sroa.4.0.copyload
  %shift257 = shufflevector <2 x float> %.sroa.6207.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop258 = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %shift257
  %i.bz = extractelement <2 x float> %foldExtExtBinop258, i64 0 ; 2 uses
  %i.ca = shufflevector <2 x float> %.sroa.6207.sroa.4.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %.sroa.6207.sroa.0.0.copyload, %i.ca ; 4 uses
  %i.cc = fmul <2 x float> %i.ac, %i.at           ; 4 uses
  %i.cd = fmul float %.sroa.3.12.vec.extract.i.i, %i.q ; 2 uses
  %i.ce = fadd float %i.bz, %i.cd
  %foldExtExtBinop260 = fsub <2 x float> %i.cb, %i.cc
  %i.cf = extractelement <2 x float> %foldExtExtBinop260, i64 0
  %i.cg = fmul float %i.cf, 2.000000e+00          ; 3 uses
  %i.ch = fsub float %i.bz, %i.cd
  %i.ci = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ce, i64 1
  %i.ck = fmul <2 x float> %i.cj, splat (float 2.000000e+00) ; 3 uses
  %i.cl = shufflevector <2 x float> %foldExtExtBinop255, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = fadd <2 x float> %i.by, %i.cl
  %i.cn = fmul <2 x float> %i.cm, splat (float 2.000000e+00)
  %i.co = fsub <2 x float> splat (float 1.000000e+00), %i.cn ; 3 uses
  %foldExtExtBinop262 = fadd <2 x float> %i.cb, %i.cc
  %i.cp = extractelement <2 x float> %foldExtExtBinop262, i64 1
  %i.cq = fmul float %i.cp, 2.000000e+00          ; 3 uses
  %i.cr = fadd <2 x float> %i.cb, %i.cc
  %i.cs = fsub <2 x float> %i.cb, %i.cc
  %i.ct = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cu = fmul <2 x float> %i.ct, splat (float 2.000000e+00) ; 3 uses
  %i.cv = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bx)
  %i.cw = fmul float %i.cv, 2.000000e+00
  %i.cx = fsub float 1.000000e+00, %i.cw          ; 3 uses
  %i.cy = fcmp olt float %i.cg, 0.000000e+00
  %i.cz = fneg float %i.cg
  %i.da = select i1 %i.cy, float %i.cz, float %i.cg
  %i.db = fcmp olt <2 x float> %i.ck, zeroinitializer
  %i.dc = fneg <2 x float> %i.ck
  %i.dd = select <2 x i1> %i.db, <2 x float> %i.dc, <2 x float> %i.ck
  %i.de = fcmp olt <2 x float> %i.co, zeroinitializer
  %i.df = fneg <2 x float> %i.co
  %i.dg = select <2 x i1> %i.de, <2 x float> %i.df, <2 x float> %i.co
  %i.dh = fcmp olt float %i.cq, 0.000000e+00
  %i.di = fneg float %i.cq
  %i.dj = select i1 %i.dh, float %i.di, float %i.cq
  %i.dk = fcmp olt <2 x float> %i.cu, zeroinitializer
  %i.dl = fneg <2 x float> %i.cu
  %i.dm = select <2 x i1> %i.dk, <2 x float> %i.dl, <2 x float> %i.cu
  %i.dn = fcmp olt float %i.cx, 0.000000e+00
  %i.do = fneg float %i.cx
  %i.dp = select i1 %i.dn, float %i.do, float %i.cx
  %i.dq = fsub <2 x float> %.sroa.7188.0.copyload, %.sroa.0185.0.copyload
  %i.dr = fsub float %.sroa.9.0.copyload, %.sroa.5187.0.copyload
  %i.ds = fmul <2 x float> %i.dq, splat (float 5.000000e-01) ; 4 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.du = fmul float %i.dr, 5.000000e-01          ; 2 uses
  %i.dv = fmul <2 x float> %i.dd, %i.dt
  %i.dw = fmul <2 x float> %i.ds, %i.dg
  %i.dx = fadd <2 x float> %i.dv, %i.dw
  %i.dy = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dm, %i.dz
  %i.eb = fadd <2 x float> %i.ea, %i.dx           ; 2 uses
  %i.ec = extractelement <2 x float> %i.ds, i64 0
  %i.ed = fmul float %i.da, %i.ec
  %i.ee = extractelement <2 x float> %i.ds, i64 1
  %i.ef = fmul float %i.dj, %i.ee
  %i.eg = fadd float %i.ed, %i.ef
  %i.eh = fmul float %i.dp, %i.du
  %i.ei = fadd float %i.eh, %i.eg                 ; 2 uses
  %i.ej = fsub <2 x float> %i.bv, %i.eb
  %i.ek = fsub float %i.bw, %i.ei
  store <2 x float> %i.ej, ptr %4, align 8, !alias.scope !145
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.ek, ptr %.sroa.28.0..sroa_idx.i, align 8, !alias.scope !145
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.em = fadd <2 x float> %i.eb, %i.bv
  %i.en = fadd float %i.ei, %i.bw
  store <2 x float> %i.em, ptr %i.el, align 4, !alias.scope !145
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.en, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !145
  store i32 %i.e, ptr %i.b, align 8, !tbaa !94
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  store i32 %0, ptr %i.eo, align 4, !tbaa !135
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = call i64 @b3DynamicTree_Query(ptr noundef nonnull %i.er, ptr noundef nonnull byval(%struct.b3AABB) align 8 %4, i64 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @b3PairQueryCallback, ptr noundef nonnull %2) #8 ; 0 uses
  store i32 -1, ptr %i.b, align 8, !tbaa !94
  store i32 -1, ptr %i.eo, align 4, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !135
  %i.ev = trunc i64 %1 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e
  %.0117 = phi i32 [ %i.e, %bb.c ], [ %i.c, %bb.e ] ; 6 uses
  %.0116 = phi i32 [ 0, %bb.c ], [ %i.ev, %bb.e ] ; 2 uses
  %.0110 = phi i32 [ %0, %bb.c ], [ %i.eu, %bb.e ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !102 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !96 ; 2 uses
  %i.fa = and i32 %i.ez, 3
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge
  %i.fc = shl i32 %.0110, 2
  %i.fd = or disjoint i32 %i.fc, 2
  %i.fe = icmp eq i32 %i.ex, 2
  %i.ff = icmp slt i32 %i.fd, %i.ez
  %or.cond = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond, label %bb.g, label %b3GetBit.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.fg = lshr i32 %.0110, 6                      ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 1084
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28
  %.not.i = icmp ult i32 %i.fg, %i.fi
  br i1 %.not.i, label %b3GetBit.exit, label %b3GetBit.exit.thread

b3GetBit.exit:                                    ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29
  %i.fl = zext nneg i32 %i.fg to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !23
  %i.fo = and i32 %.0110, 63
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fn, %i.fq
  %.not232 = icmp eq i64 %i.fr, 0
  br i1 %.not232, label %b3GetBit.exit.thread, label %bb.u

bb.h:                                             ; preds = %.critedge
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.ft = zext i32 %i.ex to i64
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.ft ; 2 uses
  %i.fv = lshr i32 %.0110, 6                      ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !28
  %.not.i176 = icmp ult i32 %i.fv, %i.fx
  br i1 %.not.i176, label %b3GetBit.exit178, label %b3GetBit.exit.thread

b3GetBit.exit178:                                 ; preds = %bb.h
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !29
  %i.fz = zext nneg i32 %i.fv to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !23
  %i.gc = and i32 %.0110, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = and i64 %i.gb, %i.ge
  %.not231 = icmp eq i64 %i.gf, 0
  br i1 %.not231, label %b3GetBit.exit.thread, label %bb.u

b3GetBit.exit.thread:                             ; preds = %bb.h, %bb.g, %b3GetBit.exit178, %bb.f, %b3GetBit.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !101 ; 3 uses
  %i.gi = icmp slt i32 %.0117, %i.gh
  br i1 %i.gi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %b3GetBit.exit.thread
  %i.gj = zext i32 %.0117 to i64
  %i.gk = shl i64 %i.gj, 42
  %i.gl = and i32 %i.gh, 4194303
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 20
  %i.go = or disjoint i64 %i.gn, %i.gk
  br label %b3ShapePairKey.exit

bb.j:                                             ; preds = %b3GetBit.exit.thread
  %i.gp = zext i32 %i.gh to i64
  %i.gq = shl i64 %i.gp, 42
  %i.gr = and i32 %.0117, 4194303
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl nuw nsw i64 %i.gs, 20
  %i.gu = or disjoint i64 %i.gq, %i.gt
  br label %b3ShapePairKey.exit

b3ShapePairKey.exit:                              ; preds = %bb.i, %bb.j
  %.sink.i = phi i64 [ %i.gu, %bb.j ], [ %i.go, %bb.i ]
  %i.gv = and i32 %.0116, 1048575
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = or disjoint i64 %.sink.i, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.gz = tail call zeroext i1 @b3ContainsKey(ptr noundef nonnull %i.gy, i64 noundef %i.gx) #8
  br i1 %i.gz, label %bb.u, label %bb.k

bb.k:                                             ; preds = %b3ShapePairKey.exit
  %i.ha = load i32, ptr %i.gg, align 8, !tbaa !101 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 4080
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !87 ; 2 uses
  %i.hd = sext i32 %.0117 to i64
  %i.he = getelementptr inbounds [232 x i8], ptr %i.hc, i64 %i.hd ; 7 uses
  %i.hf = sext i32 %i.ha to i64
  %i.hg = getelementptr inbounds [232 x i8], ptr %i.hc, i64 %i.hf ; 7 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !133 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !133 ; 2 uses
  %i.hl = icmp eq i32 %i.hi, %i.hk
  br i1 %i.hl, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !136
  %.not124 = icmp eq i32 %i.hn, -1
  br i1 %.not124, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !136
  %.not125 = icmp eq i32 %i.hp, -1
  br i1 %.not125, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 168
  %.sroa.5227.0.copyload = load i32, ptr %.sroa.5227.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 168
  %.sroa.5224.0.copyload = load i32, ptr %.sroa.5224.0..sroa_idx, align 8 ; 2 uses
  %i.hq = icmp eq i32 %.sroa.5224.0.copyload, %.sroa.5227.0.copyload
  %i.hr = icmp ne i32 %.sroa.5224.0.copyload, 0
  %or.cond.i = and i1 %i.hr, %i.hq
  br i1 %or.cond.i, label %.split, label %b3ShouldShapesCollide.exit

.split:                                           ; preds = %bb.n
  %i.hs = icmp sgt i32 %.sroa.5227.0.copyload, 0
  br i1 %i.hs, label %bb.o, label %bb.u

b3ShouldShapesCollide.exit:                       ; preds = %bb.n
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 152
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 160
  %.sroa.4223.0.copyload = load i64, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.0222.0.copyload = load i64, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 152
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 160
  %.sroa.4226.0.copyload = load i64, ptr %.sroa.4226.0..sroa_idx, align 8
  %.sroa.0225.0.copyload = load i64, ptr %i.hu, align 8
  %i.hv = and i64 %.sroa.0225.0.copyload, %.sroa.4223.0.copyload
  %i.hw = icmp ne i64 %i.hv, 0
  %i.hx = and i64 %.sroa.4226.0.copyload, %.sroa.0222.0.copyload
  %i.hy = icmp ne i64 %i.hx, 0
  %i.hz = select i1 %i.hw, i1 %i.hy, i1 false
  br i1 %i.hz, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.split, %b3ShouldShapesCollide.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 3880
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !137 ; 2 uses
  %i.ic = sext i32 %i.hi to i64
  %i.id = getelementptr inbounds [128 x i8], ptr %i.ib, i64 %i.ic
  %i.ie = sext i32 %i.hk to i64
  %i.if = getelementptr inbounds [128 x i8], ptr %i.ib, i64 %i.ie
  %i.ig = tail call zeroext i1 @b3ShouldBodiesCollide(ptr noundef nonnull %i.a, ptr noundef %i.id, ptr noundef %i.if) #8
  br i1 %i.ig, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ih = getelementptr inbounds nuw i8, ptr %i.he, i64 198
  %i.ii = load i8, ptr %i.ih, align 2, !tbaa !138
  %i.ij = and i8 %i.ii, 4
  %.not126 = icmp eq i8 %i.ij, 0
  br i1 %.not126, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hg, i64 198
  %i.il = load i8, ptr %i.ik, align 2, !tbaa !138
  %i.im = and i8 %i.il, 4
  %.not127 = icmp eq i8 %i.im, 0
  br i1 %.not127, label %.critedge130, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.in = load ptr, ptr %2, align 8, !tbaa !93    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4664
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !139 ; 2 uses
  %.not128 = icmp eq ptr %i.ip, null
  br i1 %.not128, label %.critedge130, label %bb.s
end_hunk_0
begin_hunk_1_@b3PairQueryCallback:bb.a
  %.sroa.514.0.insert.shift = shl nuw i64 %.sroa.514.0.insert.ext, 48
  %.sroa.413.0.insert.ext = zext i16 %i.is to i64
  %.sroa.413.0.insert.shift = shl nuw nsw i64 %.sroa.413.0.insert.ext, 32 ; 2 uses
  %.sroa.012.0.insert.ext = zext i32 %i.iq to i64
  %i.ja = or disjoint i64 %.sroa.514.0.insert.shift, %.sroa.012.0.insert.ext
  %.sroa.012.0.insert.insert = or disjoint i64 %i.ja, %.sroa.413.0.insert.shift
  %.sroa.5.0.insert.ext = zext i16 %i.ix to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.0.0.insert.ext = zext i32 %i.iv to i64
  %i.jb = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i64 %i.jb, %.sroa.413.0.insert.shift
  %i.jc = tail call zeroext i1 %i.ip(i64 %.sroa.012.0.insert.insert, i64 %.sroa.0.0.insert.insert, ptr noundef %i.iz) #8
  br i1 %i.jc, label %.critedge130, label %bb.u

.critedge130:                                     ; preds = %bb.r, %bb.s, %bb.q
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 1124
  %i.je = atomicrmw add ptr %i.jd, i32 1 seq_cst, align 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !33
  %i.jh = icmp slt i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge130
  %i.ji = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !34
  %i.jk = sext i32 %i.je to i64
  %i.jl = getelementptr inbounds [32 x i8], ptr %i.jj, i64 %i.jk ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  store i8 0, ptr %i.jm, align 8, !tbaa !88
  store i32 %.0117, ptr %i.jl, align 8, !tbaa !84
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store i32 %i.ha, ptr %i.jn, align 4, !tbaa !85
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i32 %.0116, ptr %i.jo, align 8, !tbaa !86
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !95 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !82
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !89
  store ptr %i.jl, ptr %i.jq, align 8, !tbaa !82
  br label %bb.u

bb.u:                                             ; preds = %.split, %bb.d, %b3GetBit.exit178, %b3GetBit.exit, %bb.k, %bb.m, %bb.l, %b3ShouldShapesCollide.exit, %bb.t, %.critedge130, %bb.s, %bb.o, %b3ShapePairKey.exit, %bb.b
  ret i1 true
}

declare void @b3GetBodyTransform(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b3ContainsKey(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @b3ShouldBodiesCollide(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @b3DynamicTree_Rebuild(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = !{!"b3Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"p1 int", !9, i64 0}
!13 = !{!"b3DynamicArray_int", !12, i64 0, !5, i64 8, !5, i64 12}
!14 = !{!"p1 _ZTS12b3MoveResult", !9, i64 0}
!15 = !{!"p1 _ZTS10b3MovePair", !9, i64 0}
!16 = !{!"b3AtomicInt", !5, i64 0}
!17 = !{!"p1 _ZTS9b3SetItem", !9, i64 0}
!18 = !{!"b3HashSet", !17, i64 0, !5, i64 8, !5, i64 12}
!19 = !{!"b3BroadPhase", !4, i64 0, !4, i64 240, !13, i64 288, !14, i64 304, !15, i64 312, !5, i64 320, !16, i64 324, !18, i64 328}
!20 = !{!19, !5, i64 300}
!21 = !{!19, !12, i64 288}
!22 = !{!"long", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS10b3TreeNode", !9, i64 0}
!25 = !{!"p1 _ZTS6b3AABB", !9, i64 0}
!26 = !{!"p1 _ZTS6b3Vec3", !9, i64 0}
!27 = !{!"b3BitSet", !10, i64 0, !5, i64 8, !5, i64 12}
!28 = !{!27, !5, i64 12}
!29 = !{!27, !10, i64 0}
!30 = !{!19, !5, i64 296}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!19, !14, i64 304}
!33 = !{!19, !5, i64 320}
!34 = !{!19, !15, i64 312}
!35 = !{!"p1 omnipotent char", !9, i64 0}
!36 = !{!"b3Stack", !35, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !5, i64 792}
!37 = !{!"b3ConstraintGraph", !4, i64 0}
!38 = !{!"p1 _ZTS16b3BlockAllocator", !9, i64 0}
!39 = !{!"b3DynamicArray_b3BlockAllocator", !38, i64 0, !5, i64 8, !5, i64 12}
!40 = !{!"p1 _ZTS7b3Mutex", !9, i64 0}
!41 = !{!"b3IdPool", !13, i64 0, !5, i64 16}
!42 = !{!"p1 _ZTS6b3Body", !9, i64 0}
!43 = !{!"b3DynamicArray_b3Body", !42, i64 0, !5, i64 8, !5, i64 12}
!44 = !{!"p1 _ZTS11b3SolverSet", !9, i64 0}
!45 = !{!"b3DynamicArray_b3SolverSet", !44, i64 0, !5, i64 8, !5, i64 12}
!46 = !{!"p1 _ZTS7b3Joint", !9, i64 0}
!47 = !{!"b3DynamicArray_b3Joint", !46, i64 0, !5, i64 8, !5, i64 12}
!48 = !{!"p1 _ZTS9b3Contact", !9, i64 0}
!49 = !{!"b3DynamicArray_b3Contact", !48, i64 0, !5, i64 8, !5, i64 12}
!50 = !{!"p1 _ZTS8b3Island", !9, i64 0}
!51 = !{!"b3DynamicArray_b3Island", !50, i64 0, !5, i64 8, !5, i64 12}
!52 = !{!"p1 _ZTS7b3Shape", !9, i64 0}
!53 = !{!"b3DynamicArray_b3Shape", !52, i64 0, !5, i64 8, !5, i64 12}
!54 = !{!"p1 _ZTS11b3NameEntry", !9, i64 0}
!55 = !{!"b3DynamicArray_b3NameEntry", !54, i64 0, !5, i64 8, !5, i64 12}
!56 = !{!"b3NameCache", !55, i64 0, !9, i64 16}
!57 = !{!"p1 _ZTS8b3Sensor", !9, i64 0}
!58 = !{!"b3DynamicArray_b3Sensor", !57, i64 0, !5, i64 8, !5, i64 12}
!59 = !{!"p1 _ZTS13b3TaskContext", !9, i64 0}
!60 = !{!"b3DynamicArray_b3TaskContext", !59, i64 0, !5, i64 8, !5, i64 12}
!61 = !{!"p1 _ZTS19b3SensorTaskContext", !9, i64 0}
!62 = !{!"b3DynamicArray_b3SensorTaskContext", !61, i64 0, !5, i64 8, !5, i64 12}
!63 = !{!"p1 _ZTS15b3BodyMoveEvent", !9, i64 0}
!64 = !{!"b3DynamicArray_b3BodyMoveEvent", !63, i64 0, !5, i64 8, !5, i64 12}
!65 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !9, i64 0}
!66 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !65, i64 0, !5, i64 8, !5, i64 12}
!67 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !9, i64 0}
!68 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !67, i64 0, !5, i64 8, !5, i64 12}
!69 = !{!"p1 _ZTS17b3ContactHitEvent", !9, i64 0}
!70 = !{!"b3DynamicArray_b3ContactHitEvent", !69, i64 0, !5, i64 8, !5, i64 12}
!71 = !{!"p1 _ZTS12b3JointEvent", !9, i64 0}
!72 = !{!"b3DynamicArray_b3JointEvent", !71, i64 0, !5, i64 8, !5, i64 12}
!73 = !{!"float", !4, i64 0}
!74 = !{!"b3Vec3", !73, i64 0, !73, i64 4, !73, i64 8}
!75 = !{!"short", !4, i64 0}
!76 = !{!"b3Profile", !73, i64 0, !73, i64 4, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20, !73, i64 24, !73, i64 28, !73, i64 32, !73, i64 36, !73, i64 40, !73, i64 44, !73, i64 48, !73, i64 52, !73, i64 56, !73, i64 60, !73, i64 64, !73, i64 68, !73, i64 72, !73, i64 76, !73, i64 80, !73, i64 84, !73, i64 88}
!77 = !{!"p1 _ZTS11b3Scheduler", !9, i64 0}
!78 = !{!"p1 _ZTS11b3Recording", !9, i64 0}
!79 = !{!"_Bool", !4, i64 0}
!80 = !{!"b3World", !36, i64 0, !19, i64 800, !37, i64 1144, !39, i64 3832, !40, i64 3848, !41, i64 3856, !43, i64 3880, !41, i64 3896, !45, i64 3920, !41, i64 3936, !47, i64 3960, !41, i64 3976, !49, i64 4000, !41, i64 4016, !51, i64 4040, !41, i64 4056, !53, i64 4080, !9, i64 4096, !56, i64 4104, !58, i64 4128, !60, i64 4144, !62, i64 4160, !64, i64 4176, !66, i64 4192, !68, i64 4208, !4, i64 4224, !4, i64 4256, !5, i64 4288, !70, i64 4296, !72, i64 4312, !27, i64 4328, !27, i64 4344, !27, i64 4360, !27, i64 4376, !9, i64 4392, !9, i64 4400, !9, i64 4408, !22, i64 4416, !5, i64 4424, !74, i64 4428, !73, i64 4440, !73, i64 4444, !73, i64 4448, !73, i64 4452, !73, i64 4456, !73, i64 4460, !73, i64 4464, !9, i64 4472, !9, i64 4480, !75, i64 4488, !76, i64 4492, !5, i64 4584, !5, i64 4588, !4, i64 4592, !8, i64 4624, !9, i64 4648, !9, i64 4656, !9, i64 4664, !9, i64 4672, !5, i64 4680, !9, i64 4688, !9, i64 4696, !9, i64 4704, !9, i64 4712, !77, i64 4720, !9, i64 4728, !78, i64 4736, !73, i64 4744, !73, i64 4748, !5, i64 4752, !5, i64 4756, !75, i64 4760, !79, i64 4762, !79, i64 4763, !79, i64 4764, !79, i64 4765, !79, i64 4766, !79, i64 4767}
!81 = !{!"b3MoveResult", !15, i64 0}
!82 = !{!81, !15, i64 0}
!83 = !{!"b3MovePair", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !79, i64 24}
!84 = !{!83, !5, i64 0}
!85 = !{!83, !5, i64 4}
!86 = !{!83, !5, i64 8}
!87 = !{!80, !52, i64 4080}
!88 = !{!83, !79, i64 24}
!89 = !{!83, !15, i64 16}
!90 = !{!"p1 _ZTS7b3World", !9, i64 0}
!91 = !{!"b3AABB", !74, i64 0, !74, i64 12}
!92 = !{!"b3QueryPairContext", !90, i64 0, !14, i64 8, !91, i64 16, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56}
!93 = !{!92, !90, i64 0}
!94 = !{!92, !5, i64 56}
!95 = !{!92, !14, i64 8}
!96 = !{!92, !5, i64 44}
!97 = !{!"b3DynamicTree", !22, i64 0, !24, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !12, i64 40, !25, i64 48, !26, i64 56, !12, i64 64, !5, i64 72}
!98 = !{!97, !24, i64 8}
!99 = !{!73, !73, i64 0}
!100 = !{!4, !4, i64 0}
!101 = !{!92, !5, i64 48}
!102 = !{!92, !5, i64 40}
!103 = !{!8, !5, i64 0}
!104 = !{!10, !10, i64 0}
!105 = !{!8, !5, i64 4}
!106 = !{!8, !5, i64 16}
!107 = !{!17, !17, i64 0}
!108 = !{!24, !24, i64 0}
!109 = !{!12, !12, i64 0}
!110 = !{!25, !25, i64 0}
!111 = !{!26, !26, i64 0}
!112 = !{i64 0, i64 8, !23, i64 8, i64 8, !108, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !11, i64 28, i64 4, !11, i64 32, i64 4, !11, i64 40, i64 8, !109, i64 48, i64 8, !110, i64 56, i64 8, !111, i64 64, i64 8, !109, i64 72, i64 4, !11}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = !{!80, !5, i64 4756}
!118 = !{!80, !9, i64 4688}
!119 = !{!80, !9, i64 4704}
!120 = !{!80, !9, i64 4712}
!121 = !{!80, !5, i64 4752}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = distinct !{!124, !31}
!125 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !99, i64 16, i64 4, !99, i64 20, i64 4, !99}
!128 = !{!"b3SurfaceMaterial", !73, i64 0, !73, i64 4, !73, i64 8, !74, i64 12, !22, i64 24, !5, i64 32, !5, i64 36}
!129 = !{!"p1 _ZTS17b3SurfaceMaterial", !9, i64 0}
!130 = !{!"b3Filter", !22, i64 0, !22, i64 8, !5, i64 16}
!131 = !{!"b3Shape", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !73, i64 28, !73, i64 32, !73, i64 36, !91, i64 40, !91, i64 64, !74, i64 88, !5, i64 100, !128, i64 104, !129, i64 144, !130, i64 152, !9, i64 176, !9, i64 184, !5, i64 192, !75, i64 196, !4, i64 198, !4, i64 200}
!132 = !{!131, !5, i64 24}
!133 = !{!131, !5, i64 4}
!135 = !{!92, !5, i64 52}
!136 = !{!131, !5, i64 16}
!137 = !{!80, !42, i64 3880}
!138 = !{!131, !4, i64 198}
!139 = !{!80, !9, i64 4664}
!140 = !{!80, !75, i64 4760}
!141 = !{!131, !75, i64 196}
!142 = !{!80, !9, i64 4672}
!143 = distinct !{!143, i1 false, !"b3AABB_Transform"}
!144 = distinct !{!144, !143, !"b3AABB_Transform: argument 0"}
!145 = !{!144}
end_hunk_1
