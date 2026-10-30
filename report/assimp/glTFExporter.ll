Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 67
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
  br i1 %exitcond.not.i153, label %_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit154, label %bb.cq, !llvm.loop !18

_ZN5o3dgc13AdjacencyInfo11AddNeighborEll.exit154: ; preds = %bb.cs, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i148, %bb.cr
  %i.agb = phi i64 [ %.pre278, %bb.cr ], [ %i.afn, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit.i148 ], [ %i.afn, %bb.cs ]
  %i.agc = add nsw i64 %i.agb, 1                  ; 2 uses
  store i64 %i.agc, ptr %i.z, align 8
  %i.agd = add nsw i64 %.0193, 1                  ; 2 uses
  %exitcond213.not = icmp eq i64 %i.agd, %i.adn
  br i1 %exitcond213.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !434

.loopexit162:                                     ; preds = %._crit_edge196, %bb.a
  ret i32 0
}

declare void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #4

declare void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20)) unnamed_addr #4

declare void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52), i32 noundef) unnamed_addr #4

declare void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #4

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef nonnull align 8 dereferenceable(80000) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr %i.d, align 8
  %i.j = icmp ugt i64 %i.c, 4611686018427387903
  %i.k = shl i64 %i.b, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #33
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
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !435

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
  %i.ck = tail call noundef double @sqrt(double noundef %i.cj) #30
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
  br i1 %exitcond121.not, label %._crit_edge, label %bb.f, !llvm.loop !436
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %0, float noundef %1, i8 noundef signext %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #5 comdat {
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
  %i.i = tail call double @sqrt(double noundef %..i) #30
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
  %i.u = tail call double @sqrt(double noundef %..i54) #30
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
  %i.af = tail call double @sqrt(double noundef %..i55) #30
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
  %i.ar = tail call double @sqrt(double noundef %..i56) #30
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
  %i.bc = tail call double @sqrt(double noundef %..i57) #30
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
begin_hunk_1_@_ZN5o3dgc13SC3DMCEncoderItE16EncodeFloatArrayEPKfmmmS3_S3_mRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE:bb.a

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.noexc468
  %.pre6.i.i467 = phi i64 [ %i.alg, %bb.fb ], [ %.pre6.pre.i.i466, %bb.fc ], [ 0, %.noexc468 ]
  store ptr %i.alf, ptr %10, align 8
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge.i.i461
  %i.alj = phi i64 [ %i.alb, %._crit_edge.i.i461 ], [ %.pre6.i.i467, %bb.fd ] ; 2 uses
  %i.alk = phi ptr [ %.pre.i.i462, %._crit_edge.i.i461 ], [ %i.alf, %bb.fd ]
  %i.all = add i64 %i.alj, 1
  store i64 %i.all, ptr %i.l, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.alj
  store i8 %i.ala, ptr %i.alm, align 1
  %i.aln = add nuw i64 %.0681, 1                  ; 2 uses
  %exitcond779.not = icmp eq i64 %i.aln, %i.akv
  br i1 %exitcond779.not, label %._crit_edge684, label %bb.ez, !llvm.loop !981

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1247: ; preds = %.lr.ph21.i, %bb.cb, %bb.bw, %bb.cv, %bb.cw, %._crit_edge.i.thread.i, %._crit_edge.i.i, %bb.cg, %bb.cq, %.lr.ph.i.i438, %.lr.ph.i.i416, %.lr.ph21.i.i421, %.lr.ph21.i.i, %bb.cl, %bb.fa, %bb.ep, %.lr.ph.i.i, %bb.dg, %bb.ea, %.lr.ph21.i.i443, %bb.dq, %bb.dr, %._crit_edge.i.thread.i424, %._crit_edge.i.i420, %bb.db, %bb.dl, %bb.dv, %bb.ef, %bb.ek, %bb.el, %._crit_edge.i.thread.i446, %._crit_edge.i.i442, %.lr.ph.i, %bb.an, %bb.w, %bb.v, %._crit_edge.i, %bb.u, %bb.g, %bb.ex, %_ZN5o3dgc12BinaryStream11WriteUInt32EmNS_15O3DGCStreamTypeE.exit, %bb.t, %._crit_edge780, %bb.r, %bb.em
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

