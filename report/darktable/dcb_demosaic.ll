inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw16fbdd_correction2EPA3_d:bb.a
  br i1 %i.bj, label %bb.p, label %.thread352

bb.p:                                             ; preds = %bb.o
  %i.bk = fcmp reassoc nsz arcp contract afn olt double %i.ba, %i.bc
  br i1 %i.bk, label %bb.s, label %bb.q

.thread352:                                       ; preds = %bb.o
  %i.bl = fcmp reassoc nsz arcp contract afn olt double %i.ba, %.343
  br i1 %i.bl, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.p
  br label %bb.s

bb.r:                                             ; preds = %.thread352
  br label %bb.s

bb.s:                                             ; preds = %.thread352, %bb.p, %bb.r, %bb.q
  %i.bm = phi reassoc nsz arcp contract afn double [ %.343, %bb.r ], [ %i.bc, %bb.q ], [ %i.ba, %bb.p ], [ %i.ba, %.thread352 ]
  %.neg358 = fadd reassoc nsz arcp contract afn double %i.ay, %i.aw
  %i.bn = fadd reassoc nsz arcp contract afn double %.neg358, %i.ba
  %i.bo = fadd reassoc nsz arcp contract afn double %i.bn, %i.bc
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bh, %i.bm
  %i.bq = fsub reassoc nsz arcp contract afn double %i.bo, %i.bp
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, 5.000000e-01 ; 4 uses
  %i.bs = fmul reassoc nsz arcp contract afn double %i.au, %i.au
  %i.bt = fmul reassoc nsz arcp contract afn double %i.br, %i.br
  %i.bu = fadd reassoc nsz arcp contract afn double %i.bt, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn double %i.r, %i.r
  %i.bw = fmul reassoc nsz arcp contract afn double %i.t, %i.t
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bw, %i.bv
  %i.by = fdiv reassoc nsz arcp contract afn double %i.bu, %i.bx
  %i.bz = tail call reassoc nsz arcp contract afn double @llvm.sqrt.f64(double %i.by)
  %i.ca = fcmp reassoc nsz arcp contract afn olt double %i.bz, 8.500000e-01
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = fadd reassoc nsz arcp contract afn double %i.r, %i.t
  %i.cc = load double, ptr %i.p, align 8, !tbaa !351
  %i.cd = fsub reassoc nsz arcp contract afn double %i.au, %i.cb
  %i.ce = fadd reassoc nsz arcp contract afn double %i.cd, %i.br
  %i.cf = fadd reassoc nsz arcp contract afn double %i.ce, %i.cc
  store double %i.cf, ptr %i.p, align 8, !tbaa !351
  store double %i.au, ptr %i.q, align 8, !tbaa !351
  store double %i.br, ptr %i.s, align 8, !tbaa !351
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.t, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !357

._crit_edge:                                      ; preds = %bb.u
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge364.split, label %.preheader, !llvm.loop !358

._crit_edge364.split:                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10fbdd_greenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !74   ; 2 uses
  %i.e = icmp ugt i16 %i.d, 10
  br i1 %i.e, label %.lr.ph1968, label %._crit_edge1969

