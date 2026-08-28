Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_linesegs:bb.a
bb.b:                                             ; preds = %.loopexit83
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !61
  br label %.loopexit83._crit_edge

.loopexit83._crit_edge:                           ; preds = %.loopexit83, %bb.b
  %i.au = phi float [ 0.000000e+00, %bb.b ], [ %i.e, %.loopexit83 ] ; 6 uses
  %.pre-phi = fadd float %i.a, %i.au              ; 2 uses
  %i.av = fcmp ugt float %i.l, %.pre-phi
  br i1 %i.av, label %._crit_edge108, label %bb.c

._crit_edge108:                                   ; preds = %.loopexit83._crit_edge
  %.pre109 = fadd float %i.a, %i.l
  br label %bb.d

bb.c:                                             ; preds = %.loopexit83._crit_edge
  store float %i.au, ptr %i.m, align 4, !tbaa !61
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge108, %bb.c
  %.pre-phi110 = phi float [ %.pre109, %._crit_edge108 ], [ %.pre-phi, %bb.c ]
  %i.aw = phi float [ %i.l, %._crit_edge108 ], [ %i.au, %bb.c ] ; 4 uses
  %i.ax = fcmp ult float %.pre-phi110, 5.000000e-01
  br i1 %i.ax, label %._crit_edge107, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float %i.aw, ptr %i.o, align 4, !tbaa !61
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.d, %bb.e
  %i.ay = phi float [ %i.aw, %bb.e ], [ 5.000000e-01, %bb.d ] ; 5 uses
  %i.az = fadd float %i.a, %i.ay
  %i.ba = fcmp ult float %i.az, 5.000000e-01
  br i1 %i.ba, label %._crit_edge106, label %bb.f