._crit_edge684:                                   ; preds = %bb.fe, %bb.ey
  %i.alo = load i64, ptr %i.l, align 8
  %i.alp = sub i64 %i.alo, %i.aks                 ; 5 uses
  %i.alq = trunc i64 %i.alp to i8
  %i.alr = and i8 %i.alq, 127
  %i.als = load ptr, ptr %10, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.aks
  store i8 %i.alr, ptr %i.alt, align 1
  %i.alu = lshr i64 %i.alp, 7
  %i.alv = trunc i64 %i.alu to i8
  %i.alw = and i8 %i.alv, 127
  %i.alx = load ptr, ptr %10, align 8
  %i.aly = getelementptr i8, ptr %i.alx, i64 %i.aks
  %i.alz = getelementptr i8, ptr %i.aly, i64 1
  store i8 %i.alw, ptr %i.alz, align 1
  %i.ama = lshr i64 %i.alp, 14
  %i.amb = trunc i64 %i.ama to i8
  %i.amc = and i8 %i.amb, 127
  %i.amd = load ptr, ptr %10, align 8
  %i.ame = getelementptr i8, ptr %i.amd, i64 %i.aks
  %i.amf = getelementptr i8, ptr %i.ame, i64 2
  store i8 %i.amc, ptr %i.amf, align 1
  %i.amg = lshr i64 %i.alp, 21
  %i.amh = trunc i64 %i.amg to i8
  %i.ami = and i8 %i.amh, 127
  %i.amj = load ptr, ptr %10, align 8
  %i.amk = getelementptr i8, ptr %i.amj, i64 %i.aks
  %i.aml = getelementptr i8, ptr %i.amk, i64 3
  store i8 %i.ami, ptr %i.aml, align 1
  %i.amm = lshr i64 %i.alp, 28
  %i.amn = trunc i64 %i.amm to i8
  %i.amo = and i8 %i.amn, 127
  %i.amp = load ptr, ptr %10, align 8
  %i.amq = getelementptr i8, ptr %i.amp, i64 %i.aks
  %i.amr = getelementptr i8, ptr %i.amq, i64 4
  store i8 %i.amo, ptr %i.amr, align 1
  br label %bb.ff

