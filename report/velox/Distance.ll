inline.NumInlined: 112
inline.NumDeleted: 48
begin_hunk_0_@_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_:bb.a
  %i.ar = fdiv double %i.aq, %i.aa
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.aa)
  %i.at = fmul double %sqrt, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi double [ %sqrt.i, %bb.b ], [ %sqrt.i53, %bb.d ], [ %sqrt.i54, %bb.f ], [ %i.at, %bb.g ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm8Distance24pointToLinePerpendicularERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !11
  %i.c = fsub <2 x double> %i.a, %i.b
  %i.d = shufflevector <2 x double> %i.c, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.e = load <2 x double>, ptr %2, align 8, !tbaa !11
  %i.f = fsub <2 x double> %i.e, %i.a             ; 5 uses
  %i.g = fmul <2 x double> %i.d, %i.f             ; 2 uses
  %shift = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.g, %shift
  %foldExtExtBinop26 = fmul <2 x double> %i.f, %i.f
  %foldExtExtBinop28 = fmul <2 x double> %i.f, %i.f
  %shift30 = shufflevector <2 x double> %foldExtExtBinop28, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %foldExtExtBinop26, %shift30 ; 2 uses
  %i.h = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %foldExtExtBinop33 = fdiv <2 x double> %foldExtExtBinop, %foldExtExtBinop31
  %i.i = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h)
  %i.k = fmul double %sqrt, %i.j
  ret double %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZN4geos9algorithm8Distance16segmentToSegmentERKNS_4geom10CoordinateES5_S5_S5_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load <2 x double>, ptr %0, align 8       ; 18 uses
  %i.f = load double, ptr %i.a, align 8           ; 20 uses
  %i.g = load <2 x double>, ptr %1, align 8       ; 12 uses
  %i.h = load double, ptr %i.b, align 8           ; 13 uses
  %i.i = fcmp oeq <2 x double> %i.e, %i.g
  %i.j = extractelement <2 x i1> %i.i, i64 0
  %i.k = fcmp oeq double %i.f, %i.h
  %.0.i.i = select i1 %i.j, i1 %i.k, i1 false
  %i.l = load <2 x double>, ptr %2, align 8       ; 15 uses
  %i.m = load double, ptr %i.c, align 8           ; 17 uses
  %i.n = load <2 x double>, ptr %3, align 8       ; 15 uses
  %i.o = load double, ptr %i.d, align 8           ; 16 uses
  %i.p = fcmp oeq <2 x double> %i.l, %i.n
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = fcmp oeq double %i.m, %i.o
  %.0.i.i.i = select i1 %i.q, i1 %i.r, i1 false   ; 2 uses
  br i1 %.0.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %foldExtExtBinop = fsub <2 x double> %i.e, %i.l ; 5 uses
  br i1 %.0.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = fsub double %i.f, %i.m                   ; 2 uses
  %foldExtExtBinop124 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.t = extractelement <2 x double> %foldExtExtBinop124, i64 0
  %i.u = fmul double %i.s, %i.s
  %i.v = fadd double %i.t, %i.u
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.v)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop126 = fsub <2 x double> %i.n, %i.l ; 4 uses
  %i.w = extractelement <2 x double> %foldExtExtBinop126, i64 0
  %foldExtExtBinop128 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop126
  %i.x = extractelement <2 x double> %foldExtExtBinop128, i64 0
  %i.y = fsub double %i.f, %i.m                   ; 3 uses
  %i.z = fsub double %i.o, %i.m                   ; 4 uses
  %i.aa = fmul double %i.y, %i.z
  %i.ab = fadd double %i.x, %i.aa
  %foldExtExtBinop130 = fmul <2 x double> %foldExtExtBinop126, %foldExtExtBinop126
  %i.ac = extractelement <2 x double> %foldExtExtBinop130, i64 0
  %i.ad = fmul double %i.z, %i.z
  %i.ae = fadd double %i.ac, %i.ad                ; 3 uses
  %i.af = fdiv double %i.ab, %i.ae                ; 2 uses
  %i.ag = fcmp ugt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop132 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.ah = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.ai = fmul double %i.y, %i.y
  %i.aj = fadd double %i.ah, %i.ai
  %sqrt.i53.i = tail call noundef double @llvm.sqrt.f64(double %i.aj)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = fcmp ult double %i.af, 1.000000e+00
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop134 = fsub <2 x double> %i.e, %i.n ; 2 uses
  %i.al = fsub double %i.f, %i.o                  ; 2 uses
  %foldExtExtBinop136 = fmul <2 x double> %foldExtExtBinop134, %foldExtExtBinop134
  %i.am = extractelement <2 x double> %foldExtExtBinop136, i64 0
  %i.an = fmul double %i.al, %i.al
  %i.ao = fadd double %i.am, %i.an
  %sqrt.i54.i = tail call noundef double @llvm.sqrt.f64(double %i.ao)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = fsub double %i.m, %i.f
  %i.aq = fmul double %i.w, %i.ap
  %foldExtExtBinop138 = fsub <2 x double> %i.l, %i.e
  %i.ar = extractelement <2 x double> %foldExtExtBinop138, i64 0
  %i.as = fmul double %i.ar, %i.z
  %i.at = fsub double %i.aq, %i.as
  %i.au = fdiv double %i.at, %i.ae
  %i.av = tail call double @llvm.fabs.f64(double %i.au)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ae)
  %i.aw = fmul double %sqrt.i, %i.av
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.i:                                             ; preds = %bb.a
  br i1 %.0.i.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop140 = fsub <2 x double> %i.n, %i.e ; 3 uses
  %foldExtExtBinop142 = fsub <2 x double> %i.g, %i.e ; 4 uses
  %i.ax = extractelement <2 x double> %foldExtExtBinop142, i64 0
  %foldExtExtBinop144 = fmul <2 x double> %foldExtExtBinop142, %foldExtExtBinop140
  %i.ay = extractelement <2 x double> %foldExtExtBinop144, i64 0
  %i.az = fsub double %i.o, %i.f                  ; 3 uses
  %i.ba = fsub double %i.h, %i.f                  ; 4 uses
  %i.bb = fmul double %i.ba, %i.az
  %i.bc = fadd double %i.ay, %i.bb
  %foldExtExtBinop146 = fmul <2 x double> %foldExtExtBinop142, %foldExtExtBinop142
  %i.bd = extractelement <2 x double> %foldExtExtBinop146, i64 0
  %i.be = fmul double %i.ba, %i.ba
  %i.bf = fadd double %i.bd, %i.be                ; 3 uses
  %i.bg = fdiv double %i.bc, %i.bf                ; 2 uses
  %i.bh = fcmp ugt double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop148 = fmul <2 x double> %foldExtExtBinop140, %foldExtExtBinop140
  %i.bi = extractelement <2 x double> %foldExtExtBinop148, i64 0
  %i.bj = fmul double %i.az, %i.az
  %i.bk = fadd double %i.bi, %i.bj
  %sqrt.i53.i70 = tail call noundef double @llvm.sqrt.f64(double %i.bk)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = fcmp ult double %i.bg, 1.000000e+00
  br i1 %i.bl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %foldExtExtBinop150 = fsub <2 x double> %i.n, %i.g ; 2 uses
  %i.bm = fsub double %i.o, %i.h                  ; 2 uses
  %foldExtExtBinop152 = fmul <2 x double> %foldExtExtBinop150, %foldExtExtBinop150
  %i.bn = extractelement <2 x double> %foldExtExtBinop152, i64 0
  %i.bo = fmul double %i.bm, %i.bm
  %i.bp = fadd double %i.bn, %i.bo
  %sqrt.i54.i72 = tail call noundef double @llvm.sqrt.f64(double %i.bp)
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = fsub double %i.f, %i.o
  %i.br = fmul double %i.ax, %i.bq
  %foldExtExtBinop154 = fsub <2 x double> %i.e, %i.n
  %i.bs = extractelement <2 x double> %foldExtExtBinop154, i64 0
  %i.bt = fmul double %i.ba, %i.bs
  %i.bu = fsub double %i.br, %i.bt
  %i.bv = fdiv double %i.bu, %i.bf
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %sqrt.i73 = tail call double @llvm.sqrt.f64(double %i.bf)
  %i.bx = fmul double %sqrt.i73, %i.bw
  br label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit

bb.o:                                             ; preds = %bb.i
  %i.by = shufflevector <2 x double> %i.g, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bz = shufflevector <2 x double> %i.e, <2 x double> %i.l, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ca = fcmp olt <2 x double> %i.by, %i.bz
  %i.cb = select <2 x i1> %i.ca, <2 x double> %i.by, <2 x double> %i.bz
  %i.cc = shufflevector <2 x double> %i.l, <2 x double> %i.e, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cd = shufflevector <2 x double> %i.n, <2 x double> %i.g, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ce = fcmp olt <2 x double> %i.cc, %i.cd
  %i.cf = select <2 x i1> %i.ce, <2 x double> %i.cd, <2 x double> %i.cc
  %i.cg = fcmp ogt <2 x double> %i.cb, %i.cf
  %4 = bitcast <2 x i1> %i.cg to i2
  %or.cond.i.not = icmp eq i2 %4, 0
  br i1 %or.cond.i.not, label %bb.p, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = fcmp olt double %i.m, %i.o
  %i.ci = select i1 %i.ch, double %i.o, double %i.m
  %i.cj = fcmp olt double %i.h, %i.f
  %i.ck = select i1 %i.cj, double %i.h, double %i.f
  %i.cl = fcmp ogt double %i.ck, %i.ci
  br i1 %i.cl, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit

_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit: ; preds = %bb.p
  %i.cm = fcmp olt double %i.f, %i.h
  %i.cn = fcmp olt double %i.o, %i.m
  %i.co = select i1 %i.cn, double %i.o, double %i.m
  %i.cp = select i1 %i.cm, double %i.h, double %i.f
  %i.cq = fcmp uge double %i.cp, %i.co
  br i1 %i.cq, label %bb.q, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

bb.q:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit
  %i.cr = fsub <2 x double> %i.cd, %i.cc          ; 2 uses
  %i.cs = shufflevector <2 x double> %i.n, <2 x double> %i.g, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <2 x double> %i.l, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.cu = fsub <2 x double> %i.cs, %i.ct          ; 2 uses
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = fmul <2 x double> %i.cu, %i.cv          ; 2 uses
  %shift158 = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop159 = fsub <2 x double> %i.cw, %shift158 ; 2 uses
  %i.cx = extractelement <2 x double> %foldExtExtBinop159, i64 0
  %i.cy = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cy, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = fsub double %i.f, %i.m
  %foldExtExtBinop161 = fsub <2 x double> %i.e, %i.l
  %i.da = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.cr, %i.db
  %i.dd = shufflevector <2 x double> %foldExtExtBinop161, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.cu, %i.dd
  %i.df = fsub <2 x double> %i.dc, %i.de
  %i.dg = shufflevector <2 x double> %foldExtExtBinop159, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv <2 x double> %i.df, %i.dg
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.dj = fcmp ogt <4 x double> %i.di, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.dk = fcmp olt <4 x double> %i.di, <double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>
  %i.dl = shufflevector <4 x i1> %i.dj, <4 x i1> %i.dk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = bitcast <4 x i1> %i.dl to i4
  %.not = icmp eq i4 %i.dm, 0
  br i1 %.not, label %_ZN4geos9algorithm8Distance14pointToSegmentERKNS_4geom10CoordinateES5_S5_.exit, label %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread

_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread: ; preds = %bb.o, %bb.p, %bb.r, %bb.q, %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit
  %foldExtExtBinop163 = fsub <2 x double> %i.e, %i.l ; 4 uses
  %i.dn = extractelement <2 x double> %foldExtExtBinop163, i64 0
  %foldExtExtBinop165 = fsub <2 x double> %i.n, %i.l ; 5 uses
  %i.do = extractelement <2 x double> %foldExtExtBinop165, i64 0 ; 2 uses
  %foldExtExtBinop167 = fmul <2 x double> %foldExtExtBinop163, %foldExtExtBinop165
  %i.dp = extractelement <2 x double> %foldExtExtBinop167, i64 0
  %i.dq = fsub double %i.f, %i.m                  ; 4 uses
  %i.dr = fsub double %i.o, %i.m                  ; 6 uses
  %i.ds = fmul double %i.dq, %i.dr
  %i.dt = fadd double %i.dp, %i.ds
  %foldExtExtBinop169 = fmul <2 x double> %foldExtExtBinop165, %foldExtExtBinop165
  %i.du = extractelement <2 x double> %foldExtExtBinop169, i64 0
  %i.dv = fmul double %i.dr, %i.dr
  %i.dw = fadd double %i.du, %i.dv                ; 6 uses
  %i.dx = fdiv double %i.dt, %i.dw                ; 2 uses
  %i.dy = fcmp ugt double %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread
  %foldExtExtBinop171 = fmul <2 x double> %foldExtExtBinop163, %foldExtExtBinop163
  %i.dz = extractelement <2 x double> %foldExtExtBinop171, i64 0
  %i.ea = fmul double %i.dq, %i.dq
  %i.eb = fadd double %i.dz, %i.ea
  %sqrt.i53.i77 = tail call noundef double @llvm.sqrt.f64(double %i.eb)
  br label %bb.w