bb.f:                                             ; preds = %._crit_edge107
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ay, ptr %i.bb, align 4, !tbaa !61
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge107, %bb.f
  %i.bc = phi float [ %i.ay, %bb.f ], [ 5.000000e-01, %._crit_edge107 ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.be = fadd float %i.a, %i.bc                  ; 2 uses
  %i.bf = fcmp ugt float %i.ar, %i.be
  br i1 %i.bf, label %._crit_edge105, label %bb.g

._crit_edge105:                                   ; preds = %._crit_edge106
  %.pre111 = fadd float %i.a, %i.ar
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge106
  store float %i.bc, ptr %i.bd, align 4, !tbaa !61
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge105, %bb.g
  %.pre-phi112 = phi float [ %.pre111, %._crit_edge105 ], [ %i.be, %bb.g ] ; 2 uses
  %i.bg = phi float [ %i.ar, %._crit_edge105 ], [ %i.bc, %bb.g ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bi = fcmp ugt float %i.aq, %.pre-phi112
  br i1 %i.bi, label %._crit_edge104, label %bb.i

._crit_edge104:                                   ; preds = %bb.h
  %.pre113 = fadd float %i.a, %i.aq
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.bg, ptr %i.bh, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge104, %bb.i
  %.pre-phi114 = phi float [ %.pre113, %._crit_edge104 ], [ %.pre-phi112, %bb.i ]
  %i.bj = phi float [ %i.aq, %._crit_edge104 ], [ %i.bg, %bb.i ] ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bl = fcmp ult float %.pre-phi114, 1.000000e+00
  br i1 %i.bl, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  store float %i.bj, ptr %i.bk, align 4, !tbaa !61
  %i.bm = fadd float %i.a, %i.bj
  %i.bn = fcmp oge float %i.bm, 1.000000e+00
  %i.bo = fcmp une float %i.bj, 1.000000e+00
  %or.cond = and i1 %i.bn, %i.bo
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %i.bp = fcmp oeq float %i.bg, %i.bj
  br i1 %i.bp, label %bb.k, label %.preheader.1

bb.k:                                             ; preds = %.preheader.preheader
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !61
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.k
  %i.bq = phi float [ %i.bg, %.preheader.preheader ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.br = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.br, label %bb.l, label %.preheader.2

bb.l:                                             ; preds = %.preheader.1
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !61
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.l, %.preheader.1
  %i.bs = phi float [ 1.000000e+00, %bb.l ], [ %i.bj, %.preheader.1 ] ; 2 uses
  %i.bt = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %.preheader.3

bb.m:                                             ; preds = %.preheader.2
  store float 1.000000e+00, ptr %i.bk, align 4, !tbaa !61
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.m, %.preheader.2
  %i.bu = phi float [ 1.000000e+00, %bb.m ], [ %i.bj, %.preheader.2 ] ; 2 uses
  %i.bv = fcmp ord float %i.bj, 0.000000e+00
  br i1 %i.bv, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.preheader.3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %._crit_edge, %.preheader.3, %bb.n
  %i.bw = phi float [ %i.bj, %._crit_edge ], [ %i.bu, %bb.n ], [ %i.bu, %.preheader.3 ], [ 1.000000e+00, %bb.j ] ; 4 uses
  %i.bx = phi float [ 1.000000e+00, %._crit_edge ], [ 1.000000e+00, %bb.n ], [ %i.bj, %.preheader.3 ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %i.by = phi float [ %i.bj, %._crit_edge ], [ %i.bs, %bb.n ], [ %i.bs, %.preheader.3 ], [ %i.bj, %bb.j ] ; 4 uses
  %i.bz = phi float [ %i.bg, %._crit_edge ], [ %i.bq, %bb.n ], [ %i.bq, %.preheader.3 ], [ %i.bg, %bb.j ] ; 4 uses
  %i.ca = fcmp oeq float %i.au, 0.000000e+00
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.aw, i64 2
  %i.cf = insertelement <4 x float> %i.ce, float %i.ay, i64 3 ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 2>
  %i.ch = insertelement <4 x float> %i.cg, float %i.au, i64 2
  %i.ci = fcmp oeq <4 x float> %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ck = fadd float %i.q, -1.000000e+00
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = fsub float %i.ap, %i.q
  %i.cn = insertelement <4 x float> poison, float %i.au, i64 0
  %i.co = insertelement <4 x float> %i.cn, float %i.aw, i64 1
  %i.cp = insertelement <4 x float> %i.co, float %i.ay, i64 2 ; 2 uses
  %i.cq = insertelement <4 x float> %i.cp, float %i.bc, i64 3
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.cs = fsub <4 x float> %i.cq, %i.cr
  %i.ct = insertelement <4 x float> <float 0.000000e+00, float 1.000000e+00, float poison, float poison>, float %i.ck, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cm, i64 3
  %i.cv = fdiv <4 x float> %i.cu, %i.cs           ; 2 uses
  %i.cw = extractelement <4 x float> %i.cv, i64 0
  %i.cx = select i1 %i.ca, float 0.000000e+00, float %i.cw ; 2 uses
  store float %i.cx, ptr %i.cb, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cz = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ao, i64 1
  %i.da = insertelement <4 x float> %i.cz, float %i.an, i64 2
  %i.db = insertelement <4 x float> %i.da, float %.sink, i64 3 ; 2 uses
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 1, i32 2>
  %i.dd = insertelement <4 x float> %i.dc, float %i.ap, i64 1
  %i.de = fsub <4 x float> %i.db, %i.dd
  %i.df = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.bz, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.by, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.bw, i64 3
  %i.dj = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.bc, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.bz, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.by, i64 3
  %i.dn = fsub <4 x float> %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = fcmp oeq float %i.by, %i.bz
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dr = fcmp oeq float %i.bw, %i.by
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dt = fcmp oeq float %i.bx, %i.bw
  %i.du = fdiv <4 x float> %i.de, %i.dn           ; 4 uses
  %i.dv = shufflevector <4 x float> %i.cv, <4 x float> %i.du, <4 x i32> <i32 3, i32 5, i32 1, i32 2>
  %i.dw = select <4 x i1> %i.ci, <4 x float> zeroinitializer, <4 x float> %i.dv ; 4 uses
  %i.dx = extractelement <4 x float> %i.dw, i64 2
  store float %i.dx, ptr %i.cj, align 4, !tbaa !67
  %i.dy = extractelement <4 x float> %i.dw, i64 3
  store float %i.dy, ptr %i.cl, align 4, !tbaa !67
  %i.dz = extractelement <4 x float> %i.dw, i64 0
  store float %i.dz, ptr %i.cy, align 4, !tbaa !67
  %i.ea = extractelement <4 x float> %i.dw, i64 1
  store float %i.ea, ptr %i.do, align 4, !tbaa !67
  %i.eb = extractelement <4 x float> %i.du, i64 2
  %.sink101 = select i1 %i.dp, float 0.000000e+00, float %i.eb
  store float %.sink101, ptr %i.dq, align 4, !tbaa !67
  %i.ec = extractelement <4 x float> %i.du, i64 3
  %.sink102 = select i1 %i.dr, float 0.000000e+00, float %i.ec
  store float %.sink102, ptr %i.ds, align 4, !tbaa !67
  %i.ed = extractelement <4 x float> %i.du, i64 0
  %.sink103 = select i1 %i.dt, float 0.000000e+00, float %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %.sink103, ptr %i.ee, align 4, !tbaa !67
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.as, align 4, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.cx, ptr %i.ef, align 4, !tbaa !67
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @hexwave_generate_samples(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  %4 = alloca [9 x %struct.hexvert], align 16     ; 23 uses
  %i.a = alloca [128 x float], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = load float, ptr %2, align 4, !tbaa !68   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = load i32, ptr @hexblep, align 8, !tbaa !20 ; 7 uses
  %i.d = shl i32 %i.c, 2                          ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %3) ; 9 uses
  %i.f = fcmp oeq float %3, 0.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.e
  %i.h = select i1 %i.f, float 0.000000e+00, float %i.g ; 4 uses
  %i.i = sdiv i32 %i.c, 2
  %i.j = icmp slt i32 %1, 1
  br i1 %i.j, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !19 ; 2 uses
  %i.m = fcmp une float %i.l, %i.e
  br i1 %i.m, label %.preheader180.preheader, label %bb.e

.preheader180.preheader:                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !61
  %i.p = fcmp olt float %i.b, %i.o
  br i1 %i.p, label %bb.c, label %.preheader180.1

.preheader180.1:                                  ; preds = %.preheader180.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load float, ptr %i.q, align 8, !tbaa !61
  %i.s = fcmp olt float %i.b, %i.r
  br i1 %i.s, label %bb.c, label %.preheader180.2

.preheader180.2:                                  ; preds = %.preheader180.1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !61
  %i.v = fcmp olt float %i.b, %i.u
  br i1 %i.v, label %bb.c, label %.preheader180.3

.preheader180.3:                                  ; preds = %.preheader180.2
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load float, ptr %i.w, align 16, !tbaa !61
  %i.y = fcmp olt float %i.b, %i.x
  br i1 %i.y, label %bb.c, label %.preheader180.4

.preheader180.4:                                  ; preds = %.preheader180.3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !61
  %i.ab = fcmp olt float %i.b, %i.aa
  %spec.select = select i1 %i.ab, i64 5, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.preheader180.4, %.preheader180.3, %.preheader180.2, %.preheader180.1, %.preheader180.preheader
  %.0123.lcssa = phi i64 [ 1, %.preheader180.preheader ], [ 4, %.preheader180.3 ], [ 2, %.preheader180.1 ], [ %spec.select, %.preheader180.4 ], [ 3, %.preheader180.2 ]
  %5 = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.0123.lcssa
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !67 ; 2 uses
  %i.ae = fcmp une float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %hex_blamp.exit

bb.d:                                             ; preds = %bb.c
  %i.af = fsub float %i.e, %i.l
  %i.ag = fmul float %i.af, %i.ad                 ; 4 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !49 ; 4 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 1) ; 2 uses
  %spec.select.i.i = add i32 %i.ak, -1            ; 2 uses
  %i.al = mul i32 %spec.select.i.i, %i.c
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %i.am ; 5 uses
  %i.ao = mul i32 %i.ak, %i.c
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.ah, i64 %i.ap ; 5 uses
  %i.ar = sitofp i32 %spec.select.i.i to float
  %i.as = fneg float %i.ar
  %i.at = tail call float @llvm.fmuladd.f32(float %i.aj, float 0.000000e+00, float %i.as) ; 4 uses
  %i.au = icmp sgt i32 %i.c, 0
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %hex_blamp.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.av = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.av  ; 2 uses
  %i.aw = add nsw i64 %i.ap, %wide.trip.count.i.i
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep285 = getelementptr i8, ptr %i.ah, i64 %i.ax
  %i.ay = add nsw i64 %i.am, %wide.trip.count.i.i
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep286 = getelementptr i8, ptr %i.ah, i64 %i.az
  %bound0 = icmp ult ptr %0, %scevgep285
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0287 = icmp ult ptr %0, %scevgep286
  %bound1288 = icmp ult ptr %i.an, %scevgep
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx = or i1 %found.conflict, %found.conflict289
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.at, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert290 = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat291 = shufflevector <4 x float> %broadcast.splatinsert290, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x float>, ptr %i.ba, align 4, !tbaa !18, !alias.scope !69 ; 2 uses
  %wide.load292 = load <4 x float>, ptr %i.bb, align 4, !tbaa !18, !alias.scope !69 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load293 = load <4 x float>, ptr %i.bc, align 4, !tbaa !18, !alias.scope !72
  %wide.load294 = load <4 x float>, ptr %i.bd, align 4, !tbaa !18, !alias.scope !72
  %i.be = fsub <4 x float> %wide.load293, %wide.load
  %i.bf = fsub <4 x float> %wide.load294, %wide.load292
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat, <4 x float> %wide.load292)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %wide.load295 = load <4 x float>, ptr %i.bi, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %wide.load296 = load <4 x float>, ptr %i.bj, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat291, <4 x float> %i.bg, <4 x float> %wide.load295)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat291, <4 x float> %i.bh, <4 x float> %wide.load296)
  store <4 x float> %i.bk, ptr %i.bi, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  store <4 x float> %i.bl, ptr %i.bj, align 4, !tbaa !18, !alias.scope !74, !noalias !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %hex_blamp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !18 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i.ph
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !18
  %i.br = fsub float %i.bq, %i.bo
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.at, float %i.bo)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !18
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.bs, float %i.bu)
  store float %i.bv, ptr %i.bt, align 4, !tbaa !18
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bw = add nsw i64 %wide.trip.count.i.i, -1
  %i.bx = icmp eq i64 %indvars.iv.i.i.ph, %i.bw
  br i1 %i.bx, label %hex_blamp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.i
  %i.bz = load float, ptr %i.by, align 4, !tbaa !18 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i.i
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !18
  %i.cc = fsub float %i.cb, %i.bz
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.at, float %i.bz)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !18
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.cd, float %i.cf)
  store float %i.cg, ptr %i.ce, align 4, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !18 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next.i.i
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !18
  %i.cl = fsub float %i.ck, %i.ci
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.at, float %i.ci)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !18
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.cm, float %i.co)
  store float %i.cp, ptr %i.cn, align 4, !tbaa !18
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !78

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cq = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cr, i1 false)
  %i.cs = load i32, ptr @hexblep, align 8, !tbaa !20 ; 3 uses
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cv, i1 false)
  %.not = icmp slt i32 %1, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.cx = sext i32 %i.d to i64                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.cw, i64 %i.cx, i1 false)
  %.pre = load i32, ptr @hexblep, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.cw, i64 %i.cx, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cy = phi i32 [ %i.cs, %bb.g ], [ %.pre, %bb.f ] ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.cy)
  %i.cz = icmp sge i32 %1, %i.cy
  %i.da = sub nsw i32 %1, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dg = sext i32 %i.i to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0122196 = phi float [ %i.b, %bb.h ], [ %.4, %.loopexit ] ; 10 uses
  %i.dp = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 3 uses
  %i.dq = phi i1 [ true, %bb.h ], [ false, %.loopexit ]
  %brmerge = select i1 %i.dp, i1 true, i1 %i.cz
  %..mux = select i1 %i.dp, i32 %., i32 %i.da     ; 2 uses
  %.mux = select i1 %i.dp, ptr %i.a, ptr %0       ; 12 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.dr = load float, ptr %i.dh, align 4, !tbaa !61
  %i.ds = fcmp olt float %.0122196, %i.dr
  br i1 %i.ds, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.dt = load float, ptr %i.di, align 8, !tbaa !61
  %i.du = fcmp olt float %.0122196, %i.dt
  br i1 %i.du, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dv = load float, ptr %i.dj, align 4, !tbaa !61
  %i.dw = fcmp olt float %.0122196, %i.dv
  br i1 %i.dw, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load float, ptr %i.dk, align 16, !tbaa !61
  %i.dy = fcmp olt float %.0122196, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dz = load float, ptr %i.dl, align 4, !tbaa !61
  %i.ea = fcmp olt float %.0122196, %i.dz
  br i1 %i.ea, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load float, ptr %i.dm, align 8, !tbaa !61
  %i.ec = fcmp olt float %.0122196, %i.eb
  br i1 %i.ec, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = load float, ptr %i.dn, align 4, !tbaa !61
  %i.ee = fcmp olt float %.0122196, %i.ed
  br i1 %i.ee, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = load float, ptr %i.do, align 16, !tbaa !61
  %i.eg = fcmp olt float %.0122196, %i.ef
  %spec.select276 = select i1 %i.eg, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select276, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.eh = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.ej = sitofp i32 %i.ei to float               ; 8 uses
  %i.ek = add i32 %i.ei, -1                       ; 4 uses
  %i.el = icmp sgt i32 %i.eh, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.eh to i64 ; 21 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dg
  %i.em = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 9 uses
  %scevgep363.a = getelementptr i8, ptr %.mux, i64 %i.em
  %scevgep395 = getelementptr i8, ptr %.mux, i64 %i.em
  %min.iters.check408 = icmp ult i32 %i.eh, 8
  %n.vec410 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n425 = icmp eq i64 %n.vec410, %wide.trip.count.i.i150
  %xtraiter451 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod452.not = icmp eq i64 %xtraiter451, 0
  %i.en = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check375 = icmp ult i32 %i.eh, 8
  %n.vec377 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n392 = icmp eq i64 %n.vec377, %wide.trip.count.i.i150
  %xtraiter453 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod454.not = icmp eq i64 %xtraiter453, 0
  %i.eo = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check342 = icmp ult i32 %i.eh, 8
  %n.vec344 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n359 = icmp eq i64 %n.vec344, %wide.trip.count.i.i150
  %xtraiter455 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  %i.ep = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check310 = icmp ult i32 %i.eh, 8
  %n.vec312 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n327 = icmp eq i64 %n.vec312, %wide.trip.count.i.i150
  %xtraiter457 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.er = add nsw i32 %.2125, 1                   ; 3 uses
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %4, i64 %i.es ; 4 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !61 ; 5 uses
  %i.ev = fcmp olt float %.1, %i.eu
  %i.ew = sext i32 %.2125 to i64                  ; 2 uses
  %i.ex = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ew ; 4 uses
  br i1 %i.ev, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.ex, align 4, !tbaa !61
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = icmp eq i32 %.0127, %..mux
  br i1 %i.fa, label %.loopexit, label %.lr.ph283