bb.ff:                                            ; preds = %._crit_edge684, %bb.ew
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  ret i32 0

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1247, %.loopexit.split-lp605
  %.pn332.pn = phi { ptr, i32 } [ %.pn332, %.loopexit.split-lp605 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp1247 ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #30
  br label %bb.fg

bb.fg:                                            ; preds = %.loopexit.split-lp, %bb.n
  %.pn332.pn.pn = phi { ptr, i32 } [ %.pn332.pn, %.loopexit.split-lp ], [ %i.am, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %14) #30
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.m
  %.pn332.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn, %bb.fg ], [ %i.al, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.fi

bb.fi:                                            ; preds = %bb.l, %bb.fh
  %.pn332.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.pn332.pn.pn.pn, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.k
  %.pn332.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn, %bb.fi ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %.pn332.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef nonnull align 8 dereferenceable(80000) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3256 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.c, ptr %i.d, align 8
  %i.j = icmp ugt i64 %i.c, 4611686018427387903
  %i.k = shl i64 %i.b, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #33
  store ptr %i.m, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 5 uses
  store i64 0, ptr %i.u, align 8
  %i.v = icmp sgt i64 %i.b, 0
  br i1 %i.v, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3256 ; 2 uses
  br label %bb.f

._crit_edge147:                                   ; preds = %bb.y, %bb.e
  ret i32 0

bb.f:                                             ; preds = %.lr.ph146, %bb.y
  %.056144 = phi i64 [ 0, %.lr.ph146 ], [ %i.gr, %bb.y ] ; 2 uses
  %.0114143 = phi i8 [ 0, %.lr.ph146 ], [ %.1, %bb.y ]
  %.0115142 = phi i8 [ 0, %.lr.ph146 ], [ %.2, %bb.y ]
  %.0117141 = phi float [ 0.000000e+00, %.lr.ph146 ], [ %.1118, %bb.y ]
  %.0119140 = phi float [ 0.000000e+00, %.lr.ph146 ], [ %.1120, %bb.y ]
  %.0121139 = phi i64 [ 0, %.lr.ph146 ], [ %.1122, %bb.y ]
  %.0123138 = phi i64 [ 0, %.lr.ph146 ], [ %.2125, %bb.y ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.056144
  %i.ac = load i64, ptr %i.ab, align 8            ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  %.pre = load ptr, ptr %i.w, align 8             ; 2 uses
  br i1 %i.ad, label %bb.g, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr [8 x i8], ptr %.pre, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %i.ah, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.f, %bb.g
  %i.aj = phi i64 [ %i.ai, %bb.g ], [ 0, %bb.f ]  ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ac
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = shl i64 %i.al, 32
  %i.an = ashr exact i64 %i.am, 32                ; 2 uses
  %i.ao = icmp slt i64 %i.aj, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.ap = load ptr, ptr %i.x, align 8
  %i.aq = load ptr, ptr %i.y, align 8             ; 3 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %.sroa.13101.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %i.de, %bb.p ] ; 7 uses
  %.sroa.898.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %i.dc, %bb.p ] ; 7 uses
  %.sroa.095.0.lcssa = phi i64 [ 0, %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit ], [ %i.da, %bb.p ] ; 7 uses
  %i.ar = sitofp i64 %.sroa.095.0.lcssa to double ; 2 uses
  %i.as = sitofp i64 %.sroa.898.0.lcssa to double ; 2 uses
  %i.at = sitofp i64 %.sroa.13101.0.lcssa to double ; 2 uses
  %i.au = fmul nnan double %i.as, %i.as
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double %i.av)
  %i.ax = tail call noundef double @sqrt(double noundef %i.aw) #30
  %i.ay = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.095.0.lcssa, i1 true) ; 4 uses
  %i.az = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.898.0.lcssa, i1 true) ; 4 uses
  %i.ba = tail call noundef i64 @llvm.abs.i64(i64 %.sroa.13101.0.lcssa, i1 true) ; 4 uses
  %.not.i = icmp samesign ult i64 %i.ba, %i.ay
  %.not31.i = icmp samesign ult i64 %i.ba, %i.az
  %or.cond.i = or i1 %.not31.i, %.not.i
  br i1 %or.cond.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bb = icmp sgt i64 %.sroa.13101.0.lcssa, -1
  br i1 %i.bb, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = sub nsw i64 0, %.sroa.095.0.lcssa
  %i.bd = sub nsw i64 0, %.sroa.898.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

bb.j:                                             ; preds = %._crit_edge
  %.not32.i = icmp samesign ult i64 %i.az, %i.ay
  %.not33.i = icmp samesign ult i64 %i.az, %i.ba
  %or.cond36.i = or i1 %.not33.i, %.not32.i
  br i1 %or.cond36.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = icmp sgt i64 %.sroa.898.0.lcssa, -1
  br i1 %i.be, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = sub nsw i64 0, %.sroa.13101.0.lcssa
  %i.bg = sub nsw i64 0, %.sroa.095.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

