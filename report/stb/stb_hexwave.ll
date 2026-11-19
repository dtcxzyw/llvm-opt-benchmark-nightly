Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block338, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block338 ], [ %i.eu, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.lj, %middle.block338 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.lj, %bb.x ], [ %i.lj, %hex_blep.exit170 ], [ %i.lj, %bb.u ], [ %i.lj, %.lr.ph.i.i174 ], [ %i.lj, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader475:                       ; preds = %vector.memcheck315, %.lr.ph.i.i174.preheader, %middle.block338
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec324, %middle.block338 ] ; 6 uses
  br i1 %lcmp.mod492.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader475
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175.ph
  %i.pp = load float, ptr %i.po, align 4, !tbaa !17
  %i.pq = fsub float %i.pp, %i.pn
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.or, float %i.pn)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.pr, float %i.pt)
  store float %i.pu, ptr %i.ps, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader475
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader475 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pv = icmp eq i64 %indvars.iv.i.i175.ph, %i.et
  br i1 %i.pv, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175
  %i.px = load float, ptr %i.pw, align 4, !tbaa !17 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175
  %i.pz = load float, ptr %i.py, align 4, !tbaa !17
  %i.qa = fsub float %i.pz, %i.px
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.or, float %i.px)
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !17
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qb, float %i.qd)
  store float %i.qe, ptr %i.qc, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.next.i.i176
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !17 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next.i.i176
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !17
  %i.qj = fsub float %i.qi, %i.qg
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.or, float %i.qg)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !17
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qk, float %i.qm)
  store float %i.qn, ptr %i.ql, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fn, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dt, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.qo = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.qo
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.qq = sub nsw i32 %1, %i.qo
  %i.qr = sext i32 %i.qq to i64
  %wide.trip.count = zext nneg i32 %i.qo to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.qr ; 2 uses
  %min.iters.check462 = icmp ult i32 %i.qo, 8
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph198
  %n.vec464 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index466 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load467 = load <4 x float>, ptr %i.qs, align 16, !tbaa !17
  %wide.load468 = load <4 x float>, ptr %i.qt, align 16, !tbaa !17
  %i.qu = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index466 ; 3 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 16     ; 2 uses
  %wide.load469 = load <4 x float>, ptr %i.qu, align 4, !tbaa !17
  %wide.load470 = load <4 x float>, ptr %i.qv, align 4, !tbaa !17
  %i.qw = fadd <4 x float> %wide.load467, %wide.load469
  %i.qx = fadd <4 x float> %wide.load468, %wide.load470
  store <4 x float> %i.qw, ptr %i.qu, align 4, !tbaa !17
  store <4 x float> %i.qx, ptr %i.qv, align 4, !tbaa !17
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.qy = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.qy, label %middle.block472, label %vector.body465, !llvm.loop !100

