Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/CalcTangentsProcess?download=true
inline.NumInlined: 329
inline.NumDeleted: 191
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj
define hidden noundef zeroext i1 @_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.Assimp::SpatialSort", align 8 ; 10 uses
  %4 = alloca %"class.std::vector.15", align 8    ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8
  %i.e = and i32 %i.d, 12
  %.not256 = icmp eq i32 %i.e, 0
  br i1 %.not256, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull @.str.5)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.j, ptr noundef nonnull @.str.6)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp ugt i32 %i.l, 7
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  %.not257 = icmp eq ptr %i.q, null
  br i1 %.not257, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorIJRA52_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(52) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = zext i32 %i.t to i64
  %i.v = add nuw nsw i64 %i.u, 63                 ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1073741816
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 3 uses
  %i.z = lshr i64 %i.v, 6                         ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %.idx.i = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.y, i8 0, i64 %.idx.i, i1 false)
  %.pr = load i32, ptr %i.s, align 4
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.j, %bb.i
  %i.ab = phi i32 [ %.pr, %bb.j ], [ 0, %bb.i ]   ; 2 uses
  %.sroa.0493.0 = phi ptr [ %i.y, %bb.j ], [ null, %bb.i ] ; 7 uses
  %.sroa.18502.0 = phi ptr [ %i.aa, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 12               ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #20
          to label %bb.k unwind label %bb.m       ; 2 uses

bb.k:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.af = icmp eq i32 %i.ab, 0
  br i1 %i.af, label %.loopexit542, label %.loopexit542.loopexit

.loopexit542.loopexit:                            ; preds = %bb.k
  %i.ag = add nsw i64 %i.ad, -12                  ; 2 uses
  %i.ah = urem i64 %i.ag, 12
  %i.ai = sub nuw nsw i64 %i.ag, %i.ah
  %i.aj = add nsw i64 %i.ai, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 0, i64 %i.aj, i1 false)
  br label %.loopexit542

.loopexit542:                                     ; preds = %.loopexit542.loopexit, %bb.k
  store ptr %i.ae, ptr %i.b, align 8
  %i.ak = load i32, ptr %i.s, align 4             ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, 12               ; 2 uses
  %i.an = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.am) #20
          to label %bb.l unwind label %bb.m       ; 7 uses

bb.l:                                             ; preds = %.loopexit542
  %i.ao = icmp eq i32 %i.ak, 0
  br i1 %i.ao, label %.loopexit541, label %.loopexit541.loopexit

.loopexit541.loopexit:                            ; preds = %bb.l
  %i.ap = add nsw i64 %i.am, -12                  ; 2 uses
  %i.aq = urem i64 %i.ap, 12
  %i.ar = sub nuw nsw i64 %i.ap, %i.aq
  %i.as = add nsw i64 %i.ar, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.as, i1 false)
  br label %.loopexit541

.loopexit541:                                     ; preds = %.loopexit541.loopexit, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.an, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ax = load i32, ptr %i.k, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %.not605 = icmp eq i32 %i.bd, 0
  br i1 %.not605, label %._crit_edge, label %.lr.ph569

.lr.ph569:                                        ; preds = %.loopexit541
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.n

._crit_edge:                                      ; preds = %.loopexit539, %.loopexit541
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN6Assimp11SpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %3)
          to label %bb.aa unwind label %bb.ac

bb.m:                                             ; preds = %.loopexit542, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.n:                                             ; preds = %.lr.ph569, %.loopexit539
  %indvars.iv640 = phi i64 [ 0, %.lr.ph569 ], [ %indvars.iv.next641, %.loopexit539 ] ; 2 uses
  %i.bg = load ptr, ptr %i.be, align 8
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv640 ; 5 uses
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 3
  br i1 %i.bj, label %.preheader538, label %.lr.ph.preheader

.preheader538:                                    ; preds = %bb.n
  %.not607 = icmp eq i32 %i.bi, 0
  br i1 %.not607, label %.loopexit539, label %.lr.ph567