bb.m:                                             ; preds = %bb.j
  %.not34.i = icmp samesign ult i64 %i.ay, %i.az
  %.not35.i = icmp samesign ult i64 %i.ay, %i.ba
  %or.cond37.i = or i1 %.not34.i, %.not35.i
  br i1 %or.cond37.i, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = icmp sgt i64 %.sroa.095.0.lcssa, -1
  br i1 %i.bh, label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = sub nsw i64 0, %.sroa.898.0.lcssa
  %i.bj = sub nsw i64 0, %.sroa.13101.0.lcssa
  br label %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.0135 = phi i64 [ %i.aj, %.lr.ph ], [ %i.df, %bb.p ] ; 2 uses
  %.sroa.095.0134 = phi i64 [ 0, %.lr.ph ], [ %i.da, %bb.p ]
  %.sroa.898.0133 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %bb.p ]
  %.sroa.13101.0132 = phi i64 [ 0, %.lr.ph ], [ %i.de, %bb.p ]
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.0135
  %i.bl = load i64, ptr %i.bk, align 8
  %.idx126 = mul nsw i64 %i.bl, 6
  %i.bm = getelementptr inbounds i8, ptr %i.q, i64 %.idx126 ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr i8, ptr %i.bm, i64 2
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.bm, i64 4
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i64
  %.idx127 = mul nuw nsw i64 %i.bo, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx127 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.idx128 = mul nuw nsw i64 %i.br, 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx128 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.idx129 = mul nuw nsw i64 %i.bu, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx129 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.cf = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.cg = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.ch = load i64, ptr %i.by, align 8
  %i.ci = load i64, ptr %i.bz, align 8
  %i.cj = load i64, ptr %i.ca, align 8
  %i.ck = load i64, ptr %i.cb, align 8
  %i.cl = load i64, ptr %i.cc, align 8
  %i.cm = load i64, ptr %i.cd, align 8
  %i.cn = sub nsw i64 %i.ch, %i.ce                ; 2 uses
  %i.co = sub nsw i64 %i.ci, %i.cf                ; 2 uses
  %i.cp = sub nsw i64 %i.cj, %i.cg                ; 2 uses
  %i.cq = sub nsw i64 %i.ck, %i.ce                ; 2 uses
  %i.cr = sub nsw i64 %i.cl, %i.cf                ; 2 uses
  %i.cs = sub nsw i64 %i.cm, %i.cg                ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %i.co
  %i.cu = mul nsw i64 %i.cr, %i.cp
  %i.cv = mul nsw i64 %i.cq, %i.cp
  %i.cw = mul nsw i64 %i.cs, %i.cn
  %i.cx = mul nsw i64 %i.cr, %i.cn
  %i.cy = mul nsw i64 %i.cq, %i.co
  %i.cz = sub i64 %.sroa.095.0134, %i.cu
  %i.da = add i64 %i.cz, %i.ct                    ; 2 uses
  %i.db = add i64 %i.cv, %.sroa.898.0133
  %i.dc = sub i64 %i.db, %i.cw                    ; 2 uses
  %i.dd = sub i64 %.sroa.13101.0132, %i.cy
  %i.de = add i64 %i.dd, %i.cx                    ; 2 uses
  %i.df = add nsw i64 %.0135, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.an
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !982