middle.block472:                                  ; preds = %vector.body465
  %cmp.n473 = icmp eq i64 %n.vec464, %wide.trip.count
  br i1 %cmp.n473, label %._crit_edge199, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %.lr.ph198, %middle.block472
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec464, %middle.block472 ]
  br label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph461 ], [ %indvars.iv211.ph, %scalar.ph461.preheader ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.rb = load float, ptr %gep276, align 4, !tbaa !17
  %i.rc = fadd float %i.ra, %i.rb
  store float %i.rc, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph461, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph461, %middle.block472, %.preheader179
  %i.rd = sext i32 %i.qo to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.re = zext nneg i32 %1 to i64
  %i.rf = shl nuw nsw i64 %i.re, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.rf, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cu, %._crit_edge202 ], [ %i.rd, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.rh = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.rg, i64 %i.rh, i1 false)
  store float %.4, ptr %2, align 4, !tbaa !102
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hexwave_shutdown(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  tail call void @free(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  tail call void @free(ptr noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @hexwave_init(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 5 uses
  %i.b = mul i32 %i.a, %1                         ; 5 uses
  %i.c = add i32 %1, 1                            ; 3 uses
  %i.d = mul nsw i32 %i.c, %0                     ; 2 uses
  %i.e = shl i32 %i.b, 1                          ; 6 uses
  %i.f = or disjoint i32 %i.e, 1
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #13 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %spec.store.select134 = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.g ; 2 uses
  %i.q = sext i32 %i.d to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select135 = phi i32 [ %spec.store.select134, %bb.b ], [ %spec.store.select, %bb.c ] ; 6 uses
  %i.s = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 25 uses
  %i.t = phi ptr [ %i.i, %bb.b ], [ %2, %bb.c ]   ; 26 uses
  %.0125 = phi ptr [ %i.m, %bb.b ], [ %i.p, %bb.c ] ; 18 uses
  %.0124 = phi ptr [ %i.n, %bb.b ], [ %i.r, %bb.c ] ; 18 uses
  %.not130147 = icmp slt i32 %i.b, 0
  br i1 %.not130147, label %.preheader140, label %.preheader142.lr.ph

.preheader142.lr.ph:                              ; preds = %bb.d
  %i.u = sitofp i32 %i.e to float
  %i.v = sitofp i32 %1 to float
  %i.w = zext nneg i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.x = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %.split.us
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %.split.us ] ; 6 uses
  %.0120149 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi146, %.split.us ] ; 2 uses
  %.0122148 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, %i.w
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x40C90FDA
  %i.ac = fdiv float %i.ab, %i.u                  ; 3 uses
  %i.ad = fpext float %i.ac to double             ; 17 uses
  %i.ae = fmul float %i.ac, 2.000000e+00
  %i.af = fpext float %i.ae to double             ; 17 uses
  %i.ag = fmul float %i.ac, 3.000000e+00
  %i.ah = fpext float %i.ag to double             ; 17 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = sub i32 %i.ai, %i.b
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x40490FD8
  %i.am = fdiv float %i.al, %i.v                  ; 2 uses
  %i.an = fpext float %i.am to double
  br i1 %i.y, label %.preheader142.split.us.preheader, label %.preheader142.split

.preheader142.split.us.preheader:                 ; preds = %.preheader142
  %i.ao = tail call double @cos(double noundef %i.ad) #12
  %i.ap = tail call double @cos(double noundef %i.af) #12
  %i.aq = tail call double @cos(double noundef %i.ah) #12
  %i.ar = tail call double @cos(double noundef %i.ad) #12
  %i.as = tail call double @cos(double noundef %i.af) #12
  %i.at = tail call double @cos(double noundef %i.ah) #12
  %i.au = tail call double @cos(double noundef %i.ad) #12
  %i.av = tail call double @cos(double noundef %i.af) #12
  %i.aw = tail call double @cos(double noundef %i.ah) #12
  %i.ax = tail call double @cos(double noundef %i.ad) #12
  %i.ay = tail call double @cos(double noundef %i.af) #12
  %i.az = tail call double @cos(double noundef %i.ah) #12
  %i.ba = tail call double @cos(double noundef %i.ad) #12
  %i.bb = tail call double @cos(double noundef %i.af) #12
  %i.bc = tail call double @cos(double noundef %i.ah) #12
  %i.bd = tail call double @cos(double noundef %i.ad) #12
  %i.be = tail call double @cos(double noundef %i.af) #12
  %i.bf = tail call double @cos(double noundef %i.ah) #12
  %i.bg = tail call double @cos(double noundef %i.ad) #12
  %i.bh = tail call double @cos(double noundef %i.af) #12
  %i.bi = tail call double @cos(double noundef %i.ah) #12
  %i.bj = tail call double @cos(double noundef %i.ad) #12
  %i.bk = tail call double @cos(double noundef %i.af) #12
  %i.bl = tail call double @cos(double noundef %i.ah) #12
  %i.bm = tail call double @cos(double noundef %i.ad) #12
  %i.bn = tail call double @cos(double noundef %i.af) #12
  %i.bo = tail call double @cos(double noundef %i.ah) #12
  %i.bp = tail call double @cos(double noundef %i.ad) #12
  %i.bq = tail call double @cos(double noundef %i.af) #12
  %i.br = tail call double @cos(double noundef %i.ah) #12
  %i.bs = tail call double @cos(double noundef %i.ad) #12
  %i.bt = tail call double @cos(double noundef %i.af) #12
  %i.bu = tail call double @cos(double noundef %i.ah) #12
  %i.bv = tail call double @cos(double noundef %i.ad) #12
  %i.bw = tail call double @cos(double noundef %i.af) #12
  %i.bx = tail call double @cos(double noundef %i.ah) #12
  %i.by = tail call double @cos(double noundef %i.ad) #12
  %i.bz = tail call double @cos(double noundef %i.af) #12
  %i.ca = tail call double @cos(double noundef %i.ah) #12
  %i.cb = tail call double @cos(double noundef %i.ad) #12
  %i.cc = tail call double @cos(double noundef %i.af) #12
  %i.cd = tail call double @cos(double noundef %i.ah) #12
  %i.ce = tail call double @cos(double noundef %i.ad) #12
  %i.cf = tail call double @cos(double noundef %i.af) #12
  %i.cg = tail call double @cos(double noundef %i.ah) #12
  %i.ch = tail call double @cos(double noundef %i.ad) #12
  %i.ci = tail call double @cos(double noundef %i.af) #12
  %i.cj = tail call double @cos(double noundef %i.ah) #12
  %i.ck = insertelement <16 x double> poison, double %i.ao, i64 0
  %i.cl = insertelement <16 x double> %i.ck, double %i.ar, i64 1
  %i.cm = insertelement <16 x double> %i.cl, double %i.au, i64 2
  %i.cn = insertelement <16 x double> %i.cm, double %i.ax, i64 3
  %i.co = insertelement <16 x double> %i.cn, double %i.ba, i64 4
  %i.cp = insertelement <16 x double> %i.co, double %i.bd, i64 5
  %i.cq = insertelement <16 x double> %i.cp, double %i.bg, i64 6
  %i.cr = insertelement <16 x double> %i.cq, double %i.bj, i64 7
  %i.cs = insertelement <16 x double> %i.cr, double %i.bm, i64 8
  %i.ct = insertelement <16 x double> %i.cs, double %i.bp, i64 9
  %i.cu = insertelement <16 x double> %i.ct, double %i.bs, i64 10
  %i.cv = insertelement <16 x double> %i.cu, double %i.bv, i64 11
  %i.cw = insertelement <16 x double> %i.cv, double %i.by, i64 12
  %i.cx = insertelement <16 x double> %i.cw, double %i.cb, i64 13
  %i.cy = insertelement <16 x double> %i.cx, double %i.ce, i64 14
  %i.cz = insertelement <16 x double> %i.cy, double %i.ch, i64 15
  %i.da = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.cz, <16 x double> splat (double -4.873960e-01), <16 x double> splat (double 3.557680e-01))
  %i.db = insertelement <16 x double> poison, double %i.ap, i64 0
  %i.dc = insertelement <16 x double> %i.db, double %i.as, i64 1
  %i.dd = insertelement <16 x double> %i.dc, double %i.av, i64 2
  %i.de = insertelement <16 x double> %i.dd, double %i.ay, i64 3
  %i.df = insertelement <16 x double> %i.de, double %i.bb, i64 4
  %i.dg = insertelement <16 x double> %i.df, double %i.be, i64 5
  %i.dh = insertelement <16 x double> %i.dg, double %i.bh, i64 6
  %i.di = insertelement <16 x double> %i.dh, double %i.bk, i64 7
  %i.dj = insertelement <16 x double> %i.di, double %i.bn, i64 8
  %i.dk = insertelement <16 x double> %i.dj, double %i.bq, i64 9
  %i.dl = insertelement <16 x double> %i.dk, double %i.bt, i64 10
  %i.dm = insertelement <16 x double> %i.dl, double %i.bw, i64 11
  %i.dn = insertelement <16 x double> %i.dm, double %i.bz, i64 12
  %i.do = insertelement <16 x double> %i.dn, double %i.cc, i64 13
  %i.dp = insertelement <16 x double> %i.do, double %i.cf, i64 14
  %i.dq = insertelement <16 x double> %i.dp, double %i.ci, i64 15
  %i.dr = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.dq, <16 x double> splat (double 1.442320e-01), <16 x double> %i.da)
  %i.ds = insertelement <16 x double> poison, double %i.aq, i64 0
  %i.dt = insertelement <16 x double> %i.ds, double %i.at, i64 1
  %i.du = insertelement <16 x double> %i.dt, double %i.aw, i64 2
  %i.dv = insertelement <16 x double> %i.du, double %i.az, i64 3
  %i.dw = insertelement <16 x double> %i.dv, double %i.bc, i64 4
  %i.dx = insertelement <16 x double> %i.dw, double %i.bf, i64 5
  %i.dy = insertelement <16 x double> %i.dx, double %i.bi, i64 6
  %i.dz = insertelement <16 x double> %i.dy, double %i.bl, i64 7
  %i.ea = insertelement <16 x double> %i.dz, double %i.bo, i64 8
  %i.eb = insertelement <16 x double> %i.ea, double %i.br, i64 9
  %i.ec = insertelement <16 x double> %i.eb, double %i.bu, i64 10
  %i.ed = insertelement <16 x double> %i.ec, double %i.bx, i64 11
  %i.ee = insertelement <16 x double> %i.ed, double %i.ca, i64 12
  %i.ef = insertelement <16 x double> %i.ee, double %i.cd, i64 13
  %i.eg = insertelement <16 x double> %i.ef, double %i.cg, i64 14
  %i.eh = insertelement <16 x double> %i.eg, double %i.cj, i64 15
  %i.ei = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.eh, <16 x double> splat (double -1.260400e-02), <16 x double> %i.dr)
  %i.ej = fptrunc <16 x double> %i.ei to <16 x float>
  %i.ek = fpext <16 x float> %i.ej to <16 x double>
  %i.el = fmul <16 x double> %i.ek, splat (double 6.250000e-02) ; 16 uses
  %i.em = extractelement <16 x double> %i.el, i64 0
  %i.en = fadd double %.0122148, %i.em            ; 2 uses
  %i.eo = fmul double %i.en, 6.250000e-02
  %i.ep = fadd double %.0120149, %i.eo
  %i.eq = extractelement <16 x double> %i.el, i64 1
  %i.er = fadd double %i.en, %i.eq                ; 2 uses
  %i.es = fmul double %i.er, 6.250000e-02
  %i.et = fadd double %i.ep, %i.es
  %i.eu = extractelement <16 x double> %i.el, i64 2
  %i.ev = fadd double %i.er, %i.eu                ; 2 uses
  %i.ew = fmul double %i.ev, 6.250000e-02
  %i.ex = fadd double %i.et, %i.ew
  %i.ey = extractelement <16 x double> %i.el, i64 3
  %i.ez = fadd double %i.ev, %i.ey                ; 2 uses
  %i.fa = fmul double %i.ez, 6.250000e-02
  %i.fb = fadd double %i.ex, %i.fa
  %i.fc = extractelement <16 x double> %i.el, i64 4
  %i.fd = fadd double %i.ez, %i.fc                ; 2 uses
  %i.fe = fmul double %i.fd, 6.250000e-02
  %i.ff = fadd double %i.fb, %i.fe
  %i.fg = extractelement <16 x double> %i.el, i64 5
  %i.fh = fadd double %i.fd, %i.fg                ; 2 uses
  %i.fi = fmul double %i.fh, 6.250000e-02
  %i.fj = fadd double %i.ff, %i.fi
  %i.fk = extractelement <16 x double> %i.el, i64 6
  %i.fl = fadd double %i.fh, %i.fk                ; 2 uses
  %i.fm = fmul double %i.fl, 6.250000e-02
  %i.fn = fadd double %i.fj, %i.fm
  %i.fo = extractelement <16 x double> %i.el, i64 7
  %i.fp = fadd double %i.fl, %i.fo                ; 2 uses
  %i.fq = fmul double %i.fp, 6.250000e-02
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = extractelement <16 x double> %i.el, i64 8
  %i.ft = fadd double %i.fp, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, 6.250000e-02
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = extractelement <16 x double> %i.el, i64 9
  %i.fx = fadd double %i.ft, %i.fw                ; 2 uses
  %i.fy = fmul double %i.fx, 6.250000e-02
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = extractelement <16 x double> %i.el, i64 10
  %i.gb = fadd double %i.fx, %i.ga                ; 2 uses
  %i.gc = fmul double %i.gb, 6.250000e-02
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = extractelement <16 x double> %i.el, i64 11
  %i.gf = fadd double %i.gb, %i.ge                ; 2 uses
  %i.gg = fmul double %i.gf, 6.250000e-02
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = extractelement <16 x double> %i.el, i64 12
  %i.gj = fadd double %i.gf, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, 6.250000e-02
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = extractelement <16 x double> %i.el, i64 13
  %i.gn = fadd double %i.gj, %i.gm                ; 2 uses
  %i.go = fmul double %i.gn, 6.250000e-02
  %i.gp = fadd double %i.gl, %i.go
  %i.gq = extractelement <16 x double> %i.el, i64 14
  %i.gr = fadd double %i.gn, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, 6.250000e-02
  %i.gt = fadd double %i.gp, %i.gs
  %i.gu = extractelement <16 x double> %i.el, i64 15
  %i.gv = fadd double %i.gr, %i.gu                ; 2 uses
  %i.gw = fmul double %i.gv, 6.250000e-02
  %i.gx = fadd double %i.gt, %i.gw
  br label %.split.us

