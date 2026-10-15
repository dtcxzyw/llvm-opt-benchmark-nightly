Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/flip?download=true
inline.NumInlined: 376
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11flip_detail5image21generateSpatialFilterEf:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 12                  ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = sub nuw nsw i64 %i.j, %i.r
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.m, i64 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(12) %2)
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.r, %i.j
  br i1 %i.u, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.v
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.l, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.not88 = icmp slt i32 %i.d, 0
  br i1 %.not88, label %._crit_edge105.split, label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.w = load i32, ptr %0, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.y = or disjoint i32 %i.e, 1
  %i.z = sext i32 %i.w to i64
  %wide.trip.count112 = zext nneg i32 %i.y to i64 ; 2 uses
  br label %.lr.ph

.preheader.lr.ph.split:                           ; preds = %._crit_edge
  %i.aa = load i32, ptr %0, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.ac = or disjoint i32 %i.e, 1
  %i.ad = sext i32 %i.aa to i64
  %wide.trip.count123 = zext nneg i32 %i.ac to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  %n.vec = and i64 %wide.trip.count123, 2147483644 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat137 = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph93.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.lr.ph93.split ], [ %indvars.iv.next110, %._crit_edge ] ; 3 uses
  %.sroa.10.091 = phi float [ 0.000000e+00, %.lr.ph93.split ], [ %i.br, %._crit_edge ]
  %i.ae = phi <2 x float> [ zeroinitializer, %.lr.ph93.split ], [ %i.bq, %._crit_edge ]
  %i.af = trunc i64 %indvars.iv109 to i32
  %i.ag = sub i32 %i.af, %i.d
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fmul float %i.a, %i.ah                  ; 2 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = mul nsw i64 %indvars.iv109, %i.z
  %i.al = getelementptr [12 x i8], ptr %i.x, i64 %i.ak
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %.preheader.lr.ph.split, label %.lr.ph, !llvm.loop !35

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.sroa.10.184 = phi float [ %.sroa.10.091, %.lr.ph ], [ %i.br, %bb.e ]
  %i.am = phi <2 x float> [ %i.ae, %.lr.ph ], [ %i.bq, %bb.e ]
  %i.an = trunc i64 %indvars.iv to i32
  %i.ao = sub i32 %i.an, %i.d
  %i.ap = sitofp i32 %i.ao to float
  %i.aq = fmul float %i.a, %i.ap                  ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.aj)
  %i.as = fmul float %i.ar, f0xC11DE9E6           ; 2 uses
  %i.at = insertelement <4 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> zeroinitializer
  %i.av = fdiv <4 x float> %i.au, <float 4.700000e-03, float f0x3727C5AC, float 5.300000e-03, float 4.000000e-02> ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 0
  %i.ax = call float @expf(float noundef %i.aw) #17
  %i.ay = extractelement <4 x float> %i.av, i64 1 ; 2 uses
  %i.az = call float @expf(float noundef %i.ay) #17
  %i.ba = extractelement <4 x float> %i.av, i64 2
  %i.bb = call float @expf(float noundef %i.ba) #17
  %i.bc = call float @expf(float noundef %i.ay) #17
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %i.bc, i64 1
  %i.bf = fmul <2 x float> %i.be, zeroinitializer
  %i.bg = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.bb, i64 1
  %i.bi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> <float f0x41CED4C8, float f0x41C2C5B0>, <2 x float> %i.bf) ; 2 uses
  %i.bj = extractelement <4 x float> %i.av, i64 3
  %i.bk = call float @expf(float noundef %i.bj) #17
  %i.bl = fdiv float %i.as, 2.500000e-02
  %i.bm = call float @expf(float noundef %i.bl) #17
  %i.bn = fmul float %i.bm, f0x431755B3
  %i.bo = call noundef float @llvm.fmuladd.f32(float %i.bk, float f0x43971A08, float %i.bn) ; 2 uses
  %i.bp = getelementptr [12 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.bi, ptr %i.bp, align 4, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store float %i.bo, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !15
  %i.bq = fadd <2 x float> %i.am, %i.bi           ; 5 uses
  %i.br = fadd float %.sroa.10.184, %i.bo         ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count112
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !36

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge102
  %indvars.iv120 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next121, %._crit_edge102 ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv120, %i.ad
  %i.bt = getelementptr [12 x i8], ptr %i.ab, i64 %i.bs ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv114.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.bu = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 4 uses
  %i.bv = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 12
  %i.bx = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = getelementptr [12 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 36
  %i.cb = load float, ptr %i.bu, align 4, !tbaa !15
  %i.cc = load float, ptr %i.bw, align 4, !tbaa !15
  %i.cd = load float, ptr %i.by, align 4, !tbaa !15
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !15
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.ck = getelementptr i8, ptr %i.bv, i64 16
  %i.cl = getelementptr i8, ptr %i.bx, i64 28
  %i.cm = getelementptr i8, ptr %i.bz, i64 40
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !15
  %i.co = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !15
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !15
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.cw = getelementptr i8, ptr %i.bv, i64 20
  %i.cx = getelementptr i8, ptr %i.bx, i64 32
  %i.cy = getelementptr i8, ptr %i.bz, i64 44
  %i.cz = load float, ptr %i.cv, align 4, !tbaa !15
  %i.da = load float, ptr %i.cw, align 4, !tbaa !15
  %i.db = load float, ptr %i.cx, align 4, !tbaa !15
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !15
  %i.dd = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 3
  %i.dh = fdiv <4 x float> %i.ci, %broadcast.splat
  %i.di = fdiv <4 x float> %i.cu, %broadcast.splat137
  %i.dj = fdiv <4 x float> %i.dg, %broadcast.splat139
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x float> %i.dj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.dk, <8 x float> %i.dl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.bu, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !37

._crit_edge105.split:                             ; preds = %._crit_edge102, %_ZN11flip_detail5image8allocateEii.exit
  ret void

._crit_edge102:                                   ; preds = %scalar.ph
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge105.split, label %.preheader, !llvm.loop !38

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %scalar.ph ], [ %indvars.iv114.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dn = getelementptr [12 x i8], ptr %i.bt, i64 %indvars.iv114 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %i.do = fdiv float %.sroa.5.0.copyload, %i.br
  %i.dp = load <2 x float>, ptr %i.dn, align 4, !tbaa !15
  %i.dq = fdiv <2 x float> %i.dp, %i.bq
  store <2 x float> %i.dq, ptr %i.dn, align 4, !tbaa !15
  store float %i.do, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !15
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count123
  br i1 %exitcond119.not, label %._crit_edge102, label %scalar.ph, !llvm.loop !39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image8convolveERS0_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !23     ; 3 uses
  %i.b = sdiv i32 %i.a, 2                         ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.e = sdiv i32 %i.d, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 5 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge100

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !23     ; 7 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = sub nsw i32 0, %i.e
  %i.l = add nsw i32 %i.g, -1
  %i.m = sub nsw i32 0, %i.b
  %.not3671 = icmp slt i32 %i.a, -1
  %i.n = add nsw i32 %i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = load i32, ptr %1, align 8
  %i.u = load ptr, ptr %i.p, align 8
  br i1 %i.j, label %.preheader.lr.ph.split.us, label %._crit_edge100

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %.not78 = icmp slt i32 %i.d, -1
  br i1 %.not78, label %.preheader.us.us.preheader, label %.preheader.lr.ph.split.us.split

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.v = zext nneg i32 %i.i to i64
  %i.w = zext nneg i32 %i.g to i64
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.y, i1 false), !tbaa !15
  br label %._crit_edge100

.preheader.lr.ph.split.us.split:                  ; preds = %.preheader.lr.ph.split.us
  br i1 %.not3671, label %.preheader.us.us109.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us.split
  %i.z = zext i32 %i.m to i64
  %smax = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.aa = add nuw nsw i32 %smax, 1
  %smax117 = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.ab = zext nneg i32 %i.i to i64
  %wide.trip.count126 = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader.us

.preheader.us.us109.preheader:                    ; preds = %.preheader.lr.ph.split.us.split
  %i.ac = zext nneg i32 %i.i to i64               ; 4 uses
  %wide.trip.count136 = zext nneg i32 %i.g to i64
  %min.iters.check = icmp ult i32 %i.i, 4
  %n.vec = and i64 %i.ac, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br label %.preheader.us.us109

.preheader.us.us109:                              ; preds = %.preheader.us.us109.preheader, %._crit_edge93.split.split.us.us.us
  %indvars.iv133 = phi i64 [ 0, %.preheader.us.us109.preheader ], [ %indvars.iv.next134, %._crit_edge93.split.split.us.us.us ] ; 2 uses
  %i.ad = mul nuw nsw i64 %indvars.iv133, %i.ac
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ad ; 3 uses
  br i1 %min.iters.check, label %.lr.ph84.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us109, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us109 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %index
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store <6 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !15
  store <6 x float> zeroinitializer, ptr %i.ah, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge93.split.split.us.us.us, label %.lr.ph84.us.us.us.preheader

.lr.ph84.us.us.us.preheader:                      ; preds = %.preheader.us.us109, %middle.block
  %indvars.iv128.ph = phi i64 [ 0, %.preheader.us.us109 ], [ %n.vec, %middle.block ]
  br label %.lr.ph84.us.us.us

.lr.ph84.us.us.us:                                ; preds = %.lr.ph84.us.us.us.preheader, %.lr.ph84.us.us.us
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %.lr.ph84.us.us.us ], [ %indvars.iv128.ph, %.lr.ph84.us.us.us.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %indvars.iv128 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.aj, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us96.us.us = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx43.us96.us.us, align 4, !tbaa !15
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %i.ac
  br i1 %exitcond132.not, label %._crit_edge93.split.split.us.us.us, label %.lr.ph84.us.us.us, !llvm.loop !41

._crit_edge93.split.split.us.us.us:               ; preds = %.lr.ph84.us.us.us, %middle.block
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge100, label %.preheader.us.us109, !llvm.loop !42

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge93.split.split.us107
  %indvars.iv123 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next124, %._crit_edge93.split.split.us107 ] ; 3 uses
  %i.ak = mul nuw nsw i64 %indvars.iv123, %i.ab
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ak
  %i.am = trunc nuw nsw i64 %indvars.iv123 to i32
  br label %.lr.ph84.us103