_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit: ; preds = %bb.m, %bb.n, %bb.k, %bb.h, %bb.o, %bb.l, %bb.i
  %.2125 = phi i64 [ %.0123138, %bb.m ], [ %.sroa.13101.0.lcssa, %bb.k ], [ %i.bi, %bb.o ], [ %.sroa.095.0.lcssa, %bb.h ], [ %i.bf, %bb.l ], [ %i.bc, %bb.i ], [ %.sroa.898.0.lcssa, %bb.n ] ; 2 uses
  %.1122 = phi i64 [ %.0121139, %bb.m ], [ %.sroa.095.0.lcssa, %bb.k ], [ %i.bj, %bb.o ], [ %.sroa.898.0.lcssa, %bb.h ], [ %i.bg, %bb.l ], [ %i.bd, %bb.i ], [ %.sroa.13101.0.lcssa, %bb.n ] ; 2 uses
  %.2 = phi i8 [ %.0115142, %bb.m ], [ 2, %bb.k ], [ 5, %bb.o ], [ 0, %bb.h ], [ 3, %bb.l ], [ 1, %bb.i ], [ 4, %bb.n ] ; 3 uses
  %i.dg = fptrunc double %i.ax to float           ; 2 uses
  %i.dh = fcmp oeq float %i.dg, 0.000000e+00
  %spec.store.select = select i1 %i.dh, float 1.000000e+00, float %i.dg
  %i.di = sitofp i64 %.2125 to float
  %i.dj = sitofp i64 %.1122 to float
  %i.dk = insertelement <2 x float> poison, float %spec.store.select, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dj, i64 1
  %i.do = fdiv <2 x float> %i.dn, %i.dl           ; 2 uses
  %.idx = mul nsw i64 %i.ac, 12
  %i.dp = getelementptr inbounds i8, ptr %i.s, i64 %.idx ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4          ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 4
  %i.ds = fpext float %i.dq to double             ; 2 uses
  %i.dt = load <2 x float>, ptr %i.dr, align 4    ; 4 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = fpext float %i.du to double             ; 2 uses
  %i.dw = extractelement <2 x float> %i.dt, i64 1
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = fmul double %i.dv, %i.dv
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.ds, double %i.dy)
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.dz)
  %i.eb = tail call noundef double @sqrt(double noundef %i.ea) #30
  %i.ec = fptrunc double %i.eb to float           ; 3 uses
  %i.ed = fcmp une float %i.ec, 0.000000e+00      ; 2 uses
  %i.ee = fdiv float %i.dq, %i.ec
  %i.ef = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x float> %i.dt, %i.eg
  %i.ei = insertelement <2 x i1> poison, i1 %i.ed, i64 0
  %i.ej = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ek = select <2 x i1> %i.ej, <2 x float> %i.eh, <2 x float> %i.dt ; 9 uses
  %.sroa.085.0 = select i1 %i.ed, float %i.ee, float %i.dq ; 6 uses
  %i.el = fcmp olt float %.sroa.085.0, 0.000000e+00
  %i.em = fneg float %.sroa.085.0                 ; 3 uses
  %i.en = select i1 %i.el, float %i.em, float %.sroa.085.0 ; 3 uses
  %i.eo = fcmp olt <2 x float> %i.ek, zeroinitializer
  %i.ep = fneg <2 x float> %i.ek                  ; 5 uses
  %i.eq = select <2 x i1> %i.eo, <2 x float> %i.ep, <2 x float> %i.ek ; 3 uses
  %i.er = extractelement <2 x float> %i.eq, i64 1 ; 3 uses
  %i.es = fcmp ult float %i.er, %i.en
  %i.et = extractelement <2 x float> %i.eq, i64 0 ; 3 uses
  %i.eu = fcmp ult float %i.er, %i.et
  %or.cond.i68 = or i1 %i.es, %i.eu
  br i1 %or.cond.i68, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit
  %i.ev = extractelement <2 x float> %i.ek, i64 1
  %i.ew = fcmp ult float %i.ev, 0.000000e+00      ; 3 uses
  %..i = zext i1 %i.ew to i8
  %.53.i = select i1 %i.ew, float %i.em, float %.sroa.085.0
  %i.ex = extractelement <2 x float> %i.ek, i64 0
  %i.ey = extractelement <2 x float> %i.ep, i64 0
  %.54.i = select i1 %i.ew, float %i.ey, float %i.ex
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.r:                                             ; preds = %_ZN5o3dgc12SphereToCubeIlEEvT_S1_S1_RS1_S2_Rc.exit
  %i.ez = fcmp ult float %i.et, %i.en
  %i.fa = fcmp ult float %i.et, %i.er
  %or.cond32.i = or i1 %i.ez, %i.fa
  br i1 %or.cond32.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fb = extractelement <2 x float> %i.ek, i64 0
  %i.fc = fcmp ult float %i.fb, 0.000000e+00      ; 3 uses
  %.55.i = select i1 %i.fc, i8 3, i8 2
  %i.fd = extractelement <2 x float> %i.ek, i64 1
  %i.fe = extractelement <2 x float> %i.ep, i64 1
  %.56.i = select i1 %i.fc, float %i.fe, float %i.fd
  %.57.i = select i1 %i.fc, float %i.em, float %.sroa.085.0
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.t:                                             ; preds = %bb.r
  %i.ff = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = fcmp ult <2 x float> %i.fg, %i.eq
  %i.fi = bitcast <2 x i1> %i.fh to i2
  %.not165 = icmp eq i2 %i.fi, 0
  br i1 %.not165, label %bb.u, label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