.lr.ph1968:                                       ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 2, !tbaa !11   ; 2 uses
  %i.g = zext i16 %i.f to i32                     ; 5 uses
  %i.h = mul nuw nsw i32 %i.g, 5
  %i.i = shl nuw nsw i32 %i.g, 2
  %i.j = mul nuw nsw i32 %i.g, 3
  %i.k = shl nuw nsw i32 %i.g, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = load i32, ptr %i.l, align 8, !tbaa !75   ; 2 uses
  %i.n = add nsw i32 %i.g, -5                     ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8              ; 14 uses
  %i.p = zext i16 %i.f to i64                     ; 6 uses
  %i.q = zext nneg i32 %i.i to i64                ; 2 uses
  %i.r = zext nneg i32 %i.k to i64                ; 2 uses
  %i.s = zext nneg i32 %i.h to i64                ; 2 uses
  %i.t = zext nneg i32 %i.j to i64                ; 2 uses
  %invariant.gep2030 = getelementptr [8 x i8], ptr %i.o, i64 %i.s
  %invariant.gep2032 = getelementptr [8 x i8], ptr %i.o, i64 %i.t
  %invariant.gep2038 = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph1968, %._crit_edge
  %i.u = phi i16 [ %i.d, %.lr.ph1968 ], [ %i.ox, %._crit_edge ]
  %.01966 = phi i32 [ 5, %.lr.ph1968 ], [ %i.oy, %._crit_edge ] ; 3 uses
  %i.v = shl nuw nsw i32 %.01966, 1
  %i.w = and i32 %i.v, 14                         ; 2 uses
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, 2
  %i.z = lshr i32 %i.m, %i.y
  %i.aa = and i32 %i.z, 1                         ; 2 uses
  %i.ab = add nuw nsw i32 %i.aa, 5                ; 3 uses
  %i.ac = icmp slt i32 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ad = and i32 %i.ab, 1
  %i.ae = or disjoint i32 %i.ad, %i.w
  %i.af = shl nuw nsw i32 %i.ae, 1
  %i.ag = lshr i32 %i.m, %i.af
  %i.ah = and i32 %i.ag, 3
  %i.ai = load i16, ptr %i.b, align 2, !tbaa !11
  %i.aj = zext i16 %i.ai to i32
  %i.ak = zext nneg i32 %i.ah to i64              ; 5 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.o, i64 %i.ak ; 5 uses
  %i.al = mul i32 %.01966, %i.aj
  %i.am = add i32 %i.al, 5
  %i.an = add i32 %i.am, %i.aa
  %i.ao = sext i32 %i.an to i64
  %invariant.gep2034 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.r
  %invariant.gep2036 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.q
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ar = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.as = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.at = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.aw = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ax = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ay = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ba = load ptr, ptr %i.a, align 8             ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.thread2029
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %.thread2029 ] ; 14 uses
  %.016641957 = phi i32 [ %i.ab, %.lr.ph ], [ %i.ov, %.thread2029 ]
  %i.bb = sub nsw i64 %indvars.iv, %i.p           ; 13 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !76 ; 2 uses
  %i.bf = sub nsw i64 %indvars.iv, %i.t
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !76 ; 2 uses
  %gep2031 = getelementptr [8 x i8], ptr %invariant.gep2030, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %gep2031, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !76 ; 2 uses
  %i.bl = add nuw nsw i64 %indvars.iv, 1          ; 12 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !76 ; 18 uses
  %i.bp = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 26
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !76 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 -38
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !76 ; 2 uses
  %i.bu = add nsw i64 %indvars.iv, -1             ; 9 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !76 ; 24 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 -22
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !76 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 42
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !76 ; 2 uses
  %i.cc = add nuw nsw i64 %indvars.iv, %i.p       ; 13 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !76 ; 2 uses
  %gep2033 = getelementptr [8 x i8], ptr %invariant.gep2032, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %gep2033, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !76 ; 2 uses
  %i.ci = sub nsw i64 %indvars.iv, %i.s
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !76 ; 2 uses
  %i.cm = insertelement <4 x i16> poison, i16 %i.be, i64 0
  %i.cn = insertelement <4 x i16> %i.cm, i16 %i.bo, i64 1
  %i.co = insertelement <4 x i16> %i.cn, i16 %i.bx, i64 2
  %i.cp = insertelement <4 x i16> %i.co, i16 %i.cf, i64 3
  %i.cq = zext <4 x i16> %i.cp to <4 x i32>
  %i.cr = insertelement <4 x i16> poison, i16 %i.bi, i64 0
  %i.cs = insertelement <4 x i16> %i.cr, i16 %i.br, i64 1
  %i.ct = insertelement <4 x i16> %i.cs, i16 %i.bz, i64 2
  %i.cu = insertelement <4 x i16> %i.ct, i16 %i.ch, i64 3
  %i.cv = zext <4 x i16> %i.cu to <4 x i32>       ; 2 uses
  %i.cw = sub nsw <4 x i32> %i.cq, %i.cv
  %i.cx = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.cw, i1 true)
  %i.cy = add nuw nsw <4 x i32> %i.cx, splat (i32 1)
  %i.cz = insertelement <4 x i16> poison, i16 %i.bk, i64 0
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.bt, i64 1
  %i.db = insertelement <4 x i16> %i.da, i16 %i.cb, i64 2
  %i.dc = insertelement <4 x i16> %i.db, i16 %i.cl, i64 3
  %i.dd = zext <4 x i16> %i.dc to <4 x i32>
  %i.de = sub nsw <4 x i32> %i.cv, %i.dd
  %i.df = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.de, i1 true)
  %i.dg = add nuw nsw <4 x i32> %i.cy, %i.df
  %i.dh = uitofp nneg <4 x i32> %i.dg to <4 x float> ; 3 uses
  %i.di = extractelement <4 x float> %i.dh, i64 0
  %i.dj = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.di ; 2 uses
  %i.dk = extractelement <4 x float> %i.dh, i64 1
  %i.dl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dk ; 2 uses
  %i.dm = sub nsw i64 %indvars.iv, %i.r
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dm
  %i.dn = load i16, ptr %gep, align 2, !tbaa !76
  %i.do = sub nsw i64 %indvars.iv, %i.q
  %gep1959 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.do
  %i.dp = load i16, ptr %gep1959, align 2, !tbaa !76
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.ak
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep1961 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ds = load i16, ptr %gep1961, align 2, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ak
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !76
  %i.dw = getelementptr i8, ptr %i.bp, i64 -16
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.ak
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !76
  %i.dz = getelementptr i8, ptr %i.bp, i64 -32
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.ak
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !76
  %gep2035 = getelementptr [8 x i8], ptr %invariant.gep2034, i64 %indvars.iv
  %i.ec = load i16, ptr %gep2035, align 2, !tbaa !76
  %gep2037 = getelementptr [8 x i8], ptr %invariant.gep2036, i64 %indvars.iv
  %i.ed = load i16, ptr %gep2037, align 2, !tbaa !76
  %i.ee = zext i16 %i.cf to i32
  %i.ef = zext i16 %i.bx to i32
  %i.eg = zext i16 %i.bo to i32
  %i.eh = zext i16 %i.be to i32
  %i.ei = zext i16 %i.ch to i32
  %i.ej = zext i16 %i.bz to i32
  %i.ek = zext i16 %i.br to i32
  %i.el = zext i16 %i.bi to i32
  %i.em = zext i16 %i.bk to i32
  %i.en = zext i16 %i.bt to i32
  %i.eo = zext i16 %i.cb to i32
  %i.ep = zext i16 %i.cl to i32
  %i.eq = add nuw nsw i32 %i.ei, %i.ee
  %i.er = add nuw nsw i32 %i.ej, %i.ef
  %i.es = add nuw nsw i32 %i.ek, %i.eg
  %i.et = add nuw nsw i32 %i.el, %i.eh
  %i.eu = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %i.ev = insertelement <4 x i32> %i.eu, i32 %i.es, i64 1
  %i.ew = insertelement <4 x i32> %i.ev, i32 %i.er, i64 2
  %i.ex = insertelement <4 x i32> %i.ew, i32 %i.eq, i64 3
  %i.ey = mul nuw nsw <4 x i32> %i.ex, splat (i32 23)
  %i.ez = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.eo, i64 1
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.en, i64 2
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.em, i64 3
  %i.fd = shl nuw nsw <4 x i32> %i.fc, splat (i32 1)
  %i.fe = add nuw nsw <4 x i32> %i.fd, %i.ey
  %i.ff = zext i16 %i.dp to i32
  %i.fg = zext i16 %i.ec to i32                   ; 2 uses
  %i.fh = zext i16 %i.dy to i32                   ; 2 uses
  %i.fi = zext i16 %i.ds to i32                   ; 2 uses
  %i.fj = zext i16 %i.dr to i32                   ; 4 uses
  %i.fk = zext i16 %i.ed to i32
  %i.fl = zext i16 %i.eb to i32
  %i.fm = zext i16 %i.dv to i32
  %i.fn = zext i16 %i.dn to i32                   ; 2 uses
  %i.fo = sub nsw i32 %i.fg, %i.fk
  %i.fp = sub nsw i32 %i.fh, %i.fl
  %i.fq = sub nsw i32 %i.fi, %i.fm
  %i.fr = sub nsw i32 %i.fj, %i.fn
  %i.fs = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fq, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fp, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fo, i64 3
  %i.fw = mul nsw <4 x i32> %i.fv, <i32 40, i32 8, i32 8, i32 8>
  %i.fx = sub nsw i32 %i.fj, %i.fg
  %i.fy = sub nsw i32 %i.fj, %i.fh
  %i.fz = sub nsw i32 %i.fj, %i.fi
  %i.ga = sub nsw i32 %i.fn, %i.ff
  %i.gb = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fz, i64 1
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fy, i64 2
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.fx, i64 3
  %i.gf = mul nsw <4 x i32> %i.ge, <i32 8, i32 40, i32 40, i32 40>
  %i.gg = add nsw <4 x i32> %i.fe, %i.gf
  %i.gh = add nsw <4 x i32> %i.gg, %i.fw
  %i.gi = sitofp <4 x i32> %i.gh to <4 x float>
  %i.gj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.gi, splat (float f0x3CAAAAAB) ; 2 uses
  %1 = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %2 = fptosi <2 x float> %1 to <2 x i32>
  %3 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %2, <2 x i32> zeroinitializer)
  %4 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %3, <2 x i32> splat (i32 65535))
  %5 = uitofp nneg <2 x i32> %4 to <2 x float>    ; 2 uses
  %i.gk = extractelement <2 x float> %5, i64 0
  %i.gl = fmul reassoc nsz arcp contract afn float %i.dj, %i.gk
  %i.gm = extractelement <2 x float> %5, i64 1
  %i.gn = fmul reassoc nsz arcp contract afn float %i.dl, %i.gm
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gl
  %6 = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %7 = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %6 ; 3 uses
  %8 = shufflevector <4 x float> %i.gj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %9 = fptosi <2 x float> %8 to <2 x i32>
  %10 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %9, <2 x i32> zeroinitializer)
  %11 = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %10, <2 x i32> splat (i32 65535))
  %12 = uitofp nneg <2 x i32> %11 to <2 x float>
  %13 = fmul reassoc nsz arcp contract afn <2 x float> %7, %12 ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %14
  %i.gq = extractelement <2 x float> %13, i64 1
  %15 = fadd reassoc nsz arcp contract afn float %i.gp, %i.gq
  %i.gr = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %16 = extractelement <2 x float> %7, i64 0
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gr, %16
  %17 = extractelement <2 x float> %7, i64 1
  %i.gt = fadd reassoc nsz arcp contract afn float %i.gs, %17
  %i.gu = fdiv reassoc nsz arcp contract afn float %15, %i.gt
  %i.gv = fptosi float %i.gu to i32
  %i.gw = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 0) ; 2 uses
  %i.gx = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 65535)
  %i.gy = trunc nuw i32 %i.gx to i16              ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bp, i64 2 ; 2 uses
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !76
  %gep2039 = getelementptr [8 x i8], ptr %invariant.gep2038, i64 %i.bl
  %i.ha = getelementptr inbounds nuw i8, ptr %gep2039, i64 2
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !76 ; 4 uses
  %i.hc = sub nsw i64 %i.bl, %i.p
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !76 ; 8 uses
  %i.hg = add nsw i64 %i.bu, %i.p                 ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !76 ; 18 uses
  %i.hk = sub nsw i64 %i.bu, %i.p                 ; 4 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !76 ; 17 uses
  %i.ho = load i16, ptr %i.bd, align 2, !tbaa !76 ; 2 uses
  %i.hp = load i16, ptr %i.ce, align 2, !tbaa !76 ; 2 uses
  %. = tail call i16 @llvm.umin.i16(i16 %i.ho, i16 %i.hp) ; 3 uses
  %i.hq = icmp ult i16 %i.bo, %.                  ; 4 uses
  br i1 %i.hq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bb
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !76
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cc
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !76
  %.1690 = tail call i16 @llvm.umin.i16(i16 %i.ht, i16 %i.hw)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.hx = phi i16 [ %.1690, %bb.d ], [ %i.bo, %bb.c ]
  %i.hy = icmp ult i16 %i.bx, %i.hx
  br i1 %i.hy, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bl
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !76
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bb
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !76
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !76
  %.1691 = tail call i16 @llvm.umin.i16(i16 %i.ie, i16 %i.ih)
  %spec.select1876 = tail call i16 @llvm.umin.i16(i16 %i.ib, i16 %.1691)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ii = phi i16 [ %spec.select1876, %bb.f ], [ %i.bx, %bb.e ]
  %i.ij = icmp ult i16 %i.hn, %i.ii
  br i1 %i.ij, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bu
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !76 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bl
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !76 ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !76
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.cc
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !76
  %.1693 = tail call i16 @llvm.umin.i16(i16 %i.is, i16 %i.iv) ; 2 uses
  %i.iw = icmp ult i16 %i.ip, %.1693
  br i1 %i.iw, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %spec.select1877 = tail call i16 @llvm.umin.i16(i16 %i.im, i16 %i.ip)
  br label %bb.j