.lr.ph84.us103:                                   ; preds = %._crit_edge85.split.us, %.preheader.us
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %._crit_edge85.split.us ], [ 0, %.preheader.us ] ; 3 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph84.us103
  %.03282.us = phi i32 [ %i.k, %.lr.ph84.us103 ], [ %i.bh, %._crit_edge.us ] ; 4 uses
  %.sroa.10.081.us = phi float [ 0.000000e+00, %.lr.ph84.us103 ], [ %i.bg, %._crit_edge.us ]
  %i.an = phi <2 x float> [ zeroinitializer, %.lr.ph84.us103 ], [ %i.bf, %._crit_edge.us ]
  %i.ao = add nsw i32 %.03282.us, %i.am
  %.sroa.speculated60.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %.sroa.speculated56.us = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %.sroa.speculated60.us)
  %i.ap = add nsw i32 %.03282.us, %i.e
  %i.aq = mul nsw i32 %i.ap, %i.a
  %i.ar = add i32 %i.aq, %i.b
  %i.as = mul nsw i32 %i.t, %.sroa.speculated56.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.z, %.lr.ph.us ] ; 3 uses
  %.sroa.10.174.us = phi float [ %i.bg, %bb.b ], [ %.sroa.10.081.us, %.lr.ph.us ]
  %i.at = phi <2 x float> [ %i.bf, %bb.b ], [ %i.an, %.lr.ph.us ]
  %i.au = add i64 %indvars.iv, %indvars.iv119
  %i.av = trunc i64 %i.au to i32
  %.sroa.speculated49.us = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0)
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %.sroa.speculated49.us)
  %i.aw = trunc i64 %indvars.iv to i32
  %i.ax = add i32 %i.ar, %i.aw
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.ay ; 2 uses
  %.sroa.53.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.53.0.copyload.us = load float, ptr %.sroa.53.0..sroa_idx.us, align 4, !tbaa !15
  %i.ba = add nsw i32 %i.as, %.sroa.speculated.us
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.bd = load <2 x float>, ptr %i.az, align 4, !tbaa !15
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.us = load float, ptr %.sroa.5.0..sroa_idx.us, align 4, !tbaa !15
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.at) ; 3 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.53.0.copyload.us, float %.sroa.5.0.copyload.us, float %.sroa.10.174.us) ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %bb.b
  %i.bh = add i32 %.03282.us, 1
  %exitcond118.not = icmp eq i32 %.03282.us, %smax117
  br i1 %exitcond118.not, label %._crit_edge85.split.us, label %.lr.ph.us, !llvm.loop !44

._crit_edge85.split.us:                           ; preds = %._crit_edge.us
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv119 ; 2 uses
  store <2 x float> %i.bf, ptr %i.bi, align 4, !tbaa !15
  %.sroa.5.0..sroa_idx43.us106 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bg, ptr %.sroa.5.0..sroa_idx43.us106, align 4, !tbaa !15
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count
  br i1 %exitcond122.not, label %._crit_edge93.split.split.us107, label %.lr.ph84.us103, !llvm.loop !45

._crit_edge93.split.split.us107:                  ; preds = %._crit_edge85.split.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge100, label %.preheader.us, !llvm.loop !42