.lr.ph:                                           ; preds = %.split.us
  %i.gy = zext nneg i32 %i.e to i64               ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gy ; 6 uses
  %i.ha = sitofp i32 %i.a to float                ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gy ; 6 uses
  %smax175 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.hc = or disjoint i32 %smax175, 1
  %wide.trip.count176 = zext nneg i32 %i.hc to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 4 uses
  %i.hd = zext nneg i32 %smax to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172.ph ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hh = fdiv float 1.000000e+00, %i.hg
  %i.hi = fmul float %i.hf, %i.hh
  store float %i.hi, ptr %i.he, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172.ph ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !17
  %i.hl = load float, ptr %i.hb, align 4, !tbaa !17
  %i.hm = fdiv float %i.ha, %i.hl
  %i.hn = fmul float %i.hk, %i.hm
  store float %i.hn, ptr %i.hj, align 4, !tbaa !17
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1
  %i.ho = icmp eq i64 %indvars.iv172.ph, %i.hd
  br i1 %i.ho, label %.preheader140, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hp = zext nneg i32 %smax to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = or disjoint i64 %i.hq, 4                ; 2 uses
  %i.hs = getelementptr i8, ptr %i.t, i64 %i.hr   ; 3 uses
  %i.ht = getelementptr i8, ptr %i.s, i64 %i.hr   ; 3 uses
  %bound0 = icmp ult ptr %i.t, %i.ht
  %bound1 = icmp ult ptr %i.s, %i.hs
  %found.conflict = and i1 %bound0, %bound1
  %i.hu = shl nuw nsw i64 %i.gy, 2
  %i.hv = or disjoint i64 %i.hu, 4                ; 2 uses
  %i.hw = getelementptr i8, ptr %i.t, i64 %i.hv   ; 2 uses
  %bound0229 = icmp ult ptr %i.t, %i.hw
  %bound1230 = icmp ult ptr %i.gz, %i.hs
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx = or i1 %found.conflict, %found.conflict231
  %i.hx = getelementptr i8, ptr %i.s, i64 %i.hv   ; 2 uses
  %bound0232 = icmp ult ptr %i.t, %i.hx
  %bound1233 = icmp ult ptr %i.hb, %i.hs
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx, %found.conflict234
  %bound0236 = icmp ult ptr %i.s, %i.hw
  %bound1237 = icmp ult ptr %i.gz, %i.ht
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.s, %i.hx
  %bound1241 = icmp ult ptr %i.hb, %i.ht
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br i1 %conflict.rdx243, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count176, 2147483640 ; 2 uses
  %i.hy = load float, ptr %i.gz, align 4, !tbaa !17, !alias.scope !144
  %i.hz = fdiv float 1.000000e+00, %i.hy
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ia = load float, ptr %i.hb, align 4, !tbaa !17, !alias.scope !145
  %i.ib = fdiv float %i.ha, %i.ia
  %broadcast.splatinsert247 = insertelement <4 x float> poison, float %i.ib, i64 0
  %broadcast.splat248 = shufflevector <4 x float> %broadcast.splatinsert247, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ic, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %wide.load244 = load <4 x float>, ptr %i.id, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ie = fmul <4 x float> %wide.load, %broadcast.splat
  %i.if = fmul <4 x float> %wide.load244, %broadcast.splat
  store <4 x float> %i.ie, ptr %i.ic, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  store <4 x float> %i.if, ptr %i.id, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load245 = load <4 x float>, ptr %i.ig, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %wide.load246 = load <4 x float>, ptr %i.ih, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %i.ii = fmul <4 x float> %wide.load245, %broadcast.splat248
  %i.ij = fmul <4 x float> %wide.load246, %broadcast.splat248
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  store <4 x float> %i.ij, ptr %i.ih, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %scalar.ph.preheader, label %vector.body, !llvm.loop !128

