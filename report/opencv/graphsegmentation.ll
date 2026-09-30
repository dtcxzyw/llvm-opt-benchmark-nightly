Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graphsegmentation?download=true
inline.NumInlined: 241
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv8ximgproc12segmentation21GraphSegmentationImpl10buildGraphEPPNS1_4EdgeERiRKNS_3MatE:bb.a
  %indvars.iv.188.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.190.1, %.unr-lcssa143 ]
  %.06272.189.epil.init = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.ew, %.unr-lcssa143 ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.ex = add nuw nsw i64 %indvars.iv.188.epil.init, %i.ax ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !42
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ex
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !42
  %i.fc = fsub float %i.ez, %i.fb                 ; 2 uses
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %.06272.189.epil.init)
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa143, %.preheader.epil.preheader
  %.lcssa125 = phi float [ %i.ew, %.unr-lcssa143 ], [ %i.fd, %.preheader.epil.preheader ]
  %i.fe = tail call noundef float @sqrtf(float noundef %.lcssa125) #20
  %i.ff = load i32, ptr %2, align 4, !tbaa !37    ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [12 x i8], ptr %i.l, i64 %i.fg ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store float %i.fe, ptr %i.fi, align 4, !tbaa !44
  %i.fj = mul nuw nsw i32 %i.eg, %i.at
  %i.fk = trunc nuw nsw i64 %indvars.iv93 to i32  ; 2 uses
  %i.fl = add nsw i32 %i.fj, %i.fk
  store i32 %i.fl, ptr %i.fh, align 4, !tbaa !45
  %i.fm = mul nuw nsw i32 %i.eg, %i.au
  %i.fn = add nsw i32 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !46
  %i.fp = add nsw i32 %i.ff, 1
  store i32 %i.fp, ptr %2, align 4, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 5 uses
  %i.fq = load i32, ptr %i.a, align 8, !tbaa !33
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv96, %i.fr
  br i1 %i.fs, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ft = load i32, ptr %i.c, align 4, !tbaa !34  ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next94, %i.fu
  br i1 %i.fv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fw = mul nuw nsw i64 %indvars.iv.next94, %i.y
  %invariant.gep114 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ax ; 5 uses
  %invariant.gep116 = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fw ; 5 uses
  br i1 %i.ad, label %.epil.preheader154, label %.new152

.new152:                                          ; preds = %bb.m, %.new152
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1.3, %.new152 ], [ 0, %bb.m ] ; 6 uses
  %.06272.1.1 = phi float [ %i.gm, %.new152 ], [ 0.000000e+00, %bb.m ]
  %niter162 = phi i64 [ %niter162.next.3, %.new152 ], [ 0, %bb.m ]
  %gep115 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep114, i64 %indvars.iv.1.1
  %i.fx = load float, ptr %gep115, align 4, !tbaa !42
  %gep117 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep116, i64 %indvars.iv.1.1
  %i.fy = load float, ptr %gep117, align 4, !tbaa !42
  %i.fz = fsub float %i.fx, %i.fy                 ; 2 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fz, float %i.fz, float %.06272.1.1)
  %indvars.iv.next.1.1 = or disjoint i64 %indvars.iv.1.1, 1 ; 2 uses
  %gep115.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep114, i64 %indvars.iv.next.1.1
  %i.gb = load float, ptr %gep115.1, align 4, !tbaa !42
  %gep117.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep116, i64 %indvars.iv.next.1.1
  %i.gc = load float, ptr %gep117.1, align 4, !tbaa !42
  %i.gd = fsub float %i.gb, %i.gc                 ; 2 uses
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.ga)
  %indvars.iv.next.1.1.1 = or disjoint i64 %indvars.iv.1.1, 2 ; 2 uses
  %gep115.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep114, i64 %indvars.iv.next.1.1.1
  %i.gf = load float, ptr %gep115.2, align 4, !tbaa !42
  %gep117.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep116, i64 %indvars.iv.next.1.1.1
  %i.gg = load float, ptr %gep117.2, align 4, !tbaa !42
  %i.gh = fsub float %i.gf, %i.gg                 ; 2 uses
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.ge)
  %indvars.iv.next.1.1.2 = or disjoint i64 %indvars.iv.1.1, 3 ; 2 uses
  %gep115.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep114, i64 %indvars.iv.next.1.1.2
  %i.gj = load float, ptr %gep115.3, align 4, !tbaa !42
  %gep117.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep116, i64 %indvars.iv.next.1.1.2
  %i.gk = load float, ptr %gep117.3, align 4, !tbaa !42
  %i.gl = fsub float %i.gj, %i.gk                 ; 2 uses
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.gl, float %i.gi) ; 3 uses
  %indvars.iv.next.1.1.3 = add nuw nsw i64 %indvars.iv.1.1, 4 ; 2 uses
  %niter162.next.3 = add nuw i64 %niter162, 4     ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %.unr-lcssa153, label %.new152, !llvm.loop !78