._crit_edge100:                                   ; preds = %._crit_edge93.split.split.us107, %._crit_edge93.split.split.us.us.us, %.preheader.lr.ph, %.preheader.us.us.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN11flip_detail5image14huntAdjustmentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.d
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.09.013 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load float, ptr %.sroa.09.013, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 4 ; 2 uses
  %i.g = fmul float %i.e, f0x3C23D70A
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fmul <2 x float> %i.j, %i.h
  store <2 x float> %i.k, ptr %i.f, align 4, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN11flip_detail5image10preprocessERS0_:bb.a
  %.sroa.speculated10.i11 = select i1 %i.bf, float 0.000000e+00, float %i.bc ; 2 uses
  %.sroa.speculated7.i12 = select i1 %i.bg, float 0.000000e+00, float %i.bh ; 2 uses
  %i.bi = fcmp olt float %.sroa.speculated.i, 0.000000e+00
  %.sroa.speculated.i13 = select i1 %i.bi, float 0.000000e+00, float %.sroa.speculated.i ; 2 uses
  %i.bj = fmul float %.sroa.speculated7.i12, f0x3F37163B
  %i.bk = tail call float @llvm.fmuladd.f32(float %.sroa.speculated10.i11, float f0x3E59BD78, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %.sroa.speculated.i13, float 7.218020e-02, float %i.bk)
  %i.bm = insertelement <2 x float> poison, float %.sroa.speculated7.i12, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, <float f0x3EB7163B, float f0x3DF41DA4>
  %i.bp = insertelement <2 x float> poison, float %.sroa.speculated10.i11, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> <float f0x3ED32455, float f0x3C9E5B3F>, <2 x float> %i.bo)
  %i.bs = insertelement <2 x float> poison, float %.sroa.speculated.i13, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> <float f0x3E38C803, float f0x3F734B9E>, <2 x float> %i.br)
  %i.bv = tail call float @llvm.fabs.f32(float %i.bl) ; 3 uses
  %i.bw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bu)
  %i.bx = fdiv <2 x float> %i.bw, <float f0x3F734F49, float f0x3F8B6116> ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0 ; 3 uses
  %i.bz = fpext float %i.by to double
  %i.ca = fcmp ogt double %i.bz, 8.856000e-03
  br i1 %i.ca, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.cb = tail call float @powf(float noundef %i.by, float noundef f0x3EAAAAAB) #17
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.by, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cd = phi float [ %i.cb, %bb.d ], [ %i.cc, %bb.e ]
  %i.ce = fpext float %i.bv to double
  %i.cf = fcmp ogt double %i.ce, 8.856000e-03
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = tail call float @powf(float noundef %i.bv, float noundef f0x3EAAAAAB) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bv, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ci = phi float [ %i.cg, %bb.g ], [ %i.ch, %bb.h ] ; 3 uses
  %i.cj = extractelement <2 x float> %i.bx, i64 1 ; 3 uses
  %i.ck = fpext float %i.cj to double
  %i.cl = fcmp ogt double %i.ck, 8.856000e-03
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cm = tail call float @powf(float noundef %i.cj, float noundef f0x3EAAAAAB) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cj, float 7.787000e+00, float f0x3E0D3DCB)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.co = phi float [ %i.cm, %bb.j ], [ %i.cn, %bb.k ]
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.ci, float 1.160000e+02, float -1.600000e+01)
  store float %i.cp, ptr %.sroa.027.031, align 4, !tbaa !12
  %i.cq = fsub float %i.cd, %i.ci
  %i.cr = fsub float %i.ci, %i.co
  %i.cs = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cr, i64 1
  %i.cu = fmul <2 x float> %i.ct, <float 5.000000e+02, float 2.000000e+02>
  store <2 x float> %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.027.031, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.v
  br i1 %.not, label %.lr.ph.i, label %.lr.ph

_ZN11flip_detail5image14huntAdjustmentEv.exit:    ; preds = %.lr.ph.i, %_ZN11flip_detail5imageC2ERKS0_.exit
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN11flip_detail5imageD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.i) #20
  br label %_ZN11flip_detail5imageD2Ev.exit

_ZN11flip_detail5imageD2Ev.exit:                  ; preds = %_ZN11flip_detail5image14huntAdjustmentEv.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image22computeColorDifferenceERS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 5 uses
  store i32 %i.a, ptr %0, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.c, ptr %i.d, align 4, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = mul nsw i32 %i.c, %i.a
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 12                  ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.g, %i.o
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.j, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !24
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ugt i64 %i.o, %i.g
  br i1 %i.r, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.s
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.i, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge38.split

.preheader.lr.ph:                                 ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.v = load i32, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.lr.ph.split, label %._crit_edge38.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %1, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ab = load i32, ptr %2, align 8, !tbaa !23
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.ae = zext nneg i32 %i.v to i64
  %i.af = sext i32 %i.ab to i64
  %i.ag = sext i32 %i.z to i64
  %wide.trip.count43 = zext nneg i32 %i.t to i64
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next41, %._crit_edge ] ; 4 uses
  %i.ah = mul nsw i64 %indvars.iv40, %i.ag
  %i.ai = mul nsw i64 %indvars.iv40, %i.af
  %i.aj = mul nuw nsw i64 %indvars.iv40, %i.ae
  %i.ak = getelementptr [12 x i8], ptr %i.aa, i64 %i.ah
  %i.al = getelementptr [12 x i8], ptr %i.ac, i64 %i.ai
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ad, i64 %i.aj
  br label %bb.e

._crit_edge38.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN11flip_detail5image8allocateEii.exit
  ret void

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.preheader, !llvm.loop !46