.preheader142.split:                              ; preds = %.preheader142, %.preheader142.split
  %.0145 = phi i32 [ %i.jb, %.preheader142.split ], [ 0, %.preheader142 ]
  %.1121144 = phi double [ %i.ja, %.preheader142.split ], [ %.0120149, %.preheader142 ]
  %.1123143 = phi double [ %i.iy, %.preheader142.split ], [ %.0122148, %.preheader142 ]
  %i.il = tail call double @sin(double noundef %i.an) #12
  %i.im = fptrunc double %i.il to float
  %i.in = fdiv float %i.im, %i.am
  %i.io = tail call double @cos(double noundef %i.ad) #12
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double -4.873960e-01, double 3.557680e-01)
  %i.iq = tail call double @cos(double noundef %i.af) #12
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.iq, double 1.442320e-01, double %i.ip)
  %i.is = tail call double @cos(double noundef %i.ah) #12
  %i.it = tail call double @llvm.fmuladd.f64(double %i.is, double -1.260400e-02, double %i.ir)
  %i.iu = fptrunc double %i.it to float
  %i.iv = fmul float %i.in, %i.iu
  %i.iw = fpext float %i.iv to double
  %i.ix = fmul double %i.iw, 6.250000e-02
  %i.iy = fadd double %.1123143, %i.ix            ; 3 uses
  %i.iz = fmul double %i.iy, 6.250000e-02
  %i.ja = fadd double %.1121144, %i.iz            ; 2 uses
  %i.jb = add nuw nsw i32 %.0145, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.jb, 16
  br i1 %exitcond.not, label %.split.us, label %.preheader142.split, !llvm.loop !129