bb.u:                                             ; preds = %bb.t
  %i.fj = fcmp ult float %.sroa.085.0, 0.000000e+00 ; 3 uses
  %.58.i = select i1 %i.fj, i8 5, i8 4
  %i.fk = extractelement <2 x float> %i.ek, i64 0
  %i.fl = extractelement <2 x float> %i.ep, i64 0
  %.59.i = select i1 %i.fj, float %i.fl, float %i.fk
  %i.fm = extractelement <2 x float> %i.ek, i64 1
  %i.fn = extractelement <2 x float> %i.ep, i64 1
  %.60.i = select i1 %i.fj, float %i.fn, float %i.fm
  br label %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit

_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit: ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.1120 = phi float [ %.0119140, %bb.t ], [ %.53.i, %bb.q ], [ %.56.i, %bb.s ], [ %.59.i, %bb.u ] ; 2 uses
  %.1118 = phi float [ %.0117141, %bb.t ], [ %.54.i, %bb.q ], [ %.57.i, %bb.s ], [ %.60.i, %bb.u ] ; 2 uses
  %.1 = phi i8 [ %.0114143, %bb.t ], [ %..i, %bb.q ], [ %.55.i, %bb.s ], [ %.58.i, %bb.u ] ; 3 uses
  %i.fo = zext nneg i8 %.1 to i64
  %i.fp = zext nneg i8 %.2 to i64
  %i.fq = sub nsw i64 %i.fo, %i.fp
  %i.fr = load i64, ptr %i.u, align 8             ; 3 uses
  %i.fs = load i64, ptr %i.z, align 8
  %i.ft = icmp eq i64 %i.fr, %i.fs
  br i1 %i.ft, label %.noexc, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit
  %.pre.i = load ptr, ptr %i.t, align 8
  br label %bb.y

.noexc:                                           ; preds = %_ZN5o3dgc12SphereToCubeIfEEvT_S1_S1_RS1_S2_Rc.exit
  %i.fu = shl i64 %i.fr, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.z, align 8
  %i.fv = icmp ugt i64 %i.fu, 2305843009213693951
  %i.fw = shl i64 %spec.select.i, 3
  %i.fx = select i1 %i.fv, i64 -1, i64 %i.fw
  %i.fy = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fx) #33 ; 3 uses
  %i.fz = load i64, ptr %i.u, align 8             ; 3 uses
  %.not.i71 = icmp eq i64 %i.fz, 0
  br i1 %.not.i71, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.ga = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.gb = shl i64 %i.fz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr align 8 %i.ga, i64 %i.gb, i1 false)
  %i.gc = icmp eq ptr %i.ga, null
  br i1 %i.gc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdaPv(ptr noundef nonnull %i.ga) #31
  %.pre6.pre.i = load i64, ptr %i.u, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %.noexc
  %.pre6.i = phi i64 [ %i.fz, %bb.v ], [ %.pre6.pre.i, %bb.w ], [ 0, %.noexc ]
  store ptr %i.fy, ptr %i.t, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i
  %i.gd = phi i64 [ %i.fr, %._crit_edge.i ], [ %.pre6.i, %bb.x ] ; 2 uses
  %i.ge = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.fy, %bb.x ]
  %i.gf = add i64 %i.gd, 1
  store i64 %i.gf, ptr %i.u, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  store i64 %i.fq, ptr %i.gg, align 8
  %.not.unshifted = xor i8 %.1, %.2
  %.not = icmp samesign ult i8 %.not.unshifted, 2 ; 2 uses
  %i.gh = extractelement <2 x float> %i.do, i64 0
  %.058 = select i1 %.not, float %i.gh, float 0.000000e+00
  %i.gi = extractelement <2 x float> %i.do, i64 1
  %.057 = select i1 %.not, float %i.gi, float 0.000000e+00
  %i.gj = fsub float %.1120, %.058
  %i.gk = load ptr, ptr %i.aa, align 8
  %i.gl = shl nsw i64 %i.ac, 1                    ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gl
  store float %i.gj, ptr %i.gm, align 4
  %i.gn = fsub float %.1118, %.057
  %i.go = load ptr, ptr %i.aa, align 8
  %i.gp = getelementptr [4 x i8], ptr %i.go, i64 %i.gl
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  store float %i.gn, ptr %i.gq, align 4
  %i.gr = add nuw nsw i64 %.056144, 1             ; 2 uses
  %exitcond150.not = icmp eq i64 %i.gr, %i.b
  br i1 %exitcond150.not, label %._crit_edge147, label %bb.f, !llvm.loop !983
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCEncoderItE14EncodeIntArrayEPKlmmmRKNS_14IndexedFaceSetItEENS_25O3DGCSC3DMCPredictionModeERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(11524) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(80000) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(28) %7) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %8 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 32 uses
  %9 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 8 uses
  %10 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 16 uses
  %11 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 12 uses
  %12 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %10)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 49 uses
  %i.j = load i64, ptr %i.i, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %11, i32 noundef 258)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %12, i32 noundef 3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11520 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2072) %i.k, i8 0, i64 2072, i1 false)
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3232 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3240 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %bb.g, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.g:                                             ; preds = %bb.f
  store i64 %2, ptr %i.q, align 8
  %i.t = icmp ugt i64 %2, 2305843009213693951
  %i.u = shl nuw i64 %2, 3