.thread:                                          ; preds = %bb.h
  %spec.select1878 = tail call i16 @llvm.umin.i16(i16 %i.im, i16 %.1693)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.g
  %i.ix = phi i16 [ %spec.select1877, %bb.i ], [ %i.hn, %bb.g ], [ %spec.select1878, %.thread ]
  %i.iy = icmp ult i16 %i.hj, %i.ix
  br i1 %i.iy, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.hk
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !76 ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bu
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 2
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !76 ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bl
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !76 ; 3 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !76
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.cc
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !76
  %.1697 = tail call i16 @llvm.umin.i16(i16 %i.jk, i16 %i.jn) ; 3 uses
  %minmaxop = tail call i16 @llvm.umin.i16(i16 %i.jh, i16 %.1697)
  %i.jo = tail call i16 @llvm.umin.i16(i16 %minmaxop, i16 %i.je)
  %i.jp = icmp ult i16 %i.jb, %i.jo
  br i1 %i.jp, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jq = icmp ult i16 %i.jh, %.1697
  br i1 %i.jq, label %bb.m, label %.thread1822

bb.m:                                             ; preds = %bb.l
  %spec.select1881 = tail call i16 @llvm.umin.i16(i16 %i.je, i16 %i.jh)
  br label %bb.n

.thread1822:                                      ; preds = %bb.l
  %spec.select1882 = tail call i16 @llvm.umin.i16(i16 %i.je, i16 %.1697)
  br label %bb.n

