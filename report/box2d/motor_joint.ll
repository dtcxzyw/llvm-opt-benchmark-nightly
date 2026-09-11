Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/motor_joint?download=true
inline.NumInlined: 65
inline.NumDeleted: 19
begin_hunk_0_@b2WarmStartMotorJoint:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ %2, %bb.a ]   ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.r = load i32, ptr %i.q, align 4, !tbaa !91   ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %2, %bb.c ]   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
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
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.am = load <2 x float>, ptr %i.ak, align 4
  %i.an = load <2 x float>, ptr %i.al, align 4
  %i.ao = fadd <2 x float> %i.am, %i.an           ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.as = load float, ptr %i.ar, align 4, !tbaa !100
  %i.at = fadd float %i.aq, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !102
  %i.aw = and i32 %i.av, 512
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ay = load <2 x float>, ptr %i.ax, align 4    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bb = load <2 x float>, ptr %i.p, align 4
  %i.bc = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.ao
  %i.bf = fsub <2 x float> %i.bb, %i.be
  store <2 x float> %i.bf, ptr %i.p, align 4
  %i.bg = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x float> %i.ay, %i.bj           ; 2 uses
  %i.bl = fsub <2 x float> %i.bi, %i.bk
  %i.bm = fadd <2 x float> %i.bi, %i.bk
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bo = fmul <2 x float> %i.ao, %i.bn           ; 2 uses
  %shift = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bo
  %i.bp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bq = fadd float %i.at, %i.bp
  %i.br = fmul float %i.f, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !103
  %i.bu = fsub float %i.bt, %i.br
  store float %i.bu, ptr %i.bs, align 4, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !102
  %i.bx = and i32 %i.bw, 512
  %.not41 = icmp eq i32 %i.bx, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = load <2 x float>, ptr %i.x, align 4
  %i.bz = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.ao
  %i.cc = fadd <2 x float> %i.cb, %i.by
  store <2 x float> %i.cc, ptr %i.x, align 4
  %i.cd = fmul <2 x float> %i.aj, %i.ao           ; 2 uses
  %shift68 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fsub <2 x float> %shift68, %i.cd
  %i.ce = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.cf = fadd float %i.at, %i.ce
  %i.cg = fmul float %i.h, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !103
  %i.cj = fadd float %i.cg, %i.ci
  store float %i.cj, ptr %i.ch, align 4, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolveMotorJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load float, ptr %i.b, align 4, !tbaa !97 ; 3 uses
  %i.d = load float, ptr %i.a, align 4, !tbaa !96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !87 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveMotorJoint.dummyState, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i32, ptr %i.h, align 4, !tbaa !90   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %i.n, %bb.b ], [ %2, %bb.a ]   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91   ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.sroa.0125.0.copyload.pre = load <2 x float>, ptr %i.v, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0125.0.copyload = phi <2 x float> [ %.sroa.0125.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 5 uses
  %i.w = phi ptr [ %i.v, %bb.d ], [ %2, %bb.c ]   ; 6 uses
  %.sroa.0139.0.copyload = load <2 x float>, ptr %i.o, align 4 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !103 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !103 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !131
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %i.ae = insertelement <2 x float> poison, float %i.y, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.aa, i64 1 ; 4 uses
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !94
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.al = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.am = load <2 x float>, ptr %i.ak, align 4    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ap = load <2 x float>, ptr %i.an, align 4    ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ao, align 4    ; 2 uses
  %i.ar = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %i.al, %i.ar           ; 2 uses
  %i.at = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = fmul <2 x float> %i.at, %i.au           ; 2 uses
  %i.aw = fsub <2 x float> %i.as, %i.av
  %i.ax = fadd <2 x float> %i.as, %i.av           ; 2 uses
  %i.ay = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ap, %i.az           ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bc = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.be = fsub <2 x float> %i.ba, %i.bd
  %i.bf = fadd <2 x float> %i.ba, %i.bd           ; 2 uses
  %i.bg = shufflevector <2 x float> %i.be, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %shift = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ay, %shift
  %shift471 = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop472 = fmul <2 x float> %shift471, %i.bg
  %foldExtExtBinop474 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop472
  %i.bh = extractelement <2 x float> %foldExtExtBinop474, i64 0
  %i.bi = fmul <2 x float> %i.ay, %i.bg           ; 2 uses
  %shift476 = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop477 = fadd <2 x float> %i.bi, %shift476
  %3 = extractelement <2 x float> %foldExtExtBinop477, i64 0
  %i.bj = tail call float @b2Atan2(float noundef %i.bh, float noundef %3) #10
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !132
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !134
  %i.br = fsub float %i.aa, %i.y
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !93
  %i.bu = load float, ptr %i.ab, align 4, !tbaa !131
  %i.bv = fmul float %i.bt, %i.bu                 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !100 ; 3 uses
  %i.by = fneg float %i.bo
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !95
  %i.cb = fmul float %i.ca, %i.by
  %i.cc = fadd float %i.br, %i.bm
  %i.cd = fmul float %i.cc, %i.cb
  %i.ce = fmul float %i.bq, %i.bx
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = fadd float %i.bx, %i.cf                 ; 3 uses
  %i.ch = fneg float %i.bv                        ; 2 uses
  %i.ci = fcmp olt float %i.cg, %i.ch
  %i.cj = fcmp ogt float %i.cg, %i.bv
  %i.ck = select i1 %i.cj, float %i.bv, float %i.cg
  %i.cl = select i1 %i.ci, float %i.ch, float %i.ck ; 2 uses
  store float %i.cl, ptr %i.bw, align 4, !tbaa !100
  %i.cm = fsub float %i.cl, %i.bx
  %i.cn = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.f, %i.co            ; 2 uses
  %i.cq = fadd <2 x float> %i.af, %i.cp
  %i.cr = fsub <2 x float> %i.af, %i.cp
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ct = phi <2 x float> [ %i.cs, %bb.g ], [ %i.af, %bb.f ], [ %i.af, %bb.e ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !135 ; 2 uses
  %i.cw = fcmp ogt float %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %shift479 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop480 = fsub <2 x float> %shift479, %i.ct
  %i.cx = extractelement <2 x float> %foldExtExtBinop480, i64 0
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !136
  %i.da = fsub float %i.cx, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dc = load float, ptr %i.db, align 4, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load float, ptr %i.dd, align 8, !tbaa !93
  %i.df = fmul float %i.cv, %i.de                 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !99 ; 2 uses
  %i.di = fmul float %i.dc, %i.da
  %i.dj = fsub float %i.dh, %i.di                 ; 3 uses
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = fcmp olt float %i.dj, %i.dk
  %i.dm = fcmp ogt float %i.dj, %i.df
  %i.dn = select i1 %i.dm, float %i.df, float %i.dj
  %i.do = select i1 %i.dl, float %i.dk, float %i.dn ; 2 uses
  store float %i.do, ptr %i.dg, align 4, !tbaa !99
  %i.dp = fsub float %i.do, %i.dh
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.f, %i.dr            ; 2 uses
  %i.dt = fadd <2 x float> %i.ct, %i.ds
  %i.du = fsub <2 x float> %i.ct, %i.ds
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> %i.dt, <2 x i32> <i32 0, i32 3>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dw = phi <2 x float> [ %i.dv, %bb.i ], [ %i.ct, %bb.h ] ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dz = load <2 x float>, ptr %i.dx, align 4    ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dy, align 4    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ed = load <2 x float>, ptr %i.eb, align 4    ; 2 uses
  %i.ee = load <2 x float>, ptr %i.ec, align 4    ; 2 uses
  %i.ef = shufflevector <2 x float> %i.dz, <2 x float> %i.ed, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eg = shufflevector <2 x float> %i.ea, <2 x float> %i.ee, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eh = fmul <2 x float> %i.ef, %i.eg
  %i.ei = shufflevector <2 x float> %i.dz, <2 x float> %i.ed, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ea, <2 x float> %i.ee, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ek = fmul <2 x float> %i.ei, %i.ej
  %i.el = fmul <2 x float> %i.ei, %i.eg
  %i.em = fmul <2 x float> %i.ef, %i.ej
  %i.en = fsub <2 x float> %i.eh, %i.ek           ; 10 uses
  %i.eo = fadd <2 x float> %i.el, %i.em           ; 11 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !137 ; 2 uses
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.et = load float, ptr %i.es, align 4, !tbaa !92
  %i.eu = fcmp ogt float %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.063.0.copyload = load <2 x float>, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.ew, align 4
  %i.ex = extractelement <2 x float> %i.eo, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ez = load <2 x float>, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !138
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !140
  %i.fg = fmul <2 x float> %i.dw, %i.eo
  %i.fh = shufflevector <2 x float> %.sroa.0139.0.copyload, <2 x float> %.sroa.0125.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fi = fsub <2 x float> %i.fh, %i.fg           ; 2 uses
  %i.fj = fmul <2 x float> %i.dw, %i.en
  %i.fk = shufflevector <2 x float> %.sroa.0139.0.copyload, <2 x float> %.sroa.0125.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.fl = fadd <2 x float> %i.fk, %i.fj           ; 2 uses
  %i.fm = fmul <2 x float> %i.eo, %i.eo
  %i.fn = fmul <2 x float> %i.f, %i.fm            ; 2 uses
  %i.fo = fneg float %i.ex
  %i.fp = fmul <2 x float> %i.en, %i.en
  %i.fq = fmul <2 x float> %i.f, %i.fp            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.fs, align 4 ; 3 uses
  %i.ft = fneg float %i.fd
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = fsub <2 x float> %.sroa.062.0.copyload, %.sroa.063.0.copyload
  %i.fw = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fx = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 2>
  %i.fy = fsub <2 x float> %i.fw, %i.fx
  %i.fz = fadd <2 x float> %i.fy, %i.fv
  %i.ga = fadd <2 x float> %i.ez, %i.fz
  %i.gb = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.gc, %i.ga
  %i.ge = shufflevector <2 x float> %i.fi, <2 x float> %i.fl, <2 x i32> <i32 1, i32 3>
  %i.gf = shufflevector <2 x float> %i.fi, <2 x float> %i.fl, <2 x i32> <i32 0, i32 2>
  %i.gg = fsub <2 x float> %i.ge, %i.gf
  %i.gh = fadd <2 x float> %i.gg, %i.gd           ; 2 uses
  %i.gi = fadd float %i.d, %i.c
  %i.gj = insertelement <2 x float> %i.eo, float %i.fo, i64 0
  %i.gk = fmul <2 x float> %i.en, %i.gj
  %i.gl = fmul <2 x float> %i.f, %i.gk            ; 2 uses
  %shift488.a = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop489.a = fsub <2 x float> %i.gl, %shift488.a ; 4 uses
  %i.gm = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = shufflevector <2 x float> %i.fn, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.gp = fadd <2 x float> %i.gn, %i.go
  %i.gq = shufflevector <2 x float> %i.fn, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.gr = fadd <2 x float> %i.gp, %i.gq           ; 4 uses
  %shift491 = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop492 = fmul <2 x float> %i.gr, %shift491
  %foldExtExtBinop494 = fmul <2 x float> %foldExtExtBinop489.a, %foldExtExtBinop489.a
  %foldExtExtBinop496 = fsub <2 x float> %foldExtExtBinop492, %foldExtExtBinop494
  %i.gs = extractelement <2 x float> %foldExtExtBinop496, i64 0 ; 3 uses
  %i.gt = fcmp une float %i.gs, 0.000000e+00
  %i.gu = fdiv float 1.000000e+00, %i.gs
  %.0.i = select i1 %i.gt, float %i.gu, float %i.gs ; 2 uses
  %i.gv = fneg float %.0.i
  %i.gw = shufflevector <2 x float> %i.gr, <2 x float> %foldExtExtBinop489.a, <2 x i32> <i32 1, i32 2>
  %i.gx = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gv, i64 1 ; 2 uses
  %i.gz = fmul <2 x float> %i.gw, %i.gy           ; 3 uses
  %i.ha = shufflevector <2 x float> %i.gr, <2 x float> %foldExtExtBinop489.a, <2 x i32> <i32 0, i32 2>
  %i.hb = fmul <2 x float> %i.ha, %i.gy           ; 2 uses
  %i.hc = shufflevector <2 x float> %i.gz, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.gz, ptr %i.fr, align 4
  store <2 x float> %i.hc, ptr %.sroa.4.0..sroa_idx, align 4
  %i.hd = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.gz, %i.hd
  %i.hf = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hg = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hh = fmul <2 x float> %i.hf, %i.hg
  %i.hi = fadd <2 x float> %i.he, %i.hh
  %i.hj = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul <2 x float> %i.hi, %i.hk
  %i.hm = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hn, %.sroa.038.0.copyload
  %i.hp = fsub <2 x float> %i.hl, %i.ho
  %i.hq = load float, ptr %i.fu, align 8, !tbaa !93
  %i.hr = fmul float %i.eq, %i.hq                 ; 3 uses
  %i.hs = fadd <2 x float> %.sroa.038.0.copyload, %i.hp ; 5 uses
  store <2 x float> %i.hs, ptr %i.fs, align 4
  %i.ht = fmul <2 x float> %i.hs, %i.hs           ; 2 uses
  %shift498 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop499 = fadd <2 x float> %i.ht, %shift498
  %4 = extractelement <2 x float> %foldExtExtBinop499, i64 0 ; 3 uses
  %i.hu = fmul float %i.hr, %i.hr
  %i.hv = fcmp ogt float %4, %i.hu
  br i1 %i.hv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.hw = fcmp ogt float %4, f0x057A0000
  br i1 %i.hw, label %bb.n, label %b2Normalize.exit

bb.n:                                             ; preds = %bb.m
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %4)
  %i.hx = fdiv nnan float 1.000000e+00, %sqrt.i
  %i.hy = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x float> %i.hs, %i.hz
  br label %b2Normalize.exit

b2Normalize.exit:                                 ; preds = %bb.m, %bb.n
  %.sroa.012.0.i = phi <2 x float> [ %i.ia, %bb.n ], [ zeroinitializer, %bb.m ]
  %i.ib = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.ic, %.sroa.012.0.i  ; 2 uses
  store <2 x float> %i.id, ptr %i.fs, align 4, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %b2Normalize.exit, %bb.l
  %i.ie = phi <2 x float> [ %i.id, %b2Normalize.exit ], [ %i.hs, %bb.l ]
  %i.if = fsub <2 x float> %i.ie, %.sroa.038.0.copyload ; 4 uses
  %i.ig = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fmul <2 x float> %i.ih, %i.if
  %i.ij = fsub <2 x float> %.sroa.0139.0.copyload, %i.ii
  %i.ik = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.il = fmul <2 x float> %i.en, %i.ik
  %i.im = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x float> %i.eo, %i.im
  %i.io = fsub <2 x float> %i.il, %i.in
  %i.ip = fmul <2 x float> %i.f, %i.io            ; 2 uses
  %i.iq = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.ir, %i.if
  %i.it = fadd <2 x float> %.sroa.0125.0.copyload, %i.is
  %i.iu = fadd <2 x float> %i.dw, %i.ip
  %i.iv = fsub <2 x float> %i.dw, %i.ip
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> %i.iu, <2 x i32> <i32 0, i32 3>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k, %bb.j
  %.sroa.0125.0 = phi <2 x float> [ %i.it, %bb.o ], [ %.sroa.0125.0.copyload, %bb.k ], [ %.sroa.0125.0.copyload, %bb.j ] ; 4 uses
  %.sroa.0139.0 = phi <2 x float> [ %i.ij, %bb.o ], [ %.sroa.0139.0.copyload, %bb.k ], [ %.sroa.0139.0.copyload, %bb.j ] ; 4 uses
  %i.ix = phi <2 x float> [ %i.iw, %bb.o ], [ %i.dw, %bb.k ], [ %i.dw, %bb.j ] ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !141 ; 2 uses
  %i.ja = fcmp ogt float %i.iz, 0.000000e+00
  br i1 %i.ja, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.jb = load <2 x float>, ptr %i.g, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.jd = load <2 x float>, ptr %i.jc, align 4    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jf = load <2 x float>, ptr %i.je, align 4    ; 2 uses
  %i.jg = shufflevector <2 x float> %i.eo, <2 x float> %i.en, <2 x i32> <i32 1, i32 3>
  %i.jh = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = fmul <2 x float> %i.jg, %i.jh           ; 2 uses
  %i.jj = fsub <2 x float> %.sroa.0125.0, %i.ji
  %i.jk = fadd <2 x float> %.sroa.0125.0, %i.ji
  %i.jl = shufflevector <2 x float> %i.jj, <2 x float> %i.jk, <2 x i32> <i32 0, i32 3>
  %i.jm = shufflevector <2 x float> %i.eo, <2 x float> %i.en, <2 x i32> <i32 0, i32 2>
  %i.jn = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x float> %i.jm, %i.jn           ; 2 uses
  %i.jp = fsub <2 x float> %.sroa.0139.0, %i.jo
  %i.jq = fadd <2 x float> %.sroa.0139.0, %i.jo
  %i.jr = shufflevector <2 x float> %i.jp, <2 x float> %i.jq, <2 x i32> <i32 0, i32 3>
  %i.js = fsub <2 x float> %i.jl, %i.jr
  %i.jt = fsub <2 x float> %i.js, %i.jb           ; 3 uses
  %foldExtExtBinop501 = fmul <2 x float> %i.jd, %i.jt
  %shift503 = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop504 = fmul <2 x float> %shift503, %i.jf
  %i.ju = shufflevector <2 x float> %i.jd, <2 x float> %i.jf, <2 x i32> <i32 1, i32 3>
  %i.jv = fmul <2 x float> %i.ju, %i.jt           ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.jw, align 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jy = load float, ptr %i.jx, align 8, !tbaa !93
  %i.jz = fmul float %i.iz, %i.jy                 ; 3 uses
  %5 = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %6 = shufflevector <2 x float> %foldExtExtBinop501, <2 x float> %5, <2 x i32> <i32 0, i32 3>
  %7 = shufflevector <2 x float> %foldExtExtBinop504, <2 x float> %i.jv, <2 x i32> <i32 0, i32 3>
  %8 = fadd <2 x float> %6, %7
  %i.ka = fsub <2 x float> %.sroa.08.0.copyload, %8 ; 5 uses
  store <2 x float> %i.ka, ptr %i.jw, align 4
  %i.kb = fmul <2 x float> %i.ka, %i.ka           ; 2 uses
  %shift506 = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop507 = fadd <2 x float> %i.kb, %shift506
  %9 = extractelement <2 x float> %foldExtExtBinop507, i64 0 ; 3 uses
  %i.kc = fmul float %i.jz, %i.jz
  %i.kd = fcmp ogt float %9, %i.kc
  br i1 %i.kd, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ke = fcmp ogt float %9, f0x057A0000
  br i1 %i.ke, label %bb.s, label %b2Normalize.exit428

bb.s:                                             ; preds = %bb.r
  %sqrt.i425 = tail call nnan float @llvm.sqrt.f32(float %9)
  %i.kf = fdiv nnan float 1.000000e+00, %sqrt.i425
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x float> %i.ka, %i.kh
  br label %b2Normalize.exit428

b2Normalize.exit428:                              ; preds = %bb.r, %bb.s
  %.sroa.012.0.i424 = phi <2 x float> [ %i.ki, %bb.s ], [ zeroinitializer, %bb.r ]
  %i.kj = insertelement <2 x float> poison, float %i.jz, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.kk, %.sroa.012.0.i424 ; 2 uses
  store <2 x float> %i.kl, ptr %i.jw, align 4, !tbaa !87
  br label %bb.t

bb.t:                                             ; preds = %b2Normalize.exit428, %bb.q
  %i.km = phi <2 x float> [ %i.kl, %b2Normalize.exit428 ], [ %i.ka, %bb.q ]
  %i.kn = fsub <2 x float> %i.km, %.sroa.08.0.copyload ; 4 uses
  %i.ko = insertelement <2 x float> poison, float %i.d, i64 0
  %i.kp = shufflevector <2 x float> %i.ko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = fmul <2 x float> %i.kp, %i.kn
  %i.kr = fsub <2 x float> %.sroa.0139.0, %i.kq
  %i.ks = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kt = fmul <2 x float> %i.en, %i.ks
  %i.ku = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.eo, %i.ku
  %i.kw = fsub <2 x float> %i.kt, %i.kv
  %i.kx = fmul <2 x float> %i.f, %i.kw            ; 2 uses
  %i.ky = insertelement <2 x float> poison, float %i.c, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.kz, %i.kn
  %i.lb = fadd <2 x float> %.sroa.0125.0, %i.la
  %i.lc = fadd <2 x float> %i.ix, %i.kx
  %i.ld = fsub <2 x float> %i.ix, %i.kx
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> %i.lc, <2 x i32> <i32 0, i32 3>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.sroa.0125.1 = phi <2 x float> [ %i.lb, %bb.t ], [ %.sroa.0125.0, %bb.p ]
  %.sroa.0139.1 = phi <2 x float> [ %i.kr, %bb.t ], [ %.sroa.0139.0, %bb.p ]
  %i.lf = phi <2 x float> [ %i.le, %bb.t ], [ %i.ix, %bb.p ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !102
  %i.li = and i32 %i.lh, 512
  %.not = icmp eq i32 %i.li, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store <2 x float> %.sroa.0139.1, ptr %i.o, align 4
  %i.lj = extractelement <2 x float> %i.lf, i64 0
  store float %i.lj, ptr %i.x, align 4, !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lk = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !102
  %i.lm = and i32 %i.ll, 512
  %.not256 = icmp eq i32 %i.lm, 0
  br i1 %.not256, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %.sroa.0125.1, ptr %i.w, align 4
  %i.ln = extractelement <2 x float> %i.lf, i64 1
  store float %i.ln, ptr %i.z, align 4, !tbaa !103
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare float @b2Atan2(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!88 = !{!"b2Mat22", !57, i64 0, !57, i64 8}
!89 = !{!"b2MotorJoint", !57, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !57, i64 44, !56, i64 52, !57, i64 56, !56, i64 64, !73, i64 68, !73, i64 80, !5, i64 92, !5, i64 96, !72, i64 100, !72, i64 116, !57, i64 132, !88, i64 140, !56, i64 156}
!90 = !{!89, !5, i64 92}
!91 = !{!89, !5, i64 96}
!92 = !{!89, !56, i64 20}
!93 = !{!86, !56, i64 8}
!94 = !{!89, !56, i64 32}
!95 = !{!89, !56, i64 156}
!96 = !{!74, !56, i64 48}
!97 = !{!74, !56, i64 52}
!98 = !{!86, !77, i64 72}
!99 = !{!89, !56, i64 52}
!100 = !{!89, !56, i64 64}
!101 = !{!"b2BodyState", !57, i64 0, !56, i64 8, !5, i64 12, !57, i64 16, !71, i64 24}
!102 = !{!101, !5, i64 12}
!103 = !{!101, !56, i64 8}
!104 = !{!74, !5, i64 4}
!105 = !{!74, !5, i64 8}
!106 = !{!86, !75, i64 56}
!107 = !{!64, !23, i64 1920}
!108 = !{!64, !25, i64 1960}
!109 = !{!"b2Body", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !58, i64 88, !4, i64 90}
!110 = !{!109, !5, i64 8}
!111 = !{!109, !5, i64 12}
!112 = !{!"b2DynamicArray_b2BodySim", !78, i64 0, !5, i64 8, !5, i64 12}
!113 = !{!"b2DynamicArray_b2BodyState", !77, i64 0, !5, i64 8, !5, i64 12}
!114 = !{!"p1 _ZTS10b2JointSim", !8, i64 0}
!115 = !{!"b2DynamicArray_b2JointSim", !114, i64 0, !5, i64 8, !5, i64 12}
!116 = !{!"p1 _ZTS12b2ContactSim", !8, i64 0}
!117 = !{!"b2DynamicArray_b2ContactSim", !116, i64 0, !5, i64 8, !5, i64 12}
!118 = !{!"p1 _ZTS11b2IslandSim", !8, i64 0}
!119 = !{!"b2DynamicArray_b2IslandSim", !118, i64 0, !5, i64 8, !5, i64 12}
!120 = !{!"b2SolverSet", !112, i64 0, !113, i64 16, !115, i64 32, !117, i64 48, !119, i64 64, !5, i64 80}
!121 = !{!120, !78, i64 0}
!122 = !{!"b2BodySim", !72, i64 0, !57, i64 16, !71, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !56, i64 56, !56, i64 60, !56, i64 64, !56, i64 68, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !5, i64 88, !5, i64 92}
!123 = !{!122, !56, i64 64}
!124 = !{!89, !56, i64 24}
!125 = !{!89, !56, i64 36}
!126 = !{!86, !63, i64 188}
!127 = !{i8 0, i8 2}
!128 = !{}
!129 = !{!74, !56, i64 56}
!130 = !{!74, !56, i64 60}
!131 = !{!89, !56, i64 40}
!132 = !{!89, !56, i64 80}
!133 = !{!89, !56, i64 84}
!134 = !{!89, !56, i64 88}
!135 = !{!89, !56, i64 16}
!136 = !{!89, !56, i64 12}
!137 = !{!89, !56, i64 28}
!138 = !{!89, !56, i64 68}
!139 = !{!89, !56, i64 72}
!140 = !{!89, !56, i64 76}
!141 = !{!89, !56, i64 8}
end_hunk_0