end_hunk_1
begin_hunk_2_@_ZN4glTF9Animation11AnimSamplerC2ERKS1_:bb.a
  %i.z = load i64, ptr %i.c, align 8
  store i64 %i.z, ptr %i.t, align 8
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %.noexc ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i10
  %i.ab = load i8, ptr %i.u, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i10
  %i.ac = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.ai, ptr %i.ag, align 8
  %i.aj = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i64, ptr %i.ak, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.al, ptr %i.b, align 8
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i14, label %._crit_edge.i.i13

.noexc.i14:                                       ; preds = %bb.f
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc15 unwind label %bb.n   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i14
  store ptr %i.an, ptr %i.ag, align 8
  %i.ao = load i64, ptr %i.b, align 8
  store i64 %i.ao, ptr %i.ai, align 8
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc15, %bb.f
  %i.ap = phi ptr [ %i.an, %.noexc15 ], [ %i.ai, %bb.f ] ; 2 uses
  switch i64 %i.al, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i13
  %i.aq = load i8, ptr %i.aj, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.aj, i64 %i.al, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i13
  %i.ar = load i64, ptr %i.b, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ag, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.ax, ptr %i.av, align 8
  %i.ay = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ba = load i64, ptr %i.az, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ba, ptr %i.a, align 8
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %bb.i
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.o   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i18
  store ptr %i.bc, ptr %i.av, align 8
  %i.bd = load i64, ptr %i.a, align 8
  store i64 %i.bd, ptr %i.ax, align 8
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc19, %bb.i
  %i.be = phi ptr [ %i.bc, %.noexc19 ], [ %i.ax, %bb.i ] ; 2 uses
  switch i64 %i.ba, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i17
  %i.bf = load i8, ptr %i.ay, align 1
  store i8 %i.bf, ptr %i.be, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i17
  %i.bg = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.av, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.m:                                             ; preds = %.noexc.i11
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.n:                                             ; preds = %.noexc.i14
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %.noexc.i18
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ai
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bp = load i64, ptr %i.ai, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bm, %bb.o ] ; 2 uses
  %i.br = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.t
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load i64, ptr %i.t, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.bv = load ptr, ptr %0, align 8               ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.e
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bx = load i64, ptr %i.e, align 8
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(1) }