.unr-lcssa153:                                    ; preds = %.new152
  br i1 %lcmp.mod157.not, label %.epilog-lcssa158, label %.epil.preheader154

.epil.preheader154:                               ; preds = %.unr-lcssa153, %bb.m
  %indvars.iv.1.1.epil.init = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.1.1.3, %.unr-lcssa153 ]
  %.06272.1.1.epil.init = phi float [ 0.000000e+00, %bb.m ], [ %i.gm, %.unr-lcssa153 ]
  tail call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader154
  %indvars.iv.1.1.epil = phi i64 [ %indvars.iv.1.1.epil.init, %.epil.preheader154 ], [ %indvars.iv.next.1.1.epil, %bb.n ] ; 3 uses
  %.06272.1.1.epil = phi float [ %.06272.1.1.epil.init, %.epil.preheader154 ], [ %i.gq, %bb.n ]
  %epil.iter156 = phi i64 [ 0, %.epil.preheader154 ], [ %epil.iter156.next, %bb.n ]
  %gep115.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep114, i64 %indvars.iv.1.1.epil
  %i.gn = load float, ptr %gep115.epil, align 4, !tbaa !42
  %gep117.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep116, i64 %indvars.iv.1.1.epil
  %i.go = load float, ptr %gep117.epil, align 4, !tbaa !42
  %i.gp = fsub float %i.gn, %i.go                 ; 2 uses
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %.06272.1.1.epil) ; 2 uses
  %indvars.iv.next.1.1.epil = add nuw nsw i64 %indvars.iv.1.1.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.epilog-lcssa158, label %bb.n, !llvm.loop !80

.epilog-lcssa158:                                 ; preds = %bb.n, %.unr-lcssa153
  %.lcssa126 = phi float [ %i.gm, %.unr-lcssa153 ], [ %i.gq, %bb.n ]
  %i.gr = tail call noundef float @sqrtf(float noundef %.lcssa126) #20
  %i.gs = load i32, ptr %2, align 4, !tbaa !37    ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.l, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store float %i.gr, ptr %i.gv, align 4, !tbaa !44
  %i.gw = mul nuw nsw i32 %i.ft, %i.av            ; 2 uses
  %i.gx = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.gy = add nsw i32 %i.gw, %i.gx
  store i32 %i.gy, ptr %i.gu, align 4, !tbaa !45
  %i.gz = trunc nuw nsw i64 %indvars.iv.next94 to i32
  %i.ha = add nsw i32 %i.gw, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !46
  %i.hc = add nsw i32 %i.gs, 1
  store i32 %i.hc, ptr %2, align 4, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.epilog-lcssa158, %bb.l, %bb.k
  %i.hd = load i32, ptr %i.c, align 4, !tbaa !34  ; 3 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next94, %i.he
  br i1 %i.hf, label %.preheader71, label %._crit_edge.loopexit, !llvm.loop !81
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc12segmentation21GraphSegmentationImpl12segmentGraphEPNS1_4EdgeERKiRKNS_3MatEPPNS1_8PointSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = mul i32 %i.d, %i.b                       ; 5 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !37     ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZSt4sortIPN2cv8ximgproc12segmentation4EdgeEEvT_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %.idx = mul nsw i64 %i.g, 12
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIPN2cv8ximgproc12segmentation4EdgeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef %1, ptr noundef nonnull %i.h, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_(ptr noundef %1, ptr noundef nonnull %i.h)
  br label %_ZSt4sortIPN2cv8ximgproc12segmentation4EdgeEEvT_S5_.exit