.split.us:                                        ; preds = %.preheader142.split, %.preheader142.split.us.preheader
  %.us-phi = phi double [ %i.gv, %.preheader142.split.us.preheader ], [ %i.iy, %.preheader142.split ] ; 2 uses
  %.us-phi146 = phi double [ %i.gx, %.preheader142.split.us.preheader ], [ %i.ja, %.preheader142.split ] ; 2 uses
  %i.jc = fptrunc double %.us-phi to float
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store float %i.jc, ptr %i.jd, align 4, !tbaa !17
  %i.je = fptrunc double %.us-phi146 to float
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.je, ptr %i.jf, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond171.not, label %.lr.ph, label %.preheader142, !llvm.loop !130

.preheader140:                                    ; preds = %scalar.ph.preheader, %scalar.ph, %bb.d
  %.not132155 = icmp sgt i32 %1, -1
  %i.jg = icmp sgt i32 %spec.store.select135, 0
  %or.cond = and i1 %.not132155, %i.jg
  br i1 %or.cond, label %.preheader139.preheader, label %.preheader138

.preheader139.preheader:                          ; preds = %.preheader140
  %i.jh = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ji = zext nneg i32 %spec.store.select135 to i64 ; 9 uses
  %wide.trip.count186 = zext i32 %i.c to i64      ; 3 uses
  %3 = mul nuw nsw i64 %i.ji, %wide.trip.count186
  %4 = shl i64 %3, 2                              ; 2 uses
  %scevgep = getelementptr i8, ptr %.0124, i64 %4 ; 2 uses
  %i.jj = shl nuw nsw i64 %i.ji, 2                ; 2 uses
  %i.jk = add nuw nsw i64 %i.ji, %wide.trip.count186
  %5 = shl nuw nsw i64 %i.jk, 2
  %6 = add nsw i64 %5, -4                         ; 2 uses
  %scevgep272 = getelementptr i8, ptr %i.s, i64 %6 ; 2 uses
  %scevgep275 = getelementptr i8, ptr %i.t, i64 %6 ; 2 uses
  %scevgep276 = getelementptr i8, ptr %.0125, i64 %4 ; 2 uses
  %scevgep273 = getelementptr i8, ptr %.0124, i64 %i.jj
  %scevgep274 = getelementptr i8, ptr %.0125, i64 %i.jj
  %min.iters.check276 = icmp ugt i32 %spec.store.select135, 15
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond340 = and i1 %min.iters.check276, %ident.check.not
  %bound0278 = icmp ult ptr %.0125, %scevgep273
  %bound1279 = icmp ult ptr %.0124, %scevgep274
  %found.conflict280 = and i1 %bound0278, %bound1279
  %bound0281 = icmp ult ptr %.0125, %scevgep275
  %bound1282 = icmp ult ptr %i.t, %scevgep276
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %found.conflict280, %found.conflict283
  %bound0285 = icmp ult ptr %.0125, %scevgep272
  %bound1286 = icmp ult ptr %i.s, %scevgep276
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %.0124, %scevgep275
  %bound1290 = icmp ult ptr %i.t, %scevgep
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %.0124, %scevgep272
  %bound1294 = icmp ult ptr %i.s, %scevgep
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %n.vec298 = and i64 %i.ji, 2147483640           ; 9 uses
  %i.jl = icmp eq i64 %n.vec298, 8
  %i.jm = icmp eq i64 %n.vec298, 16
  %i.jn = icmp eq i64 %n.vec298, 24
  %i.jo = icmp eq i64 %n.vec298, 32
  %i.jp = icmp eq i64 %n.vec298, 40
  %i.jq = icmp eq i64 %n.vec298, 48
  %i.jr = icmp eq i64 %n.vec298, 56
  %cmp.n307 = icmp eq i64 %n.vec298, %i.ji
  %xtraiter342 = and i64 %i.ji, 1
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  %i.js = add nsw i64 %i.ji, -1
  br label %.preheader139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph ], [ %indvars.iv.next173.prol, %scalar.ph.preheader ] ; 4 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !17
  %i.jv = load float, ptr %i.gz, align 4, !tbaa !17
  %i.jw = fdiv float 1.000000e+00, %i.jv
  %i.jx = fmul float %i.ju, %i.jw
  store float %i.jx, ptr %i.jt, align 4, !tbaa !17
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !17
  %i.ka = load float, ptr %i.hb, align 4, !tbaa !17
  %i.kb = fdiv float %i.ha, %i.ka
  %i.kc = fmul float %i.jz, %i.kb
  store float %i.kc, ptr %i.jy, align 4, !tbaa !17
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next173 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !17
  %i.kf = load float, ptr %i.gz, align 4, !tbaa !17
  %i.kg = fdiv float 1.000000e+00, %i.kf
  %i.kh = fmul float %i.ke, %i.kg
  store float %i.kh, ptr %i.kd, align 4, !tbaa !17
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next173 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !17
  %i.kk = load float, ptr %i.hb, align 4, !tbaa !17
  %i.kl = fdiv float %i.ha, %i.kk
  %i.km = fmul float %i.kj, %i.kl
  store float %i.km, ptr %i.ki, align 4, !tbaa !17
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %exitcond177.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count176
  br i1 %exitcond177.not.1, label %.preheader140, label %scalar.ph, !llvm.loop !131