!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{!5, !29}
!6 = distinct !{null}
!7 = distinct !{null, null}
!8 = distinct !{!8, !29}
!9 = distinct !{null}
!10 = distinct !{!10, !29}
!11 = distinct !{!11, !29}
!12 = distinct !{!12, !29}
!13 = distinct !{!13, !29}
!14 = distinct !{!14, !29}
!15 = distinct !{!15, !29}
!16 = distinct !{!16, !29}
!17 = distinct !{!17, !29}
!18 = distinct !{!18, !29}
!19 = distinct !{null, null}
!20 = distinct !{!20, !29}
!21 = distinct !{!21, !29}
!22 = distinct !{!22, !29}
!23 = distinct !{!23, !29}
!24 = distinct !{!24, !29}
!25 = distinct !{!25, !29}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{ptr @_ZN4glTF6ObjectD2Ev}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{i64 8}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = distinct !{!39, !29}
!40 = distinct !{ptr @_ZNSt12__shared_ptrIN4glTF5AssetELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = distinct !{ptr @_ZNSt12__shared_ptrIK7aiSceneLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!42 = distinct !{null, ptr @_ZNSt12__shared_ptrIK7aiSceneLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!43 = distinct !{!43, i1 true, !"_ZSt11make_sharedIN4glTF5AssetEJRPN6Assimp8IOSystemEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_"}
!44 = distinct !{!44, !43, !"_ZSt11make_sharedIN4glTF5AssetEJRPN6Assimp8IOSystemEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES8_E4typeEEDpOT0_: argument 0"}
!45 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN4glTF5AssetELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!44}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !49, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4MeshEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!54 = distinct !{!54, !53, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!55 = distinct !{!55, !53, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !29}
!57 = !{!51, !50}
!58 = !{!55, !54}
!59 = distinct !{!59, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!60 = distinct !{!60, !59, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_"}
!63 = distinct !{!63, !62, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!64 = distinct !{!64, !62, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!67 = distinct !{!67, !65, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !69, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF8AccessorEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!72 = distinct !{!72, !29}
!73 = distinct !{!73, !29}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
!78 = distinct !{!78, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!79 = distinct !{!79, !78, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!80 = distinct !{!80, !78, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!81 = !{!60}
!82 = !{!64, !63}
!83 = !{!67, !66}
!84 = !{!71, !70}
!85 = !{!80, !79}
!86 = distinct !{!86, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!88 = distinct !{!88, !86, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!89 = !{!88, !87}
!90 = distinct !{!90, !29}
!91 = distinct !{!91, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!92 = distinct !{!92, !91, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!93 = distinct !{!93, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!94 = distinct !{!94, !93, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!95 = distinct !{!95, i1 true, !"_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_"}
!96 = distinct !{!96, !95, !"_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!98 = distinct !{!98, !97, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!100 = distinct !{!100, !99, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!102 = distinct !{!102, !101, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!105 = distinct !{!105, !104, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!107 = distinct !{!107, !106, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!109 = distinct !{!109, !108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!111 = distinct !{!111, !110, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!113 = distinct !{!113, !112, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!115 = distinct !{!115, !114, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!116 = distinct !{!116, i1 true, !"_ZSt19__relocate_object_aIN4glTF9Animation11AnimSamplerES2_SaIS2_EEvPT_PT0_RT1_"}
!117 = distinct !{!117, !116, !"_ZSt19__relocate_object_aIN4glTF9Animation11AnimSamplerES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !116, !"_ZSt19__relocate_object_aIN4glTF9Animation11AnimSamplerES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = !{!92}
!122 = !{!94, !92}
!123 = !{!96}
!124 = !{!98}
!125 = !{!100}
!126 = !{!100, !98, !96}
!127 = !{!102}
!128 = !{!105}
!129 = !{!107, !105}
!130 = !{!109}
!131 = !{!111}
!132 = !{!113, !111}
!133 = !{!115}
!134 = !{!117}
!135 = !{!118}
!136 = !{!117, !118}
!137 = distinct !{!137, !29}
!138 = distinct !{!138, i1 true, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE"}
!139 = distinct !{!139, !138, !"_ZN9rapidjson9StringRefIcEENS_16GenericStringRefIT_EERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEE: argument 0"}
!140 = !{!139}
!141 = distinct !{!141, !29}
!142 = distinct !{!142, !29}
!143 = distinct !{!143, !29}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, i1 true, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_"}
!147 = distinct !{!147, !146, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aIN10glTFCommon3RefIN4glTF4NodeEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
end_hunk_2