bb.t:                                             ; preds = %_ZN4geos4geom8Envelope10intersectsERKNS0_10CoordinateES4_S4_S4_.exit.thread
  %i.ec = fcmp ult double %i.dx, 1.000000e+00
  br i1 %i.ec, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %foldExtExtBinop173 = fsub <2 x double> %i.e, %i.n ; 2 uses
  %i.ed = fsub double %i.f, %i.o                  ; 2 uses
  %foldExtExtBinop175 = fmul <2 x double> %foldExtExtBinop173, %foldExtExtBinop173
  %i.ee = extractelement <2 x double> %foldExtExtBinop175, i64 0
  %i.ef = fmul double %i.ed, %i.ed
  %i.eg = fadd double %i.ee, %i.ef
  %sqrt.i54.i79 = tail call noundef double @llvm.sqrt.f64(double %i.eg)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.eh = fsub double %i.m, %i.f
  %i.ei = fmul double %i.do, %i.eh
  %foldExtExtBinop177 = fsub <2 x double> %i.l, %i.e
  %i.ej = extractelement <2 x double> %foldExtExtBinop177, i64 0
  %i.ek = fmul double %i.ej, %i.dr
  %i.el = fsub double %i.ei, %i.ek
  %i.em = fdiv double %i.el, %i.dw
  %i.en = tail call double @llvm.fabs.f64(double %i.em)
  %sqrt.i80 = tail call double @llvm.sqrt.f64(double %i.dw)
  %i.eo = fmul double %sqrt.i80, %i.en
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.1.i78 = phi double [ %i.eo, %bb.v ], [ %sqrt.i53.i77, %bb.s ], [ %sqrt.i54.i79, %bb.u ] ; 2 uses
  %foldExtExtBinop179 = fsub <2 x double> %i.g, %i.l ; 3 uses
  %foldExtExtBinop181 = fmul <2 x double> %foldExtExtBinop179, %foldExtExtBinop165
  %i.ep = extractelement <2 x double> %foldExtExtBinop181, i64 0
  %i.eq = fsub double %i.h, %i.m                  ; 3 uses
  %i.er = fmul double %i.eq, %i.dr
  %i.es = fadd double %i.ep, %i.er
  %i.et = fdiv double %i.es, %i.dw                ; 2 uses
  %i.eu = fcmp ugt double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %foldExtExtBinop183 = fmul <2 x double> %foldExtExtBinop179, %foldExtExtBinop179
  %i.ev = extractelement <2 x double> %foldExtExtBinop183, i64 0
  %i.ew = fmul double %i.eq, %i.eq
  %i.ex = fadd double %i.ev, %i.ew
  %sqrt.i53.i84 = tail call noundef double @llvm.sqrt.f64(double %i.ex)
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.ey = fcmp ult double %i.et, 1.000000e+00
  br i1 %i.ey, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %foldExtExtBinop185 = fsub <2 x double> %i.g, %i.n ; 2 uses
  %i.ez = fsub double %i.h, %i.o                  ; 2 uses
  %foldExtExtBinop187 = fmul <2 x double> %foldExtExtBinop185, %foldExtExtBinop185
  %i.fa = extractelement <2 x double> %foldExtExtBinop187, i64 0
  %i.fb = fmul double %i.ez, %i.ez
  %i.fc = fadd double %i.fa, %i.fb
  %sqrt.i54.i86 = tail call noundef double @llvm.sqrt.f64(double %i.fc)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fd = fsub double %i.m, %i.h
  %i.fe = fmul double %i.do, %i.fd
  %foldExtExtBinop189 = fsub <2 x double> %i.l, %i.g
  %i.ff = extractelement <2 x double> %foldExtExtBinop189, i64 0
  %i.fg = fmul double %i.ff, %i.dr
  %i.fh = fsub double %i.fe, %i.fg
  %i.fi = fdiv double %i.fh, %i.dw
  %i.fj = tail call double @llvm.fabs.f64(double %i.fi)
  %sqrt.i87 = tail call double @llvm.sqrt.f64(double %i.dw)
  %i.fk = fmul double %sqrt.i87, %i.fj
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x
  %.1.i85 = phi double [ %i.fk, %bb.aa ], [ %sqrt.i53.i84, %bb.x ], [ %sqrt.i54.i86, %bb.z ] ; 2 uses
  %foldExtExtBinop191 = fsub <2 x double> %i.l, %i.e ; 3 uses
  %foldExtExtBinop193 = fsub <2 x double> %i.g, %i.e ; 5 uses
  %i.fl = extractelement <2 x double> %foldExtExtBinop193, i64 0 ; 2 uses
  %foldExtExtBinop195 = fmul <2 x double> %foldExtExtBinop193, %foldExtExtBinop191
  %i.fm = extractelement <2 x double> %foldExtExtBinop195, i64 0
  %i.fn = fsub double %i.m, %i.f                  ; 3 uses
  %i.fo = fsub double %i.h, %i.f                  ; 6 uses
  %i.fp = fmul double %i.fo, %i.fn
  %i.fq = fadd double %i.fm, %i.fp
  %foldExtExtBinop197 = fmul <2 x double> %foldExtExtBinop193, %foldExtExtBinop193
  %i.fr = extractelement <2 x double> %foldExtExtBinop197, i64 0
  %i.fs = fmul double %i.fo, %i.fo
  %i.ft = fadd double %i.fr, %i.fs                ; 6 uses
  %i.fu = fdiv double %i.fq, %i.ft                ; 2 uses
  %i.fv = fcmp ugt double %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %foldExtExtBinop199 = fmul <2 x double> %foldExtExtBinop191, %foldExtExtBinop191
  %i.fw = extractelement <2 x double> %foldExtExtBinop199, i64 0
  %i.fx = fmul double %i.fn, %i.fn
  %i.fy = fadd double %i.fw, %i.fx
  %sqrt.i53.i91 = tail call noundef double @llvm.sqrt.f64(double %i.fy)
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.fz = fcmp ult double %i.fu, 1.000000e+00
  br i1 %i.fz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %foldExtExtBinop201 = fsub <2 x double> %i.l, %i.g ; 2 uses
  %i.ga = fsub double %i.m, %i.h                  ; 2 uses
  %foldExtExtBinop203 = fmul <2 x double> %foldExtExtBinop201, %foldExtExtBinop201
  %i.gb = extractelement <2 x double> %foldExtExtBinop203, i64 0
  %i.gc = fmul double %i.ga, %i.ga
  %i.gd = fadd double %i.gb, %i.gc
  %sqrt.i54.i93 = tail call noundef double @llvm.sqrt.f64(double %i.gd)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ge = fmul double %i.fl, %i.dq
  %i.gf = fmul double %i.fo, %i.dn
  %i.gg = fsub double %i.ge, %i.gf
  %i.gh = fdiv double %i.gg, %i.ft
  %i.gi = tail call double @llvm.fabs.f64(double %i.gh)
  %sqrt.i94 = tail call double @llvm.sqrt.f64(double %i.ft)
  %i.gj = fmul double %sqrt.i94, %i.gi
  br label %bb.ag
end_hunk_0
