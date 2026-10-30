Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5o3dgc19TriangleListDecoderItE14DecompressTFANEl:bb.a

bb.cq:                                            ; preds = %bb.cs, %.lr.ph.i151
  %.01117.i152 = phi i64 [ %i.afs, %.lr.ph.i151 ], [ %i.aga, %bb.cs ] ; 3 uses
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.afv, i64 %.01117.i152
  %i.afx = load i64, ptr %i.afw, align 8
  %i.afy = icmp eq i64 %i.afx, -1
  br i1 %i.afy, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.afv, i64 %.01117.i152
  store i64 %i.afn, ptr %i.afz, align 8
  %.pre278 = load i64, ptr %i.z, align 8
  br label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit154

bb.cs:                                            ; preds = %bb.cq
  %i.aga = add nsw i64 %.01117.i152, 1            ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %i.aga, %i.afu
  br i1 %exitcond.not.i153, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit154, label %bb.cq, !llvm.loop !852

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit154: ; preds = %bb.cs, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i148, %bb.cr
  %i.agb = phi i64 [ %.pre278, %bb.cr ], [ %i.afn, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i148 ], [ %i.afn, %bb.cs ]
  %i.agc = add nsw i64 %i.agb, 1                  ; 2 uses
  store i64 %i.agc, ptr %i.z, align 8
  %i.agd = add nsw i64 %.0193, 1                  ; 2 uses
  %exitcond213.not = icmp eq i64 %i.agd, %i.adn
  br i1 %exitcond213.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !853

.loopexit162:                                     ; preds = %._crit_edge196, %bb.a
  ret i32 0
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #8

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #8

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #8

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #8

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #8

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef nonnull align 8 dereferenceable(80000) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4616 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr %i.d, align 8
  %i.j = icmp ugt i64 %i.c, 4611686018427387903
  %i.k = shl i64 %i.b, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #32
  store ptr %i.m, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp sgt i64 %i.b, 0
  br i1 %i.p, label %.lr.ph120, label %._crit_edge

.lr.ph120:                                        ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, %bb.e
  ret i32 0