.lr.ph567:                                        ; preds = %.preheader538
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph567, %bb.o
  %indvars.iv637 = phi i64 [ 0, %.lr.ph567 ], [ %indvars.iv.next638, %bb.o ] ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv637
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = lshr i32 %i.bn, 6
  %.zext = zext nneg i32 %i.bp to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0493.0, i64 %.zext ; 2 uses
  %i.br = and i64 %i.bo, 63
  %i.bs = shl nuw i64 1, %i.br
  %i.bt = load i64, ptr %i.bq, align 8
  %i.bu = or i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bq, align 8
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bb, i64 %i.bo ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.bv, align 4
  %.sroa.5488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float +qnan, ptr %.sroa.5488.0..sroa_idx, align 4
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.bo ; 2 uses
  store <2 x float> splat (float +qnan), ptr %i.bw, align 4
  %.sroa.5485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float +qnan, ptr %.sroa.5485.0..sroa_idx, align 4
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %i.bx = load i32, ptr %i.bh, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next638, %i.by
  br i1 %i.bz, label %bb.o, label %.loopexit539, !llvm.loop !5

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.ce to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.ch ; 2 uses
  %i.cj = zext i32 %i.cc to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = zext i32 %i.cg to i64                   ; 2 uses
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.cp ; 2 uses
  %i.cr = load <2 x float>, ptr %i.ci, align 4
  %i.cs = load <2 x float>, ptr %i.ck, align 4    ; 2 uses
  %i.ct = fsub <2 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = load <2 x float>, ptr %i.cq, align 4
  %i.cv = fsub <2 x float> %i.cu, %i.cs           ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load float, ptr %i.cw, align 4
  %5 = insertelement <2 x float> poison, float %i.cm, i64 0
  %6 = insertelement <2 x float> %5, float %i.cx, i64 1
  %7 = insertelement <2 x float> poison, float %i.co, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = fsub <2 x float> %6, %8                    ; 2 uses
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.ch
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cj
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.ba, i64 %i.cp
  %i.db = load <2 x float>, ptr %i.cy, align 4
  %i.dc = load <2 x float>, ptr %i.cz, align 4    ; 2 uses
  %i.dd = fsub <2 x float> %i.db, %i.dc           ; 3 uses
  %i.de = load <2 x float>, ptr %i.da, align 4
  %i.df = fsub <2 x float> %i.de, %i.dc           ; 3 uses
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dh = extractelement <2 x float> %i.dd, i64 1
  %i.di = extractelement <2 x float> %i.df, i64 0
  %i.dj = fmul <2 x float> %i.dd, %i.dg           ; 2 uses
  %i.dk = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.dl = fneg float %i.dk
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.di, float %i.dh, float %i.dl)
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %i.do = select i1 %i.dn, float -1.000000e+00, float 1.000000e+00 ; 3 uses
  %i.dp = extractelement <2 x float> %i.dj, i64 1
  %i.dq = fcmp oeq float %i.dk, %i.dp             ; 2 uses
  %i.dr = select i1 %i.dq, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.dd ; 3 uses
  %i.ds = select i1 %i.dq, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.df
  %i.dt = fneg <2 x float> %i.ds                  ; 3 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dv = fmul <2 x float> %i.ct, %i.du
  %i.dw = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.dw, <2 x float> %i.dv)
  %i.dy = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ea = fmul <2 x float> %i.dz, %i.dx           ; 3 uses
  %i.eb = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x float> %i.ct, %i.eb
  %i.ed = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.ed, <2 x float> %i.ec)
  %i.ef = fmul <2 x float> %i.dz, %i.ee           ; 3 uses
  %i.eg = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fmul <2 x float> %i.eg, %i.dt
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.dr, <2 x float> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = fmul float %i.do, %i.ej                 ; 2 uses
  %i.el = extractelement <2 x float> %i.ei, i64 0
  %i.em = fmul float %i.do, %i.el                 ; 2 uses
  %i.en = extractelement <2 x float> %i.ef, i64 0
  %i.eo = extractelement <2 x float> %i.ea, i64 0
  %shift = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %shift736 = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309 ] ; 2 uses
  %i.ep = load ptr, ptr %i.ca, align 8
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.es ; 2 uses
  %i.eu = load float, ptr %i.et, align 4          ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load <2 x float>, ptr %i.ev, align 4    ; 8 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %shift, %i.ew
  %i.ey = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.eu, float %i.ey)
  %i.fa = extractelement <2 x float> %i.ew, i64 1 ; 5 uses
  %i.fb = tail call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.fa, float %i.ez) ; 2 uses
  %i.fc = fmul float %i.fa, %i.fb
  %i.fd = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fe = insertelement <2 x float> %i.fd, float %i.eu, i64 0 ; 2 uses
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fmul <2 x float> %i.fe, %i.fg
  %i.fi = fsub <2 x float> %i.ea, %i.fh           ; 5 uses
  %i.fj = fsub float %i.ek, %i.fc                 ; 4 uses
  %foldExtExtBinop737 = fmul <2 x float> %shift736, %i.ew
  %i.fk = extractelement <2 x float> %foldExtExtBinop737, i64 0
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.en, float %i.eu, float %i.fk)
  %i.fm = tail call noundef float @llvm.fmuladd.f32(float %i.em, float %i.fa, float %i.fl) ; 2 uses
  %i.fn = fmul float %i.fa, %i.fm
  %i.fo = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fe, %i.fp
  %i.fr = fsub <2 x float> %i.ef, %i.fq           ; 5 uses
  %i.fs = fsub float %i.em, %i.fn                 ; 4 uses
  %foldExtExtBinop739 = fmul <2 x float> %i.fi, %i.fi
  %i.ft = extractelement <2 x float> %foldExtExtBinop739, i64 1
  %i.fu = extractelement <2 x float> %i.fi, i64 0 ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.ft)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.fj, float %i.fj, float %i.fv) ; 2 uses
  %i.fx = fcmp ogt float %i.fw, 0.000000e+00
  br i1 %i.fx, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fw)
  %i.fy = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.fz = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x float> %i.fi, %i.ga
  %i.gc = fmul float %i.fj, %i.fy
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %.lr.ph
  %.sroa.20469.1 = phi float [ %i.gc, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.fj, %.lr.ph ] ; 6 uses
  %.sroa.0446.1 = phi <2 x float> [ %i.gb, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.fi, %.lr.ph ] ; 7 uses
  %foldExtExtBinop741 = fmul <2 x float> %i.fr, %i.fr
  %i.gd = extractelement <2 x float> %foldExtExtBinop741, i64 1
  %i.ge = extractelement <2 x float> %i.fr, i64 0 ; 2 uses
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %i.gd)
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %i.fs, float %i.fs, float %i.gf) ; 2 uses
  %i.gh = fcmp ogt float %i.gg, 0.000000e+00
  br i1 %i.gh, label %_ZN10aiVector3tIfEdVEf.exit.i300, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit302