bb.e:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.an = getelementptr [12 x i8], ptr %i.ak, i64 %indvars.iv ; 3 uses
  %.sroa.033.0.copyload = load float, ptr %i.an, align 4, !tbaa !15
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.434.0.copyload = load float, ptr %.sroa.434.0..sroa_idx, align 4, !tbaa !15
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.535.0.copyload = load float, ptr %.sroa.535.0..sroa_idx, align 4, !tbaa !15
  %i.ao = getelementptr [12 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %.sroa.030.0.copyload = load float, ptr %i.ao, align 4, !tbaa !15
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.431.0.copyload = load float, ptr %.sroa.431.0..sroa_idx, align 4, !tbaa !15
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.532.0.copyload = load float, ptr %.sroa.532.0..sroa_idx, align 4, !tbaa !15
  %i.ap = fsub float %.sroa.033.0.copyload, %.sroa.030.0.copyload
  %i.aq = call float @llvm.fabs.f32(float %i.ap)
  %i.ar = fsub float %.sroa.434.0.copyload, %.sroa.431.0.copyload ; 2 uses
  %i.as = fsub float %.sroa.535.0.copyload, %.sroa.532.0.copyload ; 2 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %sqrt.i = call float @sqrtf(float noundef %i.au) #17
  %i.av = fadd float %i.aq, %sqrt.i
  %i.aw = call float @powf(float noundef %i.av, float noundef f0x3F333333) #17 ; 3 uses
  %i.ax = fcmp olt float %i.aw, f0x41841561
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fmul nnan float %i.aw, f0x3D6BAE63
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.az = fadd float %i.aw, f0xC1841561
  %i.ba = fdiv float %i.az, f0x41C62011
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float f0x3D4CCCD0, float f0x3F733333)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi float [ %i.ay, %bb.f ], [ %i.bb, %bb.g ]
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  store float %.0, ptr %i.bc, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store <2 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !47
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image24generateDetectionFiltersEfb(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %i.a = fmul float %1, 4.100000e-02              ; 2 uses
  %i.b = fmul float %i.a, 3.000000e+00
  %i.c = tail call noundef float @llvm.ceil.f32(float %i.b)
  %i.d = fptosi float %i.c to i32                 ; 6 uses
  %i.e = shl nsw i32 %i.d, 1                      ; 3 uses
  %i.f = or disjoint i32 %i.e, 1                  ; 4 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = mul nsw i32 %i.f, %i.f
  %i.j = zext nneg i32 %i.i to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 12                  ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = sub nuw nsw i64 %i.j, %i.r
  call void @_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.m, i64 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(12) %3)
  br label %_ZN11flip_detail5image8allocateEii.exit

bb.c:                                             ; preds = %bb.a
  %i.u = icmp ugt i64 %i.r, %i.j
  br i1 %i.u, label %bb.d, label %_ZN11flip_detail5image8allocateEii.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %i.j ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.v
  br i1 %.not.i.i.i, label %_ZN11flip_detail5image8allocateEii.exit, label %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.d
  store ptr %i.v, ptr %i.l, align 8, !tbaa !25
  br label %_ZN11flip_detail5image8allocateEii.exit

_ZN11flip_detail5image8allocateEii.exit:          ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN11flip_detail6color3ES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not102 = icmp slt i32 %i.d, 0
  br i1 %.not102, label %._crit_edge136.split, label %.lr.ph108

.lr.ph108:                                        ; preds = %_ZN11flip_detail5image8allocateEii.exit
  %i.w = insertelement <2 x float> poison, float %i.a, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fmul <2 x float> %i.x, <float 2.000000e+00, float 1.000000e+00>
  %i.z = fmul <2 x float> %i.x, %i.y              ; 3 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !26  ; 2 uses
  %i.ac = or disjoint i32 %i.e, 1
  %i.ad = sext i32 %i.aa to i64                   ; 2 uses
  %wide.trip.count153 = zext nneg i32 %i.ac to i64 ; 4 uses
  br i1 %2, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph108
  %i.ae = extractelement <2 x float> %i.z, i64 0
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph108
  %i.af = extractelement <2 x float> %i.z, i64 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %._crit_edge.split.us.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.ag = phi <2 x float> [ %i.bp, %._crit_edge.split.us.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %i.ah = phi <2 x float> [ %i.bo, %._crit_edge.split.us.us ], [ zeroinitializer, %.lr.ph.us.preheader ]
  %i.ai = trunc i64 %indvars.iv150 to i32
  %i.aj = sub i32 %i.ai, %i.d
  %i.ak = sitofp i32 %i.aj to float               ; 2 uses
  %i.al = fmul nnan float %i.ak, %i.ak            ; 2 uses
  %i.am = fdiv float %i.al, %i.af
  %i.an = fadd float %i.am, -1.000000e+00
  %i.ao = mul nsw i64 %indvars.iv150, %i.ad
  %i.ap = getelementptr [12 x i8], ptr %i.ab, i64 %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.an, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.us
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %bb.e ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ar = phi <2 x float> [ %i.bp, %bb.e ], [ %i.ag, %.lr.ph.us ] ; 2 uses
  %i.as = phi <2 x float> [ %i.bo, %bb.e ], [ %i.ah, %.lr.ph.us ] ; 2 uses
  %i.at = trunc i64 %indvars.iv144 to i32
  %i.au = sub i32 %i.at, %i.d
  %i.av = sitofp i32 %i.au to float               ; 4 uses
  %i.aw = call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.al)
  %i.ax = fneg float %i.aw
  %i.ay = fmul nnan float %i.av, %i.av
  %i.az = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.ay, i64 1
  %i.bb = fdiv <2 x float> %i.ba, %i.z            ; 2 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = call noundef float @expf(float noundef %i.bc) #17
  %i.be = extractelement <2 x float> %i.bb, i64 1
  %i.bf = fadd float %i.be, -1.000000e+00
  %i.bg = getelementptr [12 x i8], ptr %i.ap, i64 %indvars.iv144 ; 2 uses
  %.sroa.588.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float 0.000000e+00, ptr %.sroa.588.0..sroa_idx.us.us, align 4, !tbaa !15
  %i.bh = insertelement <2 x float> %i.aq, float %i.bf, i64 0
  %i.bi = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bh, %i.bj           ; 4 uses
  store <2 x float> %i.bk, ptr %i.bg, align 4, !tbaa !15
  %i.bl = fcmp ogt <2 x float> %i.bk, zeroinitializer ; 2 uses
  %i.bm = fsub <2 x float> %i.as, %i.bk
  %i.bn = fadd <2 x float> %i.ar, %i.bk
  %i.bo = select <2 x i1> %i.bl, <2 x float> %i.as, <2 x float> %i.bm ; 3 uses
  %i.bp = select <2 x i1> %i.bl, <2 x float> %i.bn, <2 x float> %i.ar ; 3 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count153
  br i1 %exitcond149.not, label %._crit_edge.split.us.us, label %bb.e, !llvm.loop !48

._crit_edge.split.us.us:                          ; preds = %bb.e
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %.preheader.lr.ph.split, label %.lr.ph.us, !llvm.loop !49

