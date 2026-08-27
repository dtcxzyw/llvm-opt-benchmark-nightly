Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij:bb.a
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = and i32 %i.f, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.lr.ph143, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !67
  %i.j = and i32 %3, 16777215
  %reass.mul = mul i32 %2, 9
  %i.k = add i32 %reass.mul, -6
  %i.l = shl nuw nsw i32 %2, 1                    ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55   ; 8 uses
  %i.o = add i32 %i.n, 1                          ; 2 uses
  %i.p = trunc i32 %i.n to i16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = add i32 %i.n, 65534                      ; 3 uses
  %.promoted = load ptr, ptr %i.q, align 8, !tbaa !90 ; 2 uses
  %xtraiter = and i32 %2, 1
  %i.s = icmp eq i32 %2, 3
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.t = and i32 %2, 2147483646
  %i.u = add nsw i32 %i.t, -4
  br label %bb.c

.lr.ph136.preheader.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph136.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph136.preheader.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ %.promoted, %.lr.ph ], [ %i.ba, %.lr.ph136.preheader.unr-lcssa ] ; 4 uses
  %.0124132.epil.init = phi i32 [ 2, %.lr.ph ], [ %i.bb, %.lr.ph136.preheader.unr-lcssa ]
  %lcmp.mod187 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  store i16 %i.p, ptr %.epil.init, align 2, !tbaa !93
  %i.v = shl nuw i32 %.0124132.epil.init, 1       ; 2 uses
  %i.w = add i32 %i.r, %i.v
  %i.x = trunc i32 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  store i16 %i.x, ptr %i.y, align 2, !tbaa !93
  %i.z = add i32 %i.v, %i.n
  %i.aa = trunc i32 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.epil.init, i64 4
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !93
  %i.ac = getelementptr inbounds nuw i8, ptr %.epil.init, i64 6
  br label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.lr.ph136.preheader.unr-lcssa, %.epil.preheader
  %.lcssa185 = phi ptr [ %i.ba, %.lr.ph136.preheader.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  store ptr %.lcssa185, ptr %i.q, align 8, !tbaa !90
  %i.ad = zext nneg i32 %2 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = alloca i8, i64 %i.ae, align 16          ; 3 uses
  %i.ag = add nsw i32 %2, -1                      ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.phi.trans.insert = zext nneg i32 %i.ag to i64
  %.phi.trans.insert166 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %i.ah = load <2 x float>, ptr %.phi.trans.insert166, align 4, !tbaa !9
  %i.ai = zext nneg i32 %i.ag to i64
  br label %.lr.ph136

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %i.aj = phi ptr [ %.promoted, %.lr.ph.new ], [ %i.ba, %bb.c ] ; 7 uses
  %.0124132 = phi i32 [ 2, %.lr.ph.new ], [ %i.bb, %bb.c ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ] ; 2 uses
  store i16 %i.p, ptr %i.aj, align 2, !tbaa !93
  %i.ak = shl nuw i32 %.0124132, 1                ; 2 uses
  %i.al = add i32 %i.r, %i.ak
  %i.am = trunc i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store i16 %i.am, ptr %i.an, align 2, !tbaa !93
  %i.ao = add i32 %i.ak, %i.n
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  store i16 %i.p, ptr %i.ar, align 2, !tbaa !93
  %i.as = shl nuw i32 %.0124132, 1
  %i.at = or disjoint i32 %i.as, 2                ; 2 uses
  %i.au = add i32 %i.r, %i.at
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !93
  %i.ax = add i32 %i.at, %i.n
  %i.ay = trunc i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 3 uses
  %i.bb = add nuw nsw i32 %.0124132, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2
  %niter.ncmp.1 = icmp eq i32 %niter, %i.u
  br i1 %niter.ncmp.1, label %.lr.ph136.preheader.unr-lcssa, label %bb.c, !llvm.loop !107

.lr.ph139:                                        ; preds = %bb.e
  %i.bc = fmul float %i.i, 5.000000e-01
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %wide.trip.count156 = zext nneg i32 %2 to i64
  %.phi.trans.insert169 = zext nneg i32 %i.ag to i64
  %.phi.trans.insert170 = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.phi.trans.insert169
  %i.bf = load <2 x float>, ptr %.phi.trans.insert170, align 8, !tbaa !9
  %i.bg = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0123133 = phi i64 [ %i.ai, %.lr.ph136.preheader ], [ %indvars.iv, %bb.e ]
  %i.bi = phi <2 x float> [ %i.ah, %.lr.ph136.preheader ], [ %i.bk, %bb.e ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !9 ; 2 uses
  %i.bl = fsub <2 x float> %i.bk, %i.bi           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bl, %i.bl
  %i.bm = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 0 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bm) ; 2 uses
  %i.bp = fcmp ogt float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph136
  %i.bq = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bq)
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bl, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph136
  %i.bu = phi <2 x float> [ %i.bt, %bb.d ], [ %i.bl, %.lr.ph136 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0123133 ; 2 uses
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  store float %i.bw, ptr %i.bv, align 8, !tbaa !91
  %i.bx = extractelement <2 x float> %i.bu, i64 0
  %i.by = fneg float %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store float %i.by, ptr %i.bz, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond151.not, label %.lr.ph139, label %.lr.ph136, !llvm.loop !108

._crit_edge140:                                   ; preds = %bb.h
  %.pre174 = load i32, ptr %i.m, align 4, !tbaa !55
  %i.ca = and i32 %i.l, 65534
  %i.cb = add i32 %.pre174, %i.ca
  store i32 %i.cb, ptr %i.m, align 4, !tbaa !55
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph139, %bb.h
  %indvars.iv152 = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next153, %bb.h ] ; 5 uses
  %.0119137 = phi i32 [ %i.ag, %.lr.ph139 ], [ %i.dx, %bb.h ]
  %i.cc = phi <2 x float> [ %i.bf, %.lr.ph139 ], [ %i.ce, %bb.h ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv152
  %i.ce = load <2 x float>, ptr %i.cd, align 8, !tbaa !9 ; 2 uses
  %i.cf = fadd <2 x float> %i.cc, %i.ce
  %i.cg = fmul <2 x float> %i.cf, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop183 = fmul <2 x float> %i.cg, %i.cg
  %i.ch = extractelement <2 x float> %foldExtExtBinop183, i64 1
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ch) ; 2 uses
  %i.ck = fcmp ogt float %i.cj, f0x358637BD
  br i1 %i.ck, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = fdiv float 1.000000e+00, %i.cj          ; 2 uses
  %i.cm = fcmp ogt float %i.cl, 1.000000e+02
  %.0115 = select i1 %i.cm, float 1.000000e+02, float %i.cl
  %i.cn = insertelement <2 x float> poison, float %.0115, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.cg, %i.co
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cq = phi <2 x float> [ %i.cp, %bb.g ], [ %i.cg, %bb.f ]
  %i.cr = fmul <2 x float> %i.bh, %i.cq           ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv152 ; 2 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !88 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.cs, align 4, !tbaa !9
  %i.cv = fsub <2 x float> %i.cu, %i.cr
  store <2 x float> %i.cv, ptr %i.ct, align 4, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %i.d, ptr %i.cw, align 4
  %i.cx = load ptr, ptr %i.bd, align 8, !tbaa !88 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 %3, ptr %i.cy, align 4, !tbaa !95
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.da = load <2 x float>, ptr %i.cs, align 4, !tbaa !9
  %i.db = fadd <2 x float> %i.cr, %i.da
  store <2 x float> %i.db, ptr %i.cz, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  store i64 %i.d, ptr %i.dc, align 4
  %i.dd = load ptr, ptr %i.bd, align 8, !tbaa !88 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  store i32 %i.j, ptr %i.de, align 4, !tbaa !95
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr %i.df, ptr %i.bd, align 8, !tbaa !88
  %indvars.iv152.tr = trunc i64 %indvars.iv152 to i32
  %i.dg = shl i32 %indvars.iv152.tr, 1            ; 2 uses
  %i.dh = add i32 %i.dg, %i.n
  %i.di = trunc i32 %i.dh to i16                  ; 2 uses
  %i.dj = load ptr, ptr %i.be, align 8, !tbaa !90 ; 7 uses
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !93
  %i.dk = shl i32 %.0119137, 1                    ; 2 uses
  %i.dl = add i32 %i.dk, %i.n
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !93
  %i.do = add i32 %i.dk, %i.o
  %i.dp = trunc i32 %i.do to i16                  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !93
  %i.ds = add i32 %i.dg, %i.o
  %i.dt = trunc i32 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !93
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 10
  store i16 %i.di, ptr %i.dv, align 2, !tbaa !93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store ptr %i.dw, ptr %i.be, align 8, !tbaa !90
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv152 to i32
  %exitcond157.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge140, label %bb.f, !llvm.loop !109

.lr.ph143:                                        ; preds = %bb.b
  %i.dy = mul i32 %2, 3
  %i.dz = add i32 %i.dy, -6
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.dz, i32 noundef %2)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %wide.trip.count161 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter189 = and i64 %wide.trip.count161, 1
  %.pre175 = load ptr, ptr %i.ea, align 8, !tbaa !88
  %unroll_iter194 = and i64 %wide.trip.count161, 2147483646
  br label %bb.i

.lr.ph145.unr-lcssa:                              ; preds = %bb.i
  %lcmp.mod192.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod192.not, label %.lr.ph145, label %.epil.preheader188

