Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh8lu_solveEPA4_diPiPdi:bb.a
  %i.as = sext i32 %5 to i64
  %i.at = shl nsw i64 %i.as, 3                    ; 2 uses
  %scevgep97 = getelementptr i8, ptr %4, i64 %i.at
  %scevgep98 = getelementptr i8, ptr %i.a, i64 %i.at
  %i.au = add i32 %5, 1
  %smax99 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.au)
  %i.av = xor i32 %5, -1
  %i.aw = add i32 %smax99, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep97, ptr noundef nonnull align 8 dereferenceable(1) %scevgep98, i64 %i.az, i1 false), !tbaa !58
  br label %._crit_edge84

.lr.ph75.new:                                     ; preds = %.prol.loopexit, %.lr.ph75.new
  %indvars.iv93 = phi i64 [ %indvars.iv.next94.3, %.lr.ph75.new ], [ %indvars.iv93.unr, %.prol.loopexit ] ; 6 uses
  %.174 = phi double [ %i.bt, %.lr.ph75.new ], [ %.174.unr, %.prol.loopexit ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv93
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv93
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !58
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bd, double %.174)
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next94
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !58
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next94
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !58
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bi, double %i.be)
  %indvars.iv.next94.1 = add nsw i64 %indvars.iv93, 2 ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next94.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !58
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next94.1
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !58
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bn, double %i.bj)
  %indvars.iv.next94.2 = add nsw i64 %indvars.iv93, 3 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next94.2
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next94.2
  %i.bs = load double, ptr %i.br, align 8, !tbaa !58
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bs, double %i.bo) ; 2 uses
  %indvars.iv.next94.3 = add nsw i64 %indvars.iv93, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next94.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.b, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge76, label %.lr.ph75.new, !llvm.loop !583

._crit_edge76:                                    ; preds = %.prol.loopexit, %.lr.ph75.new, %.preheader63
  %.1.lcssa = phi double [ 0.000000e+00, %.preheader63 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bt, %.lr.ph75.new ]
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next92 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bw = fsub double %i.bv, %.1.lcssa
  %i.bx = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ak
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %indvars.iv.next92
  %i.bz = load double, ptr %i.by, align 8, !tbaa !58
  %i.ca = fdiv double %i.bw, %i.bz
  store double %i.ca, ptr %i.bu, align 8, !tbaa !58
  %.not.not = icmp sgt i64 %indvars.iv.next92, %i.u
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %.preheader63, label %.lr.ph83.preheader, !llvm.loop !584