.preheader139:                                    ; preds = %.preheader139.preheader, %._crit_edge
  %indvars.iv183 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next184, %._crit_edge ] ; 14 uses
  %i.kn = mul nuw nsw i64 %indvars.iv183, %i.ji   ; 12 uses
  %or.cond340.not = xor i1 %or.cond340, true
  %brmerge = select i1 %or.cond340.not, i1 true, i1 %conflict.rdx296
  br i1 %brmerge, label %scalar.ph275.preheader, label %vector.body299

vector.body299:                                   ; preds = %.preheader139
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv183 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load301 = load <4 x float>, ptr %i.ko, align 4, !tbaa !17, !alias.scope !150
  %wide.load302 = load <4 x float>, ptr %i.kp, align 4, !tbaa !17, !alias.scope !150
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.kn ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store <4 x float> %wide.load301, ptr %i.kq, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302, ptr %i.kr, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv183 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load303 = load <4 x float>, ptr %i.ks, align 4, !tbaa !17, !alias.scope !153
  %wide.load304 = load <4 x float>, ptr %i.kt, align 4, !tbaa !17, !alias.scope !153
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.kn ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store <4 x float> %wide.load303, ptr %i.ku, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304, ptr %i.kv, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jl, label %middle.block306, label %vector.body299.1