_ZSt4sortIPN2cv8ximgproc12segmentation4EdgeEEvT_S5_.exit: ; preds = %bb.a, %bb.b
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !34
  %i.n = load i32, ptr %i.a, align 8, !tbaa !33
  %i.o = mul nsw i32 %i.n, %i.m                   ; 5 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !49
  %i.p = zext i32 %i.o to i64                     ; 4 uses
  %i.q = icmp slt i32 %i.o, 0
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #21
          to label %.noexc unwind label %bb.c     ; 3 uses

.noexc:                                           ; preds = %_ZSt4sortIPN2cv8ximgproc12segmentation4EdgeEEvT_S5_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !50
  %i.v = icmp sgt i32 %i.o, 0
  br i1 %i.v, label %.lr.ph.i.preheader, label %_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit

.lr.ph.i.preheader:                               ; preds = %.noexc
  %min.iters.check = icmp ult i32 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.p, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.x = or disjoint <2 x i64> %vec.ind, splat (i64 4294967296)
  %5 = or disjoint <2 x i64> %step.add, splat (i64 4294967296)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.x, ptr %i.w, align 4, !tbaa !37
  store <2 x i64> %5, ptr %i.y, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit, label %.lr.ph.i.preheader94

.lr.ph.i.preheader94:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader94, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader94 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %indvars.iv.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aa, align 4, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit, label %.lr.ph.i, !llvm.loop !85

_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit:  ; preds = %.lr.ph.i, %middle.block, %.noexc
  store ptr %i.l, ptr %4, align 8, !tbaa !54
  %i.ab = sext i32 %i.e to i64
  %i.ac = icmp slt i32 %i.e, 0
  %i.ad = shl nsw i64 %i.ab, 2
  %i.ae = select i1 %i.ac, i64 -1, i64 %i.ad
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #21 ; 6 uses
  %i.ag = icmp sgt i32 %i.e, 0
  br i1 %i.ag, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 3 uses
  %min.iters.check83 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph
  %n.vec85 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next88, %vector.body86 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index87 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x float> %broadcast.splat, ptr %i.aj, align 4, !tbaa !42
  store <4 x float> %broadcast.splat, ptr %i.ak, align 4, !tbaa !42
  %index.next88 = add nuw i64 %index87, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.al, label %middle.block89, label %vector.body86, !llvm.loop !86

middle.block89:                                   ; preds = %vector.body86
  %cmp.n90 = icmp eq i64 %n.vec85, %wide.trip.count
  br i1 %cmp.n90, label %.preheader, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph, %middle.block89
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec85, %middle.block89 ]
  br label %scalar.ph82

.preheader:                                       ; preds = %scalar.ph82, %middle.block89, %_ZN2cv8ximgproc12segmentation8PointSetC2Ei.exit
  %i.am = load i32, ptr %2, align 4, !tbaa !37
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph66, label %._crit_edge

.lr.ph66:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %4, align 8, !tbaa !54    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.c:                                             ; preds = %_ZSt4sortIPN2cv8ximgproc12segmentation4EdgeEEvT_S5_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #22
  resume { ptr, i32 } %i.as

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph82 ], [ %indvars.iv.ph, %scalar.ph82.preheader ] ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store float %i.ai, ptr %i.at, align 4, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph82, !llvm.loop !87

bb.d:                                             ; preds = %.lr.ph66, %bb.k
  %indvars.iv70 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next71, %bb.k ] ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv70 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !45 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.av, %bb.d ], [ %i.ay, %bb.e ] ; 7 uses
  %i.aw = sext i32 %.0.i to i64                   ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !57 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %i.ay
  br i1 %.not.i, label %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit, label %bb.e, !llvm.loop !0

_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit: ; preds = %bb.e
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.aw ; 2 uses
  %i.ba = sext i32 %i.av to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ba
  store i32 %.0.i, ptr %i.bb, align 4, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !46 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit
  %.0.i53 = phi i32 [ %i.bd, %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit ], [ %i.bg, %bb.f ] ; 6 uses
  %i.be = sext i32 %.0.i53 to i64                 ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 2 uses
  %.not.i54 = icmp eq i32 %.0.i53, %i.bg
  br i1 %.not.i54, label %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit55, label %bb.f, !llvm.loop !0