.preheader.lr.ph.split:                           ; preds = %._crit_edge.split, %._crit_edge.split.us.us
  %i.bq = phi <2 x float> [ %i.bp, %._crit_edge.split.us.us ], [ %i.cz, %._crit_edge.split ] ; 3 uses
  %i.br = phi <2 x float> [ %i.bo, %._crit_edge.split.us.us ], [ %i.cy, %._crit_edge.split ] ; 3 uses
  %i.bs = load i32, ptr %0, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bu = or disjoint i32 %i.e, 1                 ; 2 uses
  %i.bv = sext i32 %i.bs to i64
  %wide.trip.count164 = zext nneg i32 %i.bu to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.bu, 5
  %n.vec = and i64 %wide.trip.count164, 2147483644 ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat177 = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat181 = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge.split
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %._crit_edge.split ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bw = phi <2 x float> [ %i.cz, %._crit_edge.split ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.bx = phi <2 x float> [ %i.cy, %._crit_edge.split ], [ zeroinitializer, %.lr.ph.preheader ]
  %i.by = trunc i64 %indvars.iv139 to i32
  %i.bz = sub i32 %i.by, %i.d
  %i.ca = sitofp i32 %i.bz to float               ; 3 uses
  %i.cb = fmul nnan float %i.ca, %i.ca
  %i.cc = fneg float %i.ca
  %i.cd = mul nsw i64 %indvars.iv139, %i.ad
  %i.ce = getelementptr [12 x i8], ptr %i.ab, i64 %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.cc, i64 1
  br label %bb.f

._crit_edge.split:                                ; preds = %bb.f
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count153
  br i1 %exitcond143.not, label %.preheader.lr.ph.split, label %.lr.ph, !llvm.loop !49

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.cg = phi <2 x float> [ %i.bw, %.lr.ph ], [ %i.cz, %bb.f ] ; 2 uses
  %i.ch = phi <2 x float> [ %i.bx, %.lr.ph ], [ %i.cy, %bb.f ] ; 2 uses
  %i.ci = trunc i64 %indvars.iv to i32
  %i.cj = sub i32 %i.ci, %i.d
  %i.ck = sitofp i32 %i.cj to float               ; 3 uses
  %i.cl = call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cb)
  %i.cm = fneg float %i.cl
  %i.cn = fdiv float %i.cm, %i.ae
  %i.co = call noundef float @expf(float noundef %i.cn) #17
  %i.cp = fneg float %i.ck
end_hunk_1
begin_hunk_2_@_ZN11flip_detail5image24computeFeatureDifferenceERS0_S1_f:bb.a
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.preheader.lr.ph, label %._crit_edge179.split

.preheader.lr.ph:                                 ; preds = %bb.v
  %i.fd = load i32, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 0
  %i.ff = load ptr, ptr %i.dt, align 8
  %i.fg = load ptr, ptr %i.eo, align 8
  %i.fh = load ptr, ptr %i.eg, align 8
  %i.fi = load ptr, ptr %i.ew, align 8
  br i1 %i.fe, label %.preheader.lr.ph.split, label %._crit_edge179.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.fj = load i32, ptr %14, align 8
  %i.fk = load i32, ptr %12, align 8
  %i.fl = load i32, ptr %13, align 8
  %i.fm = load i32, ptr %11, align 8
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.fo = zext nneg i32 %i.fd to i64
  %i.fp = sext i32 %i.fj to i64
  %i.fq = sext i32 %i.fk to i64
  %i.fr = sext i32 %i.fl to i64
  %i.fs = sext i32 %i.fm to i64
  %wide.trip.count185 = zext nneg i32 %i.fb to i64
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge177
  %indvars.iv182 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next183, %._crit_edge177 ] ; 6 uses
  %i.ft = mul nsw i64 %indvars.iv182, %i.fs
  %i.fu = mul nsw i64 %indvars.iv182, %i.fr
  %i.fv = mul nsw i64 %indvars.iv182, %i.fq
  %i.fw = mul nsw i64 %indvars.iv182, %i.fp
  %i.fx = mul nuw nsw i64 %indvars.iv182, %i.fo
  %i.fy = getelementptr [12 x i8], ptr %i.ff, i64 %i.ft
  %i.fz = getelementptr [12 x i8], ptr %i.fg, i64 %i.fu
  %i.ga = getelementptr [12 x i8], ptr %i.fh, i64 %i.fv
  %i.gb = getelementptr [12 x i8], ptr %i.fi, i64 %i.fw
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.fn, i64 %i.fx
  br label %bb.ah

._crit_edge179.split:                             ; preds = %._crit_edge177, %.preheader.lr.ph, %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i, label %_ZN11flip_detail5imageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge179.split
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !32
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #20
  br label %_ZN11flip_detail5imageD2Ev.exit

_ZN11flip_detail5imageD2Ev.exit:                  ; preds = %._crit_edge179.split, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i82 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i82, label %_ZN11flip_detail5imageD2Ev.exit84, label %bb.x

bb.x:                                             ; preds = %_ZN11flip_detail5imageD2Ev.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !32
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #20
  br label %_ZN11flip_detail5imageD2Ev.exit84

_ZN11flip_detail5imageD2Ev.exit84:                ; preds = %_ZN11flip_detail5imageD2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.gr = load ptr, ptr %i.ew, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i85, label %_ZN11flip_detail5imageD2Ev.exit87, label %bb.y

bb.y:                                             ; preds = %_ZN11flip_detail5imageD2Ev.exit84
  %i.gs = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !32
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gr to i64
  %i.gw = sub i64 %i.gu, %i.gv
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gw) #20
  br label %_ZN11flip_detail5imageD2Ev.exit87

_ZN11flip_detail5imageD2Ev.exit87:                ; preds = %_ZN11flip_detail5imageD2Ev.exit84, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.gx = load ptr, ptr %i.eo, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i88 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i88, label %_ZN11flip_detail5imageD2Ev.exit90, label %bb.z

bb.z:                                             ; preds = %_ZN11flip_detail5imageD2Ev.exit87
  %i.gy = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !32
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = ptrtoint ptr %i.gx to i64
  %i.hc = sub i64 %i.ha, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hc) #20
  br label %_ZN11flip_detail5imageD2Ev.exit90

_ZN11flip_detail5imageD2Ev.exit90:                ; preds = %_ZN11flip_detail5imageD2Ev.exit87, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.hd = load ptr, ptr %i.eg, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i91 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i91, label %_ZN11flip_detail5imageD2Ev.exit93, label %bb.aa

bb.aa:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit90
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !32
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #20
  br label %_ZN11flip_detail5imageD2Ev.exit93

_ZN11flip_detail5imageD2Ev.exit93:                ; preds = %_ZN11flip_detail5imageD2Ev.exit90, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.hj = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i94, label %_ZN11flip_detail5imageD2Ev.exit96, label %bb.ab

bb.ab:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit93
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !32
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #20
  br label %_ZN11flip_detail5imageD2Ev.exit96

_ZN11flip_detail5imageD2Ev.exit96:                ; preds = %_ZN11flip_detail5imageD2Ev.exit93, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.not.i.i.i.i97 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i97, label %_ZN11flip_detail5imageD2Ev.exit99, label %bb.ac

bb.ac:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit96
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ay) #20
  br label %_ZN11flip_detail5imageD2Ev.exit99

_ZN11flip_detail5imageD2Ev.exit99:                ; preds = %_ZN11flip_detail5imageD2Ev.exit96, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %.not.i.i.i.i100 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i100, label %_ZN11flip_detail5imageD2Ev.exit102, label %bb.ad