vector.body299.1:                                 ; preds = %vector.body299
  %i.kw = add nuw nsw i64 %indvars.iv183, 8       ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %wide.load301.1 = load <4 x float>, ptr %i.kx, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.1 = load <4 x float>, ptr %i.ky, align 4, !tbaa !17, !alias.scope !150
  %i.kz = add nuw nsw i64 %i.kn, 8                ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x float> %wide.load301.1, ptr %i.la, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.1, ptr %i.lb, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kw ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load303.1 = load <4 x float>, ptr %i.lc, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.1 = load <4 x float>, ptr %i.ld, align 4, !tbaa !17, !alias.scope !153
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.kz ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store <4 x float> %wide.load303.1, ptr %i.le, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.1, ptr %i.lf, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jm, label %middle.block306, label %vector.body299.2

vector.body299.2:                                 ; preds = %vector.body299.1
  %i.lg = add nuw nsw i64 %indvars.iv183, 16      ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load301.2 = load <4 x float>, ptr %i.lh, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.2 = load <4 x float>, ptr %i.li, align 4, !tbaa !17, !alias.scope !150
  %i.lj = add nuw nsw i64 %i.kn, 16               ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <4 x float> %wide.load301.2, ptr %i.lk, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.2, ptr %i.ll, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lg ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load303.2 = load <4 x float>, ptr %i.lm, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.2 = load <4 x float>, ptr %i.ln, align 4, !tbaa !17, !alias.scope !153
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store <4 x float> %wide.load303.2, ptr %i.lo, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.2, ptr %i.lp, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jn, label %middle.block306, label %vector.body299.3