.epil.preheader188:                               ; preds = %.lr.ph145.unr-lcssa
  %lcmp.mod193 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next159.1
  %i.ec = load i64, ptr %i.eb, align 4
  store i64 %i.ec, ptr %i.fe, align 4
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.d, ptr %i.ee, align 4
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !88 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 %3, ptr %i.eg, align 4, !tbaa !95
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !88
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.unr-lcssa, %.epil.preheader188
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !55 ; 7 uses
  %i.ek = trunc i32 %i.ej to i16                  ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted147 = load ptr, ptr %i.el, align 8, !tbaa !90 ; 2 uses
  %i.em = add nsw i32 %2, -2                      ; 2 uses
  %i.en = add nsw i32 %2, -3
  %xtraiter197 = and i32 %i.em, 3                 ; 3 uses
  %i.eo = icmp ult i32 %i.en, 3
  br i1 %i.eo, label %.epil.preheader196, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter203 = and i32 %i.em, -4
  %invariant.op = add i32 2, %i.ej
  %invariant.op211 = add i32 3, %i.ej
  br label %bb.k

bb.i:                                             ; preds = %bb.i, %.lr.ph143
  %i.ep = phi ptr [ %.pre175, %.lr.ph143 ], [ %i.fe, %bb.i ]
  %indvars.iv158 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next159.1, %bb.i ] ; 3 uses
  %niter195 = phi i64 [ 0, %.lr.ph143 ], [ %niter195.next.1, %bb.i ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv158
  %i.er = load i64, ptr %i.eq, align 4
  store i64 %i.er, ptr %i.ep, align 4
  %i.es = load ptr, ptr %i.ea, align 8, !tbaa !88
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.d, ptr %i.et, align 4
  %i.eu = load ptr, ptr %i.ea, align 8, !tbaa !88 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i32 %3, ptr %i.ev, align 4, !tbaa !95
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 20 ; 2 uses
  store ptr %i.ew, ptr %i.ea, align 8, !tbaa !88
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv158
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 4
  store i64 %i.ez, ptr %i.ew, align 4
  %i.fa = load ptr, ptr %i.ea, align 8, !tbaa !88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.d, ptr %i.fb, align 4
  %i.fc = load ptr, ptr %i.ea, align 8, !tbaa !88 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 %3, ptr %i.fd, align 4, !tbaa !95
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 20 ; 3 uses
  store ptr %i.fe, ptr %i.ea, align 8, !tbaa !88
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %niter195.next.1 = add nuw nsw i64 %niter195, 2 ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %.lr.ph145.unr-lcssa, label %bb.i, !llvm.loop !110

.unr-lcssa:                                       ; preds = %bb.k
  %lcmp.mod200.not = icmp eq i32 %xtraiter197, 0
  br i1 %lcmp.mod200.not, label %.epilog-lcssa, label %.epil.preheader196

.epil.preheader196:                               ; preds = %.unr-lcssa, %.lr.ph145
  %.epil.init199 = phi ptr [ %.promoted147, %.lr.ph145 ], [ %i.gn, %.unr-lcssa ]
  %.0144.epil.init = phi i32 [ 2, %.lr.ph145 ], [ %i.go, %.unr-lcssa ]
  %lcmp.mod202 = icmp ne i32 %xtraiter197, 0
  tail call void @llvm.assume(i1 %lcmp.mod202)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader196
  %i.ff = phi ptr [ %.epil.init199, %.epil.preheader196 ], [ %i.fl, %bb.j ] ; 4 uses
  %.0144.epil = phi i32 [ %.0144.epil.init, %.epil.preheader196 ], [ %i.fm, %bb.j ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader196 ], [ %epil.iter.next, %bb.j ]
  store i16 %i.ek, ptr %i.ff, align 2, !tbaa !93
  %i.fg = add i32 %i.ej, %.0144.epil
  %i.fh = trunc i32 %i.fg to i16                  ; 2 uses
  %i.fi = add i16 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.fi, ptr %i.fj, align 2, !tbaa !93
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.fh, ptr %i.fk, align 2, !tbaa !93
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 6 ; 2 uses
  %i.fm = add nuw nsw i32 %.0144.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter197
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.j, !llvm.loop !111

.epilog-lcssa:                                    ; preds = %bb.j, %.unr-lcssa
  %.lcssa = phi ptr [ %i.gn, %.unr-lcssa ], [ %i.fl, %bb.j ]
  store ptr %.lcssa, ptr %i.el, align 8, !tbaa !90
  %i.fn = and i32 %2, 65535
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fp = add i32 %i.ej, %i.fn
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !55
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph145.new
  %i.fq = phi ptr [ %.promoted147, %.lr.ph145.new ], [ %i.gn, %bb.k ] ; 13 uses
  %.0144 = phi i32 [ 2, %.lr.ph145.new ], [ %i.go, %bb.k ] ; 5 uses
  %niter204 = phi i32 [ 0, %.lr.ph145.new ], [ %niter204.next.3, %bb.k ]
  store i16 %i.ek, ptr %i.fq, align 2, !tbaa !93
  %i.fr = add i32 %i.ej, %.0144
  %i.fs = trunc i32 %i.fr to i16                  ; 2 uses
  %i.ft = add i16 %i.fs, -1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !93
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i16 %i.fs, ptr %i.fv, align 2, !tbaa !93
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 6
  %i.fx = or disjoint i32 %.0144, 1
  store i16 %i.ek, ptr %i.fw, align 2, !tbaa !93
  %i.fy = add i32 %i.ej, %i.fx
  %i.fz = trunc i32 %i.fy to i16                  ; 2 uses
  %i.ga = add i16 %i.fz, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !93
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 10
  store i16 %i.fz, ptr %i.gc, align 2, !tbaa !93
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i16 %i.ek, ptr %i.gd, align 2, !tbaa !93
  %.reass = add i32 %.0144, %invariant.op
  %i.ge = trunc i32 %.reass to i16                ; 2 uses
  %i.gf = add i16 %i.ge, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !93
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i16 %i.ge, ptr %i.gh, align 2, !tbaa !93
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fq, i64 18
  store i16 %i.ek, ptr %i.gi, align 2, !tbaa !93
  %.reass212 = add i32 %.0144, %invariant.op211
  %i.gj = trunc i32 %.reass212 to i16             ; 2 uses
  %i.gk = add i16 %i.gj, -1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !93
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fq, i64 22
  store i16 %i.gj, ptr %i.gm, align 2, !tbaa !93
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.go = add nuw nsw i32 %.0144, 4               ; 2 uses
  %niter204.next.3 = add i32 %niter204, 4         ; 2 uses
  %niter204.ncmp.3 = icmp eq i32 %niter204.next.3, %unroll_iter203
  br i1 %niter204.ncmp.3, label %.unr-lcssa, label %bb.k, !llvm.loop !113

bb.l:                                             ; preds = %._crit_edge140, %.epilog-lcssa, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList16_PathArcToFastExERK6ImVec2fiii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.pr763 = phi i32 [ -1, %.lr.ph ], [ %.pr762, %bb.l ]
  %i.bw = phi i32 [ -1, %.lr.ph ], [ %i.cd, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %.critedge.thread

.critedge:                                        ; preds = %bb.l
  %i.by = icmp eq i32 %.pr762, -1
  br i1 %i.by, label %.critedge337, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !209
  %i.cb = icmp eq ptr %i.bu, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !301
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pr762 = phi i32 [ %.pr763, %bb.j ], [ %i.cc, %bb.k ] ; 2 uses
  %i.cd = phi i32 [ -1, %bb.j ], [ %i.cc, %bb.k ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !310

.critedge.thread:                                 ; preds = %bb.i, %.critedge
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !215 ; 37 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !311 ; 3 uses
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !22
  switch i8 %i.ch, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i8 49, label %bb.m
    i8 116, label %bb.p
    i8 79, label %bb.s
    i8 0, label %bb.v
  ]

bb.m:                                             ; preds = %.critedge.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.n, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22
  %i.cn = icmp eq i8 %i.cm, 0
  br i1 %i.cn, label %bb.o, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.p:                                             ; preds = %.critedge.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !22
  switch i8 %i.cs, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i8 121, label %bb.q
    i8 114, label %bb.y
    i8 116, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !22
  %i.cv = icmp eq i8 %i.cu, 112
  br i1 %i.cv, label %bb.r, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !22
  %i.cy = icmp eq i8 %i.cx, 49
  br i1 %i.cy, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.s:                                             ; preds = %.critedge.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !22
  %i.db = icmp eq i8 %i.da, 84
  br i1 %i.db, label %bb.t, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !22
  %i.de = icmp eq i8 %i.dd, 84
  br i1 %i.de, label %bb.u, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !22
  %i.dh = icmp eq i8 %i.dg, 79
  br i1 %i.dh, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.v:                                             ; preds = %.critedge.thread
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !22
  %i.dk = icmp eq i8 %i.dj, 1
  br i1 %i.dk, label %bb.w, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.x, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !22
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.y:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !22
  %i.dt = icmp eq i8 %i.ds, 117
  br i1 %i.dt, label %bb.z, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !22
  %i.dw = icmp eq i8 %i.dv, 101
  br i1 %i.dw, label %bb.aa, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.u, %bb.r, %bb.o
  %i.dx = icmp ne i32 %i.cg, 0
  %i.dy = sext i1 %i.dx to i32
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ab:                                            ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !22
  %i.eb = icmp eq i8 %i.ea, 99
  br i1 %i.eb, label %bb.ac, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ce, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !22
  %i.ee = icmp eq i8 %i.ed, 102
  br i1 %i.ee, label %bb.ad, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  switch i32 %i.eh, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit [
    i32 65536, label %bb.ae
    i32 131072, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ej = load i32, ptr %i.ei, align 1
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  %.not14.i.i = icmp slt i32 %i.cg, %i.ek
  br i1 %.not14.i.i, label %bb.af, label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.em = shl nsw i32 %i.cg, 2
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 1
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  br label %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit

_ZL27stbtt_GetFontOffsetForIndexPKhi.exit:        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.critedge.thread
  %.1.i.i = phi i32 [ %i.dy, %bb.aa ], [ -1, %bb.ae ], [ %i.eq, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ab ], [ -1, %bb.p ], [ -1, %bb.m ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ], [ -1, %bb.u ], [ -1, %bb.t ], [ -1, %bb.s ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %.critedge.thread ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.y ], [ -1, %bb.z ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.ce, ptr %i.er, align 8, !tbaa !312
  %i.es = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %.1.i.i, ptr %i.es, align 8, !tbaa !313
  %i.et = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 3 uses
  %.sroa.436.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.eu = zext i32 %.1.i.i to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  %.val.i.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %i.ex = getelementptr i8, ptr %i.ev, i64 5      ; 9 uses
  %.val25.i.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ey = zext i8 %.val.i.i.i to i32
  %i.ez = shl nuw nsw i32 %i.ey, 8
  %i.fa = zext i8 %.val25.i.i.i to i32
  %i.fb = or disjoint i32 %i.ez, %i.fa            ; 2 uses
  %i.fc = add i32 %.1.i.i, 12                     ; 10 uses
  %.not.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit145.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit
  %wide.trip.count.i.i.i = zext nneg i32 %i.fb to i64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.al ] ; 2 uses
  %indvars.iv.tr.i.i.i = trunc i64 %indvars.iv.i.i.i to i32
  %i.fd = shl i32 %indvars.iv.tr.i.i.i, 4
  %i.fe = add i32 %i.fd, %i.fc
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ff ; 5 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !22
  %i.fi = icmp eq i8 %i.fh, 99
  br i1 %i.fi, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !22
  %i.fl = icmp eq i8 %i.fk, 109
  br i1 %i.fl, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !22
  %i.fo = icmp eq i8 %i.fn, 97
  br i1 %i.fo, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !22
  %i.fr = icmp eq i8 %i.fq, 112
  br i1 %i.fr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.ft = load i32, ptr %i.fs, align 1
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  br label %.lr.ph.i138.i.i

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i138.i.i, label %bb.ag, !llvm.loop !314

.lr.ph.i138.i.i:                                  ; preds = %bb.al, %bb.ak
  %.2.i.i.i = phi i32 [ %i.fu, %bb.ak ], [ 0, %bb.al ] ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %.lr.ph.i138.i.i
  %indvars.iv.i140.i.i = phi i64 [ 0, %.lr.ph.i138.i.i ], [ %indvars.iv.next.i142.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.tr.i141.i.i = trunc i64 %indvars.iv.i140.i.i to i32
  %i.fv = shl i32 %indvars.iv.tr.i141.i.i, 4
  %i.fw = add i32 %i.fv, %i.fc
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.fx ; 5 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22
  %i.ga = icmp eq i8 %i.fz, 108
  br i1 %i.ga, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !22
  %i.gd = icmp eq i8 %i.gc, 111
  br i1 %i.gd, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !22
  %i.gg = icmp eq i8 %i.gf, 99
  br i1 %i.gg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !22
  %i.gj = icmp eq i8 %i.gi, 97
  br i1 %i.gj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gl = load i32, ptr %i.gk, align 1
  %i.gm = tail call i32 @llvm.bswap.i32(i32 %i.gl)
  br label %_ZL17stbtt__find_tablePhjPKc.exit145.i.i

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %indvars.iv.next.i142.i.i = add nuw nsw i64 %indvars.iv.i140.i.i, 1 ; 2 uses
  %exitcond.not.i143.i.i = icmp eq i64 %indvars.iv.next.i142.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i143.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit145.i.i, label %bb.am, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit145.i.i:         ; preds = %bb.ar, %bb.aq, %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit
  %.2.i346.i.i = phi i32 [ %.2.i.i.i, %bb.aq ], [ 0, %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit ], [ %.2.i.i.i, %bb.ar ] ; 4 uses
  %.2.i144.i.i = phi i32 [ %i.gm, %bb.aq ], [ 0, %_ZL27stbtt_GetFontOffsetForIndexPKhi.exit ], [ 0, %bb.ar ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %.2.i144.i.i, ptr %i.gn, align 8, !tbaa !315
  %.val.i146.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i147.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.go = zext i8 %.val.i146.i.i to i32
  %i.gp = shl nuw nsw i32 %i.go, 8
  %i.gq = zext i8 %.val25.i147.i.i to i32
  %i.gr = or disjoint i32 %i.gp, %i.gq            ; 2 uses
  %.not.i148.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i148.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit156.i.i, label %.lr.ph.i149.i.i

.lr.ph.i149.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit145.i.i
  %wide.trip.count.i150.i.i = zext nneg i32 %i.gr to i64
  br label %bb.as

bb.as:                                            ; preds = %bb.ax, %.lr.ph.i149.i.i
  %indvars.iv.i151.i.i = phi i64 [ 0, %.lr.ph.i149.i.i ], [ %indvars.iv.next.i153.i.i, %bb.ax ] ; 2 uses
  %indvars.iv.tr.i152.i.i = trunc i64 %indvars.iv.i151.i.i to i32
  %i.gs = shl i32 %indvars.iv.tr.i152.i.i, 4
  %i.gt = add i32 %i.gs, %i.fc
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.gu ; 5 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !22
  %i.gx = icmp eq i8 %i.gw, 104
  br i1 %i.gx, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !22
  %i.ha = icmp eq i8 %i.gz, 101
  br i1 %i.ha, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !22
  %i.hd = icmp eq i8 %i.hc, 97
  br i1 %i.hd, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !22
  %i.hg = icmp eq i8 %i.hf, 100
  br i1 %i.hg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hi = load i32, ptr %i.hh, align 1
  %i.hj = tail call i32 @llvm.bswap.i32(i32 %i.hi)
  br label %_ZL17stbtt__find_tablePhjPKc.exit156.i.i

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %indvars.iv.next.i153.i.i = add nuw nsw i64 %indvars.iv.i151.i.i, 1 ; 2 uses
  %exitcond.not.i154.i.i = icmp eq i64 %indvars.iv.next.i153.i.i, %wide.trip.count.i150.i.i
  br i1 %exitcond.not.i154.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit156.i.i, label %bb.as, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit156.i.i:         ; preds = %bb.ax, %bb.aw, %_ZL17stbtt__find_tablePhjPKc.exit145.i.i
  %i.hk = phi i32 [ %i.hj, %bb.aw ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit145.i.i ], [ 0, %bb.ax ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !316
  %.val.i157.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i158.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.hm = zext i8 %.val.i157.i.i to i32
  %i.hn = shl nuw nsw i32 %i.hm, 8
  %i.ho = zext i8 %.val25.i158.i.i to i32
  %i.hp = or disjoint i32 %i.hn, %i.ho            ; 2 uses
  %.not.i159.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i159.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit167.i.i, label %.lr.ph.i160.i.i

.lr.ph.i160.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit156.i.i
  %wide.trip.count.i161.i.i = zext nneg i32 %i.hp to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bd, %.lr.ph.i160.i.i
  %indvars.iv.i162.i.i = phi i64 [ 0, %.lr.ph.i160.i.i ], [ %indvars.iv.next.i164.i.i, %bb.bd ] ; 2 uses
  %indvars.iv.tr.i163.i.i = trunc i64 %indvars.iv.i162.i.i to i32
  %i.hq = shl i32 %indvars.iv.tr.i163.i.i, 4
  %i.hr = add i32 %i.hq, %i.fc
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.hs ; 5 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !22
  %i.hv = icmp eq i8 %i.hu, 103
  br i1 %i.hv, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !22
  %i.hy = icmp eq i8 %i.hx, 108
  br i1 %i.hy, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !22
  %i.ib = icmp eq i8 %i.ia, 121
  br i1 %i.ib, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 3
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !22
  %i.ie = icmp eq i8 %i.id, 102
  br i1 %i.ie, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ig = load i32, ptr %i.if, align 1
  %i.ih = tail call i32 @llvm.bswap.i32(i32 %i.ig)
  br label %_ZL17stbtt__find_tablePhjPKc.exit167.i.i

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay
  %indvars.iv.next.i164.i.i = add nuw nsw i64 %indvars.iv.i162.i.i, 1 ; 2 uses
  %exitcond.not.i165.i.i = icmp eq i64 %indvars.iv.next.i164.i.i, %wide.trip.count.i161.i.i
  br i1 %exitcond.not.i165.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit167.i.i, label %bb.ay, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit167.i.i:         ; preds = %bb.bd, %bb.bc, %_ZL17stbtt__find_tablePhjPKc.exit156.i.i
  %.2.i166.i.i = phi i32 [ %i.ih, %bb.bc ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit156.i.i ], [ 0, %bb.bd ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i32 %.2.i166.i.i, ptr %i.ii, align 8, !tbaa !317
  %.val.i168.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i169.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ij = zext i8 %.val.i168.i.i to i32
  %i.ik = shl nuw nsw i32 %i.ij, 8
  %i.il = zext i8 %.val25.i169.i.i to i32
  %i.im = or disjoint i32 %i.ik, %i.il            ; 2 uses
  %.not.i170.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.i170.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit178.i.i, label %.lr.ph.i171.i.i

.lr.ph.i171.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit167.i.i
  %wide.trip.count.i172.i.i = zext nneg i32 %i.im to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bj, %.lr.ph.i171.i.i
  %indvars.iv.i173.i.i = phi i64 [ 0, %.lr.ph.i171.i.i ], [ %indvars.iv.next.i175.i.i, %bb.bj ] ; 2 uses
  %indvars.iv.tr.i174.i.i = trunc i64 %indvars.iv.i173.i.i to i32
  %i.in = shl i32 %indvars.iv.tr.i174.i.i, 4
  %i.io = add i32 %i.in, %i.fc
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ip ; 5 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !22
  %i.is = icmp eq i8 %i.ir, 104
  br i1 %i.is, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !22
  %i.iv = icmp eq i8 %i.iu, 104
  br i1 %i.iv, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !22
  %i.iy = icmp eq i8 %i.ix, 101
  br i1 %i.iy, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !22
  %i.jb = icmp eq i8 %i.ja, 97
  br i1 %i.jb, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.jd = load i32, ptr %i.jc, align 1
  %i.je = tail call i32 @llvm.bswap.i32(i32 %i.jd)
  br label %_ZL17stbtt__find_tablePhjPKc.exit178.i.i

bb.bj:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %indvars.iv.next.i175.i.i = add nuw nsw i64 %indvars.iv.i173.i.i, 1 ; 2 uses
  %exitcond.not.i176.i.i = icmp eq i64 %indvars.iv.next.i175.i.i, %wide.trip.count.i172.i.i
  br i1 %exitcond.not.i176.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit178.i.i, label %bb.be, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit178.i.i:         ; preds = %bb.bj, %bb.bi, %_ZL17stbtt__find_tablePhjPKc.exit167.i.i
  %.2.i177.i.i = phi i32 [ %i.je, %bb.bi ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit167.i.i ], [ 0, %bb.bj ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  store i32 %.2.i177.i.i, ptr %i.jf, align 4, !tbaa !318
  %.val.i179.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i180.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.jg = zext i8 %.val.i179.i.i to i32
  %i.jh = shl nuw nsw i32 %i.jg, 8
  %i.ji = zext i8 %.val25.i180.i.i to i32
  %i.jj = or disjoint i32 %i.jh, %i.ji            ; 2 uses
  %.not.i181.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i181.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit189.i.i, label %.lr.ph.i182.i.i

.lr.ph.i182.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit178.i.i
  %wide.trip.count.i183.i.i = zext nneg i32 %i.jj to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bp, %.lr.ph.i182.i.i
  %indvars.iv.i184.i.i = phi i64 [ 0, %.lr.ph.i182.i.i ], [ %indvars.iv.next.i186.i.i, %bb.bp ] ; 2 uses
  %indvars.iv.tr.i185.i.i = trunc i64 %indvars.iv.i184.i.i to i32
  %i.jk = shl i32 %indvars.iv.tr.i185.i.i, 4
  %i.jl = add i32 %i.jk, %i.fc
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.jm ; 5 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !22
  %i.jp = icmp eq i8 %i.jo, 104
  br i1 %i.jp, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !22
  %i.js = icmp eq i8 %i.jr, 109
  br i1 %i.js, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !22
  %i.jv = icmp eq i8 %i.ju, 116
  br i1 %i.jv, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !22
  %i.jy = icmp eq i8 %i.jx, 120
  br i1 %i.jy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.ka = load i32, ptr %i.jz, align 1
  %i.kb = tail call i32 @llvm.bswap.i32(i32 %i.ka)
  br label %_ZL17stbtt__find_tablePhjPKc.exit189.i.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %indvars.iv.next.i186.i.i = add nuw nsw i64 %indvars.iv.i184.i.i, 1 ; 2 uses
  %exitcond.not.i187.i.i = icmp eq i64 %indvars.iv.next.i186.i.i, %wide.trip.count.i183.i.i
  br i1 %exitcond.not.i187.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit189.i.i, label %bb.bk, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit189.i.i:         ; preds = %bb.bp, %bb.bo, %_ZL17stbtt__find_tablePhjPKc.exit178.i.i
  %.2.i188.i.i = phi i32 [ %i.kb, %bb.bo ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit178.i.i ], [ 0, %bb.bp ] ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 %.2.i188.i.i, ptr %i.kc, align 8, !tbaa !319
  %.val.i190.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i191.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.kd = zext i8 %.val.i190.i.i to i32
  %i.ke = shl nuw nsw i32 %i.kd, 8
  %i.kf = zext i8 %.val25.i191.i.i to i32
  %i.kg = or disjoint i32 %i.ke, %i.kf            ; 2 uses
  %.not.i192.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not.i192.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit200.i.i, label %.lr.ph.i193.i.i

.lr.ph.i193.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit189.i.i
  %wide.trip.count.i194.i.i = zext nneg i32 %i.kg to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bv, %.lr.ph.i193.i.i
  %indvars.iv.i195.i.i = phi i64 [ 0, %.lr.ph.i193.i.i ], [ %indvars.iv.next.i197.i.i, %bb.bv ] ; 2 uses
  %indvars.iv.tr.i196.i.i = trunc i64 %indvars.iv.i195.i.i to i32
  %i.kh = shl i32 %indvars.iv.tr.i196.i.i, 4
  %i.ki = add i32 %i.kh, %i.fc
  %i.kj = zext i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.kj ; 5 uses
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !22
  %i.km = icmp eq i8 %i.kl, 107
  br i1 %i.km, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !22
  %i.kp = icmp eq i8 %i.ko, 101
  br i1 %i.kp, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !22
  %i.ks = icmp eq i8 %i.kr, 114
  br i1 %i.ks, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kk, i64 3
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !22
  %i.kv = icmp eq i8 %i.ku, 110
  br i1 %i.kv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.kx = load i32, ptr %i.kw, align 1
  %i.ky = tail call i32 @llvm.bswap.i32(i32 %i.kx)
  br label %_ZL17stbtt__find_tablePhjPKc.exit200.i.i

bb.bv:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %indvars.iv.next.i197.i.i = add nuw nsw i64 %indvars.iv.i195.i.i, 1 ; 2 uses
  %exitcond.not.i198.i.i = icmp eq i64 %indvars.iv.next.i197.i.i, %wide.trip.count.i194.i.i
  br i1 %exitcond.not.i198.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit200.i.i, label %bb.bq, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit200.i.i:         ; preds = %bb.bv, %bb.bu, %_ZL17stbtt__find_tablePhjPKc.exit189.i.i
  %.2.i199.i.i = phi i32 [ %i.ky, %bb.bu ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit189.i.i ], [ 0, %bb.bv ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 %.2.i199.i.i, ptr %i.kz, align 4, !tbaa !320
  %.val.i201.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i202.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.la = zext i8 %.val.i201.i.i to i32
  %i.lb = shl nuw nsw i32 %i.la, 8
  %i.lc = zext i8 %.val25.i202.i.i to i32
  %i.ld = or disjoint i32 %i.lb, %i.lc            ; 2 uses
  %.not.i203.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i203.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit211.i.i, label %.lr.ph.i204.i.i

.lr.ph.i204.i.i:                                  ; preds = %_ZL17stbtt__find_tablePhjPKc.exit200.i.i
  %wide.trip.count.i205.i.i = zext nneg i32 %i.ld to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cb, %.lr.ph.i204.i.i
  %indvars.iv.i206.i.i = phi i64 [ 0, %.lr.ph.i204.i.i ], [ %indvars.iv.next.i208.i.i, %bb.cb ] ; 2 uses
  %indvars.iv.tr.i207.i.i = trunc i64 %indvars.iv.i206.i.i to i32
  %i.le = shl i32 %indvars.iv.tr.i207.i.i, 4
  %i.lf = add i32 %i.le, %i.fc
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.lg ; 5 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !22
  %i.lj = icmp eq i8 %i.li, 71
  br i1 %i.lj, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !22
  %i.lm = icmp eq i8 %i.ll, 80
  br i1 %i.lm, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !22
  %i.lp = icmp eq i8 %i.lo, 79
  br i1 %i.lp, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 3
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !22
  %i.ls = icmp eq i8 %i.lr, 83
  br i1 %i.ls, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lu = load i32, ptr %i.lt, align 1
  %i.lv = tail call i32 @llvm.bswap.i32(i32 %i.lu)
  br label %_ZL17stbtt__find_tablePhjPKc.exit211.i.i

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw
  %indvars.iv.next.i208.i.i = add nuw nsw i64 %indvars.iv.i206.i.i, 1 ; 2 uses
  %exitcond.not.i209.i.i = icmp eq i64 %indvars.iv.next.i208.i.i, %wide.trip.count.i205.i.i
  br i1 %exitcond.not.i209.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit211.i.i, label %bb.bw, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit211.i.i:         ; preds = %bb.cb, %bb.ca, %_ZL17stbtt__find_tablePhjPKc.exit200.i.i
  %.2.i210.i.i = phi i32 [ %i.lv, %bb.ca ], [ 0, %_ZL17stbtt__find_tablePhjPKc.exit200.i.i ], [ 0, %bb.cb ]
  %i.lw = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i32 %.2.i210.i.i, ptr %i.lw, align 8, !tbaa !321
  %.not.i.i358 = icmp eq i32 %.2.i346.i.i, 0
  %.not115.i.i = icmp eq i32 %i.hk, 0
  %or.cond375.i.i = select i1 %.not.i.i358, i1 true, i1 %.not115.i.i
  %.not116.i.i = icmp eq i32 %.2.i177.i.i, 0
  %or.cond376.i.i = select i1 %or.cond375.i.i, i1 true, i1 %.not116.i.i
  %.not117.i.i = icmp eq i32 %.2.i188.i.i, 0
  %or.cond377.i.i = select i1 %or.cond376.i.i, i1 true, i1 %.not117.i.i
  br i1 %or.cond377.i.i, label %.critedge337, label %bb.cc

bb.cc:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit211.i.i
  %.not118.i.i = icmp eq i32 %.2.i166.i.i, 0
  br i1 %.not118.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not123.i.i = icmp eq i32 %.2.i144.i.i, 0
  br i1 %.not123.i.i, label %.critedge337, label %bb.eh

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #40
  store i32 2, ptr %i.k, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #40
  store i32 0, ptr %i.l, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #40
  store i32 0, ptr %i.m, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #40
  store i32 0, ptr %i.n, align 4, !tbaa !138
  %.val.i212.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i213.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.lx = zext i8 %.val.i212.i.i to i32
  %i.ly = shl nuw nsw i32 %i.lx, 8
  %i.lz = zext i8 %.val25.i213.i.i to i32
  %i.ma = or disjoint i32 %i.ly, %i.lz            ; 2 uses
  %.not.i214.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i214.i.i, label %.critedge.i.i, label %.lr.ph.i215.i.i

.lr.ph.i215.i.i:                                  ; preds = %bb.ce
  %wide.trip.count.i216.i.i = zext nneg i32 %i.ma to i64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %.lr.ph.i215.i.i
  %indvars.iv.i217.i.i = phi i64 [ 0, %.lr.ph.i215.i.i ], [ %indvars.iv.next.i219.i.i, %bb.cj ] ; 2 uses
  %indvars.iv.tr.i218.i.i = trunc i64 %indvars.iv.i217.i.i to i32
  %i.mb = shl i32 %indvars.iv.tr.i218.i.i, 4
  %i.mc = add i32 %i.mb, %i.fc
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.md ; 5 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !22
  %i.mg = icmp eq i8 %i.mf, 67
  br i1 %i.mg, label %bb.cg, label %bb.cj

bb.cg:                                            ; preds = %bb.cf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !22
  %i.mj = icmp eq i8 %i.mi, 70
  br i1 %i.mj, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !22
  %i.mm = icmp eq i8 %i.ml, 70
  br i1 %i.mm, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 3
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !22
  %i.mp = icmp eq i8 %i.mo, 32
  br i1 %i.mp, label %_ZL17stbtt__find_tablePhjPKc.exit222.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %indvars.iv.next.i219.i.i = add nuw nsw i64 %indvars.iv.i217.i.i, 1 ; 2 uses
  %exitcond.not.i220.i.i = icmp eq i64 %indvars.iv.next.i219.i.i, %wide.trip.count.i216.i.i
  br i1 %exitcond.not.i220.i.i, label %.critedge.i.i, label %bb.cf, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit222.i.i:         ; preds = %bb.ci
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mr = load i32, ptr %i.mq, align 1            ; 2 uses
  %.not119.i.i = icmp eq i32 %i.mr, 0
  br i1 %.not119.i.i, label %.critedge.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit222.i.i
  %i.ms = tail call i32 @llvm.bswap.i32(i32 %i.mr)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 2 uses
  %.sroa.429.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.mu = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 152
  %i.mv = zext i32 %i.ms to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.mv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mt, i8 0, i64 32, i1 false)
  store ptr %i.mw, ptr %i.et, align 8, !tbaa !234
  store i64 2305843009213693952, ptr %.sroa.436.0..sroa_idx.i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !322
  %i.mx = load i32, ptr %i.bf, align 8, !tbaa !323 ; 2 uses
  %i.my = add nsw i32 %i.mx, 2
  %i.mz = load i32, ptr %i.bg, align 4, !tbaa !324 ; 48 uses
  %i.na = icmp slt i32 %i.mx, -2
  %i.nb = tail call i32 @llvm.smin.i32(i32 %i.my, i32 %i.mz)
  %..i.i.i.i = select i1 %i.na, i32 %i.mz, i32 %i.nb ; 2 uses
  %.not.i223.i.i = icmp slt i32 %..i.i.i.i, %i.mz
  br i1 %.not.i223.i.i, label %bb.cl, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.nc = load ptr, ptr %2, align 8, !tbaa !325
  %i.nd = sext i32 %..i.i.i.i to i64
  %i.ne = getelementptr inbounds i8, ptr %i.nc, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !22
  %i.ng = zext i8 %i.nf to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i:       ; preds = %bb.cl, %bb.ck
  %.0.i.i.i = phi i32 [ %i.ng, %bb.cl ], [ 0, %bb.ck ] ; 2 uses
  %i.nh = tail call i32 @llvm.smin.i32(i32 %.0.i.i.i, i32 %i.mz) ; 4 uses
  store i32 %i.nh, ptr %i.bf, align 8, !tbaa !323
  %.not.i.i.i.i.i = icmp slt i32 %.0.i.i.i, %i.mz
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i

bb.cm:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.ni = load ptr, ptr %2, align 8, !tbaa !325
  %i.nj = add nsw i32 %i.nh, 1                    ; 2 uses
  store i32 %i.nj, ptr %i.bf, align 8, !tbaa !323
  %i.nk = sext i32 %i.nh to i64
  %i.nl = getelementptr inbounds i8, ptr %i.ni, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !22
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i:   ; preds = %bb.cm, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i
  %i.np = phi i32 [ %i.nj, %bb.cm ], [ %i.nh, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 4 uses
  %.0.i.i.i.i.i = phi i32 [ %i.no, %bb.cm ], [ 0, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i ] ; 2 uses
  %.not.i.i.1.i.i.i = icmp slt i32 %i.np, %i.mz
  br i1 %.not.i.i.1.i.i.i, label %bb.cn, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i

bb.cn:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i
  %i.nq = load ptr, ptr %2, align 8, !tbaa !325
  %i.nr = add nsw i32 %i.np, 1                    ; 2 uses
  store i32 %i.nr, ptr %i.bf, align 8, !tbaa !323
  %i.ns = sext i32 %i.np to i64
  %i.nt = getelementptr inbounds i8, ptr %i.nq, i64 %i.ns
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !22
  %i.nv = zext i8 %i.nu to i32
  %i.nw = or disjoint i32 %.0.i.i.i.i.i, %i.nv
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i: ; preds = %bb.cn, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i
  %i.nx = phi i32 [ %i.nr, %bb.cn ], [ %i.np, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i ] ; 5 uses
  %.0.i.i.1.i.i.i = phi i32 [ %i.nw, %bb.cn ], [ %.0.i.i.i.i.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i.i ] ; 2 uses
  %.not.i224.i.i = icmp eq i32 %.0.i.i.1.i.i.i, 0
  br i1 %.not.i224.i.i, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit.i.i, label %bb.co

bb.co:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i.i.i
  %.not.i.i.i.i = icmp slt i32 %i.nx, %i.mz
  br i1 %.not.i.i.i.i, label %bb.cp, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.ny = load ptr, ptr %2, align 8, !tbaa !325
  %i.nz = add nsw i32 %i.nx, 1
  %i.oa = sext i32 %i.nx to i64
  %i.ob = getelementptr inbounds i8, ptr %i.ny, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !22
  %i.od = zext i8 %i.oc to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i:     ; preds = %bb.cp, %bb.co
  %.promoted.i.i = phi i32 [ %i.nz, %bb.cp ], [ %i.nx, %bb.co ]
  %.0.i.i.i.i = phi i32 [ %i.od, %bb.cp ], [ 0, %bb.co ] ; 6 uses
  %i.oe = mul nuw nsw i32 %.0.i.i.i.i, %.0.i.i.1.i.i.i
  %i.of = add nsw i32 %i.oe, %.promoted.i.i       ; 2 uses
  %i.og = icmp slt i32 %i.of, 0
  %i.oh = tail call i32 @llvm.smin.i32(i32 %i.of, i32 %i.mz)
  %..i.i.i.i.i = select i1 %i.og, i32 %i.mz, i32 %i.oh ; 3 uses
  %.not.i13.i.i.i = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %.not.i13.i.i.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i.i
  %i.oi = load ptr, ptr %2, align 8               ; 3 uses
  %xtraiter = and i32 %.0.i.i.i.i, 1
  %i.oj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.oj, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.preheader.i.i.new

.lr.ph.i.i.preheader.i.i.new:                     ; preds = %.lr.ph.i.i.preheader.i.i
  %unroll_iter = and i32 %.0.i.i.i.i, 254
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1, %.lr.ph.i.i.preheader.i.i.new
  %i.ok = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.new ], [ %i.pa, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ] ; 4 uses
  %.056.i16.i.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %.0.i.i19.i.i.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i.new ], [ %niter.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1 ]
  %i.ol = shl i32 %.056.i16.i.i.i, 8              ; 2 uses
  %.not.i.i17.i.i.i = icmp slt i32 %i.ok, %i.mz
  br i1 %.not.i.i17.i.i.i, label %bb.cq, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i

bb.cq:                                            ; preds = %.lr.ph.i.i.i.i
  %i.om = add nsw i32 %i.ok, 1
  %i.on = sext i32 %i.ok to i64
  %i.oo = getelementptr inbounds i8, ptr %i.oi, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !22
  %i.oq = zext i8 %i.op to i32
  %i.or = or disjoint i32 %i.ol, %i.oq
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i: ; preds = %bb.cq, %.lr.ph.i.i.i.i
  %i.os = phi i32 [ %i.om, %bb.cq ], [ %i.ok, %.lr.ph.i.i.i.i ] ; 4 uses
  %.0.i.i19.i.i.i = phi i32 [ %i.or, %bb.cq ], [ %i.ol, %.lr.ph.i.i.i.i ]
  %i.ot = shl i32 %.0.i.i19.i.i.i, 8              ; 2 uses
  %.not.i.i17.i.i.i.1 = icmp slt i32 %i.os, %i.mz
  br i1 %.not.i.i17.i.i.i.1, label %bb.cr, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1

bb.cr:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i
  %i.ou = add nsw i32 %i.os, 1
  %i.ov = sext i32 %i.os to i64
  %i.ow = getelementptr inbounds i8, ptr %i.oi, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !22
  %i.oy = zext i8 %i.ox to i32
  %i.oz = or disjoint i32 %i.ot, %i.oy
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1: ; preds = %bb.cr, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i
  %i.pa = phi i32 [ %i.ou, %bb.cr ], [ %i.os, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %.0.i.i19.i.i.i.1 = phi i32 [ %i.oz, %bb.cr ], [ %i.ot, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !326

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa, %.lr.ph.i.i.preheader.i.i
  %.epil.init = phi i32 [ %..i.i.i.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.pa, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %.0.i.i19.i.i.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i.unr-lcssa ]
  %lcmp.mod1208 = trunc i32 %.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod1208)
  %i.pb = shl i32 %.056.i16.i.i.i.epil.init, 8    ; 2 uses
  %.not.i.i17.i.i.i.epil = icmp slt i32 %.epil.init, %i.mz
  br i1 %.not.i.i17.i.i.i.epil, label %bb.cs, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.i.i

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i.epil.preheader
  %i.pc = add nsw i32 %.epil.init, 1
  %i.pd = sext i32 %.epil.init to i64
  %i.pe = getelementptr inbounds i8, ptr %i.oi, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !22
  %i.pg = zext i8 %i.pf to i32
  %i.ph = or disjoint i32 %i.pb, %i.pg
end_hunk_1
begin_hunk_2_@_ZL31ImFontAtlasBuildWithStbTruetypeP11ImFontAtlas:bb.a
  %i.aak = load ptr, ptr %2, align 8              ; 2 uses
  %i.aal = zext nneg i32 %i.aaa to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aal
  %i.aan = zext nneg i32 %i.aah to i64
  %i.aao = shl nuw nsw i64 %i.aan, 32
  %.sroa.0.0.i.i.i = select i1 %or.cond378.i.i, ptr null, ptr %i.aam
  %.sroa.5.0.i.i.i = select i1 %or.cond378.i.i, i64 0, i64 %i.aao
  store ptr %.sroa.0.0.i.i.i, ptr %i.mu, align 8, !tbaa !234
  store i64 %.sroa.5.0.i.i.i, ptr %.sroa.427.0..sroa_idx.i.i, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i, %bb.dx
  %i.aap = phi ptr [ %i.aak, %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i ], [ %i.zk, %bb.dx ] ; 7 uses
  %i.aaq = phi i32 [ %i.aag, %_ZL16stbtt__buf_rangePK10stbtt__bufii.exit.i.i ], [ %i.zy, %bb.dx ] ; 13 uses
  %i.aar = icmp slt i32 %i.zv, 0
  %i.aas = tail call i32 @llvm.smin.i32(i32 %i.zv, i32 %i.aaq)
  %..i333.i.i = select i1 %i.aar, i32 %i.aaq, i32 %i.aas ; 7 uses
  %.not.i.i.i483 = icmp slt i32 %..i333.i.i, %i.aaq
  br i1 %.not.i.i.i483, label %bb.ea, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484

bb.ea:                                            ; preds = %bb.dz
  %i.aat = add nsw i32 %..i333.i.i, 1
  %i.aau = sext i32 %..i333.i.i to i64
  %i.aav = getelementptr inbounds i8, ptr %i.aap, i64 %i.aau
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !22
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = shl nuw nsw i32 %i.aax, 8
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484:    ; preds = %bb.ea, %bb.dz
  %i.aaz = phi i32 [ %i.aat, %bb.ea ], [ %..i333.i.i, %bb.dz ] ; 4 uses
  %.0.i.i.i485 = phi i32 [ %i.aay, %bb.ea ], [ 0, %bb.dz ] ; 2 uses
  %.not.i.i.1.i = icmp slt i32 %i.aaz, %i.aaq
  br i1 %.not.i.i.1.i, label %bb.eb, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

bb.eb:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484
  %i.aba = add nsw i32 %i.aaz, 1
  %i.abb = sext i32 %i.aaz to i64
  %i.abc = getelementptr inbounds i8, ptr %i.aap, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !22
  %i.abe = zext i8 %i.abd to i32
  %i.abf = or disjoint i32 %.0.i.i.i485, %i.abe
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i:     ; preds = %bb.eb, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484
  %i.abg = phi i32 [ %i.aba, %bb.eb ], [ %i.aaz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484 ] ; 5 uses
  %.0.i.i.1.i = phi i32 [ %i.abf, %bb.eb ], [ %.0.i.i.i485, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.i484 ] ; 2 uses
  %.not.i486 = icmp eq i32 %.0.i.i.1.i, 0
  br i1 %.not.i486, label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %.not.i.i487 = icmp slt i32 %i.abg, %i.aaq
  br i1 %.not.i.i487, label %bb.ed, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

bb.ed:                                            ; preds = %bb.ec
  %i.abh = add nsw i32 %i.abg, 1
  %i.abi = sext i32 %i.abg to i64
  %i.abj = getelementptr inbounds i8, ptr %i.aap, i64 %i.abi
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !22
  %i.abl = zext i8 %i.abk to i32
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i:         ; preds = %bb.ed, %bb.ec
  %.promoted = phi i32 [ %i.abh, %bb.ed ], [ %i.abg, %bb.ec ]
  %.0.i.i488 = phi i32 [ %i.abl, %bb.ed ], [ 0, %bb.ec ] ; 6 uses
  %i.abm = mul nuw nsw i32 %.0.i.i488, %.0.i.i.1.i
  %i.abn = add nsw i32 %i.abm, %.promoted         ; 2 uses
  %i.abo = icmp slt i32 %i.abn, 0
  %i.abp = tail call i32 @llvm.smin.i32(i32 %i.abn, i32 %i.aaq)
  %..i.i.i489 = select i1 %i.abo, i32 %i.aaq, i32 %i.abp ; 3 uses
  %.not.i13.i = icmp eq i32 %.0.i.i488, 0
  br i1 %.not.i13.i, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i, label %.lr.ph.i.i490.preheader

.lr.ph.i.i490.preheader:                          ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %xtraiter1253 = and i32 %.0.i.i488, 1
  %i.abq = icmp eq i32 %.0.i.i488, 1
  br i1 %i.abq, label %.lr.ph.i.i490.epil.preheader, label %.lr.ph.i.i490.preheader.new

.lr.ph.i.i490.preheader.new:                      ; preds = %.lr.ph.i.i490.preheader
  %unroll_iter1260 = and i32 %.0.i.i488, 254
  br label %.lr.ph.i.i490

.lr.ph.i.i490:                                    ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1, %.lr.ph.i.i490.preheader.new
  %i.abr = phi i32 [ %..i.i.i489, %.lr.ph.i.i490.preheader.new ], [ %i.ach, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ] ; 4 uses
  %.056.i16.i = phi i32 [ 0, %.lr.ph.i.i490.preheader.new ], [ %.0.i.i19.i.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ]
  %niter1261 = phi i32 [ 0, %.lr.ph.i.i490.preheader.new ], [ %niter1261.next.1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1 ]
  %i.abs = shl i32 %.056.i16.i, 8                 ; 2 uses
  %.not.i.i17.i = icmp slt i32 %i.abr, %i.aaq
  br i1 %.not.i.i17.i, label %bb.ee, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i

bb.ee:                                            ; preds = %.lr.ph.i.i490
  %i.abt = add nsw i32 %i.abr, 1
  %i.abu = sext i32 %i.abr to i64
  %i.abv = getelementptr inbounds i8, ptr %i.aap, i64 %i.abu
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !22
  %i.abx = zext i8 %i.abw to i32
  %i.aby = or disjoint i32 %i.abs, %i.abx
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i:     ; preds = %bb.ee, %.lr.ph.i.i490
  %i.abz = phi i32 [ %i.abt, %bb.ee ], [ %i.abr, %.lr.ph.i.i490 ] ; 4 uses
  %.0.i.i19.i = phi i32 [ %i.aby, %bb.ee ], [ %i.abs, %.lr.ph.i.i490 ]
  %i.aca = shl i32 %.0.i.i19.i, 8                 ; 2 uses
  %.not.i.i17.i.1 = icmp slt i32 %i.abz, %i.aaq
  br i1 %.not.i.i17.i.1, label %bb.ef, label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1

bb.ef:                                            ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i
  %i.acb = add nsw i32 %i.abz, 1
  %i.acc = sext i32 %i.abz to i64
  %i.acd = getelementptr inbounds i8, ptr %i.aap, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !22
  %i.acf = zext i8 %i.ace to i32
  %i.acg = or disjoint i32 %i.aca, %i.acf
  br label %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1

_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1:   ; preds = %bb.ef, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i
  %i.ach = phi i32 [ %i.acb, %bb.ef ], [ %i.abz, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i ] ; 3 uses
  %.0.i.i19.i.1 = phi i32 [ %i.acg, %bb.ef ], [ %i.aca, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i ] ; 3 uses
  %niter1261.next.1 = add nuw nsw i32 %niter1261, 2 ; 2 uses
  %niter1261.ncmp.1 = icmp eq i32 %niter1261.next.1, %unroll_iter1260
  br i1 %niter1261.ncmp.1, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa, label %.lr.ph.i.i490, !llvm.loop !326

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa: ; preds = %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i18.i.1
  %lcmp.mod1256.not = icmp eq i32 %xtraiter1253, 0
  br i1 %lcmp.mod1256.not, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i, label %.lr.ph.i.i490.epil.preheader

.lr.ph.i.i490.epil.preheader:                     ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa, %.lr.ph.i.i490.preheader
  %.epil.init1255 = phi i32 [ %..i.i.i489, %.lr.ph.i.i490.preheader ], [ %i.ach, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ] ; 4 uses
  %.056.i16.i.epil.init = phi i32 [ 0, %.lr.ph.i.i490.preheader ], [ %.0.i.i19.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ]
  %lcmp.mod1259 = trunc i32 %.0.i.i488 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1259)
  %i.aci = shl i32 %.056.i16.i.epil.init, 8       ; 2 uses
  %.not.i.i17.i.epil = icmp slt i32 %.epil.init1255, %i.aaq
  br i1 %.not.i.i17.i.epil, label %bb.eg, label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i

bb.eg:                                            ; preds = %.lr.ph.i.i490.epil.preheader
  %i.acj = add nsw i32 %.epil.init1255, 1
  %i.ack = sext i32 %.epil.init1255 to i64
  %i.acl = getelementptr inbounds i8, ptr %i.aap, i64 %i.ack
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !22
  %i.acn = zext i8 %i.acm to i32
  %i.aco = or disjoint i32 %i.aci, %i.acn
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i: ; preds = %.lr.ph.i.i490.epil.preheader, %bb.eg, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa
  %.lcssa1201 = phi i32 [ %i.ach, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ], [ %i.acj, %bb.eg ], [ %.epil.init1255, %.lr.ph.i.i490.epil.preheader ]
  %.0.i.i19.i.lcssa = phi i32 [ %.0.i.i19.i.1, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i.unr-lcssa ], [ %i.aco, %bb.eg ], [ %i.aci, %.lr.ph.i.i490.epil.preheader ]
  %i.acp = add i32 %.0.i.i19.i.lcssa, -1
  br label %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i

_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i:       ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i
  %i.acq = phi i32 [ %..i.i.i489, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %.lcssa1201, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i ]
  %.05.lcssa.i.i = phi i32 [ -1, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i ], [ %i.acp, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.loopexit.i ]
  %i.acr = add nsw i32 %.05.lcssa.i.i, %i.acq     ; 2 uses
  %i.acs = icmp slt i32 %i.acr, 0
  %i.act = tail call i32 @llvm.smin.i32(i32 %i.acr, i32 %i.aaq)
  %..i.i22.i = select i1 %i.acs, i32 %i.aaq, i32 %i.act
  br label %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit

_ZL20stbtt__cff_get_indexP10stbtt__buf.exit:      ; preds = %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i
  %i.acu = phi i32 [ %..i.i22.i, %_ZL14stbtt__buf_getP10stbtt__bufi.exit21.i ], [ %i.abg, %_ZL15stbtt__buf_get8P10stbtt__buf.exit.i.1.i ] ; 2 uses
  %i.acv = sub nsw i32 %i.acu, %..i333.i.i        ; 2 uses
  %i.acw = or i32 %i.acv, %..i333.i.i
  %or.cond.not.i.i = icmp slt i32 %i.acw, 0
  %i.acx = icmp sgt i32 %i.acu, %i.aaq
  %or.cond.i491 = or i1 %i.acx, %or.cond.not.i.i  ; 2 uses
  %i.acy = zext nneg i32 %..i333.i.i to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.acy
  %i.ada = zext nneg i32 %i.acv to i64
  %i.adb = shl nuw nsw i64 %i.ada, 32
  %.sroa.0.0.i.i = select i1 %or.cond.i491, ptr null, ptr %i.acz
  %.sroa.5.0.i.i = select i1 %or.cond.i491, i64 0, i64 %i.adb
  %i.adc = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store ptr %.sroa.0.0.i.i, ptr %i.adc, align 8, !tbaa !234
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.eh

bb.eh:                                            ; preds = %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit, %bb.cd
  %.val.i334.i.i = load i8, ptr %i.ew, align 1, !tbaa !22
  %.val25.i335.i.i = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.add = zext i8 %.val.i334.i.i to i32
  %i.ade = shl nuw nsw i32 %i.add, 8
  %i.adf = zext i8 %.val25.i335.i.i to i32
  %i.adg = or disjoint i32 %i.ade, %i.adf         ; 2 uses
  %.not.i336.i.i = icmp eq i32 %i.adg, 0
  br i1 %.not.i336.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i, label %.lr.ph.i337.i.i

.lr.ph.i337.i.i:                                  ; preds = %bb.eh
  %wide.trip.count.i338.i.i = zext nneg i32 %i.adg to i64
  br label %bb.ei

bb.ei:                                            ; preds = %bb.em, %.lr.ph.i337.i.i
  %indvars.iv.i339.i.i = phi i64 [ 0, %.lr.ph.i337.i.i ], [ %indvars.iv.next.i341.i.i, %bb.em ] ; 2 uses
  %indvars.iv.tr.i340.i.i = trunc i64 %indvars.iv.i339.i.i to i32
  %i.adh = shl i32 %indvars.iv.tr.i340.i.i, 4
  %i.adi = add i32 %i.adh, %i.fc
  %i.adj = zext i32 %i.adi to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.adj ; 5 uses
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !22
  %i.adm = icmp eq i8 %i.adl, 109
  br i1 %i.adm, label %bb.ej, label %bb.em

bb.ej:                                            ; preds = %bb.ei
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 1
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !22
  %i.adp = icmp eq i8 %i.ado, 97
  br i1 %i.adp, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adk, i64 2
  %i.adr = load i8, ptr %i.adq, align 1, !tbaa !22
  %i.ads = icmp eq i8 %i.adr, 120
  br i1 %i.ads, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adk, i64 3
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !22
  %i.adv = icmp eq i8 %i.adu, 112
  br i1 %i.adv, label %_ZL17stbtt__find_tablePhjPKc.exit344.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.ei
  %indvars.iv.next.i341.i.i = add nuw nsw i64 %indvars.iv.i339.i.i, 1 ; 2 uses
  %exitcond.not.i342.i.i = icmp eq i64 %indvars.iv.next.i341.i.i, %wide.trip.count.i338.i.i
  br i1 %exitcond.not.i342.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i, label %bb.ei, !llvm.loop !314

_ZL17stbtt__find_tablePhjPKc.exit344.i.i:         ; preds = %bb.el
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  %i.adx = load i32, ptr %i.adw, align 1          ; 2 uses
  %.not124.i.i = icmp eq i32 %i.adx, 0
  br i1 %.not124.i.i, label %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i, label %bb.en

bb.en:                                            ; preds = %_ZL17stbtt__find_tablePhjPKc.exit344.i.i
  %i.ady = tail call i32 @llvm.bswap.i32(i32 %i.adx)
  %i.adz = zext i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.adz ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 4
  %.val133.i.i = load i8, ptr %i.aeb, align 1, !tbaa !22
  %i.aec = getelementptr i8, ptr %i.aea, i64 5
  %.val134.i.i = load i8, ptr %i.aec, align 1, !tbaa !22
  %i.aed = zext i8 %.val133.i.i to i32
  %i.aee = shl nuw nsw i32 %i.aed, 8
  %i.aef = zext i8 %.val134.i.i to i32
  %i.aeg = or disjoint i32 %i.aee, %i.aef
  br label %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i

_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i:  ; preds = %bb.em, %bb.en, %_ZL17stbtt__find_tablePhjPKc.exit344.i.i, %bb.eh
  %.sink.i.i = phi i32 [ %i.aeg, %bb.en ], [ 65535, %_ZL17stbtt__find_tablePhjPKc.exit344.i.i ], [ 65535, %bb.eh ], [ 65535, %bb.em ]
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 %.sink.i.i, ptr %i.aeh, align 4, !tbaa !327
  %i.aei = zext i32 %.2.i346.i.i to i64
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.aei ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 2
  %.val131.i.i = load i8, ptr %i.aek, align 1, !tbaa !22
  %i.ael = getelementptr i8, ptr %i.aej, i64 3
  %.val132.i.i = load i8, ptr %i.ael, align 1, !tbaa !22
  %i.aem = zext i8 %.val131.i.i to i32
  %i.aen = shl nuw nsw i32 %i.aem, 8
  %i.aeo = zext i8 %.val132.i.i to i32
  %i.aep = or disjoint i32 %i.aen, %i.aeo         ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.bn, i64 52 ; 2 uses
  store i32 0, ptr %i.aeq, align 4, !tbaa !328
  %.not410.i.i = icmp eq i32 %i.aep, 0
  br i1 %.not410.i.i, label %.critedge337, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL17stbtt__find_tablePhjPKc.exit344.thread.i.i
  %i.aer = add i32 %.2.i346.i.i, 4
  %wide.trip.count.i.i = zext nneg i32 %i.aep to i64
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eq, %.lr.ph.i.i
  %i.aes = phi i32 [ 0, %.lr.ph.i.i ], [ %i.afm, %bb.eq ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.eq ] ; 2 uses
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.aet = shl i32 %indvars.iv.tr.i.i, 3
  %i.aeu = add i32 %i.aer, %i.aet
  %i.aev = zext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.aev ; 5 uses
  %.val129.i.i = load i8, ptr %i.aew, align 1, !tbaa !22
  %i.aex = getelementptr i8, ptr %i.aew, i64 1
  %.val130.i.i = load i8, ptr %i.aex, align 1, !tbaa !22
  %i.aey = zext i8 %.val129.i.i to i16
  %i.aez = shl nuw i16 %i.aey, 8
  %i.afa = zext i8 %.val130.i.i to i16
  %i.afb = or disjoint i16 %i.aez, %i.afa
  switch i16 %i.afb, label %bb.eq [
    i16 3, label %bb.ep
    i16 0, label %.sink.split.i.i
  ]

bb.ep:                                            ; preds = %bb.eo
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aew, i64 2
  %.val127.i.i = load i8, ptr %i.afc, align 1, !tbaa !22
  %i.afd = getelementptr i8, ptr %i.aew, i64 3
  %.val128.i.i = load i8, ptr %i.afd, align 1, !tbaa !22
  %i.afe = zext i8 %.val127.i.i to i16
  %i.aff = shl nuw i16 %i.afe, 8
  %i.afg = zext i8 %.val128.i.i to i16
  %i.afh = or disjoint i16 %i.aff, %i.afg
  switch i16 %i.afh, label %bb.eq [
    i16 1, label %.sink.split.i.i
    i16 10, label %.sink.split.i.i
  ]

.sink.split.i.i:                                  ; preds = %bb.ep, %bb.ep, %bb.eo
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aew, i64 4
  %i.afj = load i32, ptr %i.afi, align 1
  %i.afk = tail call i32 @llvm.bswap.i32(i32 %i.afj)
  %i.afl = add i32 %i.afk, %.2.i346.i.i           ; 2 uses
  store i32 %i.afl, ptr %i.aeq, align 4, !tbaa !328
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split.i.i, %bb.ep, %bb.eo
  %i.afm = phi i32 [ %i.aes, %bb.ep ], [ %i.aes, %bb.eo ], [ %i.afl, %.sink.split.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.eo, !llvm.loop !329

._crit_edge.i.i:                                  ; preds = %bb.eq
  %i.afn = icmp eq i32 %i.afm, 0
  br i1 %i.afn, label %.critedge337, label %bb.er

.critedge.i.i:                                    ; preds = %bb.dy, %_ZL20stbtt__cff_get_indexP10stbtt__buf.exit329.i.i, %_ZL17stbtt__find_tablePhjPKc.exit222.i.i, %bb.ce, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge337

bb.er:                                            ; preds = %._crit_edge.i.i
  %i.afo = sext i32 %i.hk to i64
  %i.afp = getelementptr inbounds i8, ptr %i.ce, i64 %i.afo ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 50
  %.val.i.i = load i8, ptr %i.afq, align 1, !tbaa !22
  %i.afr = getelementptr i8, ptr %i.afp, i64 51
  %.val126.i.i = load i8, ptr %i.afr, align 1, !tbaa !22
  %i.afs = zext i8 %.val.i.i to i32
  %i.aft = shl nuw nsw i32 %i.afs, 8
  %i.afu = zext i8 %.val126.i.i to i32
  %i.afv = or disjoint i32 %i.aft, %i.afu
  %i.afw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  store i32 %i.afv, ptr %i.afw, align 8, !tbaa !330
  %i.afx = load i32, ptr %i.bq, align 8, !tbaa !301
  %i.afy = load ptr, ptr %i.az, align 8, !tbaa !296 ; 2 uses
  %i.afz = sext i32 %i.afx to i64
  %i.aga = getelementptr inbounds [32 x i8], ptr %i.afy, i64 %i.afz ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !228 ; 2 uses
  %.not314 = icmp eq ptr %i.agc, null
  %spec.select = select i1 %.not314, ptr @_ZZN11ImFontAtlas21GetGlyphRangesDefaultEvE6ranges, ptr %i.agc ; 3 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  store ptr %spec.select, ptr %i.agd, align 8, !tbaa !331
  %i.age = load i16, ptr %spec.select, align 2, !tbaa !93
  %.not315605 = icmp eq i16 %i.age, 0
  br i1 %.not315605, label %._crit_edge, label %.lr.ph607

.lr.ph607:                                        ; preds = %bb.er
  %i.agf = getelementptr inbounds nuw i8, ptr %i.bn, i64 228 ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph607, %bb.et
  %.0284606 = phi ptr [ %spec.select, %.lr.ph607 ], [ %i.agl, %bb.et ] ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.0284606, i64 2
  %i.agh = load i16, ptr %i.agg, align 2, !tbaa !93 ; 2 uses
  %.not316 = icmp eq i16 %i.agh, 0
  br i1 %.not316, label %._crit_edge, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.agi = load i32, ptr %i.agf, align 4, !tbaa !332
  %i.agj = zext i16 %i.agh to i32
  %i.agk = tail call noundef i32 @llvm.smax.i32(i32 %i.agi, i32 %i.agj)
  store i32 %i.agk, ptr %i.agf, align 4, !tbaa !332
  %i.agl = getelementptr inbounds nuw i8, ptr %.0284606, i64 4 ; 2 uses
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !93
  %.not315 = icmp eq i16 %i.agm, 0
  br i1 %.not315, label %._crit_edge, label %bb.es, !llvm.loop !333

._crit_edge:                                      ; preds = %bb.et, %bb.es, %bb.er
  %i.agn = load i32, ptr %i.aga, align 8, !tbaa !334
  %i.ago = add nsw i32 %i.agn, 1
  store i32 %i.ago, ptr %i.aga, align 8, !tbaa !334
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aga, i64 4 ; 2 uses
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !336
  %i.agr = getelementptr inbounds nuw i8, ptr %i.bn, i64 228
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !332
  %i.agt = tail call noundef i32 @llvm.smax.i32(i32 %i.agq, i32 %i.ags)
  store i32 %i.agt, ptr %i.agp, align 4, !tbaa !336
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1 ; 2 uses
  %i.agu = load i32, ptr %i.ac, align 8, !tbaa !212
  %i.agv = sext i32 %i.agu to i64
  %.not317.not = icmp slt i64 %indvars.iv.next726, %i.agv
  br i1 %.not317.not, label %bb.h, label %.critedge340.preheader.loopexit, !llvm.loop !337

.lr.ph635.preheader:                              ; preds = %.critedge5
  %.pre765 = load ptr, ptr %i.aw, align 8, !tbaa !291
  %i.agw = zext nneg i32 %i.bi to i64
  br label %.lr.ph635

.lr.ph632:                                        ; preds = %.lr.ph632.preheader, %.critedge5
  %indvars.iv729 = phi i64 [ 0, %.lr.ph632.preheader ], [ %indvars.iv.next730, %.critedge5 ] ; 2 uses
  %.0281630 = phi i32 [ 0, %.lr.ph632.preheader ], [ %.1282.lcssa, %.critedge5 ] ; 2 uses
  %i.agx = getelementptr inbounds nuw [272 x i8], ptr %.pre764, i64 %indvars.iv729 ; 11 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 224
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !301
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.aha ; 7 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agx, i64 240 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agx, i64 228
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !332
  %i.ahf = add nsw i32 %i.ahe, 32
  %i.ahg = ashr i32 %i.ahf, 5                     ; 4 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agx, i64 244 ; 2 uses
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !338 ; 4 uses
  %i.ahj = icmp sgt i32 %i.ahg, %i.ahi
  br i1 %i.ahj, label %bb.eu, label %._ZN8ImVectorIjE6resizeEi.exit_crit_edge.i

._ZN8ImVectorIjE6resizeEi.exit_crit_edge.i:       ; preds = %.lr.ph632
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.agx, i64 248
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !339
  br label %bb.ex

bb.eu:                                            ; preds = %.lr.ph632
  %.not.i.i.i360 = icmp eq i32 %i.ahi, 0
  br i1 %.not.i.i.i360, label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ahk = sdiv i32 %i.ahi, 2
  %i.ahl = add nsw i32 %i.ahk, %i.ahi
  br label %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIjE14_grow_capacityEi.exit.i.i:      ; preds = %bb.ev, %bb.eu
  %i.ahm = phi i32 [ %i.ahl, %bb.ev ], [ 8, %bb.eu ]
  %i.ahn = tail call noundef i32 @llvm.smax.i32(i32 %i.ahm, i32 %i.ahg) ; 2 uses
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = shl nsw i64 %i.aho, 2
  %i.ahq = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ahp)
          to label %.noexc361 unwind label %bb.fc ; 3 uses

.noexc361:                                        ; preds = %_ZNK8ImVectorIjE14_grow_capacityEi.exit.i.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agx, i64 248 ; 3 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !340 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not6.i.i.i, label %.noexc362, label %bb.ew

bb.ew:                                            ; preds = %.noexc361
  %i.aht = load i32, ptr %i.ahc, align 8, !tbaa !341
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = shl nsw i64 %i.ahu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ahq, ptr nonnull align 4 %i.ahs, i64 %i.ahv, i1 false)
  %i.ahw = load ptr, ptr %i.ahr, align 8, !tbaa !340
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ahw)
          to label %.noexc362 unwind label %bb.fc

.noexc362:                                        ; preds = %bb.ew, %.noexc361
  store ptr %i.ahq, ptr %i.ahr, align 8, !tbaa !340
  store i32 %i.ahn, ptr %i.ahh, align 4, !tbaa !338
  br label %bb.ex

bb.ex:                                            ; preds = %.noexc362, %._ZN8ImVectorIjE6resizeEi.exit_crit_edge.i
  %i.ahx = phi ptr [ %.pre.i, %._ZN8ImVectorIjE6resizeEi.exit_crit_edge.i ], [ %i.ahq, %.noexc362 ]
  store i32 %i.ahg, ptr %i.ahc, align 8, !tbaa !341
  %i.ahy = sext i32 %i.ahg to i64
  %i.ahz = shl nsw i64 %i.ahy, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ahx, i8 0, i64 %i.ahz, i1 false)
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16 ; 3 uses
  %i.aib = load i32, ptr %i.aia, align 8, !tbaa !341
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahb, i64 4
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !336
  %i.aif = add nsw i32 %i.aie, 32
end_hunk_2