bb.n:                                             ; preds = %.thread1822, %bb.m, %bb.k, %bb.j
  %i.jr = phi i16 [ %spec.select1881, %bb.m ], [ %i.hj, %bb.j ], [ %i.jb, %bb.k ], [ %spec.select1882, %.thread1822 ]
  %i.js = icmp ult i16 %i.hf, %i.jr
  br i1 %i.js, label %.thread2021, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hg
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !76 ; 3 uses
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.hk
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !76 ; 3 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bu
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !76 ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bl
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !76 ; 4 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bb
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !76
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cc
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !76
  %.1705 = tail call i16 @llvm.umin.i16(i16 %i.kh, i16 %i.kk) ; 4 uses
  %i.kl = icmp ult i16 %i.ke, %.1705
  %minmaxop1944 = tail call i16 @llvm.umin.i16(i16 %i.ke, i16 %.1705)
  %i.km = tail call i16 @llvm.umin.i16(i16 %minmaxop1944, i16 %i.kb)
  %i.kn = icmp ult i16 %i.jy, %i.km
  br i1 %i.kn, label %.thread2020, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..1705 = tail call i16 @llvm.umin.i16(i16 %i.ke, i16 %.1705)
  %spec.select1886 = tail call i16 @llvm.umin.i16(i16 %i.kb, i16 %..1705)
  %i.ko = icmp ult i16 %i.jv, %spec.select1886    ; 2 uses
  %.mux = select i1 %i.ko, i16 %i.jv, i16 %i.jy
  br i1 %i.ko, label %.thread2021, label %bb.q

.thread2020:                                      ; preds = %bb.o
  %spec.select = tail call i16 @llvm.umin.i16(i16 %i.jv, i16 %i.jy)
  br label %.thread2021

bb.q:                                             ; preds = %bb.p
  br i1 %i.kl, label %bb.r, label %.thread1830