bb.f:                                             ; preds = %.lr.ph120, %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit
  %.050119 = phi i64 [ 0, %.lr.ph120 ], [ %i.ds, %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit ] ; 6 uses
  %.094118 = phi i8 [ 0, %.lr.ph120 ], [ %.2, %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit ]
  %.095117 = phi i64 [ 0, %.lr.ph120 ], [ %.196, %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit ]
  %.097116 = phi i64 [ 0, %.lr.ph120 ], [ %.299, %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit ]
  %.not100 = icmp eq i64 %.050119, 0
  %.pre = load ptr, ptr %i.q, align 8             ; 2 uses
  br i1 %.not100, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr [8 x i8], ptr %.pre, i64 %.050119
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 32
  %i.z = ashr exact i64 %i.y, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.f, %bb.g
  %i.aa = phi i64 [ %i.z, %bb.g ], [ 0, %bb.f ]   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.050119
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = shl i64 %i.ac, 32
  %i.ae = ashr exact i64 %i.ad, 32                ; 2 uses
  %i.af = icmp slt i64 %i.aa, %i.ae
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.ag = load ptr, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.0109 = phi i64 [ %i.aa, %.lr.ph ], [ %i.cd, %bb.i ] ; 2 uses
  %.sroa.077.0108 = phi i64 [ 0, %.lr.ph ], [ %i.by, %bb.i ] ; 2 uses
  %.sroa.8.0107 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.i ] ; 2 uses
  %.sroa.13.0106 = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.i ] ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %.0109
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %.not = icmp eq i64 %i.ai, -1
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx = mul nsw i64 %i.ai, 6
  %i.aj = getelementptr inbounds i8, ptr %i.o, i64 %.idx ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.aj, i64 2
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i64
  %i.ap = getelementptr i8, ptr %i.aj, i64 4
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i64
  %i.as = load ptr, ptr %i.s, align 8             ; 3 uses
  %.idx101 = mul nuw nsw i64 %i.al, 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx101 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.idx102 = mul nuw nsw i64 %i.ao, 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx102 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.idx103 = mul nuw nsw i64 %i.ar, 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx103 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bd = load i64, ptr %i.au, align 8            ; 2 uses
  %i.be = load i64, ptr %i.av, align 8            ; 2 uses
  %i.bf = load i64, ptr %i.aw, align 8
  %i.bg = load i64, ptr %i.ax, align 8
  %i.bh = load i64, ptr %i.ay, align 8
  %i.bi = load i64, ptr %i.az, align 8
  %i.bj = load i64, ptr %i.ba, align 8
  %i.bk = load i64, ptr %i.bb, align 8
  %i.bl = sub nsw i64 %i.bf, %i.bc                ; 2 uses
  %i.bm = sub nsw i64 %i.bg, %i.bd                ; 2 uses
  %i.bn = sub nsw i64 %i.bh, %i.be                ; 2 uses
  %i.bo = sub nsw i64 %i.bi, %i.bc                ; 2 uses
  %i.bp = sub nsw i64 %i.bj, %i.bd                ; 2 uses
  %i.bq = sub nsw i64 %i.bk, %i.be                ; 2 uses
  %i.br = mul nsw i64 %i.bq, %i.bm
  %i.bs = mul nsw i64 %i.bp, %i.bn
  %i.bt = mul nsw i64 %i.bo, %i.bn
  %i.bu = mul nsw i64 %i.bq, %i.bl
  %i.bv = mul nsw i64 %i.bp, %i.bl
  %i.bw = mul nsw i64 %i.bo, %i.bm
  %i.bx = sub i64 %.sroa.077.0108, %i.bs
  %i.by = add i64 %i.bx, %i.br                    ; 2 uses
  %i.bz = add i64 %i.bt, %.sroa.8.0107
  %i.ca = sub i64 %i.bz, %i.bu                    ; 2 uses
  %i.cb = sub i64 %.sroa.13.0106, %i.bw
  %i.cc = add i64 %i.cb, %i.bv                    ; 2 uses
  %i.cd = add nsw i64 %.0109, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.ae
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !854

.critedge:                                        ; preds = %bb.i, %bb.h, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %.sroa.13.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %.sroa.13.0106, %bb.h ], [ %i.cc, %bb.i ] ; 7 uses
  %.sroa.8.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %.sroa.8.0107, %bb.h ], [ %i.ca, %bb.i ] ; 7 uses
  %.sroa.077.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %.sroa.077.0108, %bb.h ], [ %i.by, %bb.i ] ; 7 uses
  %i.ce = sitofp i64 %.sroa.077.0.lcssa to double ; 2 uses
  %i.cf = sitofp i64 %.sroa.8.0.lcssa to double   ; 2 uses
  %i.cg = sitofp i64 %.sroa.13.0.lcssa to double  ; 2 uses
  %i.ch = fmul nnan double %i.cf, %i.cf
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.ce, double %i.ch)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cg, double %i.ci)
  %i.ck = tail call noundef double @llvm.sqrt.f64(double %i.cj)
  %i.cl = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.077.0.lcssa, i1 true) ; 4 uses
  %i.cm = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.8.0.lcssa, i1 true) ; 4 uses
  %i.cn = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.13.0.lcssa, i1 true) ; 4 uses
  %.not.i = icmp samesign ult i64 %i.cn, %i.cl
  %.not31.i = icmp samesign ult i64 %i.cn, %i.cm
  %or.cond.i = or i1 %.not31.i, %.not.i
  br i1 %or.cond.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.co = icmp sgt i64 %.sroa.13.0.lcssa, -1
  br i1 %i.co, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = sub nsw i64 0, %.sroa.077.0.lcssa
  %i.cq = sub nsw i64 0, %.sroa.8.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

