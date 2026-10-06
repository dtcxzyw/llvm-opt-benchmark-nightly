Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.7, i64 noundef %i.mu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit156

_ZNSt6vectorIjSaIjEED2Ev.exit156:                 ; preds = %.thread, %bb.bp, %bb.bq
  %.merged230 = phi { ptr, i32 } [ %i.as, %.thread ], [ %.merged, %bb.bp ], [ %.merged, %bb.bq ]
  %.sroa.22215.11229 = phi ptr [ %.sroa.22215.0, %.thread ], [ %.sroa.22215.9, %bb.bp ], [ %.sroa.22215.9, %bb.bq ]
  %.sroa.0204.11228 = phi ptr [ %.sroa.0204.0, %.thread ], [ %.sroa.0204.9, %bb.bp ], [ %.sroa.0204.9, %bb.bq ] ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %.sroa.0204.11228, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156
  %i.mv = ptrtoint ptr %.sroa.22215.11229 to i64
  %i.mw = ptrtoint ptr %.sroa.0204.11228 to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.11228, i64 noundef %i.mx) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156, %bb.br
  resume { ptr, i32 } %.merged230
}

declare void @_ZN10ClipperLib11ClipperBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = load double, ptr %1, align 8             ; 2 uses
  %i.d = fsub double %i.b, %i.c
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp olt double %i.e, f0x3E80000000000000
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8
  %i.k = fcmp ugt double %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp ult double %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load double, ptr %0, align 8             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8           ; 2 uses
  %i.t = fsub double %i.q, %i.s
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, f0x3E80000000000000
  br i1 %i.v, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre32 = load double, ptr %.phi.trans.insert31, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8           ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8           ; 3 uses
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp ult double %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %i.ag = phi double [ %.pre32, %._crit_edge ], [ %i.x, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi double [ %.pre, %._crit_edge ], [ %i.z, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = fsub double %i.ah, %i.ag
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp uge double %i.aj, f0x3E80000000000000
  %i.al = fcmp ugt double %i.q, %i.s              ; 2 uses
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = fcmp ult double %i.b, %i.c              ; 2 uses
  %or.cond28 = select i1 %or.cond, i1 true, i1 %i.am
  br i1 %or.cond28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp olt double %i.as, f0x3E80000000000000
  %.not = xor i1 %i.am, true
  %or.cond29.not = select i1 %i.at, i1 %.not, i1 false
  %.not33 = xor i1 %i.al, true
  %spec.select = select i1 %or.cond29.not, i1 %.not33, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %i.au = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.c ], [ %spec.select, %bb.h ]
  ret i1 %i.au
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load double, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8
  %i.e = load <2 x double>, ptr %1, align 8       ; 4 uses
  %i.f = load <2 x double>, ptr %0, align 8       ; 5 uses
  %i.g = load double, ptr %i.a, align 8
  %i.h = load <2 x double>, ptr %3, align 8       ; 4 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x double> %i.e, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = fsub <2 x double> %i.i, %i.j             ; 7 uses
  %i.l = shufflevector <2 x double> %i.h, <2 x double> %i.e, <2 x i32> <i32 1, i32 3>
  %i.m = shufflevector <2 x double> %i.e, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.n = fsub <2 x double> %i.l, %i.m             ; 8 uses
  %i.o = insertelement <2 x double> %i.h, double %i.b, i64 1
  %i.p = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fsub <2 x double> %i.o, %i.p             ; 4 uses
  %i.r = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x double> %i.r, double %i.d, i64 1
  %i.t = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fsub <2 x double> %i.s, %i.t             ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %i.u, %i.u
  %i.v = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.w = extractelement <2 x double> %i.q, i64 1  ; 2 uses
  %i.x = tail call noundef double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.v) ; 2 uses
  %i.y = fcmp olt double %i.x, f0x3DDB7CDFC28AE400
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = shufflevector <2 x double> %i.u, <2 x double> %i.n, <2 x i32> <i32 1, i32 3>
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %i.ac = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ad = shufflevector <2 x double> %i.q, <2 x double> %i.k, <2 x i32> <i32 1, i32 3>
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ad, <2 x double> %i.ab) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = tail call double @llvm.fabs.f64(double %i.af)
  %i.ah = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x double> %i.ah, double %i.x, i64 1
  %i.aj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ai) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop106 = fmul <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop106, i64 0
  %i.al = fdiv double %i.ag, %i.ak
  %i.am = fcmp ogt double %i.al, 9.999900e-01
  br i1 %i.am, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %foldExtExtBinop108 = fmul <2 x double> %i.n, %i.n
  %i.an = extractelement <2 x double> %foldExtExtBinop108, i64 0
  %i.ao = extractelement <2 x double> %i.k, i64 0 ; 2 uses
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.an) ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3DDB7CDFC28AE400
  br i1 %i.aq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.as = fmul <2 x double> %i.ar, %i.n
  %i.at = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.k, <2 x double> %i.as) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ay = insertelement <2 x double> %i.ax, double %i.ap, i64 1
  %i.az = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ay) ; 2 uses
  %shift110 = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop111 = fmul <2 x double> %i.az, %shift110
  %i.ba = extractelement <2 x double> %foldExtExtBinop111, i64 0
  %i.bb = fdiv double %i.aw, %i.ba
  %i.bc = fcmp ogt double %i.bb, 9.999900e-01
  br i1 %i.bc, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bd = extractelement <2 x double> %i.k, i64 1 ; 3 uses
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = extractelement <2 x double> %i.n, i64 1 ; 3 uses
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ogt double %i.be, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bi = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fdiv <2 x double> %i.q, %i.bi           ; 3 uses
  %i.bk = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bj)
  %i.bl = fcmp oeq <2 x double> %i.bk, splat (double +inf) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  %i.bn = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.q)
  %i.bo = fcmp olt <2 x double> %i.bn, splat (double f0x3E112E0BE0000000) ; 2 uses
  %foldExtExtBinop113 = and <2 x i1> %i.bo, %i.bl
  %i.bp = extractelement <2 x i1> %foldExtExtBinop113, i64 1
  %.0 = select i1 %i.bp, double 0.000000e+00, double %i.bm ; 2 uses
  %6 = extractelement <2 x i1> %i.bl, i64 0
  %i.bq = extractelement <2 x i1> %i.bo, i64 0
  %or.cond = select i1 %6, i1 %i.bq, i1 false
  %7 = extractelement <2 x double> %i.bj, i64 0
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.br = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bs = fdiv <2 x double> %i.u, %i.br           ; 3 uses
  %i.bt = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bs)
  %i.bu = fcmp oeq <2 x double> %i.bt, splat (double +inf) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bs, i64 1
  %i.bw = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u)
  %i.bx = fcmp olt <2 x double> %i.bw, splat (double f0x3E112E0BE0000000) ; 2 uses
  %foldExtExtBinop115 = and <2 x i1> %i.bx, %i.bu
  %i.by = extractelement <2 x i1> %foldExtExtBinop115, i64 1
  %.196 = select i1 %i.by, double 0.000000e+00, double %i.bv ; 2 uses
  %8 = extractelement <2 x i1> %i.bu, i64 0
  %i.bz = extractelement <2 x i1> %i.bx, i64 0
  %or.cond20 = select i1 %8, i1 %i.bz, i1 false
  %9 = extractelement <2 x double> %i.bs, i64 0
  br i1 %or.cond20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.097 = phi double [ 0.000000e+00, %bb.g ], [ %7, %bb.f ], [ 0.000000e+00, %bb.i ], [ %9, %bb.h ] ; 3 uses
  %.2 = phi double [ %.0, %bb.g ], [ %.0, %bb.f ], [ %.196, %bb.i ], [ %.196, %bb.h ] ; 3 uses
  %i.ca = fcmp olt double %.097, %.2              ; 2 uses
  %.198 = select i1 %i.ca, double %.2, double %.097 ; 2 uses
  %.3 = select i1 %i.ca, double %.097, double %.2 ; 2 uses
  %i.cb = fcmp ogt double %.3, 0.000000e+00
  %.sroa.speculated52 = select i1 %i.cb, double %.3, double 0.000000e+00 ; 2 uses
  %i.cc = fcmp ogt double %.198, 0.000000e+00
  %.sroa.speculated48 = select i1 %i.cc, double %.198, double 0.000000e+00 ; 2 uses
  %i.cd = fcmp olt double %.sroa.speculated52, 1.000000e+00
  %.sroa.speculated44 = select i1 %i.cd, double %.sroa.speculated52, double 1.000000e+00 ; 3 uses
  %i.ce = fcmp olt double %.sroa.speculated48, 1.000000e+00
  %.sroa.speculated = select i1 %i.ce, double %.sroa.speculated48, double 1.000000e+00 ; 3 uses
  %i.cf = fsub double %.sroa.speculated, %.sroa.speculated44
  %i.cg = tail call double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp uge double %i.cg, f0x3EE4F8B580000000
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ci = fmul double %i.bd, %.sroa.speculated44
  %i.cj = fmul double %i.bf, %.sroa.speculated44
  %i.ck = extractelement <2 x double> %i.f, i64 0
  %i.cl = fadd double %i.ck, %i.ci
  %i.cm = fadd double %i.g, %i.cj
  store double %i.cl, ptr %4, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.cm, ptr %.sroa.42.0..sroa_idx, align 8
  %i.cn = fmul double %i.bd, %.sroa.speculated
  %i.co = fmul double %i.bf, %.sroa.speculated
  %i.cp = load double, ptr %0, align 8
  %i.cq = fadd double %i.cn, %i.cp
  %i.cr = load double, ptr %i.a, align 8
  %i.cs = fadd double %i.co, %i.cr
  store double %i.cq, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.cs, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not194 = icmp eq ptr %i.c, %i.e
  br i1 %.not194, label %._crit_edge199, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.b