bb.r:                                             ; preds = %bb.q
  %spec.select1889 = tail call i16 @llvm.umin.i16(i16 %i.kb, i16 %i.ke)
  br label %.thread2021

.thread1830:                                      ; preds = %bb.q
  %spec.select1890 = tail call i16 @llvm.umin.i16(i16 %i.kb, i16 %.1705)
  br label %.thread2021

.thread2021:                                      ; preds = %.thread2020, %bb.p, %.thread1830, %bb.r, %bb.n
  %i.kp = phi i16 [ %spec.select1889, %bb.r ], [ %i.hf, %bb.n ], [ %.mux, %bb.p ], [ %spec.select, %.thread2020 ], [ %spec.select1890, %.thread1830 ]
  %i.kq = icmp ult i16 %i.hb, %i.kp
  br i1 %i.kq, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %.thread2021
  br i1 %i.hq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bb
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !76
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cc
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !76
  %.1722 = tail call i16 @llvm.umin.i16(i16 %i.kt, i16 %i.kw)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.kx = phi i16 [ %.1722, %bb.t ], [ %i.bo, %bb.s ]
  %i.ky = icmp ult i16 %i.bx, %i.kx
  br i1 %i.ky, label %bb.w, label %bb.v
end_hunk_0
begin_hunk_1_@_ZN6LibRaw3dcbEii:bb.a
  %i.rp = phi i16 [ %.pre, %.lr.ph59.i113 ], [ %i.tm, %._crit_edge.i116 ] ; 3 uses
  %.05257.i115 = phi i32 [ 1, %.lr.ph59.i113 ], [ %i.tn, %._crit_edge.i116 ] ; 2 uses
  %i.rq = icmp ugt i16 %i.rp, 2
  br i1 %i.rq, label %.lr.ph.preheader.i117, label %._crit_edge.i116

.lr.ph.preheader.i117:                            ; preds = %bb.y
  %i.rr = zext i16 %i.rp to i32
  %i.rs = mul i32 %.05257.i115, %i.rr
  %i.rt = add nuw i32 %i.rs, 1
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %.phi.trans.insert.i118 = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.ru
  %.phi.trans.insert62.i119 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i118, i64 2
  %.pre.i120 = load i16, ptr %.phi.trans.insert62.i119, align 2, !tbaa !76
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %bb.ab, %.lr.ph.preheader.i117
  %i.rv = phi i16 [ %.pre.i120, %.lr.ph.preheader.i117 ], [ %i.sd, %bb.ab ]
  %indvars.iv.i122 = phi i64 [ %i.ru, %.lr.ph.preheader.i117 ], [ %indvars.iv.next.i124, %bb.ab ] ; 4 uses
  %.05355.i123 = phi i32 [ 1, %.lr.ph.preheader.i117 ], [ %i.tg, %bb.ab ]
  %i.rw = getelementptr [8 x i8], ptr %i.rm, i64 %indvars.iv.i122 ; 2 uses
  %i.rx = uitofp i16 %i.rv to double
  %i.ry = getelementptr i8, ptr %i.rw, i64 -6
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !76 ; 3 uses
  %i.sa = zext i16 %i.rz to i32
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i124
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 2
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !76 ; 4 uses
  %i.se = zext i16 %i.sd to i32
  %i.sf = add nuw nsw i32 %i.se, %i.sa            ; 3 uses
  %i.sg = sub nsw i64 %indvars.iv.i122, %i.rn
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.rm, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !76 ; 3 uses
  %i.sk = zext i16 %i.sj to i32
  %gep.i125 = getelementptr [8 x i8], ptr %invariant.gep.i114, i64 %indvars.iv.i122
  %i.sl = getelementptr inbounds nuw i8, ptr %gep.i125, i64 2
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !76 ; 3 uses
  %i.sn = zext i16 %i.sm to i32
  %i.so = add nuw nsw i32 %i.sn, %i.sk            ; 3 uses
  %i.sp = add nuw nsw i32 %i.so, %i.sf
  %i.sq = uitofp nneg i32 %i.sp to double
  %i.sr = fmul reassoc nnan nsz arcp contract afn double %i.sq, 2.500000e-01
  %i.ss = fcmp reassoc nsz arcp contract afn olt double %i.sr, %i.rx
  br i1 %i.ss, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i121
  %..i131 = tail call i16 @llvm.umin.i16(i16 %i.rz, i16 %i.sd)
  %i.st = zext i16 %..i131 to i32
  %i.su = add nuw nsw i32 %i.sf, %i.st
  %i.sv = tail call i16 @llvm.umin.i16(i16 %i.sj, i16 %i.sm)
  %i.sw = zext i16 %i.sv to i32
  %i.sx = add nuw nsw i32 %i.so, %i.sw
  %i.sy = icmp samesign ult i32 %i.su, %i.sx
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i121
  %.54.i126 = tail call i16 @llvm.umax.i16(i16 %i.rz, i16 %i.sd)
  %i.sz = zext i16 %.54.i126 to i32
  %i.ta = add nuw nsw i32 %i.sf, %i.sz
  %i.tb = tail call i16 @llvm.umax.i16(i16 %i.sj, i16 %i.sm)
  %i.tc = zext i16 %i.tb to i32
  %i.td = add nuw nsw i32 %i.so, %i.tc
  %i.te = icmp samesign ugt i32 %i.ta, %i.td
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink.in.i127 = phi i1 [ %i.sy, %bb.z ], [ %i.te, %bb.aa ]
  %.sink.i128 = zext i1 %.sink.in.i127 to i16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rw, i64 6
  store i16 %.sink.i128, ptr %i.tf, align 2, !tbaa !76
  %i.tg = add nuw nsw i32 %.05355.i123, 1         ; 2 uses
  %i.th = load i16, ptr %i.a, align 2, !tbaa !11  ; 2 uses
  %i.ti = zext i16 %i.th to i32
  %i.tj = add nsw i32 %i.ti, -1
  %i.tk = icmp slt i32 %i.tg, %i.tj
  br i1 %i.tk, label %.lr.ph.i121, label %._crit_edge.loopexit.i129, !llvm.loop !297