bb.l:                                             ; preds = %.critedge
  %.not32.i = icmp samesign ult i64 %i.cm, %i.cl
  %.not33.i = icmp samesign ult i64 %i.cm, %i.cn
  %or.cond36.i = or i1 %.not33.i, %.not32.i
  br i1 %or.cond36.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = icmp sgt i64 %.sroa.8.0.lcssa, -1
  br i1 %i.cr, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = sub nsw i64 0, %.sroa.13.0.lcssa
  %i.ct = sub nsw i64 0, %.sroa.077.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

bb.o:                                             ; preds = %bb.l
  %.not34.i = icmp samesign ult i64 %i.cl, %i.cm
  %.not35.i = icmp samesign ult i64 %i.cl, %i.cn
  %or.cond37.i = or i1 %.not34.i, %.not35.i
  br i1 %or.cond37.i, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp sgt i64 %.sroa.077.0.lcssa, -1
  br i1 %i.cu, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = sub nsw i64 0, %.sroa.8.0.lcssa
  %i.cw = sub nsw i64 0, %.sroa.13.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit: ; preds = %bb.o, %bb.p, %bb.m, %bb.j, %bb.q, %bb.n, %bb.k
  %.299 = phi i64 [ %.097116, %bb.o ], [ %.sroa.13.0.lcssa, %bb.m ], [ %i.cv, %bb.q ], [ %.sroa.077.0.lcssa, %bb.j ], [ %i.cs, %bb.n ], [ %i.cp, %bb.k ], [ %.sroa.8.0.lcssa, %bb.p ] ; 2 uses
  %.196 = phi i64 [ %.095117, %bb.o ], [ %.sroa.077.0.lcssa, %bb.m ], [ %i.cw, %bb.q ], [ %.sroa.8.0.lcssa, %bb.j ], [ %i.ct, %bb.n ], [ %i.cq, %bb.k ], [ %.sroa.13.0.lcssa, %bb.p ] ; 2 uses
  %.2 = phi i8 [ %.094118, %bb.o ], [ 2, %bb.m ], [ 5, %bb.q ], [ 0, %bb.j ], [ 3, %bb.n ], [ 1, %bb.k ], [ 4, %bb.p ] ; 3 uses
  %i.cx = fptrunc double %i.ck to float           ; 2 uses
  %i.cy = fcmp oeq float %i.cx, 0.000000e+00
  %spec.store.select = select i1 %i.cy, float 1.000000e+00, float %i.cx
  %i.cz = sitofp i64 %.299 to float
  %i.da = sitofp i64 %.196 to float
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.da, i64 1
  %i.dd = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de           ; 2 uses
  %i.dg = load ptr, ptr %i.t, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.050119 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = add i8 %i.di, %.2                       ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 1
  %.not64.unshifted = xor i8 %i.dj, %.2
  %.not64 = icmp ult i8 %.not64.unshifted, 2      ; 2 uses
  %i.dk = extractelement <2 x float> %i.df, i64 0
  %.052 = select i1 %.not64, float %i.dk, float 0.000000e+00
  %i.dl = extractelement <2 x float> %i.df, i64 1
  %.051 = select i1 %.not64, float %i.dl, float 0.000000e+00
  %i.dm = load ptr, ptr %i.u, align 8
  %i.dn = shl nuw nsw i64 %.050119, 1             ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  store float %.052, ptr %i.do, align 4
  %i.dp = load ptr, ptr %i.u, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %.051, ptr %i.dr, align 4
  %i.ds = add nuw nsw i64 %.050119, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.ds, %i.b
  br i1 %exitcond121.not, label %._crit_edge, label %bb.f, !llvm.loop !855
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %0, float noundef %1, i8 noundef signext %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #7 comdat {
bb.a:
  switch i8 %2, label %bb.h [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  store float %0, ptr %3, align 4
  store float %1, ptr %4, align 4
  %i.a = load float, ptr %3, align 4              ; 2 uses
  %i.b = fmul float %i.a, %i.a
  %i.c = fpext float %i.b to double
  %i.d = fsub double 1.000000e+00, %i.c
  %i.e = fmul float %1, %1
  %i.f = fpext float %i.e to double
  %i.g = fsub double %i.d, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %..i = select i1 %i.h, double %i.g, double 0.000000e+00
  %i.i = tail call double @sqrt(double noundef %..i) #28
  %i.j = fptrunc double %i.i to float
  store float %i.j, ptr %5, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = fneg float %0
  store float %i.k, ptr %3, align 4
  %i.l = fneg float %1
  store float %i.l, ptr %4, align 4
  %i.m = load float, ptr %3, align 4              ; 2 uses
  %i.n = fmul float %i.m, %i.m
  %i.o = fpext float %i.n to double
  %i.p = fsub double 1.000000e+00, %i.o
  %i.q = fmul float %1, %1
  %i.r = fpext float %i.q to double
  %i.s = fsub double %i.p, %i.r                   ; 2 uses
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  %..i54 = select i1 %i.t, double %i.s, double 0.000000e+00
  %i.u = tail call double @sqrt(double noundef %..i54) #28
  %i.v = fptrunc double %i.u to float
  %i.w = fneg float %i.v
  store float %i.w, ptr %5, align 4
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  store float %0, ptr %5, align 4
  store float %1, ptr %3, align 4
  %i.x = fmul float %1, %1
  %i.y = fpext float %i.x to double
  %i.z = fsub double 1.000000e+00, %i.y
  %i.aa = load float, ptr %5, align 4             ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = fpext float %i.ab to double
  %i.ad = fsub double %i.z, %i.ac                 ; 2 uses
  %i.ae = fcmp ogt double %i.ad, 0.000000e+00
  %..i55 = select i1 %i.ae, double %i.ad, double 0.000000e+00
  %i.af = tail call double @sqrt(double noundef %..i55) #28
  %i.ag = fptrunc double %i.af to float
  store float %i.ag, ptr %4, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.ah = fneg float %0
  store float %i.ah, ptr %5, align 4
  %i.ai = fneg float %1
  store float %i.ai, ptr %3, align 4
  %i.aj = fmul float %1, %1
  %i.ak = fpext float %i.aj to double
  %i.al = fsub double 1.000000e+00, %i.ak
  %i.am = load float, ptr %5, align 4             ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = fpext float %i.an to double
  %i.ap = fsub double %i.al, %i.ao                ; 2 uses
  %i.aq = fcmp ogt double %i.ap, 0.000000e+00
  %..i56 = select i1 %i.aq, double %i.ap, double 0.000000e+00
  %i.ar = tail call double @sqrt(double noundef %..i56) #28
  %i.as = fptrunc double %i.ar to float
  %i.at = fneg float %i.as
  store float %i.at, ptr %4, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store float %0, ptr %4, align 4
  store float %1, ptr %5, align 4
  %i.au = load float, ptr %4, align 4             ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = fpext float %i.av to double
  %i.ax = fsub double 1.000000e+00, %i.aw
  %i.ay = fmul float %1, %1
  %i.az = fpext float %i.ay to double
  %i.ba = fsub double %i.ax, %i.az                ; 2 uses
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  %..i57 = select i1 %i.bb, double %i.ba, double 0.000000e+00
  %i.bc = tail call double @sqrt(double noundef %..i57) #28
  %i.bd = fptrunc double %i.bc to float
  store float %i.bd, ptr %3, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.be = fneg float %0
  store float %i.be, ptr %4, align 4
  %i.bf = fneg float %1
  store float %i.bf, ptr %5, align 4
  %i.bg = load float, ptr %4, align 4             ; 2 uses
  %i.bh = fmul float %i.bg, %i.bg
  %i.bi = fpext float %i.bh to double
  %i.bj = fsub double 1.000000e+00, %i.bi
  %i.bk = fmul float %1, %1
  %i.bl = fpext float %i.bk to double
  %i.bm = fsub double %i.bj, %i.bl                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader150, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec114 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec114, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body117 ] ; 2 uses
  %i.bm = shl i64 %index118, 2
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep119, i64 16
  store <4 x i32> %broadcast.splat116, ptr %next.gep119, align 4
  store <4 x i32> %broadcast.splat116, ptr %i.bn, align 4
  %index.next120 = add nuw i64 %index118, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.bo, label %middle.block121, label %vector.body117, !llvm.loop !868

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %i.bj, %n.vec114
  br i1 %cmp.n122, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader150