bb.ad:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit99
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ab) #20
  br label %_ZN11flip_detail5imageD2Ev.exit102

_ZN11flip_detail5imageD2Ev.exit102:               ; preds = %_ZN11flip_detail5imageD2Ev.exit99, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void

bb.ae:                                            ; preds = %bb.u, %bb.t
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i103, label %_ZN11flip_detail5imageD2Ev.exit105, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !32
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = ptrtoint ptr %i.hr to i64
  %i.hw = sub i64 %i.hu, %i.hv
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hw) #20
  br label %_ZN11flip_detail5imageD2Ev.exit105

_ZN11flip_detail5imageD2Ev.exit105:               ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.hx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !26 ; 3 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i106, label %_ZN11flip_detail5imageD2Ev.exit108, label %bb.ag

bb.ag:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit105
  %i.hz = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !32
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #20
  br label %_ZN11flip_detail5imageD2Ev.exit108

_ZN11flip_detail5imageD2Ev.exit108:               ; preds = %_ZN11flip_detail5imageD2Ev.exit105, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  %i.ie = load ptr, ptr %i.ew, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i109, label %.body78, label %.body78.sink.split

._crit_edge177:                                   ; preds = %bb.ah
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge179.split, label %.preheader, !llvm.loop !57

bb.ah:                                            ; preds = %.preheader, %bb.ah
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.ah ] ; 6 uses
  %i.if = getelementptr [12 x i8], ptr %i.fy, i64 %indvars.iv ; 2 uses
  %.sroa.0127.0.copyload = load float, ptr %i.if, align 4, !tbaa !15 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !15 ; 2 uses
  %17 = fmul float %.sroa.11.0.copyload, %.sroa.11.0.copyload
  %18 = call float @llvm.fmuladd.f32(float %.sroa.0127.0.copyload, float %.sroa.0127.0.copyload, float %17)
  %19 = call float @sqrtf(float noundef %18) #17
  %i.ig = getelementptr [12 x i8], ptr %i.fz, i64 %indvars.iv ; 2 uses
  %.sroa.0127.0.copyload131 = load float, ptr %i.ig, align 4, !tbaa !15 ; 2 uses
  %.sroa.11.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %.sroa.11.0.copyload135 = load float, ptr %.sroa.11.0..sroa_idx134, align 4, !tbaa !15 ; 2 uses
  %20 = fmul float %.sroa.11.0.copyload135, %.sroa.11.0.copyload135
  %21 = call float @llvm.fmuladd.f32(float %.sroa.0127.0.copyload131, float %.sroa.0127.0.copyload131, float %20)
  %22 = call float @sqrtf(float noundef %21) #17
  %23 = getelementptr [12 x i8], ptr %i.ga, i64 %indvars.iv ; 2 uses
  %.sroa.0127.0.copyload132 = load float, ptr %23, align 4, !tbaa !15 ; 2 uses
  %.sroa.11.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %.sroa.11.0.copyload137 = load float, ptr %.sroa.11.0..sroa_idx136, align 4, !tbaa !15 ; 2 uses
  %24 = fmul float %.sroa.11.0.copyload137, %.sroa.11.0.copyload137
  %25 = call float @llvm.fmuladd.f32(float %.sroa.0127.0.copyload132, float %.sroa.0127.0.copyload132, float %24)
  %26 = call float @sqrtf(float noundef %25) #17
  %27 = getelementptr [12 x i8], ptr %i.gb, i64 %indvars.iv ; 2 uses
  %.sroa.0127.0.copyload133 = load float, ptr %27, align 4, !tbaa !15 ; 2 uses
  %.sroa.11.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %.sroa.11.0.copyload139 = load float, ptr %.sroa.11.0..sroa_idx138, align 4, !tbaa !15 ; 2 uses
  %28 = fmul float %.sroa.11.0.copyload139, %.sroa.11.0.copyload139
  %29 = call float @llvm.fmuladd.f32(float %.sroa.0127.0.copyload133, float %.sroa.0127.0.copyload133, float %28)
  %30 = call float @sqrtf(float noundef %29) #17
  %31 = fsub float %19, %22
  %32 = call noundef float @llvm.fabs.f32(float %31) ; 2 uses
  %33 = fsub float %26, %30
  %34 = call noundef float @llvm.fabs.f32(float %33) ; 2 uses
  %i.ih = fcmp olt float %32, %34
  %.sroa.speculated = select i1 %i.ih, float %34, float %32
  %i.ii = fmul float %.sroa.speculated, f0x3F3504F3
  %i.ij = call noundef float @powf(float noundef %i.ii, float noundef 5.000000e-01) #17
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %indvars.iv ; 2 uses
  store float %i.ij, ptr %i.ik, align 4, !tbaa !15
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store <2 x float> zeroinitializer, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge177, label %bb.ah, !llvm.loop !58

.body78.sink.split:                               ; preds = %_ZN11flip_detail5imageD2Ev.exit108, %bb.s
  %.sink246 = phi ptr [ %i.fa, %bb.s ], [ %i.ie, %_ZN11flip_detail5imageD2Ev.exit108 ] ; 2 uses
  %.pn.ph = phi { ptr, i32 } [ %i.ez, %bb.s ], [ %i.hp, %_ZN11flip_detail5imageD2Ev.exit108 ]
  %i.il = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !32
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %.sink246 to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %.sink246, i64 noundef %i.ip) #20
  br label %.body78

.body78:                                          ; preds = %.body78.sink.split, %_ZN11flip_detail5imageD2Ev.exit108, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ez, %bb.s ], [ %i.hp, %_ZN11flip_detail5imageD2Ev.exit108 ], [ %.pn.ph, %.body78.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.iq = load ptr, ptr %i.eo, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i.i112, label %.body72, label %.body72.sink.split

.body72.sink.split:                               ; preds = %.body78, %bb.p
  %.sink253 = phi ptr [ %i.es, %bb.p ], [ %i.iq, %.body78 ] ; 2 uses
  %.pn.pn.ph = phi { ptr, i32 } [ %i.er, %bb.p ], [ %.pn, %.body78 ]
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !32
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %.sink253 to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.sink253, i64 noundef %i.iv) #20
  br label %.body72