vector.body299.3:                                 ; preds = %vector.body299.2
  %i.lq = add nuw nsw i64 %indvars.iv183, 24      ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load301.3 = load <4 x float>, ptr %i.lr, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.3 = load <4 x float>, ptr %i.ls, align 4, !tbaa !17, !alias.scope !150
  %i.lt = add nuw nsw i64 %i.kn, 24               ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.lt ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <4 x float> %wide.load301.3, ptr %i.lu, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.3, ptr %i.lv, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lq ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load303.3 = load <4 x float>, ptr %i.lw, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.3 = load <4 x float>, ptr %i.lx, align 4, !tbaa !17, !alias.scope !153
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.lt ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store <4 x float> %wide.load303.3, ptr %i.ly, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.3, ptr %i.lz, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jo, label %middle.block306, label %vector.body299.4

vector.body299.4:                                 ; preds = %vector.body299.3
  %i.ma = add nuw nsw i64 %indvars.iv183, 32      ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ma ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %wide.load301.4 = load <4 x float>, ptr %i.mb, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.4 = load <4 x float>, ptr %i.mc, align 4, !tbaa !17, !alias.scope !150
  %i.md = add nuw nsw i64 %i.kn, 32               ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <4 x float> %wide.load301.4, ptr %i.me, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.4, ptr %i.mf, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ma ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load303.4 = load <4 x float>, ptr %i.mg, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.4 = load <4 x float>, ptr %i.mh, align 4, !tbaa !17, !alias.scope !153
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.md ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16
  store <4 x float> %wide.load303.4, ptr %i.mi, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.4, ptr %i.mj, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jp, label %middle.block306, label %vector.body299.5

vector.body299.5:                                 ; preds = %vector.body299.4
  %i.mk = add nuw nsw i64 %indvars.iv183, 40      ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mk ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %wide.load301.5 = load <4 x float>, ptr %i.ml, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.5 = load <4 x float>, ptr %i.mm, align 4, !tbaa !17, !alias.scope !150
  %i.mn = add nuw nsw i64 %i.kn, 40               ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <4 x float> %wide.load301.5, ptr %i.mo, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.5, ptr %i.mp, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mk ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load303.5 = load <4 x float>, ptr %i.mq, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.5 = load <4 x float>, ptr %i.mr, align 4, !tbaa !17, !alias.scope !153
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mn ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store <4 x float> %wide.load303.5, ptr %i.ms, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.5, ptr %i.mt, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jq, label %middle.block306, label %vector.body299.6

vector.body299.6:                                 ; preds = %vector.body299.5
  %i.mu = add nuw nsw i64 %indvars.iv183, 48      ; 2 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load301.6 = load <4 x float>, ptr %i.mv, align 4, !tbaa !17, !alias.scope !150
  %wide.load302.6 = load <4 x float>, ptr %i.mw, align 4, !tbaa !17, !alias.scope !150
  %i.mx = add nuw nsw i64 %i.kn, 48               ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mx ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  store <4 x float> %wide.load301.6, ptr %i.my, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load302.6, ptr %i.mz, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mu ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %wide.load303.6 = load <4 x float>, ptr %i.na, align 4, !tbaa !17, !alias.scope !153
  %wide.load304.6 = load <4 x float>, ptr %i.nb, align 4, !tbaa !17, !alias.scope !153
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mx ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <4 x float> %wide.load303.6, ptr %i.nc, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load304.6, ptr %i.nd, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jr, label %middle.block306, label %vector.body299.7

vector.body299.7:                                 ; preds = %vector.body299.6
end_hunk_0