._crit_edge199:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph198, %.loopexit
  %.sroa.0166.0195 = phi ptr [ %i.c, %.lr.ph198 ], [ %i.lw, %.loopexit ] ; 14 uses
  %i.m = load ptr, ptr %.sroa.0166.0195, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %.sroa.0166.0195, %0         ; 2 uses
  br i1 %i.q, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 24
  %i.s = load double, ptr %i.f, align 8           ; 2 uses
  %i.t = load double, ptr %i.r, align 8           ; 2 uses
  %i.u = fsub double %i.s, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp olt double %i.v, f0x3E80000000000000
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 48
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load double, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load double, ptr %i.a, align 8          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 40
  %i.ah = load double, ptr %i.ag, align 8         ; 2 uses
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp olt double %i.aj, f0x3E80000000000000
  br i1 %i.ak, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load double, ptr %i.h, align 8
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 32
  %.pre32.i = load double, ptr %.phi.trans.insert31.i, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 32
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = load double, ptr %i.h, align 8          ; 3 uses
  %i.ao = fcmp ugt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 48
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = load double, ptr %i.g, align 8
  %i.as = fcmp ult double %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i
  %i.at = phi double [ %.pre32.i, %._crit_edge.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.au = phi double [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.i ], [ %i.an, %bb.h ]
  %i.av = fsub double %i.au, %i.at
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp uge double %i.aw, f0x3E80000000000000
  %i.ay = fcmp ugt double %i.af, %i.ah            ; 2 uses
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp ult double %i.s, %i.t              ; 2 uses
  %or.cond28.i = select i1 %or.cond.i, i1 true, i1 %i.az
  br i1 %or.cond28.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.j
  %i.ba = load double, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0166.0195, i64 48
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp uge double %i.be, f0x3E80000000000000
  %or.cond29.not.i.not = select i1 %i.bf, i1 true, i1 %i.az
  %spec.select.i.not = select i1 %or.cond29.not.i.not, i1 true, i1 %i.ay
  br i1 %spec.select.i.not, label %.loopexit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread: ; preds = %bb.f, %bb.i, %bb.j, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.c
  %i.bg = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bh = load ptr, ptr %0, align 8               ; 3 uses
  %.not200 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not200, label %.loopexit, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 4
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %._crit_edge
  %i.bm = phi ptr [ %i.cs, %._crit_edge ], [ %i.bh, %.lr.ph193.preheader ] ; 3 uses
  %i.bn = phi ptr [ %i.ct, %._crit_edge ], [ %i.bg, %.lr.ph193.preheader ]
  %i.bo = phi i64 [ %i.cx, %._crit_edge ], [ %i.bl, %.lr.ph193.preheader ]
  %.0192 = phi i64 [ %.pre-phi, %._crit_edge ], [ 0, %.lr.ph193.preheader ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %.0192
  %i.bq = add nuw i64 %.0192, 1                   ; 3 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  %i.bs = select i1 %i.br, i64 0, i64 %i.bq
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bs
  %i.bu = load <2 x double>, ptr %i.bp, align 8   ; 8 uses
  %i.bv = load <2 x double>, ptr %i.bt, align 8   ; 5 uses
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph193
  %i.bw = load ptr, ptr %i.n, align 8
  %i.bx = load ptr, ptr %.sroa.0166.0195, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph193, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ %.0192, %.lr.ph193 ] ; 2 uses
  %.not201 = icmp eq i64 %i.cc, 0
  br i1 %.not201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cd = fsub <2 x double> %i.bv, %i.bu          ; 7 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 1 ; 4 uses
  %i.cf = fmul double %i.ce, %i.ce
  %i.cg = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double %i.cf)
  %sqrt.i27.i = tail call double @llvm.sqrt.f64(double %i.ch) ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cd) ; 2 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 0
  %i.ck = extractelement <2 x double> %i.ci, i64 1
  %i.cl = fcmp ogt double %i.cj, %i.ck
  %i.cm = extractelement <2 x double> %i.bv, i64 0
  %i.cn = extractelement <2 x double> %i.bv, i64 1
  %i.co = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.pre = load ptr, ptr %i.i, align 8
  %.pre205 = load ptr, ptr %0, align 8
  %.pre206 = add i64 %.3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre206, %._crit_edge.loopexit ], [ %i.bq, %bb.l ] ; 2 uses
  %i.cs = phi ptr [ %.pre205, %._crit_edge.loopexit ], [ %i.bm, %bb.l ] ; 2 uses
  %i.ct = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bn, %bb.l ] ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 4                 ; 2 uses
  %i.cy = icmp ult i64 %.pre-phi, %i.cx
  br i1 %i.cy, label %.lr.ph193, label %.loopexit, !llvm.loop !123

