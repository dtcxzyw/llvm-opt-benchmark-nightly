Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/disparity_filters?download=true
inline.NumInlined: 709
inline.NumDeleted: 248
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv8ximgproc22DisparityWLSFilterImpl36ComputeDiscontinuityAwareLRC_ParBodyclERKNS_5RangeE:bb.a
  br i1 %i.l, label %.lr.ph51, label %._crit_edge52.split

.lr.ph51:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 300
  %i.p = load float, ptr %i.o, align 4, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.r = load i32, ptr %i.q, align 8, !tbaa !36
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul float %i.p, %i.s
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !89 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !183 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  %i.ba = sitofp i32 %i.u to float
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge52.split

.lr.ph.preheader:                                 ; preds = %.lr.ph51
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !184
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !185 ; 2 uses
  %i.bf = add nsw i32 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !186 ; 2 uses
  %i.bi = add nsw i32 %i.ay, %i.bh
  %.sroa.speculated40 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.h)
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.h) ; 2 uses
  %smin = sext i32 %i.bl to i64
  %i.bm = add i32 %.sroa.speculated, %i.bl
  %i.bn = sub i32 %i.bm, %.sroa.speculated40
  %i.bo = sext i32 %i.be to i64
  %i.bp = sext i32 %i.bf to i64
  br label %.lr.ph

._crit_edge52.split:                              ; preds = %._crit_edge, %.lr.ph51, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ %smin, %.lr.ph.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 6 uses
  %i.bq = mul i64 %i.y, %indvars.iv54
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bq
  %i.bs = mul i64 %i.ae, %indvars.iv54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bs
  %i.bu = mul i64 %i.ak, %indvars.iv54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bu
  %i.bw = mul i64 %i.aq, %indvars.iv54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bw
  %i.by = mul i64 %i.aw, %indvars.iv54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.by
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next55 to i32
  %exitcond.not = icmp eq i32 %i.bn, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge52.split, label %.lr.ph, !llvm.loop !181

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !38 ; 2 uses
  %i.cc = fptosi float %i.cb to i32
  %i.cd = ashr i32 %i.cc, 4
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 %indvars.iv, %i.ce          ; 4 uses
  %.not.wide = icmp sge i64 %i.cf, %i.bo
  %.wide = icmp slt i64 %i.cf, %i.bp
  %or.cond = select i1 %.not.wide, i1 %.wide, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !38
  %i.ci = fadd float %i.cb, %i.ch
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fcmp olt float %i.cj, %i.ba
  br i1 %i.ck, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cf
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !38 ; 2 uses
  %i.co = load float, ptr %i.cl, align 4, !tbaa !38 ; 2 uses
  %i.cp = fcmp olt float %i.cn, %i.co
  %i.cq = select i1 %i.cp, float %i.cn, float %i.co
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi float [ %i.cq, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv
  store float %.sink, ptr %i.cr, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.cs, label %bb.b, label %._crit_edge, !llvm.loop !182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv8ximgproc22DisparityWLSFilterImpl24ComputeDepthDisc_ParBodyC2ERS1_RNS_3MatES5_S5_i(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(308) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %5) unnamed_addr #10 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc22DisparityWLSFilterImpl24ComputeDepthDisc_ParBodyE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %5, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  %i.h = sitofp i32 %i.g to double
  %i.i = sitofp i32 %5 to double
  %i.j = fdiv double %i.h, %i.i
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptosi double %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.l, ptr %i.m, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv8ximgproc22DisparityWLSFilterImpl24ComputeDepthDisc_ParBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !60   ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75   ; 2 uses
  %i.j = mul nsw i32 %i.i, %i.g                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !51
  %i.m = mul nsw i32 %i.l, %i.i
  %.sroa.speculated26 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.m) ; 3 uses
  %i.n = icmp slt i32 %i.j, %.sroa.speculated26
  br i1 %i.n, label %.lr.ph40, label %._crit_edge41.split

.lr.ph40:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 300
  %i.r = load float, ptr %i.q, align 4, !tbaa !110 ; 2 uses
  %i.s = fmul float %i.r, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.u = load float, ptr %i.t, align 8, !tbaa !194
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !109  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !114 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !109 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !109 ; 5 uses
  %i.al = icmp sgt i32 %i.f, 0
  %i.am = fneg float %i.u
  %i.an = fdiv float %i.am, %i.s                  ; 2 uses
  br i1 %i.al, label %.lr.ph.preheader, label %._crit_edge41.split