_ZN10aiVector3tIfEdVEf.exit.i300:                 ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %sqrt.i.i301 = tail call noundef float @llvm.sqrt.f32(float %i.gg)
  %i.gi = fdiv float 1.000000e+00, %sqrt.i.i301   ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.fr, %i.gk
  %i.gm = fmul float %i.fs, %i.gi
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit302

_ZN10aiVector3tIfE13NormalizeSafeEv.exit302:      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i300, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %.sroa.20439.1 = phi float [ %i.gm, %_ZN10aiVector3tIfEdVEf.exit.i300 ], [ %i.fs, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit ] ; 6 uses
  %.sroa.0416.1 = phi <2 x float> [ %i.gl, %_ZN10aiVector3tIfEdVEf.exit.i300 ], [ %i.fr, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit ] ; 7 uses
  %.sroa.0446.0.vec.extract = extractelement <2 x float> %.sroa.0446.1, i64 0 ; 2 uses
  %i.gn = tail call float @llvm.fabs.f32(float %.sroa.0446.0.vec.extract) ; 2 uses
  %i.go = fcmp ueq float %i.gn, +inf
  br i1 %i.go, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit302
  %.sroa.0446.4.vec.extract459 = extractelement <2 x float> %.sroa.0446.1, i64 1
  %i.gp = tail call float @llvm.fabs.f32(float %.sroa.0446.4.vec.extract459) ; 2 uses
  %i.gq = fcmp ueq float %i.gp, +inf
  br i1 %i.gq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gr = tail call float @llvm.fabs.f32(float %.sroa.20469.1) ; 2 uses
  %i.gs = fcmp ueq float %i.gr, +inf
  br i1 %i.gs, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %or.cond = fcmp olt float %i.gn, 5.000000e-01
  %i.gt = fcmp olt float %i.gp, 5.000000e-01
  %or.cond8 = and i1 %or.cond, %i.gt
  %i.gu = fcmp olt float %i.gr, 5.000000e-01
  %i.gv = and i1 %i.gu, %or.cond8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit302
  %i.gw = phi i1 [ true, %bb.q ], [ true, %bb.p ], [ true, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit302 ], [ %i.gv, %bb.r ] ; 2 uses
  %.sroa.0416.0.vec.extract = extractelement <2 x float> %.sroa.0416.1, i64 0 ; 2 uses
  %i.gx = tail call float @llvm.fabs.f32(float %.sroa.0416.0.vec.extract) ; 2 uses
  %i.gy = fcmp ueq float %i.gx, +inf
  br i1 %i.gy, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0416.4.vec.extract429 = extractelement <2 x float> %.sroa.0416.1, i64 1
  %i.gz = tail call float @llvm.fabs.f32(float %.sroa.0416.4.vec.extract429) ; 2 uses
  %i.ha = fcmp ueq float %i.gz, +inf
  br i1 %i.ha, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hb = tail call float @llvm.fabs.f32(float %.sroa.20439.1) ; 2 uses
  %i.hc = fcmp ueq float %i.hb, +inf
  br i1 %i.hc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond14 = fcmp olt float %i.gx, 5.000000e-01
  %i.hd = fcmp olt float %i.gz, 5.000000e-01
  %or.cond20 = and i1 %or.cond14, %i.hd
  %i.he = fcmp olt float %i.hb, 5.000000e-01
  %i.hf = and i1 %i.he, %or.cond20
  %i.hg = zext i1 %i.hf to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.hh = phi i32 [ 1, %bb.u ], [ 1, %bb.t ], [ 1, %bb.s ], [ %i.hg, %bb.v ]
  %i.hi = zext i1 %i.gw to i32
  %.not266 = icmp eq i32 %i.hh, %i.hi
  br i1 %.not266, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.gw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.0416.4.vec.extract434 = extractelement <2 x float> %.sroa.0416.1, i64 1 ; 2 uses
  %i.hj = fneg float %.sroa.20439.1
  %i.hk = fneg float %.sroa.0416.4.vec.extract434
  %i.hl = fmul float %i.eu, %i.hj
  %i.hm = fmul float %i.fa, %i.hk
  %i.hn = shufflevector <2 x float> %.sroa.0416.1, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ho = insertelement <2 x float> %i.hn, float %.sroa.20439.1, i64 0
  %i.hp = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.hl, i64 1
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ew, <2 x float> %i.ho, <2 x float> %i.hq) ; 5 uses
  %i.hs = fneg float %.sroa.0416.0.vec.extract
  %i.ht = fmul float %i.ex, %i.hs
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.eu, float %.sroa.0416.4.vec.extract434, float %i.ht) ; 4 uses
  %foldExtExtBinop743 = fmul <2 x float> %i.hr, %i.hr
  %i.hv = extractelement <2 x float> %foldExtExtBinop743, i64 1
  %i.hw = extractelement <2 x float> %i.hr, i64 0 ; 2 uses
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hv)
  %i.hy = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.hx) ; 2 uses
  %i.hz = fcmp ogt float %i.hy, 0.000000e+00
  br i1 %i.hz, label %_ZN10aiVector3tIfEdVEf.exit.i307, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309