.lr.ph.i.i.i71.preheader150:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block121
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block121 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader150, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader150 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !869

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #31
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4               ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check138 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check138, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %bb.t
  %n.vec140 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec140, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert141 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat142 = shufflevector <4 x i32> %broadcast.splatinsert141, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph139
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next146, %vector.body143 ] ; 2 uses
  %i.cn = shl i64 %index144, 2
  %next.gep145 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep145, i64 16
  store <4 x i32> %broadcast.splat142, ptr %next.gep145, align 4
  store <4 x i32> %broadcast.splat142, ptr %i.co, align 4
  %index.next146 = add nuw i64 %index144, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next146, %n.vec140
  br i1 %i.cp, label %middle.block147, label %vector.body143, !llvm.loop !870

middle.block147:                                  ; preds = %vector.body143
  %cmp.n148 = icmp eq i64 %i.ck, %n.vec140
  br i1 %cmp.n148, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block147
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block147 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !871

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block147
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !30

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4
  store i32 %i.ct, ptr %i.ce, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !30

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4
  store i32 %i.cy, ptr %i.cu, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8
  store ptr %i.cz, ptr %i.c, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block121, %middle.block134, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }

!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = distinct !{!5, !21}
!6 = distinct !{!6, !21}
!7 = distinct !{!7, !21}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21}
!10 = distinct !{!10, !21}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !21}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !21}
!17 = distinct !{!17, !21}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{ptr @_ZN4glTF6ObjectD2Ev}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{i64 8}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!"branch_weights", i32 255873, i32 127}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, i1 true, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!34 = distinct !{!34, !33, !"_ZN10glTFCommon18getCurrentAssetDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!37 = distinct !{null, null, null, null}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = !{!34}
!42 = !{!36}
!43 = !{!36, !34}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, i1 true, !"_ZN4glTF8Accessor10GetIndexerEv"}
!50 = distinct !{!50, !49, !"_ZN4glTF8Accessor10GetIndexerEv: argument 0"}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !21}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !21}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !21}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !21}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !21}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !21, !27, !28}
!82 = distinct !{!82, !21, !27}
!83 = !{!50}
!84 = !{!79}
!85 = !{!80}
!86 = distinct !{!86, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!87 = distinct !{!87, !86, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!89 = distinct !{!89, !88, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!90 = !{!87}
!91 = !{!89}
!92 = !{!89, !87}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = distinct !{!95, !21}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, !21}
!98 = distinct !{!98, !21}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, !21}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !21}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !21}
!106 = !{ptr @_ZN6Assimp12glTFImporterD2Ev}
!107 = distinct !{null}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = distinct !{!111, !21}
!112 = distinct !{!112, !21}
!113 = distinct !{!113, !21}
!114 = distinct !{!114, !21}
!115 = distinct !{!115, !21}
!116 = distinct !{!116, !21}
!117 = distinct !{!117, !21}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, i1 true, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!123 = distinct !{!123, !122, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!125 = distinct !{!125, !124, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!126 = !{!123}
!127 = !{!125}
!128 = distinct !{!128, i1 true, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_"}
!129 = distinct !{!129, !128, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EEPKS2_: argument 0"}
!130 = !{!129}
!131 = distinct !{!131, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!132 = distinct !{!132, !131, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!133 = distinct !{!133, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!134 = distinct !{!134, !133, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!136 = distinct !{!136, !135, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!137 = !{!132}
!138 = !{!134}
!139 = !{!136}
!140 = !{!136, !134, !132}
!141 = distinct !{!141, i1 true, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!142 = distinct !{!142, !141, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!143 = distinct !{!143, i1 true, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!144 = distinct !{!144, !143, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!146 = distinct !{!146, !145, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_1