._crit_edge.loopexit.i129:                        ; preds = %bb.ab
  %.pre63.i130 = load i16, ptr %i.d, align 4, !tbaa !74
  br label %._crit_edge.i116

._crit_edge.i116:                                 ; preds = %._crit_edge.loopexit.i129, %bb.y
  %i.tl = phi i16 [ %.pre63.i130, %._crit_edge.loopexit.i129 ], [ %i.ro, %bb.y ] ; 2 uses
  %i.tm = phi i16 [ %i.th, %._crit_edge.loopexit.i129 ], [ %i.rp, %bb.y ] ; 2 uses
  %i.tn = add nuw nsw i32 %.05257.i115, 1         ; 2 uses
  %i.to = zext i16 %i.tl to i32                   ; 2 uses
  %i.tp = add nsw i32 %i.to, -1
  %i.tq = icmp slt i32 %i.tn, %i.tp
  br i1 %i.tq, label %bb.y, label %_ZN6LibRaw7dcb_mapEv.exit132, !llvm.loop !298

_ZN6LibRaw7dcb_mapEv.exit132:                     ; preds = %._crit_edge.i116, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge
  %.pre-phi = phi i32 [ %.pre150, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge ], [ %i.to, %._crit_edge.i116 ]
  %i.tr = phi i16 [ %.pre, %_ZN6LibRaw7dcb_mapEv.exit112._ZN6LibRaw7dcb_mapEv.exit132_crit_edge ], [ %i.tm, %._crit_edge.i116 ]
  %i.ts = zext i16 %i.tr to i32
  %i.tt = mul nuw nsw i32 %.pre-phi, %i.ts
  %.not.i133 = icmp eq i32 %i.tt, 0
  br i1 %.not.i133, label %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %_ZN6LibRaw7dcb_mapEv.exit132
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !203
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i134
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.i134 ], [ %indvars.iv.next.i136, %bb.ac ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.i135 ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !77
  %i.ty = fptoui float %i.tx to i16
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i135 ; 2 uses
  store i16 %i.ty, ptr %i.tz, align 2, !tbaa !76
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !77
  %i.uc = fptoui float %i.ub to i16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !76
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %i.ue = load i16, ptr %i.d, align 4, !tbaa !74
  %i.uf = zext i16 %i.ue to i64
  %i.ug = load i16, ptr %i.a, align 2, !tbaa !11
  %i.uh = zext i16 %i.ug to i64
  %i.ui = mul nuw nsw i64 %i.uh, %i.uf
  %i.uj = icmp samesign ult i64 %indvars.iv.next.i136, %i.ui
  br i1 %i.uj, label %bb.ac, label %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit, !llvm.loop !206

_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit:   ; preds = %bb.ac, %_ZN6LibRaw7dcb_mapEv.exit132
  tail call void @_ZN6LibRaw9dcb_colorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %.not14 = icmp eq i32 %2, 0
  br i1 %.not14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit
  tail call void @_ZN6LibRaw14dcb_refinementEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  tail call void @_ZN6LibRaw14dcb_color_fullEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN6LibRaw23dcb_restore_from_bufferEPA3_f.exit
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.h)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v57i16.p0(<57 x i16>, ptr captures(none), <57 x i1>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umin.v8i16(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x float> @llvm.masked.load.v13f32.p0(ptr captures(none), <13 x i1>, <13 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !17, i64 22}
!12 = !{!"_ZTS6LibRaw", !13, i64 8, !60, i64 381584, !61, i64 381592, !9, i64 384344, !71, i64 433496, !71, i64 433504, !9, i64 433512, !72, i64 768232, !73, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !52, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!13 = !{!"_ZTS13libraw_data_t", !14, i64 0, !16, i64 8, !19, i64 192, !21, i64 632, !27, i64 1928, !43, i64 5088, !44, i64 5232, !45, i64 5536, !8, i64 5584, !8, i64 5588, !48, i64 5592, !51, i64 192680, !54, i64 193480, !56, i64 193504, !57, i64 193768, !15, i64 381568}
!14 = !{!"p1 short", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTS20libraw_image_sizes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !8, i64 16, !18, i64 24, !8, i64 32, !9, i64 36, !17, i64 164, !9, i64 166}
!17 = !{!"short", !9, i64 0}
!18 = !{!"double", !9, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !20, i64 432}
!20 = !{!"p1 omnipotent char", !15, i64 0}
!21 = !{!"_ZTS17libraw_lensinfo_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !17, i64 532, !23, i64 536, !24, i64 544, !25, i64 560}
!22 = !{!"float", !9, i64 0}
!23 = !{!"_ZTS18libraw_nikonlens_t", !22, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!24 = !{!"_ZTS16libraw_dnglens_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !9, i64 8, !17, i64 136, !17, i64 138, !26, i64 144, !17, i64 152, !17, i64 154, !9, i64 156, !17, i64 220, !9, i64 222, !9, i64 238, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !22, i64 272, !22, i64 276, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !22, i64 296, !22, i64 300, !22, i64 304, !22, i64 308, !22, i64 312, !26, i64 320, !9, i64 328, !26, i64 456, !9, i64 464, !26, i64 592, !9, i64 600, !17, i64 728, !22, i64 732}
!26 = !{!"long long", !9, i64 0}
!27 = !{!"_ZTS19libraw_makernotes_t", !28, i64 0, !30, i64 168, !32, i64 464, !33, i64 848, !34, i64 1200, !35, i64 1664, !36, i64 1848, !37, i64 2092, !38, i64 2160, !39, i64 2196, !40, i64 2648, !41, i64 2720, !42, i64 2856}
!28 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !17, i64 52, !17, i64 54, !9, i64 56, !17, i64 58, !17, i64 60, !17, i64 62, !17, i64 64, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !17, i64 80, !17, i64 82, !8, i64 84, !22, i64 88, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !8, i64 100, !17, i64 104, !8, i64 108, !8, i64 112, !17, i64 116, !8, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !9, i64 164}
!29 = !{!"_ZTS13libraw_area_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!30 = !{!"_ZTS25libraw_nikon_makernotes_t", !18, i64 0, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !17, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !17, i64 170, !31, i64 172, !17, i64 180, !17, i64 182, !17, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !20, i64 256, !17, i64 264, !17, i64 266, !9, i64 268, !17, i64 270, !18, i64 272, !18, i64 280, !18, i64 288}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6}
!32 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !18, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!33 = !{!"_ZTS18libraw_fuji_info_t", !22, i64 0, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !17, i64 14, !17, i64 16, !17, i64 18, !9, i64 20, !9, i64 53, !22, i64 88, !17, i64 92, !17, i64 94, !9, i64 96, !17, i64 100, !8, i64 104, !8, i64 108, !17, i64 112, !9, i64 114, !17, i64 120, !17, i64 122, !17, i64 124, !17, i64 126, !17, i64 128, !8, i64 132, !17, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !17, i64 168, !8, i64 172, !17, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!34 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !17, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !17, i64 82, !9, i64 84, !17, i64 88, !17, i64 90, !9, i64 92, !9, i64 352, !17, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !17, i64 416, !17, i64 418, !17, i64 420, !17, i64 422, !18, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !17, i64 456, !17, i64 458}
!35 = !{!"_ZTS18libraw_sony_info_t", !17, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !17, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !17, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !17, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !17, i64 54, !8, i64 56, !17, i64 60, !9, i64 62, !17, i64 66, !17, i64 68, !17, i64 70, !17, i64 72, !17, i64 74, !17, i64 76, !17, i64 78, !8, i64 80, !22, i64 84, !17, i64 88, !8, i64 92, !8, i64 96, !17, i64 100, !9, i64 102, !8, i64 124, !17, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !17, i64 138, !17, i64 140, !17, i64 142, !17, i64 144, !17, i64 146, !17, i64 148, !17, i64 150, !17, i64 152, !17, i64 154, !8, i64 156, !17, i64 160, !9, i64 162, !22, i64 180}
!36 = !{!"_ZTS25libraw_kodak_makernotes_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !17, i64 228, !17, i64 230, !17, i64 232, !17, i64 234, !22, i64 236, !22, i64 240}
!37 = !{!"_ZTS29libraw_panasonic_makernotes_t", !17, i64 0, !17, i64 2, !9, i64 4, !8, i64 36, !22, i64 40, !9, i64 44, !17, i64 56, !17, i64 58, !8, i64 60, !8, i64 64}
!38 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !17, i64 12, !8, i64 16, !8, i64 20, !17, i64 24, !9, i64 26, !17, i64 30, !9, i64 32, !9, i64 33, !17, i64 34}
!39 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!40 = !{!"_ZTS25libraw_ricoh_makernotes_t", !17, i64 0, !9, i64 4, !9, i64 12, !17, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !17, i64 50, !18, i64 56, !18, i64 64}
!41 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !18, i64 88, !8, i64 96, !9, i64 100}
!42 = !{!"_ZTS24libraw_metadata_common_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !22, i64 60, !17, i64 64, !9, i64 66, !22, i64 196, !9, i64 200, !8, i64 296}
!43 = !{!"_ZTS21libraw_shootinginfo_t", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8, !17, i64 10, !17, i64 12, !9, i64 14, !9, i64 78}
!44 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !22, i64 128, !22, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !22, i64 248, !22, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !22, i64 288, !22, i64 292, !8, i64 296, !8, i64 300}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !22, i64 28, !9, i64 32, !46, i64 40}
!46 = !{!"p2 omnipotent char", !47, i64 0}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !22, i64 147516, !22, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !49, i64 147876, !22, i64 147912, !22, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !15, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !50, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!49 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !22, i64 32}
!50 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !22, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !22, i64 32920, !22, i64 32924, !9, i64 32928}
!51 = !{!"_ZTS17libraw_imgother_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !52, i64 16, !8, i64 24, !9, i64 28, !53, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!52 = !{!"long", !9, i64 0}
!53 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !22, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!54 = !{!"_ZTS18libraw_thumbnail_t", !55, i64 0, !17, i64 4, !17, i64 6, !8, i64 8, !8, i64 12, !20, i64 16}
!55 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!56 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!57 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !16, i64 512, !59, i64 696, !48, i64 712}
!58 = !{!"p1 float", !15, i64 0}
!59 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !17, i64 12, !17, i64 14}
!60 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!61 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !59, i64 64, !65, i64 80, !67, i64 96, !68, i64 136}
!62 = !{!"_ZTS15internal_data_t", !63, i64 0, !64, i64 8, !8, i64 16, !20, i64 24, !26, i64 32, !26, i64 40, !9, i64 48}
!63 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!65 = !{!"_ZTS13output_data_t", !66, i64 0, !66, i64 8}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"_ZTS15identify_data_t", !8, i64 0, !26, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!68 = !{!"_ZTS15unpacker_data_t", !17, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !69, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !26, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !70, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !17, i64 2496, !17, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !17, i64 2608}
!69 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!70 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !17, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !17, i64 148, !17, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!71 = !{!"p1 _ZTS6decode", !15, i64 0}
!72 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !8, i64 8}
!73 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!74 = !{!12, !17, i64 20}
!75 = !{!12, !8, i64 544}
!76 = !{!17, !17, i64 0}
!77 = !{!22, !22, i64 0}
!78 = distinct !{!78, !79, !80, !81}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = distinct !{!82, !79, !81, !80}
!83 = distinct !{!83, !79}
!84 = distinct !{!84, !79, !80, !81}
!85 = distinct !{!85, !79, !81, !80}
!86 = distinct !{!86, !79}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = !{!93}
!93 = distinct !{!93, !89}
!94 = !{!95}
!95 = distinct !{!95, !89}
!96 = !{!97}
!97 = distinct !{!97, !89}
!98 = !{!99}
!99 = distinct !{!99, !89}
!100 = !{!101}
!101 = distinct !{!101, !89}
!102 = !{!103}
!103 = distinct !{!103, !89}
!104 = !{!105}
!105 = distinct !{!105, !89}
!106 = !{!107}
!107 = distinct !{!107, !89}
!108 = !{!88, !91, !93, !95, !97, !99, !101, !103, !105}
!109 = distinct !{!109, !79, !80, !81}
!110 = distinct !{!110, !79, !80}
!111 = distinct !{!111, !79}
!112 = distinct !{!112, !79}
!113 = distinct !{!113, !79}
!114 = !{!115}
!115 = distinct !{!115, !116}
!116 = distinct !{!116, !"LVerDomain"}
!117 = !{!118}
!118 = distinct !{!118, !116}
!119 = !{!120}
!120 = distinct !{!120, !116}
!121 = !{!122}
!122 = distinct !{!122, !116}
!123 = !{!124}
!124 = distinct !{!124, !116}
!125 = !{!126}
!126 = distinct !{!126, !116}
!127 = !{!115, !118, !120, !122, !124}
!128 = distinct !{!128, !79, !80, !81}
!129 = distinct !{!129, !79, !80}
!130 = distinct !{!130, !79}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135, !136, !137, !138}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = distinct !{!137, !133}
!138 = distinct !{!138, !133}
!139 = !{!136}
!140 = !{!137}
!141 = !{!138}
!142 = !{!135}
!143 = !{!136, !137, !138}
!144 = distinct !{!144, !79, !80, !81}
!145 = distinct !{!145, !79, !80}
!146 = distinct !{!146, !79}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = !{!153}
!153 = distinct !{!153, !149}
!154 = !{!155}
!155 = distinct !{!155, !149}
!156 = !{!157}
!157 = distinct !{!157, !149}
!158 = !{!159}
!159 = distinct !{!159, !149}
!160 = !{!148, !151, !153, !155, !157}
!161 = distinct !{!161, !79, !80, !81}
!162 = distinct !{!162, !79, !80}
!163 = distinct !{!163, !79}
!164 = !{!165}
!165 = distinct !{!165, !166}
!166 = distinct !{!166, !"LVerDomain"}
!167 = !{!168}
!168 = distinct !{!168, !166}
!169 = !{!170}
!170 = distinct !{!170, !166}
!171 = !{!172}
!172 = distinct !{!172, !166}
!173 = !{!174, !165, !168, !170}
!174 = distinct !{!174, !166}
!175 = !{!174}
!176 = !{!165, !168, !170}
!177 = distinct !{!177, !79, !80, !81}
!178 = distinct !{!178, !79, !80}
!179 = distinct !{!179, !79}
!180 = !{!181}
!181 = distinct !{!181, !182}
!182 = distinct !{!182, !"LVerDomain"}
end_hunk_1