bb.m:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.1191 = phi i64 [ %.0192, %.lr.ph ], [ %.3, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 10 uses
  %.058190 = phi i64 [ 0, %.lr.ph ], [ %i.db, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 2 uses
  %i.cz = load ptr, ptr %.sroa.0166.0195, align 8 ; 3 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %.058190 ; 2 uses
  %.sroa.0154.0.copyload = load double, ptr %i.da, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %.sroa.4155.0.copyload = load double, ptr %.sroa.4155.0..sroa_idx, align 8
  %i.db = add nuw i64 %.058190, 1                 ; 3 uses
  %i.dc = load ptr, ptr %i.n, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 4
  %i.dh = urem i64 %i.db, %i.dg
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dh ; 2 uses
  %.sroa.0152.0.copyload = load double, ptr %i.di, align 8 ; 2 uses
  %.sroa.4153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.4153.0.copyload = load double, ptr %.sroa.4153.0..sroa_idx, align 8 ; 2 uses
  %i.dj = fsub double %.sroa.0152.0.copyload, %i.cm ; 3 uses
  %i.dk = fsub double %.sroa.4153.0.copyload, %i.cn ; 3 uses
  %i.dl = insertelement <2 x double> poison, double %.sroa.0152.0.copyload, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %.sroa.0154.0.copyload, i64 1
  %i.dn = fsub <2 x double> %i.dm, %i.co          ; 3 uses
  %i.do = insertelement <2 x double> poison, double %.sroa.4153.0.copyload, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %.sroa.4155.0.copyload, i64 1
  %i.dq = fsub <2 x double> %i.dp, %i.cq          ; 3 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1 ; 3 uses
  %i.ds = fmul double %i.dr, %i.dr
  %i.dt = extractelement <2 x double> %i.dn, i64 1 ; 3 uses
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.ds) ; 2 uses
  %i.dv = fcmp olt double %i.du, f0x3DDB7CDFC28AE400
  br i1 %i.dv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = fmul double %i.ce, %i.dr
  %i.dx = tail call noundef double @llvm.fmuladd.f64(double %i.dt, double %i.cg, double %i.dw)
  %i.dy = tail call double @llvm.fabs.f64(double %i.dx)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.du)
  %i.dz = fmul double %sqrt.i27.i, %sqrt.i.i
  %i.ea = fdiv double %i.dy, %i.dz
  %i.eb = fcmp ogt double %i.ea, 9.999900e-01
  br i1 %i.eb, label %bb.o, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ec = fmul double %i.dk, %i.dk
  %i.ed = tail call noundef double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.ec) ; 2 uses
  %i.ee = fcmp olt double %i.ed, f0x3DDB7CDFC28AE400
  br i1 %i.ee, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = fmul double %i.ce, %i.dk
  %i.eg = tail call noundef double @llvm.fmuladd.f64(double %i.dj, double %i.cg, double %i.ef)
  %i.eh = tail call double @llvm.fabs.f64(double %i.eg)
  %sqrt.i28.i = tail call noundef double @llvm.sqrt.f64(double %i.ed)
  %i.ei = fmul double %sqrt.i27.i, %sqrt.i28.i
  %i.ej = fdiv double %i.eh, %i.ei
  %i.ek = fcmp ogt double %i.ej, 9.999900e-01
  br i1 %i.ek, label %bb.q, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.cl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.el = fdiv <2 x double> %i.dn, %i.cp          ; 3 uses
  %i.em = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.el)
  %i.en = fcmp oeq <2 x double> %i.em, splat (double +inf) ; 2 uses
  %i.eo = extractelement <2 x double> %i.el, i64 1
  %i.ep = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dn)
  %i.eq = fcmp olt <2 x double> %i.ep, splat (double f0x3E112E0BE0000000) ; 2 uses
  %foldExtExtBinop = and <2 x i1> %i.eq, %i.en
  %i.er = extractelement <2 x i1> %foldExtExtBinop, i64 1
  %.0.i = select i1 %i.er, double 0.000000e+00, double %i.eo ; 2 uses
  %2 = extractelement <2 x i1> %i.en, i64 0
  %i.es = extractelement <2 x i1> %i.eq, i64 0
  %or.cond.i59 = select i1 %2, i1 %i.es, i1 false
  %3 = extractelement <2 x double> %i.el, i64 0
  br i1 %or.cond.i59, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.et = fdiv <2 x double> %i.dq, %i.cr          ; 3 uses
  %i.eu = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.et)
  %i.ev = fcmp oeq <2 x double> %i.eu, splat (double +inf) ; 2 uses
  %i.ew = extractelement <2 x double> %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dq)
  %i.ey = fcmp olt <2 x double> %i.ex, splat (double f0x3E112E0BE0000000) ; 2 uses
  %foldExtExtBinop244 = and <2 x i1> %i.ey, %i.ev
  %i.ez = extractelement <2 x i1> %foldExtExtBinop244, i64 1
  %.196.i = select i1 %i.ez, double 0.000000e+00, double %i.ew ; 2 uses
  %4 = extractelement <2 x i1> %i.ev, i64 0
  %i.fa = extractelement <2 x i1> %i.ey, i64 0
  %or.cond20.i = select i1 %4, i1 %i.fa, i1 false
  %5 = extractelement <2 x double> %i.et, i64 0
  br i1 %or.cond20.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.097.i = phi double [ 0.000000e+00, %bb.s ], [ %3, %bb.r ], [ 0.000000e+00, %bb.u ], [ %5, %bb.t ] ; 3 uses
  %.2.i = phi double [ %.0.i, %bb.s ], [ %.0.i, %bb.r ], [ %.196.i, %bb.u ], [ %.196.i, %bb.t ] ; 3 uses
  %i.fb = fcmp olt double %.097.i, %.2.i          ; 2 uses
  %.198.i = select i1 %i.fb, double %.2.i, double %.097.i
  %.3.i = select i1 %i.fb, double %.097.i, double %.2.i
  %i.fc = insertelement <2 x double> poison, double %.3.i, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %.198.i, i64 1 ; 2 uses
  %i.fe = fcmp ogt <2 x double> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x double> %i.fd, <2 x double> zeroinitializer ; 2 uses
  %i.fg = fcmp olt <2 x double> %i.ff, splat (double 1.000000e+00)
  %i.fh = select <2 x i1> %i.fg, <2 x double> %i.ff, <2 x double> splat (double 1.000000e+00) ; 4 uses
  %shift = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x double> %shift, %i.fh
  %i.fi = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.fj = tail call double @llvm.fabs.f64(double %i.fi)
  %i.fk = fcmp uge double %i.fj, f0x3EE4F8B580000000
  br i1 %i.fk, label %bb.w, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.fl = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.cd, %i.fl          ; 2 uses
  %foldExtExtBinop244.a = fadd <2 x double> %i.bu, %i.fm ; 2 uses
  %i.fn = extractelement <2 x double> %foldExtExtBinop244.a, i64 0 ; 3 uses
  %foldExtExtBinop246 = fadd <2 x double> %i.bu, %i.fm ; 2 uses
  %i.fo = extractelement <2 x double> %foldExtExtBinop246, i64 1 ; 3 uses
  %i.fp = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %i.cd, %i.fp
  %i.fr = fadd <2 x double> %i.bu, %i.fq          ; 5 uses
  %foldExtExtBinop248 = fsub <2 x double> %foldExtExtBinop244.a, %i.bu
  %i.fs = extractelement <2 x double> %foldExtExtBinop248, i64 0 ; 2 uses
  %foldExtExtBinop250 = fsub <2 x double> %foldExtExtBinop246, %i.bu ; 2 uses
  %foldExtExtBinop252 = fmul <2 x double> %foldExtExtBinop250, %foldExtExtBinop250
  %i.ft = extractelement <2 x double> %foldExtExtBinop252, i64 1
  %i.fu = tail call noundef double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.ft)
  %i.fv = fcmp ogt double %i.fu, f0x3E80000000000000
  br i1 %i.fv, label %bb.x, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.fw = add i64 %.1191, 1                       ; 8 uses
  %i.fx = load ptr, ptr %0, align 8               ; 7 uses
  %.idx182 = shl nsw i64 %i.fw, 4                 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %.idx182 ; 9 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gb = load ptr, ptr %i.i, align 8             ; 9 uses
  %i.gc = load ptr, ptr %i.j, align 8
  %.not.i60 = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i60, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fx) ]
  %i.gd = icmp eq ptr %i.fy, %i.gb
  br i1 %i.gd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %i.fn, ptr %i.gb, align 8
  %.sroa.9149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store double %i.fo, ptr %.sroa.9149.0..sroa_idx, align 8
  %i.ge = load ptr, ptr %i.i, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.gf, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.aa:                                            ; preds = %bb.y
  %i.gg = getelementptr inbounds i8, ptr %i.gb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i64 16, i1 false)
  %i.gh = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store ptr %i.gi, ptr %i.i, align 8
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -16 ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fz                    ; 3 uses
  %i.gm = ashr exact i64 %i.gl, 4                 ; 2 uses
  %i.gn = icmp sgt i64 %i.gm, 1
  br i1 %i.gn, label %bb.ab, label %bb.ac, !prof !20

