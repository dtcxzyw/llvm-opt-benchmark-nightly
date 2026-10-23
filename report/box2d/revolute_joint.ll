Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/revolute_joint?download=true
inline.NumInlined: 73
inline.NumDeleted: 22
begin_hunk_0_@b2WarmStartRevoluteJoint:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %2, %bb.a ]   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi ptr [ %i.x, %bb.d ], [ %2, %bb.c ]   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load <2 x float>, ptr %i.z, align 4     ; 2 uses
  %i.ac = load <2 x float>, ptr %i.aa, align 4    ; 2 uses
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ad, %i.ae           ; 2 uses
  %i.ag = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.ab, %i.ag           ; 2 uses
  %i.ai = fsub <2 x float> %i.af, %i.ah
  %i.aj = fadd <2 x float> %i.af, %i.ah
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.am = load float, ptr %i.al, align 4, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load float, ptr %i.an, align 4, !tbaa !106
  %i.ap = fadd float %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !107
  %i.as = fadd float %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load float, ptr %i.at, align 4, !tbaa !83
  %i.av = fsub float %i.as, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !109
  %i.ay = and i32 %i.ax, 512
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ba = load <2 x float>, ptr %i.az, align 4    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bd = load <2 x float>, ptr %i.q, align 4
  %i.be = load <2 x float>, ptr %i.i, align 4
  %i.bf = insertelement <2 x float> poison, float %i.b, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %i.bg, %i.be
  %i.bi = fsub <2 x float> %i.bd, %i.bh
  store <2 x float> %i.bi, ptr %i.q, align 4, !tbaa !81
  %i.bj = load <2 x float>, ptr %i.i, align 4
  %i.bk = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bk, %i.bl           ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.ba, %i.bn           ; 2 uses
  %i.bp = fsub <2 x float> %i.bm, %i.bo
  %i.bq = fadd <2 x float> %i.bm, %i.bo
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.bs = fmul <2 x float> %i.br, %i.bj           ; 2 uses
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.bs
  %i.bt = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bu = fadd float %i.av, %i.bt
  %i.bv = fmul float %i.f, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !110
  %i.by = fsub float %i.bx, %i.bv
  store float %i.by, ptr %i.bw, align 4, !tbaa !110
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !109
  %i.cb = and i32 %i.ca, 512
  %.not41 = icmp eq i32 %i.cb, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = load <2 x float>, ptr %i.y, align 4
  %i.cd = load <2 x float>, ptr %i.i, align 4
  %i.ce = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = fadd <2 x float> %i.cc, %i.cg
  store <2 x float> %i.ch, ptr %i.y, align 4, !tbaa !81
  %i.ci = load <2 x float>, ptr %i.i, align 4
  %i.cj = fmul <2 x float> %i.ak, %i.ci           ; 2 uses
  %shift62 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop63 = fsub <2 x float> %shift62, %i.cj
  %i.ck = extractelement <2 x float> %foldExtExtBinop63, i64 0
  %i.cl = fadd float %i.av, %i.ck
  %i.cm = fmul float %i.h, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !110
  %i.cp = fadd float %i.co, %i.cm
  store float %i.cp, ptr %i.cn, align 4, !tbaa !110
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b2SolveRevoluteJoint(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.b2BodyState, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.a, align 4, !tbaa !100 ; 3 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !101 ; 2 uses
  %i.g = load float, ptr %i.c, align 4, !tbaa !102 ; 8 uses
  %i.h = load float, ptr %i.d, align 4, !tbaa !103 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.b2SolveRevoluteJoint.dummyState, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load i32, ptr %i.j, align 4, !tbaa !96   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !104
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.p, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %.sroa.0117.0.copyload.pre = load <2 x float>, ptr %i.x, align 4, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0117.0.copyload = phi <2 x float> [ %.sroa.0117.0.copyload.pre, %bb.d ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.y = phi ptr [ %i.x, %bb.d ], [ %3, %bb.c ]   ; 5 uses
  %.sroa.0131.0.copyload = load <2 x float>, ptr %i.q, align 4, !tbaa !81 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !110 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !110 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load <2 x float>, ptr %i.ad, align 4
  %i.ah = load <2 x float>, ptr %i.af, align 4
  %i.ai = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ak = fmul <4 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ao = load <2 x float>, ptr %i.al, align 4
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
  %i.be = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift369 = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop370 = fadd <4 x float> %shift369, %i.bd
  %i.bf = extractelement <4 x float> %foldExtExtBinop370, i64 2 ; 2 uses
  %i.bg = fadd float %i.g, %i.h
  %i.bh = fcmp oeq float %i.bg, 0.000000e+00      ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !111, !range !70, !noundef !71
  %.not254 = icmp eq i8 %i.bj, 0
  %brmerge = select i1 %.not254, i1 true, i1 %i.bh
  br i1 %brmerge, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = tail call float @b2Atan2(float noundef %i.be, float noundef %i.bf) #11
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !112
  %i.bn = fsub float %i.bk, %i.bm                 ; 3 uses
  %i.bo = fcmp olt float %i.bn, -1.000000e+06
  %i.bp = fcmp ogt float %i.bn, 1.000000e+06
  %i.bq = select i1 %i.bp, float 1.000000e+06, float %i.bn
  %i.br = select i1 %i.bo, float -1.000000e+06, float %i.bq
  %i.bs = fpext float %i.br to double             ; 2 uses
  %i.bt = fdiv double %i.bs, f0x401921FB60000000
  %i.bu = fadd double %i.bt, f0x4338000000000000
  %i.bv = fadd double %i.bu, f0xC338000000000000
  %i.bw = fmul double %i.bv, f0x401921FB60000000
  %i.bx = fsub double %i.bs, %i.bw
  %i.by = fptrunc double %i.bx to float
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !140
  %i.cb = fmul float %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !142
  %i.cg = fsub float %i.ac, %i.aa
  %i.ch = fneg float %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !98
  %i.ck = fmul float %i.cj, %i.ch
  %i.cl = fadd float %i.cg, %i.cb
  %i.cm = fmul float %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !105 ; 2 uses
  %i.cp = fmul float %i.cf, %i.co
  %i.cq = fsub float %i.cm, %i.cp                 ; 3 uses
  %i.cr = fadd float %i.co, %i.cq
  store float %i.cr, ptr %i.cn, align 4, !tbaa !105
  %i.cs = fmul float %i.g, %i.cq
  %i.ct = fsub float %i.aa, %i.cs
  %i.cu = fmul float %i.h, %i.cq
  %i.cv = fadd float %i.ac, %i.cu
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0236 = phi float [ %i.cv, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %.0 = phi float [ %i.ct, %bb.f ], [ %i.aa, %bb.e ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !143, !range !70, !noundef !71
  %.not256 = icmp eq i8 %i.cx, 0
  %brmerge258 = select i1 %.not256, i1 true, i1 %i.bh
  br i1 %brmerge258, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = fsub float %.0236, %.0
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.da = load float, ptr %i.cz, align 4, !tbaa !144
  %i.db = fsub float %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !106 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !99
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dj = load float, ptr %i.di, align 4, !tbaa !145
  %i.dk = fmul float %i.dh, %i.dj                 ; 3 uses
  %i.dl = fmul float %i.dd, %i.db
  %i.dm = fsub float %i.df, %i.dl                 ; 3 uses
  %i.dn = fneg float %i.dk                        ; 2 uses
  %i.do = fcmp olt float %i.dm, %i.dn
  %i.dp = fcmp ogt float %i.dm, %i.dk
  %i.dq = select i1 %i.dp, float %i.dk, float %i.dm
  %i.dr = select i1 %i.do, float %i.dn, float %i.dq ; 2 uses
  store float %i.dr, ptr %i.de, align 4, !tbaa !106
  %i.ds = fsub float %i.dr, %i.df                 ; 2 uses
  %i.dt = fmul float %i.g, %i.ds
  %i.du = fsub float %.0, %i.dt
  %i.dv = fmul float %i.h, %i.ds
  %i.dw = fadd float %.0236, %i.dv
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1237 = phi float [ %i.dw, %bb.h ], [ %.0236, %bb.g ] ; 3 uses
  %.1 = phi float [ %i.du, %bb.h ], [ %.0, %bb.g ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !113, !range !70, !noundef !71
  %.not259 = icmp eq i8 %i.dy, 0
  %brmerge261 = select i1 %.not259, i1 true, i1 %i.bh
  br i1 %brmerge261, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dz = tail call float @b2Atan2(float noundef %i.be, float noundef %i.bf) #11 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !114
  %i.ec = fsub float %i.dz, %i.eb                 ; 3 uses
  %i.ed = fcmp ogt float %i.ec, 0.000000e+00
  br i1 %i.ed, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !146
  %i.eg = fmul float %i.ec, %i.ef
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %2, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !147
  %i.ej = fmul float %i.ec, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.el = load float, ptr %i.ek, align 4, !tbaa !148
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.en = load float, ptr %i.em, align 4, !tbaa !149
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0243 = phi float [ 0.000000e+00, %bb.k ], [ %i.en, %bb.m ], [ 0.000000e+00, %bb.l ]
  %.0242 = phi float [ 1.000000e+00, %bb.k ], [ %i.el, %bb.m ], [ 1.000000e+00, %bb.l ]
  %.0241 = phi float [ %i.eg, %bb.k ], [ %i.ej, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.eo = fsub float %.1237, %.1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !107 ; 3 uses
  %i.er = fneg float %.0242
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.et = load float, ptr %i.es, align 4, !tbaa !98 ; 2 uses
  %i.eu = fmul float %i.et, %i.er
  %i.ev = fadd float %i.eo, %.0241
  %i.ew = fmul float %i.ev, %i.eu
  %i.ex = fmul float %.0243, %i.eq
  %i.ey = fsub float %i.ew, %i.ex
  %i.ez = fadd float %i.eq, %i.ey                 ; 2 uses
  %i.fa = fcmp ogt float %i.ez, 0.000000e+00
  %i.fb = select i1 %i.fa, float %i.ez, float 0.000000e+00 ; 2 uses
  store float %i.fb, ptr %i.ep, align 4, !tbaa !107
  %i.fc = fsub float %i.fb, %i.eq                 ; 2 uses
  %i.fd = fmul float %i.g, %i.fc
  %i.fe = fsub float %.1, %i.fd                   ; 2 uses
  %i.ff = fmul float %i.h, %i.fc
  %i.fg = fadd float %.1237, %i.ff                ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !115
  %i.fj = fsub float %i.fi, %i.dz                 ; 3 uses
  %i.fk = fcmp ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !146
  %i.fn = fmul float %i.fj, %i.fm
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  br i1 %2, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !147
  %i.fq = fmul float %i.fj, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !148
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !149
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.0246 = phi float [ %i.fn, %bb.o ], [ %i.fq, %bb.q ], [ 0.000000e+00, %bb.p ]
  %.0245 = phi float [ 1.000000e+00, %bb.o ], [ %i.fs, %bb.q ], [ 1.000000e+00, %bb.p ]
  %.0244 = phi float [ 0.000000e+00, %bb.o ], [ %i.fu, %bb.q ], [ 0.000000e+00, %bb.p ]
  %i.fv = fsub float %i.fe, %i.fg
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !83 ; 3 uses
  %i.fy = fneg float %.0245
  %i.fz = fmul float %i.et, %i.fy
  %i.ga = fadd float %i.fv, %.0246
  %i.gb = fmul float %i.ga, %i.fz
  %i.gc = fmul float %.0244, %i.fx
  %i.gd = fsub float %i.gb, %i.gc
  %i.ge = fadd float %i.fx, %i.gd                 ; 2 uses
  %i.gf = fcmp ogt float %i.ge, 0.000000e+00
  %i.gg = select i1 %i.gf, float %i.ge, float 0.000000e+00 ; 2 uses
  store float %i.gg, ptr %i.fw, align 4, !tbaa !83
  %i.gh = fsub float %i.gg, %i.fx                 ; 2 uses
  %i.gi = fmul float %i.g, %i.gh
  %i.gj = fadd float %i.fe, %i.gi
  %i.gk = fmul float %i.h, %i.gh
  %i.gl = fsub float %i.fg, %i.gk
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.r
  %.2238 = phi float [ %i.gl, %bb.r ], [ %.1237, %bb.i ] ; 2 uses
  %.2 = phi float [ %i.gj, %bb.r ], [ %.1, %bb.i ] ; 2 uses
  %i.gm = load <2 x float>, ptr %i.ad, align 4    ; 2 uses
  %i.gn = load <2 x float>, ptr %i.ae, align 4    ; 2 uses
  %i.go = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %i.gp = load <2 x float>, ptr %i.am, align 4    ; 2 uses
  %.sroa.01.0.vec.extract.i297 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i300 = extractelement <2 x float> %.sroa.0131.0.copyload, i64 1
  %i.gq = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x float> %i.gq, %i.gr           ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = fmul <2 x float> %i.gm, %i.gt           ; 2 uses
  %i.gv = fsub <2 x float> %i.gs, %i.gu           ; 2 uses
  %i.gw = fadd <2 x float> %i.gs, %i.gu           ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> %i.gv, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.gy = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x float> %i.go, %i.gy           ; 2 uses
  %i.ha = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hc = fmul <2 x float> %i.ha, %i.hb           ; 2 uses
  %i.hd = fadd <2 x float> %i.gz, %i.hc           ; 2 uses
  %i.he = fsub <2 x float> %i.gz, %i.hc           ; 2 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> %i.hd, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.hg = insertelement <2 x float> poison, float %.2238, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = fmul <2 x float> %i.hh, %i.hi           ; 2 uses
  %i.hk = fadd <2 x float> %.sroa.0117.0.copyload, %i.hj
  %i.hl = fsub <2 x float> %.sroa.0117.0.copyload, %i.hj
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.hn = insertelement <2 x float> poison, float %.2, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x float> %i.ho, %i.gx           ; 2 uses
  %i.hq = fadd <2 x float> %.sroa.0131.0.copyload, %i.hp
  %i.hr = fsub <2 x float> %.sroa.0131.0.copyload, %i.hp
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> %i.hq, <2 x i32> <i32 0, i32 3>
  %i.ht = fsub <2 x float> %i.hm, %i.hs
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hu = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.021.0.copyload = load <2 x float>, ptr %i.hu, align 4, !tbaa !81
  %i.hv = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.hv, align 4, !tbaa !81
  %i.hw = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hy = load <2 x float>, ptr %i.hx, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !147
  %i.ib = fsub <2 x float> %.sroa.020.0.copyload, %.sroa.021.0.copyload
  %i.ic = fsub <2 x float> %i.hf, %i.hw
  %i.id = fadd <2 x float> %i.ic, %i.ib
  %i.ie = fadd <2 x float> %i.hy, %i.id
  %i.if = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x float> %i.ig, %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ij = load <2 x float>, ptr %i.ii, align 4, !tbaa !81
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.025.0 = phi <2 x float> [ %i.ih, %bb.t ], [ zeroinitializer, %bb.s ]
  %i.ik = phi <2 x float> [ %i.ij, %bb.t ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.s ] ; 2 uses
  %i.il = fmul <2 x float> %i.gx, %i.gx
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.in = fmul <2 x float> %i.hf, %i.hf
  %i.io = extractelement <2 x float> %i.gw, i64 0
  %i.ip = fneg float %i.io
  %i.iq = extractelement <2 x float> %i.gv, i64 1
  %i.ir = fmul float %i.iq, %i.ip
  %i.is = fmul float %i.g, %i.ir
  %i.it = extractelement <2 x float> %i.he, i64 0 ; 2 uses
  %i.iu = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.iv = fmul float %i.iu, %i.it
  %i.iw = fmul float %i.h, %i.iv
  %i.ix = extractelement <2 x float> %i.ik, i64 0
  %i.iy = fneg float %i.ix
  %i.iz = fadd float %i.e, %i.f
  %i.ja = fsub float %i.is, %i.iw                 ; 3 uses
  %i.jb = insertelement <2 x float> poison, float %i.g, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x float> %i.jc, %i.im
  %i.je = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fadd <2 x float> %i.jf, %i.jd
  %i.jh = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x float> %i.ji, %i.in
  %i.jk = fadd <2 x float> %i.jg, %i.jj           ; 3 uses
  %i.jl = fadd <2 x float> %i.ht, %.sroa.025.0    ; 2 uses
  %shift372 = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fmul <2 x float> %shift372, %i.jk
  %i.jm = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.jn = fmul float %i.ja, %i.ja
  %i.jo = fsub float %i.jm, %i.jn                 ; 3 uses
end_hunk_0