_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit55: ; preds = %bb.f
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.be
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bi
  store i32 %.0.i53, ptr %i.bj, align 4, !tbaa !57
  %.not = icmp eq i32 %.0.i, %.0.i53
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !44 ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.aw
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !42
  %i.bo = fcmp ugt float %i.bl, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.be
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !42
  %i.br = fcmp ugt float %i.bl, %i.bq
  br i1 %i.br, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !58
  %i.bw = icmp slt i32 %i.bt, %i.bv               ; 2 uses
  %spec.select.i = select i1 %i.bw, i32 %.0.i53, i32 %.0.i ; 2 uses
  %spec.select7.i = select i1 %i.bw, i32 %.0.i, i32 %.0.i53
  %i.bx = sext i32 %spec.select7.i to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bx ; 2 uses
  store i32 %spec.select.i, ptr %i.by, align 4, !tbaa !57
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !58
  %i.cb = sext i32 %spec.select.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  %i.cf = add nsw i32 %i.ce, %i.ca
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !58
  %i.cg = load i32, ptr %i.ao, align 8, !tbaa !49
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.ao, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.0.i56 = phi i32 [ %.0.i, %bb.i ], [ %i.ck, %bb.j ] ; 4 uses
  %i.ci = sext i32 %.0.i56 to i64                 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !57 ; 2 uses
  %.not.i57 = icmp eq i32 %.0.i56, %i.ck
  br i1 %.not.i57, label %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit58, label %bb.j, !llvm.loop !0

_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit58: ; preds = %bb.j
  store i32 %.0.i56, ptr %i.az, align 4, !tbaa !57
  %i.cl = load float, ptr %i.ar, align 8, !tbaa !55
  %i.cm = zext i32 %.0.i56 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !58
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fdiv float %i.cl, %i.cq
  %i.cs = fadd float %i.bl, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ci
  store float %i.cs, ptr %i.ct, align 4, !tbaa !42
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit58, %_ZN2cv8ximgproc12segmentation8PointSet12getBasePointEi.exit55
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.cu = load i32, ptr %2, align 4, !tbaa !37
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next71, %i.cv
  br i1 %i.cw, label %bb.d, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.k, %.preheader
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc12segmentation21GraphSegmentationImpl12processImageERKNS_11_InputArrayERKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ad:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ae:                                            ; preds = %bb.f, %bb.e, %bb.d
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %bb.h, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.al

bb.ag:                                            ; preds = %bb.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ah:                                            ; preds = %bb.j
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN2cv8ximgproc12segmentation21GraphSegmentationImpl16filterSmallAreasEPNS1_4EdgeERKiPNS1_8PointSetE.exit, %bb.k
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn14 = phi { ptr, i32 } [ %i.dw, %bb.ai ], [ %i.dv, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %bb.aj ], [ %i.du, %bb.ag ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ak ], [ %i.dt, %bb.af ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ae
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.al ], [ %i.ds, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ad
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.am ], [ %i.dr, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn14.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8ximgproc12segmentation23createGraphSegmentationEdfi(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr") align 8 initializes((0, 16)) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation21GraphSegmentationImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %4 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %5 = alloca %"class.std::shared_ptr.1", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !101
  store ptr null, ptr %5, align 16, !tbaa !103, !alias.scope !100, !noalias !99
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2cv8ximgproc12segmentation21GraphSegmentationImplESaIvEJEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %4), !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !101
  %i.b = load <2 x ptr>, ptr %5, align 16, !tbaa !104, !noalias !99
  %i.c = load ptr, ptr %5, align 16, !tbaa !103, !noalias !99 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !99
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, double noundef %1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation21GraphSegmentationImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c, float noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %3)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation21GraphSegmentationImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation17GraphSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  resume { ptr, i32 } %i.m

bb.d:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv8ximgproc12segmentation17GraphSegmentationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !105
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !105
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !69
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !37
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !106

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc12segmentation8PointSetC2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.loopexit:
  store i32 %1, ptr %0, align 8, !tbaa !49
  %i.a = zext nneg i32 %1 to i64
  %i.b = icmp slt i32 %1, 0
  %i.c = shl nuw nsw i64 %i.a, 3
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #21 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !50
  %i.g = load i32, ptr %0, align 8, !tbaa !49     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.j = or disjoint <2 x i64> %vec.ind, splat (i64 4294967296)
  %2 = or disjoint <2 x i64> %step.add, splat (i64 4294967296)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x i64> %i.j, ptr %i.i, align 4, !tbaa !37
  store <2 x i64> %2, ptr %i.k, align 4, !tbaa !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.loopexit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.sroa.0.0.insert.insert = or disjoint i64 %indvars.iv, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %i.m, align 4, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv8ximgproc12segmentation8PointSetD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc12segmentation21GraphSegmentationImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv8ximgproc12segmentation21GraphSegmentationImplE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc12segmentation21GraphSegmentationImplD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN2cv8ximgproc12segmentation21GraphSegmentationImplE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN2cv8ximgproc12segmentation21GraphSegmentationImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22, !inline_history !109
  br label %_ZN2cv8ximgproc12segmentation21GraphSegmentationImplD2Ev.exit