.body72:                                          ; preds = %.body72.sink.split, %.body78, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.er, %bb.p ], [ %.pn, %.body78 ], [ %.pn.pn.ph, %.body72.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.iw = load ptr, ptr %i.eg, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i115, label %.body66, label %.body66.sink.split

.body66.sink.split:                               ; preds = %.body72, %bb.m
  %.sink260 = phi ptr [ %i.ek, %bb.m ], [ %i.iw, %.body72 ] ; 2 uses
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ej, %bb.m ], [ %.pn.pn, %.body72 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !32
  %i.iz = ptrtoint ptr %i.iy to i64
  %i.ja = ptrtoint ptr %.sink260 to i64
  %i.jb = sub i64 %i.iz, %i.ja
  call void @_ZdlPvm(ptr noundef nonnull %.sink260, i64 noundef %i.jb) #20
  br label %.body66

.body66:                                          ; preds = %.body66.sink.split, %.body72, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.m ], [ %.pn.pn, %.body72 ], [ %.pn.pn.pn.ph, %.body66.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.jc = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i.i118 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i.i118, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body66, %bb.j
  %.sink267 = phi ptr [ %i.dy, %bb.j ], [ %i.jc, %.body66 ] ; 2 uses
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dx, %bb.j ], [ %.pn.pn.pn, %.body66 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !32
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %.sink267 to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %.sink267, i64 noundef %i.jh) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body66, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.j ], [ %.pn.pn.pn, %.body66 ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %.not.i.i.i.i121 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i121, label %_ZN11flip_detail5imageD2Ev.exit123, label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ay) #20
  br label %_ZN11flip_detail5imageD2Ev.exit123

_ZN11flip_detail5imageD2Ev.exit123:               ; preds = %bb.ai, %.body, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.h ], [ %.pn.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %.not.i.i.i.i124 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i124, label %_ZN11flip_detail5imageD2Ev.exit126, label %bb.aj

bb.aj:                                            ; preds = %_ZN11flip_detail5imageD2Ev.exit123
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ab) #20
  br label %_ZN11flip_detail5imageD2Ev.exit126

_ZN11flip_detail5imageD2Ev.exit126:               ; preds = %_ZN11flip_detail5imageD2Ev.exit123, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11flip_detail5image16computeFLIPErrorERS0_S1_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.flip_detail::color3", align 8 ; 5 uses
  %5 = alloca %"class.flip_detail::image", align 8 ; 9 uses
  %6 = alloca %"class.flip_detail::image", align 8 ; 9 uses
  %7 = alloca %"class.flip_detail::image", align 8 ; 11 uses
  %8 = alloca %"class.flip_detail::image", align 8 ; 13 uses
  %9 = alloca %"class.flip_detail::image", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %.not124 = icmp eq ptr %i.b, %i.d               ; 2 uses
  br i1 %.not124, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN11flip_detail6color314sRGB2LinearRGBEv.exit, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %.not122126 = icmp eq ptr %i.f, %i.h
  br i1 %.not122126, label %._crit_edge130, label %.lr.ph129

.lr.ph:                                           ; preds = %bb.a, %_ZN11flip_detail6color314sRGB2LinearRGBEv.exit
  %.sroa.0119.0125 = phi ptr [ %i.ax, %_ZN11flip_detail6color314sRGB2LinearRGBEv.exit ], [ %i.b, %bb.a ] ; 7 uses
  %i.i = load float, ptr %.sroa.0119.0125, align 4, !tbaa !12 ; 3 uses
  %i.j = fcmp ugt float %i.i, 4.045000e-02
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = fdiv float %i.i, 1.292000e+01
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.l = fadd float %i.i, 5.500000e-02
  %i.m = fdiv float %i.l, 1.055000e+00
  %i.n = tail call float @powf(float noundef %i.m, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit.i

_ZN11flip_detailL11sRGB2LinearEf.exit.i:          ; preds = %bb.c, %bb.b
  %.0.i.i = phi float [ %i.k, %bb.b ], [ %i.n, %bb.c ]
  store float %.0.i.i, ptr %.sroa.0119.0125, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0119.0125, i64 4 ; 3 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !13 ; 3 uses
  %i.q = fcmp ugt float %i.p, 4.045000e-02
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit.i
  %i.r = fdiv float %i.p, 1.292000e+01
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit2.i

bb.e:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit.i
  %i.s = fadd float %i.p, 5.500000e-02
  %i.t = fdiv float %i.s, 1.055000e+00
  %i.u = tail call float @powf(float noundef %i.t, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detailL11sRGB2LinearEf.exit2.i

_ZN11flip_detailL11sRGB2LinearEf.exit2.i:         ; preds = %bb.e, %bb.d
  %.0.i1.i = phi float [ %i.r, %bb.d ], [ %i.u, %bb.e ] ; 3 uses
  store float %.0.i1.i, ptr %i.o, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0119.0125, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !14 ; 3 uses
  %i.x = fcmp ugt float %i.w, 4.045000e-02
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit2.i
  %i.y = fdiv float %i.w, 1.292000e+01
  br label %_ZN11flip_detail6color314sRGB2LinearRGBEv.exit

bb.g:                                             ; preds = %_ZN11flip_detailL11sRGB2LinearEf.exit2.i
  %i.z = fadd float %i.w, 5.500000e-02
  %i.aa = fdiv float %i.z, 1.055000e+00
  %i.ab = tail call float @powf(float noundef %i.aa, float noundef 2.400000e+00) #17
  br label %_ZN11flip_detail6color314sRGB2LinearRGBEv.exit

_ZN11flip_detail6color314sRGB2LinearRGBEv.exit:   ; preds = %bb.f, %bb.g
  %.0.i3.i = phi float [ %i.y, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %.sroa.0119.0125, align 4, !tbaa !15 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.0.i1.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, <float f0x3EB7163B, float f0x3DF41DA4>
  %i.af = fmul float %.0.i1.i, f0x3F37163B
  %i.ag = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload.i, float f0x3E59BD78, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %.0.i3.i, float 7.218020e-02, float %i.ag) ; 3 uses
  %i.ai = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> <float f0x3ED32455, float f0x3C9E5B3F>, <2 x float> %i.ae)
  %i.al = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> <float f0x3E38C803, float f0x3F734B9E>, <2 x float> %i.ak)
  %i.ao = fdiv <2 x float> %i.an, <float f0x3F734F49, float f0x3F8B6116> ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ah, float 1.160000e+02, float -1.600000e+01)
  store float %i.ap, ptr %.sroa.0119.0125, align 4, !tbaa !12
  %i.aq = extractelement <2 x float> %i.ao, i64 0
  %i.ar = fsub float %i.aq, %i.ah
  %i.as = extractelement <2 x float> %i.ao, i64 1
  %i.at = fsub float %i.ah, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN11flip_detail6color3ESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_:bb.a
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !25
  %.not11.i.i.i.i.i69 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !25
  br label %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.013.i.i.i.i.i71 = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i70 ], [ %i.aj, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i72 = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i71, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i72, i64 12, i1 false), !tbaa.struct !33
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 12
  %.not.i.i.i.i.i73 = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !98