.lr.ph283:                                        ; preds = %.lr.ph
  %i.fb = sext i32 %.0127 to i64
  %i.fc = load float, ptr %i.ey, align 4, !tbaa !63
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !67
  %i.fe = load float, ptr %i.ex, align 4, !tbaa !61 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.ff = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.ff, label %.loopexit, label %bb.s, !llvm.loop !79

bb.s:                                             ; preds = %.lr.ph283, %bb.r
  %.2190282 = phi float [ %.1, %.lr.ph283 ], [ %i.fk, %bb.r ] ; 2 uses
  %indvars.iv281 = phi i64 [ %i.fb, %.lr.ph283 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fg = fsub float %.2190282, %i.fe
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.fg, float %i.fc)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv281 ; 2 uses
  %i.fi = load float, ptr %gep, align 4, !tbaa !18
  %i.fj = fadd float %i.fi, %i.fh
  store float %i.fj, ptr %gep, align 4, !tbaa !18
  %i.fk = fadd float %i.e, %.2190282              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv281, 1 ; 3 uses
  %i.fl = fcmp olt float %i.fk, %i.eu
  br i1 %i.fl, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fm = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fn = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.fe, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fm, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fk, %._crit_edge.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ew ; 3 uses
  %i.fp = fcmp oeq float %i.fn, %i.eu
  %i.fq = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fp, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fr = getelementptr [4 x i8], ptr %.mux, i64 %i.fq ; 6 uses
  %i.fs = fsub float %.2.lcssa, %i.eu
  %i.ft = fmul float %i.h, %i.fs                  ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !63
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !63
  %i.fy = fsub float %i.fv, %i.fx                 ; 4 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !38 ; 3 uses
  %i.ga = fmul float %i.ft, %i.ej
  %i.gb = fptosi float %i.ga to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 %i.ek) ; 3 uses
  %i.gc = mul i32 %spec.select.i.i148, %i.eh
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = getelementptr [4 x i8], ptr %i.fz, i64 %i.gd ; 5 uses
  %i.gf = add i32 %spec.select.i.i148, 1
  %i.gg = mul i32 %i.gf, %i.eh
  %i.gh = sext i32 %i.gg to i64                   ; 3 uses
  %i.gi = getelementptr [4 x i8], ptr %i.fz, i64 %i.gh ; 5 uses
  %i.gj = sitofp i32 %spec.select.i.i148 to float
  %i.gk = fneg float %i.gj
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ej, float %i.gk) ; 5 uses
  br i1 %i.el, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread267

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check408, label %.lr.ph.i.i151.preheader444, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gm = shl nsw i64 %i.fq, 2
  %scevgep396 = getelementptr i8, ptr %scevgep395, i64 %i.gm ; 2 uses
  %scevgep397 = getelementptr i8, ptr %i.fz, i64 %i.em ; 2 uses
  %i.gn = shl nsw i64 %i.gh, 2
  %scevgep398 = getelementptr i8, ptr %scevgep397, i64 %i.gn
  %i.go = shl nsw i64 %i.gd, 2
  %scevgep399 = getelementptr i8, ptr %scevgep397, i64 %i.go
  %bound0400 = icmp ult ptr %i.fr, %scevgep398
  %bound1401 = icmp ult ptr %i.gi, %scevgep396
  %found.conflict402 = and i1 %bound0400, %bound1401
  %bound0403 = icmp ult ptr %i.fr, %scevgep399
  %bound1404 = icmp ult ptr %i.ge, %scevgep396
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %found.conflict402, %found.conflict405
  br i1 %conflict.rdx406, label %.lr.ph.i.i151.preheader444, label %vector.ph409