_ZN2cv8ximgproc12segmentation21GraphSegmentationImplD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %0) #20, !inline_history !109
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc12segmentation21GraphSegmentationImpl5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.d = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull @.str.1) ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.d), !inline_history !110
  br i1 %i.i, label %bb.b, label %_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !118
  %i.l = icmp eq i32 %i.k, 6
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.5, i32 noundef 1173) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %6, align 8, !tbaa !70     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4 ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load double, ptr %i.e, align 8, !tbaa !59
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.s, double noundef %i.t)
  %i.u = load i32, ptr %i.j, align 8, !tbaa !118
  %i.v = and i32 %i.u, 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 6, ptr %i.j, align 8, !tbaa !118
  br label %_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit

_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit:       ; preds = %bb.a, %bb.f, %bb.g
  %i.w = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull @.str.2) ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.w), !inline_history !111
  br i1 %i.ab, label %bb.h, label %_ZN2cvlsIfEERNS_11FileStorageES2_RKT_.exit

bb.h:                                             ; preds = %_ZN2cvlsIdEERNS_11FileStorageES2_RKT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.ae = icmp eq i32 %i.ad, 6
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.5, i32 noundef 1173) #23
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
end_hunk_1
begin_hunk_2_@_ZN2cvlsERNS_11FileStorageEPKc:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !73
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !70
  %i.g = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.g, ptr %i.b, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !69
  store i8 %i.i, ptr %i.h, align 1, !tbaa !69
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = load ptr, ptr %2, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !69
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %i.n

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !70     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !tbaa !69
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.s
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !73
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !40
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !70
  %i.g = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.g, ptr %i.b, align 8, !tbaa !69
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !69
  store i8 %i.i, ptr %i.h, align 1, !tbaa !69
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = load ptr, ptr %0, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), float noundef) local_unnamed_addr #3

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #3