_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !25
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75, %.lr.ph.i.i.i77
  %.06.i.i.i78 = phi ptr [ %i.ap, %.lr.ph.i.i.i77 ], [ %1, %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i78, align 4
  %.sroa.9.8..06.i.i.i78.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !103
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 12 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !99

_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.as = sub i64 %i.f, %i.ar
  %i.at = sdiv exact i64 %i.as, 12                ; 4 uses
  %i.au = sub nsw i64 768614336404564650, %i.at
  %i.av = icmp ult i64 %i.au, %2
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %2)
  %i.aw = add nsw i64 %.sroa.speculated.i, %i.at  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.at
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 768614336404564650)
  %i.az = select i1 %i.ax, i64 768614336404564650, i64 %i.ay ; 3 uses
  %i.ba = ptrtoint ptr %1 to i64
  %i.bb = sub i64 %i.ba, %i.ar
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit
  %i.bc = mul nuw nsw i64 %i.az, 12
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #19
  br label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.l ], [ null, %_ZNKSt6vectorIN11flip_detail6color3ESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb ; 2 uses
  %xtraiter142 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol

.lr.ph.i.i.i.i82.prol:                            ; preds = %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i82.prol
  %.09.i.i.i.i83.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i82.prol ], [ %i.bf, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.068.i.i.i.i84.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i82.prol ], [ %2, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.i82.prol ], [ 0, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bg = add i64 %.068.i.i.i.i84.prol, -1        ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 12 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !102

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bf, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ], [ %i.bh, %.lr.ph.i.i.i.i82.prol ]
  %.068.i.i.i.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE11_M_allocateEm.exit ], [ %i.bg, %.lr.ph.i.i.i.i82.prol ]
  %i.bi = icmp ult i64 %2, 4
  br i1 %i.bi, label %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %.lr.ph.i.i.i.i82.prol.loopexit, %.lr.ph.i.i.i.i82
  %.09.i.i.i.i83 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i82 ], [ %.09.i.i.i.i83.unr, %.lr.ph.i.i.i.i82.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i84 = phi i64 [ %i.bm, %.lr.ph.i.i.i.i82 ], [ %.068.i.i.i.i84.unr, %.lr.ph.i.i.i.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !33
  %i.bm = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 48
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !101

_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.aq, %1
  br i1 %.not11.i.i.i.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89

.lr.ph.i.i.i.i.i89:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87, %.lr.ph.i.i.i.i.i89
  %.013.i.i.i.i.i90 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i89 ], [ %i.be, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i91 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i89 ], [ %i.aq, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i91, i64 12, i1 false), !tbaa.struct !33
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 12 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bo, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !98

_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.be, %_ZSt24__uninitialized_fill_n_aIPN11flip_detail6color3EmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bp, %.lr.ph.i.i.i.i.i89 ]
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i.i.i.i93, i64 %2 ; 2 uses
  %.not11.i.i.i.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not11.i.i.i.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95

.lr.ph.i.i.i.i.i95:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %.lr.ph.i.i.i.i.i95
  %.013.i.i.i.i.i96 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i95 ], [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i97 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.013.i.i.i.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.012.i.i.i.i.i97, i64 12, i1 false), !tbaa.struct !33
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 12 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.br, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !98

_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.bq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %i.bs, %.lr.ph.i.i.i.i.i95 ]
  %.not.i101 = icmp eq ptr %i.aq, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bv) #20
  br label %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11flip_detail6color3ES2_SaIS1_EET0_T_S5_S4_RT1_.exit100, %bb.m
  store ptr %i.be, ptr %0, align 8, !tbaa !26
  store ptr %.0.lcssa.i.i.i.i.i99, ptr %i.c, align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.az
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4fillIPN11flip_detail6color3ES1_EvT_S3_RKT0_.exit, %_ZNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!"_ZTSN11flip_detail6color3E", !10, i64 0, !10, i64 4, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 4}
!14 = !{!11, !10, i64 8}
!15 = !{!10, !10, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTSN11flip_detail6color3E", !16, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN11flip_detail6color3ESaIS1_EE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIN11flip_detail6color3ESaIS1_EE", !20, i64 0}
!22 = !{!"_ZTSN11flip_detail5imageE", !7, i64 0, !7, i64 4, !21, i64 8}
!23 = !{!22, !7, i64 0}
!24 = !{!22, !7, i64 4}
!25 = !{!18, !17, i64 8}
!26 = !{!18, !17, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!17, !17, i64 0}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!18, !17, i64 16}
!33 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27, !28, !29}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27, !29, !28}
!40 = distinct !{!40, !27, !28, !29}
!41 = distinct !{!41, !27, !29, !28}
!42 = distinct !{!42, !27}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = distinct !{!45, !27}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !27}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27, !28, !29}
!51 = distinct !{!51, !27}
!52 = distinct !{!52, !27, !29, !28}
!53 = distinct !{!53, !28, !29}
!54 = distinct !{!54, !28, !29}
!55 = distinct !{!55, !29, !28}
!56 = distinct !{!56, !29, !28}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27, !74}
!62 = distinct !{!62, !27}
!63 = !{!"long", !6, i64 0}
!64 = !{!"double", !6, i64 0}
!65 = !{!"p1 long", !16, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseImSaImEE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorImSaImEE", !68, i64 0}
!70 = !{!"_ZTSN11flip_detail9histogramE", !64, i64 0, !64, i64 8, !63, i64 16, !63, i64 24, !64, i64 32, !69, i64 40, !6, i64 64, !63, i64 80}
!71 = !{!"_ZTSN11flip_detail7poolingE", !63, i64 0, !64, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !64, i64 40, !6, i64 48, !6, i64 56, !70, i64 64}
!72 = !{!71, !64, i64 8}
!73 = !{!71, !64, i64 16}
!74 = !{!"llvm.loop.unswitch.partial.disable"}
!75 = !{!71, !63, i64 0}
!76 = !{!63, !63, i64 0}
!77 = !{!70, !63, i64 16}
!78 = !{!70, !63, i64 24}
!79 = !{!71, !64, i64 24}
!80 = !{!7, !7, i64 0}
!81 = !{!71, !64, i64 32}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !34}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !27, !28, !29}
!89 = distinct !{!89, !27}
!90 = distinct !{!90, !27, !28}
!91 = !{!"_ZTS11FLIPOptions", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!92 = !{!91, !10, i64 0}
!93 = !{!91, !10, i64 4}
!94 = !{!91, !10, i64 8}
!95 = !{!91, !10, i64 12}
!96 = !{!86}
!97 = !{!87}
!98 = distinct !{!98, !27}
!99 = distinct !{!99, !27}
!100 = distinct !{!100, !34}
!101 = distinct !{!101, !27}
!102 = distinct !{!102, !34}
!103 = !{i64 0, i64 3, !15, i64 3, i64 4, !15, i64 7, i64 4, !15}
!104 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_3