._crit_edge84:                                    ; preds = %bb.a, %.lr.ph83.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN10tetgenmesh10incircle3dEPdS0_S0_S0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69984) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #25 align 2 {
bb.a:
  %i.a = alloca [3 x double], align 16            ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !58 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %i.l = load <2 x double>, ptr %2, align 8, !tbaa !58 ; 4 uses
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !58 ; 4 uses
  %i.n = load <2 x double>, ptr %3, align 8, !tbaa !58 ; 3 uses
  %i.o = load double, ptr %i.g, align 8, !tbaa !58
  %i.p = shufflevector <2 x double> %i.m, <2 x double> %i.l, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.q = shufflevector <2 x double> %i.l, <2 x double> %i.m, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.r = fsub <2 x double> %i.p, %i.q             ; 4 uses
  %i.s = shufflevector <2 x double> %i.m, <2 x double> %i.l, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.t = shufflevector <2 x double> %i.l, <2 x double> %i.m, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = fsub <2 x double> %i.s, %i.t             ; 4 uses
  %i.v = insertelement <2 x double> poison, double %i.f, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.d, i64 1 ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.d, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.f, i64 1 ; 2 uses
  %i.z = fsub <2 x double> %i.w, %i.y             ; 4 uses
  %i.aa = load <2 x double>, ptr %4, align 8, !tbaa !58 ; 3 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ac = fsub <2 x double> %i.q, %i.ab           ; 4 uses
  %i.ad = shufflevector <2 x double> %i.aa, <2 x double> %i.n, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ae = fsub <2 x double> %i.t, %i.ad           ; 4 uses
  %i.af = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %i.i, i64 1 ; 2 uses
  %i.ah = fsub <2 x double> %i.y, %i.ag           ; 4 uses
  %i.ai = fsub <2 x double> %i.ab, %i.p           ; 4 uses
  %i.aj = fsub <2 x double> %i.ad, %i.s           ; 4 uses
  %i.ak = fsub <2 x double> %i.ag, %i.w           ; 4 uses
  %i.al = fmul <2 x double> %i.u, %i.u
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.r, <2 x double> %i.al)
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.am) ; 2 uses
  %i.ao = fmul <2 x double> %i.ae, %i.ae
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> %i.ao)
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ah, <2 x double> %i.ap) ; 2 uses
  %i.ar = fmul <2 x double> %i.aj, %i.aj
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ai, <2 x double> %i.ar)
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ak, <2 x double> %i.as)
  %i.au = fcmp olt <2 x double> %i.an, %i.aq      ; 7 uses
  %i.av = select <2 x i1> %i.au, <2 x double> %i.aq, <2 x double> %i.an
  %i.aw = fcmp olt <2 x double> %i.av, %i.at      ; 6 uses
  %i.ax = select <2 x i1> %i.au, <2 x double> %i.aj, <2 x double> %i.ae
  %i.ay = select <2 x i1> %i.aw, <2 x double> %i.u, <2 x double> %i.ax ; 2 uses
  %i.az = select <2 x i1> %i.au, <2 x double> %i.z, <2 x double> %i.ak
  %i.ba = select <2 x i1> %i.aw, <2 x double> %i.ah, <2 x double> %i.az ; 2 uses
  %i.bb = select <2 x i1> %i.au, <2 x double> %i.u, <2 x double> %i.aj
  %i.bc = select <2 x i1> %i.aw, <2 x double> %i.ae, <2 x double> %i.bb ; 2 uses
  %i.bd = select <2 x i1> %i.au, <2 x double> %i.ak, <2 x double> %i.ah
  %i.be = select <2 x i1> %i.aw, <2 x double> %i.z, <2 x double> %i.bd
  %i.bf = fneg <2 x double> %i.be                 ; 2 uses
  %i.bg = fmul <2 x double> %i.bc, %i.bf
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ba, <2 x double> %i.bg) ; 2 uses
  %i.bi = select <2 x i1> %i.au, <2 x double> %i.ai, <2 x double> %i.ac
  %i.bj = select <2 x i1> %i.aw, <2 x double> %i.r, <2 x double> %i.bi ; 2 uses
  %i.bk = select <2 x i1> %i.au, <2 x double> %i.r, <2 x double> %i.ai
  %i.bl = select <2 x i1> %i.aw, <2 x double> %i.ac, <2 x double> %i.bk ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, %i.bf
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.ba, <2 x double> %i.bm) ; 2 uses
  %i.bo = fneg <2 x double> %i.ay
  %i.bp = fmul <2 x double> %i.bl, %i.bo
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bc, <2 x double> %i.bp) ; 2 uses
  %i.br = fmul <2 x double> %i.bn, %i.bn
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bh, <2 x double> %i.br)
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bs) ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bt, i64 1
  %i.bw = fcmp ogt double %i.bv, %i.bu
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !58
  %i.bz = call noundef zeroext i1 @_ZN10tetgenmesh12circumsphereEPdS0_S0_S0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.ca = extractelement <2 x double> %i.aa, i64 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.cb = fcmp ogt double %i.bu, 0.000000e+00
  br i1 %i.cb, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cc = call noundef zeroext i1 @_ZN10tetgenmesh12circumsphereEPdS0_S0_S0_S0_S0_(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.cd = extractelement <2 x double> %i.n, i64 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sink122 = phi double [ %i.cd, %bb.d ], [ %i.ca, %bb.b ]
  %.sink119 = phi double [ %i.o, %bb.d ], [ %i.by, %bb.b ]
  %.sink = phi double [ %i.i, %bb.d ], [ %i.k, %bb.b ]
  %i.ce = load double, ptr %i.a, align 16, !tbaa !58
  %i.cf = fsub double %.sink122, %i.ce            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !58
  %i.ci = fsub double %.sink119, %i.ch            ; 2 uses
  %i.cj = fmul double %i.ci, %i.ci
  %i.ck = call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cm = load double, ptr %i.cl, align 16, !tbaa !58
  %i.cn = fsub double %.sink, %i.cm               ; 2 uses
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.ck)
  %sqrt.i28 = call noundef double @llvm.sqrt.f64(double %i.co)
  %i.cp = load double, ptr %i.b, align 8, !tbaa !58 ; 2 uses
  %i.cq = fsub double %sqrt.i28, %i.cp            ; 2 uses
  %i.cr = call double @llvm.fabs.f64(double %i.cq)
  %i.cs = fdiv double %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !218
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 264
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !181
  %i.cx = fcmp olt double %i.cs, %i.cw
  %.020 = select i1 %i.cx, double 0.000000e+00, double %i.cq
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.021 = phi double [ %.020, %bb.e ], [ 0.000000e+00, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret double %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh12circumsphereEPdS0_S0_S0_S0_S0_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [4 x [4 x double]], align 16      ; 18 uses
  %i.b = alloca [4 x double], align 16            ; 7 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca [4 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !58
  %i.n = load double, ptr %1, align 8, !tbaa !58  ; 3 uses
  %i.o = load <2 x double>, ptr %2, align 8, !tbaa !58 ; 2 uses
  %i.p = load <2 x double>, ptr %3, align 8, !tbaa !58 ; 2 uses
  %i.q = shufflevector <2 x double> %i.o, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = insertelement <2 x double> poison, double %i.n, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fsub <2 x double> %i.q, %i.s             ; 7 uses
  %i.u = extractelement <2 x double> %i.t, i64 0  ; 2 uses
  store double %i.u, ptr %i.a, align 16, !tbaa !58
  %i.v = shufflevector <2 x double> %i.o, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %7 = load <2 x double>, ptr %i.e, align 8, !tbaa !58 ; 3 uses
  %i.w = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fsub <2 x double> %i.v, %i.w             ; 7 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 2 uses
  store double %i.y, ptr %i.f, align 8, !tbaa !58
  %i.z = insertelement <2 x double> poison, double %i.h, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.m, i64 1
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fsub <2 x double> %i.aa, %8             ; 5 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 2 uses
  store double %i.ac, ptr %i.j, align 16, !tbaa !58
  %i.ad = shufflevector <2 x double> %i.t, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ad, ptr %i.k, align 16, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.af = extractelement <2 x double> %i.ab, i64 1
  store double %i.af, ptr %i.ae, align 16, !tbaa !58
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load double, ptr %4, align 8, !tbaa !58
  %i.ah = fsub double %i.ag, %i.n                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.ah, ptr %i.ai, align 16, !tbaa !58
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = load <2 x double>, ptr %9, align 8, !tbaa !58
  %i.aj = fsub <2 x double> %10, %7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %11 = fneg double %i.ac
  %12 = extractelement <2 x double> %i.x, i64 1
  %13 = extractelement <2 x double> %i.t, i64 1
  %i.al = shufflevector <2 x double> %i.x, <2 x double> %i.t, <2 x i32> <i32 1, i32 3>
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %15
  %16 = shufflevector <2 x double> %i.x, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %17, <2 x double> %i.am) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 2 uses
  store double %i.ao, ptr %i.ak, align 16, !tbaa !58
  %18 = fneg double %i.y
  %19 = fmul double %13, %18
  %20 = tail call double @llvm.fmuladd.f64(double %i.u, double %12, double %19)
  %21 = fneg <2 x double> %i.an
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %23 = insertelement <2 x double> %22, double %20, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = phi double [ %i.ao, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %i.aq = phi <2 x double> [ %23, %bb.c ], [ %i.aj, %bb.b ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !58
  %i.as = fmul <2 x double> %i.x, %i.x
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> %i.t, <2 x double> %i.as)
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ab, <2 x double> %i.at)
  %i.av = fmul <2 x double> %i.au, splat (double 5.000000e-01)
  store <2 x double> %i.av, ptr %i.b, align 16, !tbaa !58
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop = fmul <2 x double> %i.aq, %i.aq
  %i.aw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.aw)
  %24 = extractelement <2 x double> %i.aq, i64 1  ; 2 uses
  %i.ay = tail call noundef double @llvm.fmuladd.f64(double %24, double %24, double %i.ax)
  %i.az = fmul double %i.ay, 5.000000e-01
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink49 = phi double [ %i.az, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %.sink49, ptr %i.ba, align 16, !tbaa !58
  %i.bb = call noundef zeroext i1 @_ZN10tetgenmesh8lu_decmpEPA4_diPiPdi(ptr nonnull align 8 poison, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  br i1 %i.bb, label %._crit_edge76.i.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %bb.k, label %.sink.split

._crit_edge76.i.2:                                ; preds = %bb.f
  %i.bc = load i32, ptr %i.d, align 16, !tbaa !59
  %i.bd = sext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !58 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !59
  %i.bi = sext i32 %i.bh to i64                   ; 4 uses
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 16, !tbaa !58
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !59
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !58
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bp ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !58
  %i.bv = load double, ptr %i.bs, align 16, !tbaa !58
  %i.bw = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bz, <2 x double> zeroinitializer) ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = fsub double %i.bm, %i.cb                ; 2 uses
  %i.cd = extractelement <2 x double> %i.ca, i64 1
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.cc, double %i.cd)
  %i.cf = fsub double %i.br, %i.ce
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bp
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load double, ptr %i.ch, align 16, !tbaa !58
  %i.cj = fdiv double %i.cf, %i.ci                ; 5 uses
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bi
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load double, ptr %i.cl, align 16, !tbaa !58
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cj, double 0.000000e+00)
  %i.co = fsub double %i.cc, %i.cn
  %i.cp = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bi
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !58
  %i.cs = fdiv double %i.co, %i.cr                ; 4 uses
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bd ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load double, ptr %i.cu, align 16, !tbaa !58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !58
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cs, double 0.000000e+00)
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cj, double %i.cy)
  %i.da = fsub double %i.bf, %i.cz
  %i.db = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.bd
  %i.dc = load double, ptr %i.db, align 16, !tbaa !58
  %i.dd = fdiv double %i.da, %i.dc                ; 3 uses
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge76.i.2
  %i.de = fadd double %i.n, %i.dd
  store double %i.de, ptr %5, align 8, !tbaa !58
  %i.df = load double, ptr %i.e, align 8, !tbaa !58
  %i.dg = fadd double %i.df, %i.cs
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.dg, ptr %i.dh, align 8, !tbaa !58
  %i.di = load double, ptr %i.i, align 8, !tbaa !58
  %i.dj = fadd double %i.di, %i.cj
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.dj, ptr %i.dk, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge76.i.2
  %.not38 = icmp eq ptr %6, null
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dl = fmul double %i.cs, %i.cs
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dl)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.dm)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dn)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.j
  %sqrt.sink = phi double [ %sqrt, %bb.j ], [ 0.000000e+00, %bb.g ]
  store double %sqrt.sink, ptr %6, align 8, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i1 %i.bb
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN10tetgenmesh12facedihedralEPdS0_S0_S0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !58
  %i.e = load <3 x double>, ptr %2, align 8, !tbaa !58 ; 4 uses
  %i.f = load <3 x double>, ptr %1, align 8, !tbaa !58 ; 4 uses
  %i.g = fsub <3 x double> %i.e, %i.f             ; 6 uses
  %i.h = load <2 x double>, ptr %3, align 8, !tbaa !58 ; 2 uses
  %i.i = extractelement <3 x double> %i.g, i64 1  ; 2 uses
  %i.j = fmul double %i.i, %i.i
  %i.k = extractelement <3 x double> %i.g, i64 0  ; 2 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.j)
  %i.m = extractelement <3 x double> %i.g, i64 2  ; 2 uses
  %i.n = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.l)
  %i.o = load <2 x double>, ptr %4, align 8, !tbaa !58 ; 2 uses
  %i.p = shufflevector <3 x double> %i.f, <3 x double> poison, <2 x i32> zeroinitializer
  %i.q = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.r = fsub <2 x double> %i.p, %i.q             ; 4 uses
  %i.s = shufflevector <3 x double> %i.f, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.t = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = fsub <2 x double> %i.s, %i.t             ; 4 uses
  %i.v = shufflevector <3 x double> %i.f, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.w = insertelement <2 x double> poison, double %i.b, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.d, i64 1 ; 2 uses
  %i.y = fsub <2 x double> %i.v, %i.x             ; 4 uses
  %i.z = shufflevector <3 x double> %i.e, <3 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fsub <2 x double> %i.q, %i.z            ; 4 uses
  %i.ab = shufflevector <3 x double> %i.e, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fsub <2 x double> %i.t, %i.ab           ; 4 uses
  %i.ad = shufflevector <3 x double> %i.e, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ae = fsub <2 x double> %i.x, %i.ad           ; 4 uses
  %i.af = fmul <2 x double> %i.u, %i.u
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.r, <2 x double> %i.af)
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.y, <2 x double> %i.ag) ; 2 uses
  %i.ai = fmul <2 x double> %i.ac, %i.ac
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.aa, <2 x double> %i.ai)
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.aj)
  %i.al = insertelement <2 x double> poison, double %i.n, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = fcmp olt <2 x double> %i.am, %i.ah      ; 7 uses
  %i.ao = select <2 x i1> %i.an, <2 x double> %i.ah, <2 x double> %i.am
  %i.ap = fcmp olt <2 x double> %i.ao, %i.ak      ; 6 uses
  %i.aq = select <2 x i1> %i.an, <2 x double> %i.ac, <2 x double> %i.u
  %i.ar = shufflevector <3 x double> %i.g, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.as = select <2 x i1> %i.ap, <2 x double> %i.ar, <2 x double> %i.aq ; 2 uses
  %i.at = shufflevector <3 x double> %i.g, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.au = select <2 x i1> %i.an, <2 x double> %i.at, <2 x double> %i.ae
  %i.av = select <2 x i1> %i.ap, <2 x double> %i.y, <2 x double> %i.au ; 2 uses
  %i.aw = select <2 x i1> %i.an, <2 x double> %i.ar, <2 x double> %i.ac
  %i.ax = select <2 x i1> %i.ap, <2 x double> %i.u, <2 x double> %i.aw ; 2 uses
  %i.ay = select <2 x i1> %i.an, <2 x double> %i.ae, <2 x double> %i.y
  %i.az = select <2 x i1> %i.ap, <2 x double> %i.at, <2 x double> %i.ay
  %i.ba = fneg <2 x double> %i.az                 ; 2 uses
  %i.bb = fmul <2 x double> %i.ax, %i.ba
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.av, <2 x double> %i.bb) ; 4 uses
  %i.bd = select <2 x i1> %i.an, <2 x double> %i.aa, <2 x double> %i.r
  %i.be = shufflevector <3 x double> %i.g, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = select <2 x i1> %i.ap, <2 x double> %i.be, <2 x double> %i.bd ; 2 uses
  %i.bg = select <2 x i1> %i.an, <2 x double> %i.be, <2 x double> %i.aa
  %i.bh = select <2 x i1> %i.ap, <2 x double> %i.r, <2 x double> %i.bg ; 2 uses
  %i.bi = fmul <2 x double> %i.bh, %i.ba
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.av, <2 x double> %i.bi) ; 4 uses
  %i.bk = fneg <2 x double> %i.as
  %i.bl = fmul <2 x double> %i.bh, %i.bk
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.ax, <2 x double> %i.bl) ; 4 uses
  %i.bn = fmul <2 x double> %i.bj, %i.bj
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bc, <2 x double> %i.bn)
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bm, <2 x double> %i.bo)
  %i.bq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bp) ; 2 uses
  %shift = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bj, %shift
  %i.br = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bs = extractelement <2 x double> %i.bc, i64 0
  %i.bt = extractelement <2 x double> %i.bc, i64 1
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bt, double %i.br)
  %i.bv = extractelement <2 x double> %i.bm, i64 0
  %i.bw = extractelement <2 x double> %i.bm, i64 1
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bw, double %i.bu)
  %shift113 = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop114 = fmul <2 x double> %i.bq, %shift113
  %i.by = extractelement <2 x double> %foldExtExtBinop114, i64 0
  %i.bz = fdiv double %i.bx, %i.by                ; 3 uses
  %i.ca = fcmp ogt double %i.bz, 1.000000e+00
  %i.cb = fcmp olt double %i.bz, -1.000000e+00
  %spec.store.select = select i1 %i.cb, double -1.000000e+00, double %i.bz
  %.019 = select i1 %i.ca, double 1.000000e+00, double %spec.store.select
  %i.cc = tail call double @acos(double noundef %.019) #40 ; 2 uses
  %i.cd = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
end_hunk_0