declare void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare noundef double @_ZNK2cv8FileNodecvdEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef float @_ZNK2cv8FileNodecvfEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK2cv8FileNode6stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN2cv8ximgproc12segmentation4EdgeElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %4 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %5 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %6 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %7 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %8 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %9 = alloca %"class.cv::ximgproc::segmentation::Edge", align 4 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEET_S8_S8_T0_.exit
  %i.i = icmp eq i64 %i.cc, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa40 = phi i64 [ %i.c, %.lr.ph ], [ %i.da, %bb.b ]
  %.021.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa40, 12             ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %10 = or disjoint i64 %i.k, 1                   ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %10
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i, %._crit_edge
  %.015.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.aq, %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.015.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.s, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !42 ; 2 uses
  %i.t = icmp slt i64 %.015.i.i, %i.n
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.034.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.015.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.034.i.i.i, 1                   ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [12 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr [12 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !44
  %i.aa = getelementptr i8, ptr %i.x, i64 20
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !44
  %i.ac = fcmp olt float %i.z, %i.ab
  %i.ad = or disjoint i64 %i.u, 1
  %spec.select.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.v ; 4 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.af = getelementptr inbounds [12 x i8], ptr %0, i64 %.034.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.af, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !74
  %i.ag = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ag, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !121

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.015.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.q, i64 12, i1 false), !tbaa.struct !74
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i.i.i, %.015.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i13, label %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i

.lr.ph.i.i.i.i13:                                 ; preds = %bb.e, %bb.f
  %.01317.i.i.i.i = phi i64 [ %.018.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.018.in.i.i.i.i = add nsw i64 %.01317.i.i.i.i, -1
  %.018.i.i.i.i = sdiv i64 %.018.in.i.i.i.i, 2    ; 4 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.018.i.i.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load float, ptr %i.ak, align 4, !tbaa !44
  %i.am = fcmp olt float %i.al, %.sroa.4.0.copyload.i.i
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i13
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.01317.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.aj, i64 12, i1 false), !tbaa.struct !74
  %i.ao = icmp sgt i64 %.018.i.i.i.i, %.015.i.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i13, label %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i, !llvm.loop !122

_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i13, %bb.e
  %.013.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.018.i.i.i.i, %bb.f ], [ %.01317.i.i.i.i, %.lr.ph.i.i.i.i13 ]
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i, ptr %i.ap, align 4, !tbaa !37
  %.sroa.2.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx14.i.i.i.i, align 4, !tbaa !42
  %.not.i.i = icmp eq i64 %.015.i.i, 0
  %i.aq = add nsw i64 %.015.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !123

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i, %_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.ar, %_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i ], [ %.021.lcssa, %_ZSt13__adjust_heapIPN2cv8ximgproc12segmentation4EdgeElS3_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S9_T1_T2_.exit.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.07.i.i, i64 -12 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ar, align 4, !tbaa !37
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.07.i.i, i64 -4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !42 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.a                     ; 3 uses
  %i.au = sdiv exact i64 %i.at, 12                ; 3 uses
  %i.av = add nsw i64 %i.au, -1
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = icmp sgt i64 %i.at, 24
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ay = shl i64 %.034.i.i.i.i, 1                ; 3 uses
  %i.az = add i64 %i.ay, 2                        ; 2 uses
  %i.ba = getelementptr inbounds [12 x i8], ptr %0, i64 %i.az
  %i.bb = getelementptr [12 x i8], ptr %0, i64 %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !44
  %i.be = getelementptr i8, ptr %i.bb, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !44
  %i.bg = fcmp olt float %i.bd, %i.bf
  %i.bh = or disjoint i64 %i.ay, 1
  %spec.select.i.i.i.i = select i1 %i.bg, i64 %i.bh, i64 %i.az ; 4 uses
  %i.bi = getelementptr inbounds [12 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bj = getelementptr inbounds [12 x i8], ptr %0, i64 %.034.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 12, i1 false), !tbaa.struct !74
  %i.bk = icmp slt i64 %spec.select.i.i.i.i, %i.aw
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !121

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bl = and i64 %i.au, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = add nsw i64 %i.au, -2
  %i.bo = ashr exact i64 %i.bn, 1
  %i.bp = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bo
  br i1 %i.bp, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false), !tbaa.struct !74
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.br, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i910.i.i.i, %bb.i ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i910.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.018.i.i910.i.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !44
  %i.bx = fcmp olt float %i.bw, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bx, label %bb.i, label %_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.by = getelementptr inbounds [12 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bu, i64 12, i1 false), !tbaa.struct !74
  %.not11.i.i.i = icmp eq i64 %.018.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZSt10__pop_heapIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bz = getelementptr inbounds [12 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bz, align 4, !tbaa !37
  %.sroa.2.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa_idx14.i.i.i.i.i, align 4, !tbaa !42
  %i.ca = icmp sgt i64 %i.at, 12
  br i1 %i.ca, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_T0_.exit, !llvm.loop !124

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %.0122043 = phi i64 [ %i.cc, %bb.b ], [ %2, %.lr.ph ]
  %.02142 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %i.cb = phi i64 [ %i.da, %bb.b ], [ %i.c, %.lr.ph ]
  %i.cc = add nsw i64 %.0122043, -1               ; 3 uses
  %i.cd = udiv i64 %i.cb, 24
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cd ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %.02142, i64 -12 ; 4 uses
  %i.cg = load float, ptr %i.f, align 4, !tbaa !44 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !44 ; 3 uses
  %i.cj = fcmp olt float %i.cg, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %.02142, i64 -4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !44 ; 4 uses
  br i1 %i.cj, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.cm = fcmp olt float %i.ci, %i.cl
  br i1 %i.cm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cn = fcmp olt float %i.cg, %i.cl
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph44
  %i.co = fcmp olt float %i.cg, %i.cl
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.e, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cp = fcmp olt float %i.ci, %i.cl
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cf, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.ce, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i

_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPN2cv8ximgproc12segmentation4EdgeEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S8_S8_S8_T0_.exit.i.preheader, %bb.v
end_hunk_2