.lr.ph.preheader:                                 ; preds = %.lr.ph40
  %.sroa.speculated30 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.j)
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.j) ; 3 uses
  %smin = sext i32 %i.ao to i64                   ; 5 uses
  %i.ap = add i32 %.sroa.speculated26, %i.ao
  %i.aq = sub i32 %i.ap, %.sroa.speculated30
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 4 uses
  %i.ar = mul i64 %i.ak, %smin
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ar ; 2 uses
  %i.as = xor i32 %i.ao, -1
  %i.at = add i32 %.sroa.speculated26, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = add nsw i64 %smin, %i.au                ; 3 uses
  %i.aw = mul i64 %i.ak, %i.av
  %i.ax = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ai, i64 %i.aw
  %scevgep47 = getelementptr i8, ptr %i.ay, i64 %i.ax ; 2 uses
  %i.az = mul i64 %i.ae, %smin
  %scevgep48 = getelementptr i8, ptr %i.ac, i64 %i.az
  %i.ba = mul i64 %i.ae, %i.av
  %i.bb = getelementptr i8, ptr %i.ac, i64 %i.ba
  %scevgep49 = getelementptr i8, ptr %i.bb, i64 %i.ax
  %i.bc = mul i64 %i.y, %smin
  %scevgep50 = getelementptr i8, ptr %i.w, i64 %i.bc
  %i.bd = mul i64 %i.y, %i.av
  %i.be = getelementptr i8, ptr %i.w, i64 %i.bd
  %scevgep51 = getelementptr i8, ptr %i.be, i64 %i.ax
  %min.iters.check = icmp ult i32 %i.f, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep49
  %bound1 = icmp ult ptr %scevgep48, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  %i.bf = or i64 %i.ae, %i.ak
  %i.bg = icmp slt i64 %i.bf, 0
  %i.bh = or i1 %found.conflict, %i.bg
  %bound053 = icmp ult ptr %scevgep, %scevgep51
  %bound154 = icmp ult ptr %scevgep50, %scevgep47
  %found.conflict55 = and i1 %bound053, %bound154
  %2 = or i64 %i.y, %i.ak
  %i.bi = icmp slt i64 %2, 0
  %i.bj = or i1 %found.conflict55, %i.bi
  %conflict.rdx = or i1 %i.bh, %i.bj
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

._crit_edge41.split:                              ; preds = %._crit_edge, %.lr.ph40, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %smin, %.lr.ph.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 4 uses
  %i.bk = mul i64 %i.y, %indvars.iv43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.bk ; 2 uses
  %i.bm = mul i64 %i.ae, %indvars.iv43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bm ; 2 uses
  %i.bo = mul i64 %i.ak, %indvars.iv43
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bo ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <4 x float>, ptr %i.bq, align 4, !tbaa !38, !alias.scope !195
  %wide.load58.a = load <4 x float>, ptr %i.br, align 4, !tbaa !38, !alias.scope !195
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load59.a = load <4 x float>, ptr %i.bs, align 4, !tbaa !38, !alias.scope !196 ; 2 uses
  %wide.load60 = load <4 x float>, ptr %i.bt, align 4, !tbaa !38, !alias.scope !196 ; 2 uses
  %i.bu = fneg <4 x float> %wide.load59.a
  %i.bv = fneg <4 x float> %wide.load60
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %wide.load59.a, <4 x float> %wide.load)
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %wide.load60, <4 x float> %wide.load58.a)
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bw, <4 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.bx, <4 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.ca = fcmp olt <4 x float> %i.by, zeroinitializer
  %i.cb = fcmp olt <4 x float> %i.bz, zeroinitializer
  %i.cc = select <4 x i1> %i.ca, <4 x float> zeroinitializer, <4 x float> %i.by
  %i.cd = select <4 x i1> %i.cb, <4 x float> zeroinitializer, <4 x float> %i.bz
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x float> %i.cc, ptr %i.ce, align 4, !tbaa !38, !alias.scope !197, !noalias !198
  store <4 x float> %i.cd, ptr %i.cf, align 4, !tbaa !38, !alias.scope !197, !noalias !198
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next44 to i32
  %exitcond45.not = icmp eq i32 %i.aq, %lftr.wideiv
  br i1 %exitcond45.not, label %._crit_edge41.split, label %.lr.ph, !llvm.loop !192

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !38
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !38 ; 2 uses
  %i.cl = fneg float %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ck, float %i.ci)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.an, float %i.cm, float 1.000000e+00) ; 2 uses
  %i.co = fcmp olt float %i.cn, 0.000000e+00
  %.sroa.speculated = select i1 %i.co, float 0.000000e+00, float %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  store float %.sroa.speculated, ptr %i.cp, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc22DisparityWLSFilterImpl21ParallelMatOp_ParBodyC2ERS1_St6vectorIMS1_FvRNS_3MatES6_ESaIS8_EERS4_IPS5_SaISB_EESE_(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(308) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv8ximgproc22DisparityWLSFilterImpl21ParallelMatOp_ParBodyE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIMN2cv8ximgproc22DisparityWLSFilterImplEFvRNS0_3MatES4_EE8allocateEmPKv.exit.i.i.i.i, !prof !113

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIMN2cv8ximgproc22DisparityWLSFilterImplEFvRNS0_3MatES4_EE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIMN2cv8ximgproc22DisparityWLSFilterImplEFvRNS0_3MatES4_EE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIMN2cv8ximgproc22DisparityWLSFilterImplEFvRNS0_3MatES4_EE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !54
  %i.o = load ptr, ptr %2, align 8, !tbaa !126    ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 16
  br i1 %i.t, label %bb.c, label %bb.d, !prof !199

bb.c:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.k, ptr align 8 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc9
  %i.u = icmp eq i64 %i.s, 16
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load <2 x i64>, ptr %i.o, align 8, !tbaa !48
  store <2 x i64> %i.v, ptr %i.k, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i10 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i10, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %.noexc.i.i11, label %_ZNSt15__new_allocatorIPN2cv3MatEE8allocateEmPKv.exit.i.i.i.i, !prof !113

.noexc.i.i11:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc12 unwind label %bb.r

.noexc12:                                         ; preds = %.noexc.i.i11
  unreachable

_ZNSt15__new_allocatorIPN2cv3MatEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIPN2cv3MatEE8allocateEmPKv.exit.i.i.i.i, %bb.f
  %i.ag = phi ptr [ null, %bb.f ], [ %i.af, %_ZNSt15__new_allocatorIPN2cv3MatEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !47
  %i.ak = load ptr, ptr %3, align 8, !tbaa !200   ; 3 uses
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !200
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !199

bb.h:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.ak, i64 %i.ao, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %.noexc13
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !41
end_hunk_0
