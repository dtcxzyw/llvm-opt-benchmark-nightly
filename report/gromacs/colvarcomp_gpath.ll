Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE12computeValueEv:bb.a
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(392) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double 0.000000e+00, ptr %i.l, align 8, !tbaa !179
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !164  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !156  ; 3 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  store <2 x double> %i.br, ptr %i.j, align 8, !tbaa !145
  %i.y = extractelement <2 x double> %i.ce, i64 0
  store double %i.y, ptr %i.k, align 8, !tbaa !180
  %i.z = extractelement <2 x double> %i.ce, i64 1
  store double %i.z, ptr %i.l, align 8, !tbaa !179
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.br, %shift
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.ab = phi double [ %i.aa, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.ac = phi <2 x double> [ %i.ce, %._crit_edge ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.ad = fneg double %i.ab
  %i.ae = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = extractelement <2 x double> %i.ac, i64 1 ; 3 uses
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.af)
  %i.ai = tail call noundef double @sqrt(double noundef %i.ah) #29
  %i.aj = fsub double %i.ai, %i.ag
  %i.ak = fdiv double %i.aj, %i.ae                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ak, ptr %i.al, align 8, !tbaa !464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.an = load double, ptr %i.am, align 8, !tbaa !177
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !170 ; 2 uses
  %i.aq = fdiv double %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !155
  %i.at = sitofp i64 %i.as to double
  %i.au = fadd double %i.ak, -1.000000e+00
  %i.av = fmul double %i.ap, 2.000000e+00
  %i.aw = fdiv double %i.au, %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.at, double %i.aw, double %i.aq)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ax, ptr %i.ay, align 8, !tbaa !465
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.010 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %bb.c ] ; 4 uses
  %i.az = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.ce, %bb.c ]
  %i.ba = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.br, %bb.c ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.010 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.010 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !166
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.010
  %i.bh = load <2 x double>, ptr %i.bb, align 8, !tbaa !145 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.bd, align 8, !tbaa !145 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bc, align 8, !tbaa !145 ; 3 uses
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, %i.bk
  %i.bm = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %i.bl)
  %i.bo = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = insertelement <2 x double> %i.bo, double %i.bf, i64 1 ; 2 uses
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bp, <2 x double> %i.bn)
  %i.br = fadd <2 x double> %i.ba, %i.bq          ; 4 uses
  %i.bs = load <3 x double>, ptr %i.bg, align 8, !tbaa !145 ; 6 uses
  %i.bt = shufflevector <2 x double> %i.bh, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bu = shufflevector <3 x double> %i.bs, <3 x double> %i.bt, <2 x i32> <i32 1, i32 4>
  %i.bv = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x double> %i.bu, %i.bv
  %i.bx = shufflevector <3 x double> %i.bs, <3 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.by = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> zeroinitializer
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.by, <2 x double> %i.bw)
  %i.ca = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.cc = shufflevector <3 x double> %i.bs, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cc, <2 x double> %i.bz)
  %i.ce = fadd <2 x double> %i.az, %i.cd          ; 4 uses
  %i.cf = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !463
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE0EE18computeDerivativesEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !180 ; 3 uses
  %i.c = fmul double %i.b, 2.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !179 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !481
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !482
  %i.j = fsub double %i.g, %i.i
  %i.k = fneg double %i.j
  %i.l = fmul double %i.b, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %i.l)
  %i.n = tail call noundef double @sqrt(double noundef %i.m) #29
  %i.o = fmul double %i.c, %i.n
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.b, i64 1
  %i.r = fdiv <2 x double> splat (double 1.000000e+00), %i.q ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164  ; 4 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !156  ; 7 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = sdiv exact i64 %i.y, 24                  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !156 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !156 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !156 ; 8 uses
  %min.iters.check = icmp ult i64 %i.z, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.y   ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.y   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.y   ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 %i.y   ; 2 uses
  %bound0 = icmp ult ptr %i.ad, %i.aj
  %bound1 = icmp ult ptr %i.ah, %i.ai
  %found.conflict = and i1 %bound0, %bound1
  %bound068 = icmp ult ptr %i.ad, %i.ak
  %bound169 = icmp ult ptr %i.a, %i.ai
  %found.conflict70 = and i1 %bound068, %bound169
  %conflict.rdx = or i1 %found.conflict, %found.conflict70
  %bound071 = icmp ult ptr %i.ad, %i.al
  %bound172 = icmp ult ptr %i.ab, %i.ai
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %conflict.rdx, %found.conflict73
  %bound075 = icmp ult ptr %i.ad, %i.u
  %bound176 = icmp ult ptr %i.v, %i.ai
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx74, %found.conflict77
  %bound079 = icmp ult ptr %i.ad, %i.am
  %bound180 = icmp ult ptr %i.af, %i.ai
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx78, %found.conflict81
  %bound083 = icmp ult ptr %i.ah, %i.ak
  %bound184 = icmp ult ptr %i.a, %i.aj
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82, %found.conflict85
  %bound087 = icmp ult ptr %i.ah, %i.al
  %bound188 = icmp ult ptr %i.ab, %i.aj
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx90 = or i1 %conflict.rdx86, %found.conflict89
  %bound091 = icmp ult ptr %i.ah, %i.u
  %bound192 = icmp ult ptr %i.v, %i.aj
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx94 = or i1 %conflict.rdx90, %found.conflict93
  %bound095 = icmp ult ptr %i.ah, %i.am
  %bound196 = icmp ult ptr %i.af, %i.aj
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx94, %found.conflict97
  br i1 %conflict.rdx98, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -2                       ; 3 uses
  %i.an = load double, ptr %i.d, align 8, !tbaa !179, !alias.scope !483
  %i.ao = fmul double %i.an, 2.000000e+00
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %i.ao, i64 0 ; 2 uses
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = load double, ptr %i.a, align 8, !tbaa !180, !alias.scope !483
  %i.aq = fmul double %i.ap, 2.000000e+00
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.aq, i64 0 ; 3 uses
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat100 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <4 x i32> zeroinitializer
  %i.at = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <4 x i32> zeroinitializer
  %i.au = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.av = shufflevector <2 x double> %i.r, <2 x double> poison, <4 x i32> zeroinitializer
  %i.aw = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ax = or disjoint i64 %index, 1               ; 3 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ax ; 3 uses
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !167, !alias.scope !484, !noalias !485
  %i.bb = load double, ptr %i.az, align 8, !tbaa !167, !alias.scope !484, !noalias !485
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = load double, ptr %i.be, align 8, !tbaa !168, !alias.scope !484, !noalias !485
  %i.bh = load double, ptr %i.bf, align 8, !tbaa !168, !alias.scope !484, !noalias !485
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bh, i64 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !166, !alias.scope !484, !noalias !485
  %i.bn = load double, ptr %i.bl, align 8, !tbaa !166, !alias.scope !484, !noalias !485
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1 ; 2 uses
  %i.bq = fmul <2 x double> %broadcast.splat102, %i.bp
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.ax ; 3 uses
  %i.bt = load double, ptr %i.br, align 8, !tbaa !167, !alias.scope !486, !noalias !487
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !167, !alias.scope !486, !noalias !487
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !168, !alias.scope !486, !noalias !487
  %i.ca = load double, ptr %i.by, align 8, !tbaa !168, !alias.scope !486, !noalias !487
  %i.cb = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !166, !alias.scope !486, !noalias !487
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !166, !alias.scope !486, !noalias !487
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = fmul <2 x double> %broadcast.splat106, %i.ci
  %i.ck = fsub <2 x double> %i.bq, %i.cj
  %i.cl = fmul <2 x double> %broadcast.splat, %i.ck
  %i.cm = fmul <2 x double> %broadcast.splat100, %i.bp
  %i.cn = fsub <2 x double> %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %index
  %i.cp = shufflevector <2 x double> %i.bd, <2 x double> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cq = fmul <4 x double> %i.as, %i.cp
  %i.cr = shufflevector <2 x double> %i.bw, <2 x double> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cs = fmul <4 x double> %i.at, %i.cr
  %i.ct = fsub <4 x double> %i.cq, %i.cs
  %i.cu = fmul <4 x double> %i.ar, %i.ct
  %i.cv = shufflevector <2 x double> %i.bd, <2 x double> %i.bj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cw = fmul <4 x double> %i.au, %i.cv
  %i.cx = fsub <4 x double> %i.cu, %i.cw
  %i.cy = shufflevector <2 x double> %i.cn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.cx, <4 x double> %i.cy, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.co, align 8, !tbaa !145, !alias.scope !488, !noalias !489
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %index ; 3 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ax ; 3 uses
  %i.db = load double, ptr %i.cz, align 8, !tbaa !167, !alias.scope !490, !noalias !491
  %i.dc = load double, ptr %i.da, align 8, !tbaa !167, !alias.scope !490, !noalias !491
  %i.dd = insertelement <2 x double> poison, double %i.db, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dh = load double, ptr %i.df, align 8, !tbaa !168, !alias.scope !490, !noalias !491
  %i.di = load double, ptr %i.dg, align 8, !tbaa !168, !alias.scope !490, !noalias !491
  %i.dj = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !166, !alias.scope !490, !noalias !491
  %i.do = load double, ptr %i.dm, align 8, !tbaa !166, !alias.scope !490, !noalias !491
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.do, i64 1
  %i.dr = fmul <2 x double> %broadcast.splat106, %i.dq
  %i.ds = fmul <2 x double> %broadcast.splat, %i.dr
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %index
  %i.du = shufflevector <2 x double> %i.de, <2 x double> %i.dk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dv = fmul <4 x double> %i.aw, %i.du
  %i.dw = fmul <4 x double> %i.av, %i.dv
  %i.dx = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec107 = shufflevector <4 x double> %i.dw, <4 x double> %i.dx, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec107, ptr %i.dt, align 8, !tbaa !145, !alias.scope !492, !noalias !493
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.031.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dz = extractelement <2 x double> %i.r, i64 1
  %i.ea = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = extractelement <2 x double> %i.r, i64 0 ; 2 uses
  %i.ec = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.031 = phi i64 [ %i.ft, %scalar.ph ], [ %.031.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ed = load double, ptr %i.d, align 8, !tbaa !179
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.031 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !166, !noalias !485 ; 2 uses
  %i.eh = load double, ptr %i.a, align 8, !tbaa !180
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.031 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !166, !noalias !487
  %i.el = fmul double %i.dz, %i.eg
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.031 ; 2 uses
  %i.en = fmul double %i.ed, 2.000000e+00         ; 2 uses
  %i.eo = load <2 x double>, ptr %i.ee, align 8, !tbaa !145, !noalias !485 ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x double> %i.eq, %i.eo
  %i.es = fmul double %i.en, %i.eg
  %i.et = fmul double %i.eh, 2.000000e+00         ; 2 uses
  %i.eu = load <2 x double>, ptr %i.ei, align 8, !tbaa !145, !noalias !487
  %i.ev = insertelement <2 x double> poison, double %i.et, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x double> %i.ew, %i.eu
  %i.ey = fmul double %i.et, %i.ek
  %i.ez = fsub <2 x double> %i.er, %i.ex
  %i.fa = fsub double %i.es, %i.ey
  %i.fb = fmul <2 x double> %i.ea, %i.ez
  %i.fc = fmul double %i.eb, %i.fa
  %i.fd = fmul <2 x double> %i.ec, %i.eo
  %i.fe = fsub <2 x double> %i.fb, %i.fd
  %i.ff = fsub double %i.fc, %i.el
  store <2 x double> %i.fe, ptr %i.em, align 8, !tbaa !145
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store double %i.ff, ptr %.sroa.530.0..sroa_idx, align 8, !tbaa !145
  %i.fg = load double, ptr %i.a, align 8, !tbaa !180
  %i.fh = fmul double %i.fg, 2.000000e+00         ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.031 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !166, !noalias !491
  %i.fl = fmul double %i.fh, %i.fk
  %i.fm = fmul double %i.eb, %i.fl
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.031 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.fi, align 8, !tbaa !145, !noalias !491
  %i.fp = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x double> %i.fq, %i.fo
  %i.fs = fmul <2 x double> %i.ea, %i.fr
  store <2 x double> %i.fs, ptr %i.fn, align 8, !tbaa !145
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store double %i.fm, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !145
  %i.ft = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ft, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !480
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD2Ev(ptr noundef nonnull align 8 dead_on_return(3232) dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(1704) %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6colvar6gzpathD0Ev(ptr noundef nonnull align 8 dereferenceable(3232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 248) (i8, ptr @_ZTVN6colvar6gzpathE, i64 16), ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6colvar6gzpathE, i64 280), ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN6colvar6gzpathE, i64 344), ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2664
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.c) #29, !inline_history !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2096
  tail call void @_ZN12colvarmodule8rotationD1Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %i.d) #29, !inline_history !181
  tail call void @_ZN15GeometricPathCV17GeometricPathBaseIN12colvarmodule7rvectorEdLNS_7path_szE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.b) #29, !inline_history !181
  tail call void @_ZN6colvar18CartesianBasedPathD2Ev(ptr noundef nonnull align 8 dead_on_return(1704) dereferenceable(3232) %0) #29, !inline_history !181
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 3232) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6colvar6gzpath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i8, align 1                       ; 7 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.colvarmodule::rvector", align 8 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = tail call noundef i32 @_ZN6colvar18CartesianBasedPath4initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1704) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i8 1, ptr %i.h, align 1, !tbaa !29
  %i.p = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.h, i32 noundef 131078) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %i.q = load i8, ptr %i.o, align 8, !tbaa !183, !range !50, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.noexc.i, label %.noexc.i55

.noexc.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
end_hunk_0