_ZN10aiVector3tIfEdVEf.exit.i307:                 ; preds = %bb.y
  %sqrt.i.i308 = tail call noundef float @llvm.sqrt.f32(float %i.hy)
  %i.ia = fdiv float 1.000000e+00, %sqrt.i.i308   ; 2 uses
  %i.ib = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hr, %i.ic
  %i.ie = fmul float %i.hu, %i.ia
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309

bb.z:                                             ; preds = %bb.x
  %.sroa.0446.4.vec.extract468 = extractelement <2 x float> %.sroa.0446.1, i64 1
  %i.if = fneg <2 x float> %i.ew
  %i.ig = shufflevector <2 x float> %.sroa.0446.1, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ih = insertelement <2 x float> %i.ig, float %.sroa.20469.1, i64 0
  %i.ii = fmul <2 x float> %i.ih, %i.if
  %i.ij = insertelement <2 x float> %i.ig, float %.sroa.20469.1, i64 1
  %i.ik = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.il = insertelement <2 x float> %i.ik, float %i.eu, i64 1
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.il, <2 x float> %i.ii) ; 5 uses
  %i.in = fneg float %i.eu
  %i.io = fmul float %.sroa.0446.4.vec.extract468, %i.in
  %i.ip = tail call float @llvm.fmuladd.f32(float %.sroa.0446.0.vec.extract, float %i.ex, float %i.io) ; 4 uses
  %foldExtExtBinop745 = fmul <2 x float> %i.im, %i.im
  %i.iq = extractelement <2 x float> %foldExtExtBinop745, i64 1
  %i.ir = extractelement <2 x float> %i.im, i64 0 ; 2 uses
  %i.is = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.ir, float %i.iq)
  %i.it = tail call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.is) ; 2 uses
  %i.iu = fcmp ogt float %i.it, 0.000000e+00
  br i1 %i.iu, label %_ZN10aiVector3tIfEdVEf.exit.i314, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit309

_ZN10aiVector3tIfEdVEf.exit.i314:                 ; preds = %bb.z
  %sqrt.i.i315 = tail call noundef float @llvm.sqrt.f32(float %i.it)
  %i.iv = fdiv float 1.000000e+00, %sqrt.i.i315   ; 2 uses
  %i.iw = insertelement <2 x float> poison, float %i.iv, i64 0
end_hunk_0