bb.ab:                                            ; preds = %bb.aa
  %i.go = sub nsw i64 0, %i.gm
  %i.gp = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.go
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr nonnull align 8 %i.fy, i64 %i.gl, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.gq = icmp eq i64 %i.gl, 16
  br i1 %i.gq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i64 16, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store double %i.fn, ptr %i.fy, align 8
  %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx11.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store double %i.fo, ptr %.sroa.7.i.sroa.4.0..sroa.7.8..sroa_idx11.i.sroa_idx, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.af:                                            ; preds = %bb.x
  %i.gr = ptrtoint ptr %i.gb to i64
  %i.gs = sub i64 %i.gr, %i.ga                    ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 9223372036854775792
  br i1 %i.gt, label %bb.ag, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.gu = ashr exact i64 %i.gs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 1)
  %i.gv = add nsw i64 %.sroa.speculated.i.i.i, %i.gu ; 2 uses
  %i.gw = icmp ult i64 %i.gv, %i.gu
  %i.gx = tail call i64 @llvm.umin.i64(i64 %i.gv, i64 576460752303423487)
  %i.gy = select i1 %i.gw, i64 576460752303423487, i64 %i.gx ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gz = shl nuw nsw i64 %i.gy, 4
  %i.ha = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #25 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx182 ; 2 uses
  store double %i.fn, ptr %i.hb, align 8
  %.sroa.9149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store double %i.fo, ptr %.sroa.9149.0..sroa_idx150, align 8
  %.not10.i.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hc = and i64 %.1191, 1152921504606846975
  %i.hd = add i64 %.1191, 1
  %xtraiter = and i64 %i.hd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.prol ], [ %i.ha, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.prol = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.prol, i64 16, i1 false), !alias.scope !140
  %i.he = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !127

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hf, %.lr.ph.i.i.i.i.i.prol ]
  %.012.i.i.i.i.i.unr = phi ptr [ %i.ha, %.lr.ph.i.i.i.i.i.preheader ], [ %i.hf, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i.preheader ], [ %i.he, %.lr.ph.i.i.i.i.i.prol ]
  %i.hg = icmp samesign ult i64 %i.hc, 3
  br i1 %i.hg, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !140
  %i.hh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !alias.scope !140
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hj, i64 16, i1 false), !alias.scope !140
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !alias.scope !140
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.hn, %i.fy
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ha, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ho, %.lr.ph.i.i.i.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i = icmp eq ptr %i.fy, %i.gb
  br i1 %.not10.i.i.i16.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i

.lr.ph.i.i.i17.i.i:                               ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, %.lr.ph.i.i.i17.i.i
  %.012.i.i.i18.i.i = phi ptr [ %i.hr, %.lr.ph.i.i.i17.i.i ], [ %i.hp, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  %.0911.i.i.i19.i.i = phi ptr [ %i.hq, %.lr.ph.i.i.i17.i.i ], [ %i.fy, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i, i64 16, i1 false), !alias.scope !142
  %i.hq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i, i64 16 ; 2 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.hq, %i.gb
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i, !llvm.loop !0

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i17.i.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %.0.lcssa.i.i.i21.i.i = phi ptr [ %i.hp, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ], [ %i.hr, %.lr.ph.i.i.i17.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.hs = load ptr, ptr %i.j, align 8
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.ht, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.hu) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
end_hunk_0