vector.ph409:                                     ; preds = %vector.memcheck394
  %broadcast.splatinsert411 = insertelement <4 x float> poison, float %i.gl, i64 0
  %broadcast.splat412 = shufflevector <4 x float> %broadcast.splatinsert411, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert413 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat414 = shufflevector <4 x float> %broadcast.splatinsert413, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph409
  %index416 = phi i64 [ 0, %vector.ph409 ], [ %index.next423, %vector.body415 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index416 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load417 = load <4 x float>, ptr %i.gp, align 4, !tbaa !18, !alias.scope !80 ; 2 uses
  %wide.load418 = load <4 x float>, ptr %i.gq, align 4, !tbaa !18, !alias.scope !80 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index416 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load419 = load <4 x float>, ptr %i.gr, align 4, !tbaa !18, !alias.scope !83
  %wide.load420 = load <4 x float>, ptr %i.gs, align 4, !tbaa !18, !alias.scope !83
  %i.gt = fsub <4 x float> %wide.load419, %wide.load417
  %i.gu = fsub <4 x float> %wide.load420, %wide.load418
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> %broadcast.splat412, <4 x float> %wide.load417)
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %broadcast.splat412, <4 x float> %wide.load418)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %index416 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load421 = load <4 x float>, ptr %i.gx, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %wide.load422 = load <4 x float>, ptr %i.gy, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat414, <4 x float> %i.gv, <4 x float> %wide.load421)
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat414, <4 x float> %i.gw, <4 x float> %wide.load422)
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !18, !alias.scope !85, !noalias !87
  %index.next423 = add nuw i64 %index416, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next423, %n.vec410
  br i1 %i.hb, label %middle.block424, label %vector.body415, !llvm.loop !88

middle.block424:                                  ; preds = %vector.body415
  br i1 %cmp.n425, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader444

.lr.ph.i.i151.preheader444:                       ; preds = %vector.memcheck394, %.lr.ph.i.i151.preheader, %middle.block424
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec410, %middle.block424 ] ; 6 uses
  br i1 %lcmp.mod452.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader444
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i.i152.ph
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !18 ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i.i152.ph
  %i.hf = load float, ptr %i.he, align 4, !tbaa !18
  %i.hg = fsub float %i.hf, %i.hd
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.hg, float %i.gl, float %i.hd)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !18
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.hh, float %i.hj)
  store float %i.hk, ptr %i.hi, align 4, !tbaa !18
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader444
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader444 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.hl = icmp eq i64 %indvars.iv.i.i152.ph, %i.en
end_hunk_0
