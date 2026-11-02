Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/IDMath?download=true
inline.NumInlined: 423
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24btInverseDynamicsBullet311maxAbsMat3xERKNS_5mat3xE:bb.a
.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %.0912 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.sroa.speculated.2, %.preheader ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i) ; 2 uses
  %i.k = fcmp ogt float %.0912, %i.j
  %.sroa.speculated = select i1 %i.k, float %.0912, float %i.j ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.l = load float, ptr %gep, align 4, !tbaa !10
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l) ; 2 uses
  %i.n = fcmp ogt float %.sroa.speculated, %i.m
  %.sroa.speculated.1 = select i1 %i.n, float %.sroa.speculated, float %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = tail call noundef float @llvm.fabs.f32(float %i.p) ; 2 uses
  %i.r = fcmp ogt float %.sroa.speculated.1, %i.q
  %.sroa.speculated.2 = select i1 %i.r, float %.sroa.speculated.1, float %i.q ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.preheader, %bb.a
  %.09.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.sroa.speculated.2, %.preheader ]
  ret float %.09.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btInverseDynamicsBullet33mulERKNS_5mat33ERKNS_5mat3xEPS3_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 15 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = shl nuw nsw i32 %i.b, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 17 uses
  %.promoted = load i32, ptr %i.q, align 8, !tbaa !24
  %i.t = zext nneg i32 %i.j to i64                ; 3 uses
  %i.u = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.v = shl nuw nsw i64 %wide.trip.count, 2      ; 4 uses
  %i.w = getelementptr nuw i8, ptr %i.s, i64 %i.v ; 7 uses
  %i.x = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 %i.x     ; 5 uses
  %i.z = shl nuw nsw i64 %i.t, 2                  ; 4 uses
  %i.aa = getelementptr nuw i8, ptr %i.s, i64 %i.z ; 5 uses
  %i.ab = add nuw nsw i64 %i.v, %i.z              ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ae = getelementptr nuw i8, ptr %i.g, i64 %i.z ; 3 uses
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ab   ; 3 uses
  %i.ag = getelementptr nuw i8, ptr %i.g, i64 %i.v ; 4 uses
  %i.ah = getelementptr i8, ptr %i.g, i64 %i.x    ; 3 uses
  %bound0 = icmp ult ptr %i.s, %i.ac
  %bound1 = icmp samesign ult i64 %i.z, %i.v
  %found.conflict = and i1 %bound0, %bound1
  %bound0104 = icmp ult ptr %i.s, %i.ad
  %bound1105 = icmp ult ptr %0, %i.w
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict, %found.conflict106
  %bound0107 = icmp ult ptr %i.s, %i.af
  %bound1108 = icmp ult ptr %i.ae, %i.w
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx, %found.conflict109
  %bound0111 = icmp ult ptr %i.s, %i.ah
  %bound1112 = icmp ult ptr %i.g, %i.s
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %i.s, %i.ag
  %bound1116 = icmp ult ptr %i.g, %i.w
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %i.w, %i.ac
  %bound1120 = icmp ult ptr %i.aa, %i.y
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %i.w, %i.ad
  %bound1124 = icmp ult ptr %0, %i.y
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %i.w, %i.af
  %bound1128 = icmp ult ptr %i.ae, %i.y
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %i.w, %i.ah
  %bound1132 = icmp ult ptr %i.ag, %i.y
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %i.s, %i.g
  %bound1136 = icmp ult ptr %i.g, %i.y
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %i.aa, %i.ad
  %bound1140 = icmp ult ptr %0, %i.ac
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %i.aa, %i.af
  %bound1144 = icmp ult ptr %i.ae, %i.ac
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %i.aa, %i.ah
  %bound1148 = icmp ult ptr %i.ag, %i.ac
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  %bound0151 = icmp ult ptr %i.aa, %i.ag
  %bound1152 = icmp ult ptr %i.g, %i.ac
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ai = load <1 x float>, ptr %0, align 4
  %broadcast.splat157 = shufflevector <1 x float> %i.ai, <1 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load <1 x float>, ptr %i.h, align 4
  %broadcast.splat = shufflevector <1 x float> %i.aj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ak = load <1 x float>, ptr %i.i, align 4
  %broadcast.splat160 = shufflevector <1 x float> %i.ak, <1 x float> poison, <4 x i32> zeroinitializer
  %i.al = load <1 x float>, ptr %i.k, align 4
  %broadcast.splat164 = shufflevector <1 x float> %i.al, <1 x float> poison, <4 x i32> zeroinitializer
  %i.am = load <1 x float>, ptr %i.l, align 4
  %broadcast.splat162 = shufflevector <1 x float> %i.am, <1 x float> poison, <4 x i32> zeroinitializer
  %i.an = load <1 x float>, ptr %i.m, align 4
  %broadcast.splat166 = shufflevector <1 x float> %i.an, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ao = load <1 x float>, ptr %i.n, align 4
  %broadcast.splat170 = shufflevector <1 x float> %i.ao, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ap = load float, ptr %i.o, align 4, !tbaa !10, !alias.scope !39
  %broadcast.splatinsert167 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat168 = shufflevector <4 x float> %broadcast.splatinsert167, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = load float, ptr %i.p, align 4, !tbaa !10, !alias.scope !39
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !10, !alias.scope !40 ; 3 uses
  %i.as = add nuw nsw i64 %index, %i.u            ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %wide.load155 = load <4 x float>, ptr %i.at, align 4, !tbaa !10, !alias.scope !41 ; 3 uses
  %i.au = fmul <4 x float> %broadcast.splat, %wide.load155
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat157, <4 x float> %wide.load, <4 x float> %i.au)
  %i.aw = add nuw nsw i64 %index, %i.t            ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %wide.load158 = load <4 x float>, ptr %i.ax, align 4, !tbaa !10, !alias.scope !42 ; 3 uses
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat160, <4 x float> %wide.load158, <4 x float> %i.av)
  %i.az = fmul <4 x float> %wide.load155, %broadcast.splat162
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat164, <4 x float> %wide.load, <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat166, <4 x float> %wide.load158, <4 x float> %i.ba)
  %i.bc = fmul <4 x float> %wide.load155, %broadcast.splat168
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat170, <4 x float> %wide.load, <4 x float> %i.bc)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat172, <4 x float> %wide.load158, <4 x float> %i.bd)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  store <4 x float> %i.ay, ptr %i.bf, align 4, !tbaa !10, !alias.scope !43, !noalias !44
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.as
  store <4 x float> %i.bb, ptr %i.bg, align 4, !tbaa !10, !alias.scope !45, !noalias !46
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aw
  store <4 x float> %i.be, ptr %i.bh, align 4, !tbaa !10, !alias.scope !47, !noalias !48
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102)
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !23
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !23
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.2, i32 noundef %i.bj, i32 noundef %i.bk)
  tail call void @abort() #16
  unreachable

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.bl = mul i32 %i.b, 3
  %i.bm = add i32 %.promoted, %i.bl
  store i32 %i.bm, ptr %i.q, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.preheader
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bn = load float, ptr %0, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !10 ; 3 uses
  %i.bq = load float, ptr %i.h, align 4, !tbaa !10
  %i.br = add nuw nsw i64 %indvars.iv, %i.u       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !10 ; 3 uses
  %i.bu = fmul float %i.bq, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bp, float %i.bu)
  %i.bw = load float, ptr %i.i, align 4, !tbaa !10
  %i.bx = add nuw nsw i64 %indvars.iv, %i.t       ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bz, float %i.bv)
  %i.cb = load float, ptr %i.k, align 4, !tbaa !10
  %i.cc = load float, ptr %i.l, align 4, !tbaa !10
  %i.cd = fmul float %i.bt, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bp, float %i.cd)
  %i.cf = load float, ptr %i.m, align 4, !tbaa !10
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.bz, float %i.ce)
  %i.ch = load float, ptr %i.n, align 4, !tbaa !10
  %i.ci = load float, ptr %i.o, align 4, !tbaa !10
  %i.cj = fmul float %i.bt, %i.ci
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bp, float %i.cj)
  %i.cl = load float, ptr %i.p, align 4, !tbaa !10
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.bz, float %i.ck)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.ca, ptr %i.cn, align 4, !tbaa !10
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.br
  store float %i.cg, ptr %i.co, align 4, !tbaa !10
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bx
  store float %i.cm, ptr %i.cp, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !38
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btInverseDynamicsBullet33addERKNS_5mat3xES2_PS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader18, label %bb.b

.preheader18:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.preheader.lr.ph, label %bb.c

.preheader.lr.ph:                                 ; preds = %.preheader18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 5 uses
  %.promoted21 = load i32, ptr %i.j, align 8, !tbaa !24
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %i.p = zext nneg i32 %i.b to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1                  ; 2 uses
  %.idx = shl nsw i64 %i.o, 3                     ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %.idx    ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 52
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.s = ptrtoaddr ptr %i.n to i64                ; 8 uses
  %i.t = ptrtoaddr ptr %i.i to i64                ; 5 uses
  %i.u = ptrtoaddr ptr %i.g to i64                ; 5 uses
  %i.v = shl nsw i64 %i.o, 2                      ; 4 uses
  %i.w = add nsw i64 %i.v, -1
  %diff.check = icmp ult i64 %i.w, 15
  %i.x = add nsw i64 %.idx, -1
  %diff.check62 = icmp ult i64 %i.x, 15
  %conflict.rdx = or i1 %diff.check, %diff.check62
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %i.z = add i64 %i.y, %i.u
  %i.aa = sub i64 %i.z, %i.s                      ; 2 uses
  %i.ab = add i64 %i.aa, -1
  %diff.check63 = icmp ult i64 %i.ab, 15
  %conflict.rdx64 = or i1 %conflict.rdx, %diff.check63
  %i.ac = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %i.ad = add i64 %i.ac, %i.u
  %i.ae = sub i64 %i.s, %i.ad
  %diff.check65 = icmp ugt i64 %i.ae, -16
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  %i.af = sub i64 %i.u, %i.s
  %diff.check67 = icmp ugt i64 %i.af, -16
  %conflict.rdx68 = or i1 %conflict.rdx66, %diff.check67
  %i.ag = add i64 %i.y, %i.t
  %i.ah = sub i64 %i.ag, %i.s                     ; 2 uses
  %i.ai = add i64 %i.ah, -1
  %diff.check69 = icmp ult i64 %i.ai, 15
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  %i.aj = add i64 %i.ac, %i.t
  %i.ak = sub i64 %i.s, %i.aj
  %diff.check71 = icmp ugt i64 %i.ak, -16
  %conflict.rdx72 = or i1 %conflict.rdx70, %diff.check71
  %i.al = sub i64 %i.t, %i.s
  %diff.check73 = icmp ugt i64 %i.al, -16
  %conflict.rdx74 = or i1 %conflict.rdx72, %diff.check73
  %i.am = sub i64 %i.v, %i.aa
  %diff.check75 = icmp ugt i64 %i.am, -16
  %conflict.rdx76 = or i1 %conflict.rdx74, %diff.check75
  %i.an = add i64 %i.v, %i.s                      ; 2 uses
  %i.ao = sub i64 %i.an, %i.u                     ; 2 uses
  %i.ap = sub i64 %i.ac, %i.ao
  %diff.check77 = icmp ugt i64 %i.ap, -16
  %conflict.rdx78 = or i1 %conflict.rdx76, %diff.check77
  %i.aq = add i64 %i.ao, -1
  %diff.check79 = icmp ult i64 %i.aq, 15
  %conflict.rdx80 = or i1 %conflict.rdx78, %diff.check79
  %i.ar = sub i64 %i.v, %i.ah
  %diff.check81 = icmp ugt i64 %i.ar, -16
  %conflict.rdx82 = or i1 %conflict.rdx80, %diff.check81
  %i.as = sub i64 %i.an, %i.t                     ; 2 uses
  %i.at = sub i64 %i.ac, %i.as
  %diff.check83 = icmp ugt i64 %i.at, -16
  %conflict.rdx84 = or i1 %conflict.rdx82, %diff.check83
  %i.au = add i64 %i.as, -1
  %diff.check85 = icmp ult i64 %i.au, 15
  %conflict.rdx86 = or i1 %conflict.rdx84, %diff.check85
  %i.av = add i64 %.idx, %i.s                     ; 2 uses
  %i.aw = sub i64 %i.av, %i.u                     ; 3 uses
  %i.ax = sub i64 %i.y, %i.aw
  %diff.check87 = icmp ugt i64 %i.ax, -16
  %conflict.rdx88 = or i1 %conflict.rdx86, %diff.check87
  %i.ay = sub i64 %i.ac, %i.aw
  %diff.check89 = icmp ugt i64 %i.ay, -16
  %conflict.rdx90 = or i1 %conflict.rdx88, %diff.check89
  %i.az = add i64 %i.aw, -1
  %diff.check91 = icmp ult i64 %i.az, 15
  %conflict.rdx92 = or i1 %conflict.rdx90, %diff.check91
  %i.ba = sub i64 %i.av, %i.t                     ; 3 uses
  %i.bb = sub i64 %i.y, %i.ba
  %diff.check93 = icmp ugt i64 %i.bb, -16
  %conflict.rdx94 = or i1 %conflict.rdx92, %diff.check93
  %i.bc = sub i64 %i.ac, %i.ba
  %diff.check95 = icmp ugt i64 %i.bc, -16
  %conflict.rdx96 = or i1 %conflict.rdx94, %diff.check95
  %i.bd = add i64 %i.ba, -1
  %diff.check97 = icmp ult i64 %i.bd, 15
  %conflict.rdx98 = or i1 %conflict.rdx96, %diff.check97
  br i1 %conflict.rdx98, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load99 = load <4 x float>, ptr %i.bf, align 4, !tbaa !10
  %i.bg = fadd <4 x float> %wide.load, %wide.load99
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !10
  %i.bi = add nuw nsw i64 %index, %i.p            ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %wide.load100 = load <4 x float>, ptr %i.bj, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bi
  %wide.load101 = load <4 x float>, ptr %i.bk, align 4, !tbaa !10
  %i.bl = fadd <4 x float> %wide.load100, %wide.load101
  %i.bm = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bl, ptr %i.bm, align 4, !tbaa !10
  %i.bn = add nuw nsw i64 %i.q, %index            ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bn
  %wide.load102 = load <4 x float>, ptr %i.bo, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bn
  %wide.load103 = load <4 x float>, ptr %i.bp, align 4, !tbaa !10
  %i.bq = fadd <4 x float> %wide.load102, %wide.load103
  %i.br = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.bq, ptr %i.br, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121)
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !23
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !23
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.3, i32 noundef %i.bt, i32 noundef %i.bu)
  tail call void @abort() #16
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 8 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = fadd float %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4, !tbaa !10
  %i.cb = add nuw nsw i64 %indvars.iv, %i.p       ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cb
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = fadd float %i.cd, %i.cf
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.cg, ptr %gep, align 4, !tbaa !10
  %i.ch = add nuw nsw i64 %i.q, %indvars.iv       ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !10
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ch
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10
  %i.cm = fadd float %i.cj, %i.cl
  %i.cn = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.cm, ptr %i.cn, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !50

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.co = mul i32 %i.b, 3
  %i.cp = add i32 %.promoted21, %i.co
  store i32 %i.cp, ptr %i.j, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.preheader18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24btInverseDynamicsBullet33subERKNS_5mat3xES2_PS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader18, label %bb.b

.preheader18:                                     ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.preheader.lr.ph, label %bb.c

.preheader.lr.ph:                                 ; preds = %.preheader18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 5 uses
  %.promoted21 = load i32, ptr %i.j, align 8, !tbaa !24
  %i.o = sext i32 %i.l to i64                     ; 3 uses
  %i.p = zext nneg i32 %i.b to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1                  ; 2 uses
  %.idx = shl nsw i64 %i.o, 3                     ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %.idx    ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 52
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.s = ptrtoaddr ptr %i.n to i64                ; 8 uses
  %i.t = ptrtoaddr ptr %i.i to i64                ; 5 uses
  %i.u = ptrtoaddr ptr %i.g to i64                ; 5 uses
  %i.v = shl nsw i64 %i.o, 2                      ; 4 uses
  %i.w = add nsw i64 %i.v, -1
  %diff.check = icmp ult i64 %i.w, 15
  %i.x = add nsw i64 %.idx, -1
  %diff.check62 = icmp ult i64 %i.x, 15
  %conflict.rdx = or i1 %diff.check, %diff.check62
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 4 uses
  %i.z = add i64 %i.y, %i.u
  %i.aa = sub i64 %i.z, %i.s                      ; 2 uses
  %i.ab = add i64 %i.aa, -1
  %diff.check63 = icmp ult i64 %i.ab, 15
  %conflict.rdx64 = or i1 %conflict.rdx, %diff.check63
  %i.ac = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %i.ad = add i64 %i.ac, %i.u
  %i.ae = sub i64 %i.s, %i.ad
  %diff.check65 = icmp ugt i64 %i.ae, -16
  %conflict.rdx66 = or i1 %conflict.rdx64, %diff.check65
  %i.af = sub i64 %i.u, %i.s
  %diff.check67 = icmp ugt i64 %i.af, -16
  %conflict.rdx68 = or i1 %conflict.rdx66, %diff.check67
  %i.ag = add i64 %i.y, %i.t
  %i.ah = sub i64 %i.ag, %i.s                     ; 2 uses
  %i.ai = add i64 %i.ah, -1
  %diff.check69 = icmp ult i64 %i.ai, 15
  %conflict.rdx70 = or i1 %conflict.rdx68, %diff.check69
  %i.aj = add i64 %i.ac, %i.t
  %i.ak = sub i64 %i.s, %i.aj
  %diff.check71 = icmp ugt i64 %i.ak, -16
  %conflict.rdx72 = or i1 %conflict.rdx70, %diff.check71
  %i.al = sub i64 %i.t, %i.s
  %diff.check73 = icmp ugt i64 %i.al, -16
  %conflict.rdx74 = or i1 %conflict.rdx72, %diff.check73
  %i.am = sub i64 %i.v, %i.aa
  %diff.check75 = icmp ugt i64 %i.am, -16
  %conflict.rdx76 = or i1 %conflict.rdx74, %diff.check75
  %i.an = add i64 %i.v, %i.s                      ; 2 uses
  %i.ao = sub i64 %i.an, %i.u                     ; 2 uses
  %i.ap = sub i64 %i.ac, %i.ao
  %diff.check77 = icmp ugt i64 %i.ap, -16
  %conflict.rdx78 = or i1 %conflict.rdx76, %diff.check77
  %i.aq = add i64 %i.ao, -1
  %diff.check79 = icmp ult i64 %i.aq, 15
  %conflict.rdx80 = or i1 %conflict.rdx78, %diff.check79
  %i.ar = sub i64 %i.v, %i.ah
  %diff.check81 = icmp ugt i64 %i.ar, -16
  %conflict.rdx82 = or i1 %conflict.rdx80, %diff.check81
  %i.as = sub i64 %i.an, %i.t                     ; 2 uses
  %i.at = sub i64 %i.ac, %i.as
  %diff.check83 = icmp ugt i64 %i.at, -16
  %conflict.rdx84 = or i1 %conflict.rdx82, %diff.check83
  %i.au = add i64 %i.as, -1
  %diff.check85 = icmp ult i64 %i.au, 15
  %conflict.rdx86 = or i1 %conflict.rdx84, %diff.check85
  %i.av = add i64 %.idx, %i.s                     ; 2 uses
  %i.aw = sub i64 %i.av, %i.u                     ; 3 uses
  %i.ax = sub i64 %i.y, %i.aw
  %diff.check87 = icmp ugt i64 %i.ax, -16
  %conflict.rdx88 = or i1 %conflict.rdx86, %diff.check87
  %i.ay = sub i64 %i.ac, %i.aw
  %diff.check89 = icmp ugt i64 %i.ay, -16
  %conflict.rdx90 = or i1 %conflict.rdx88, %diff.check89
  %i.az = add i64 %i.aw, -1
  %diff.check91 = icmp ult i64 %i.az, 15
  %conflict.rdx92 = or i1 %conflict.rdx90, %diff.check91
  %i.ba = sub i64 %i.av, %i.t                     ; 3 uses
  %i.bb = sub i64 %i.y, %i.ba
  %diff.check93 = icmp ugt i64 %i.bb, -16
  %conflict.rdx94 = or i1 %conflict.rdx92, %diff.check93
  %i.bc = sub i64 %i.ac, %i.ba
  %diff.check95 = icmp ugt i64 %i.bc, -16
  %conflict.rdx96 = or i1 %conflict.rdx94, %diff.check95
  %i.bd = add i64 %i.ba, -1
  %diff.check97 = icmp ult i64 %i.bd, 15
  %conflict.rdx98 = or i1 %conflict.rdx96, %diff.check97
  br i1 %conflict.rdx98, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load99 = load <4 x float>, ptr %i.bf, align 4, !tbaa !10
  %i.bg = fsub <4 x float> %wide.load, %wide.load99
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !10
  %i.bi = add nuw nsw i64 %index, %i.p            ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi
  %wide.load100 = load <4 x float>, ptr %i.bj, align 4, !tbaa !10
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bi
  %wide.load101 = load <4 x float>, ptr %i.bk, align 4, !tbaa !10
  %i.bl = fsub <4 x float> %wide.load100, %wide.load101
  %i.bm = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bl, ptr %i.bm, align 4, !tbaa !10
  %i.bn = add nuw nsw i64 %i.q, %index            ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bn
  %wide.load102 = load <4 x float>, ptr %i.bo, align 4, !tbaa !10
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bn
  %wide.load103 = load <4 x float>, ptr %i.bp, align 4, !tbaa !10
  %i.bq = fsub <4 x float> %wide.load102, %wide.load103
  %i.br = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.bq, ptr %i.br, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 137)
  %i.bt = load i32, ptr %i.a, align 4, !tbaa !23
  %i.bu = load i32, ptr %i.c, align 4, !tbaa !23
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.3, i32 noundef %i.bt, i32 noundef %i.bu)
  tail call void @abort() #16
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 8 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = fsub float %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4, !tbaa !10
  %i.cb = add nuw nsw i64 %indvars.iv, %i.p       ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !10
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cb
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !10
  %i.cg = fsub float %i.cd, %i.cf
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.cg, ptr %gep, align 4, !tbaa !10
  %i.ch = add nuw nsw i64 %i.q, %indvars.iv       ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !10
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ch
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10
  %i.cm = fsub float %i.cj, %i.cl
  %i.cn = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.cm, ptr %i.cn, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !52

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.co = mul i32 %i.b, 3
  %i.cp = add i32 %.promoted21, %i.co
  store i32 %i.cp, ptr %i.j, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.preheader18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformXERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = load float, ptr %1, align 4, !tbaa !10
  call void @sincosf(float %i.a, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 2 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %cos, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %sin, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !10
  %i.g = fneg float %sin
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.g, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %cos, ptr %i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformYERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = load float, ptr %1, align 4, !tbaa !10
  call void @sincosf(float %i.a, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 2 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 2 uses
  store float %cos, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !10
  %i.c = fneg float %sin
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %sin, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %cos, ptr %i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformZERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = load float, ptr %1, align 4, !tbaa !10
  call void @sincosf(float %i.a, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 2 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 2 uses
  store float %cos, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %sin, ptr %i.b, align 4, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !10
  %i.d = fneg float %sin
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.d, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %cos, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet313tildeOperatorERKNS_4vec3E(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  store float 0.000000e+00, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.c = fneg float %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0
  store <2 x float> %i.i, ptr %i.h, align 4, !tbaa !10
  %i.j = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.k = fneg float %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.k, ptr %i.l, align 4, !tbaa !10
  %i.m = fneg float %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.m, ptr %i.n, align 4, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.p, ptr %i.o, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet315getVecMatFromDHEffffPNS_4vec3EPNS_5mat33E(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %5) local_unnamed_addr #10 {
bb.a:
  %sincos.sin33 = alloca float, align 4           ; 2 uses
  %sincos.cos34 = alloca float, align 4           ; 2 uses
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  call void @sincosf(float %3, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 3 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 4 uses
  call void @sincosf(float %0, ptr nonnull %sincos.sin33, ptr nonnull %sincos.cos34)
  %sin35 = load float, ptr %sincos.sin33, align 4 ; 3 uses
  %cos36 = load float, ptr %sincos.cos34, align 4 ; 3 uses
  store float %2, ptr %4, align 4, !tbaa !10
  %i.a = fneg float %sin                          ; 2 uses
  %i.b = fmul float %1, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.b, ptr %i.c, align 4, !tbaa !10
  %i.d = fmul float %1, %cos
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.d, ptr %i.e, align 4, !tbaa !10
  store float %cos36, ptr %5, align 4, !tbaa !10
  %i.f = fneg float %sin35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.i = fmul float %cos, %sin35
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = fmul float %cos, %cos36
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.k, ptr %i.l, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.a, ptr %i.m, align 4, !tbaa !10
  %i.n = fmul float %sin, %sin35
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.n, ptr %i.o, align 4, !tbaa !10
  %i.p = fmul float %sin, %cos36
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.p, ptr %i.q, align 4, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %cos, ptr %i.r, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet324bodyTParentFromAxisAngleERKNS_4vec3ERKfPNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28), (32, 44)) %2) local_unnamed_addr #9 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = load float, ptr %1, align 4, !tbaa !10
  call void @sincosf(float %i.a, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4     ; 4 uses
  %cos = load float, ptr %sincos.cos, align 4     ; 4 uses
  %i.b = fneg float %sin                          ; 3 uses
  %i.c = fsub float 1.000000e+00, %cos            ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %3 = call float @llvm.fmuladd.f32(float %i.g, float %i.c, float %cos)
  store float %3, ptr %2, align 4, !tbaa !10
  %i.h = load float, ptr %0, align 4, !tbaa !10
  %i.i = load float, ptr %i.d, align 4, !tbaa !10
  %i.j = fmul float %i.h, %i.i
  %i.k = load float, ptr %i.e, align 4, !tbaa !10
  %i.l = fmul float %sin, %i.k
  %4 = call float @llvm.fmuladd.f32(float %i.j, float %i.c, float %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %4, ptr %i.m, align 4, !tbaa !10
  %i.n = load float, ptr %0, align 4, !tbaa !10
  %i.o = load float, ptr %i.e, align 4, !tbaa !10
  %i.p = fmul float %i.n, %i.o
  %i.q = load float, ptr %i.d, align 4, !tbaa !10
  %i.r = fmul float %i.q, %i.b
  %5 = call float @llvm.fmuladd.f32(float %i.p, float %i.c, float %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %5, ptr %i.s, align 4, !tbaa !10
  %i.t = load float, ptr %0, align 4, !tbaa !10
  %i.u = load float, ptr %i.d, align 4, !tbaa !10
  %i.v = fmul float %i.t, %i.u
  %i.w = load float, ptr %i.e, align 4, !tbaa !10
  %i.x = fmul float %i.w, %i.b
  %6 = call float @llvm.fmuladd.f32(float %i.v, float %i.c, float %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %6, ptr %i.y, align 4, !tbaa !10
  %i.z = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %i.aa = fmul float %i.z, %i.z
  %7 = call float @llvm.fmuladd.f32(float %i.aa, float %i.c, float %cos)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %7, ptr %i.ab, align 4, !tbaa !10
  %i.ac = load float, ptr %i.d, align 4, !tbaa !10
  %i.ad = load float, ptr %i.e, align 4, !tbaa !10
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = load float, ptr %0, align 4, !tbaa !10
  %i.ag = fmul float %sin, %i.af
  %8 = call float @llvm.fmuladd.f32(float %i.ae, float %i.c, float %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float %8, ptr %i.ah, align 4, !tbaa !10
  %i.ai = load float, ptr %0, align 4, !tbaa !10
  %i.aj = load float, ptr %i.e, align 4, !tbaa !10
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = load float, ptr %i.d, align 4, !tbaa !10
  %i.am = fmul float %sin, %i.al
  %9 = call float @llvm.fmuladd.f32(float %i.ak, float %i.c, float %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %9, ptr %i.an, align 4, !tbaa !10
  %i.ao = load float, ptr %i.d, align 4, !tbaa !10
  %i.ap = load float, ptr %i.e, align 4, !tbaa !10
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = load float, ptr %0, align 4, !tbaa !10
  %i.as = fmul float %i.ar, %i.b
  %10 = call float @llvm.fmuladd.f32(float %i.aq, float %i.c, float %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %10, ptr %i.at, align 4, !tbaa !10
  %i.au = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %11 = call float @llvm.fmuladd.f32(float %i.av, float %i.c, float %cos)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %11, ptr %i.aw, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN24btInverseDynamicsBullet318isPositiveDefiniteERKNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = fcmp ugt float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.i = fneg float %i.h
  %i.j = fmul float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.a, float %i.e, float %i.j)
  %i.l = fcmp ugt float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = fneg float %i.s
  %i.u = fmul float %i.q, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.e, float %i.o, float %i.u)
  %i.w = load float, ptr %i.m, align 4, !tbaa !10
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fmul float %i.q, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.h, float %i.o, float %i.y)
  %i.aa = fneg float %i.z
  %i.ab = fmul float %i.g, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.a, float %i.v, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul float %i.e, %i.x
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.ac)
  %i.ai = fcmp uge float %i.ah, 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ai, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN24btInverseDynamicsBullet322isPositiveSemiDefiniteERKNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = fcmp olt float %i.a, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.i = fneg float %i.h
  %i.j = fmul float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.a, float %i.e, float %i.j)
  %i.l = fcmp olt float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = fneg float %i.s
  %i.u = fmul float %i.q, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.e, float %i.o, float %i.u)
  %i.w = load float, ptr %i.m, align 4, !tbaa !10
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fmul float %i.q, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.h, float %i.o, float %i.y)
  %i.aa = fneg float %i.z
  %i.ab = fmul float %i.g, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.a, float %i.v, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul float %i.e, %i.x
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.ac)
  %i.ai = fcmp uge float %i.ah, 0.000000e+00
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ai, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN24btInverseDynamicsBullet327isPositiveSemiDefiniteFuzzyERKNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = fcmp olt float %i.a, f0xB5200000
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.i = fneg float %i.h
  %i.j = fmul float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.a, float %i.e, float %i.j)
  %i.l = fcmp olt float %i.k, f0xB5200000
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = fneg float %i.s
  %i.u = fmul float %i.q, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.e, float %i.o, float %i.u)
  %i.w = load float, ptr %i.m, align 4, !tbaa !10
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fmul float %i.q, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.h, float %i.o, float %i.y)
  %i.aa = fneg float %i.z
  %i.ab = fmul float %i.g, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.a, float %i.v, float %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10
  %i.af = fmul float %i.e, %i.x
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float %i.af)
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %i.ac)
  %i.ai = fcmp uge float %i.ah, f0xB5200000
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ai, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN24btInverseDynamicsBullet311determinantERKNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.e = fmul float %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = fmul float %i.j, %i.l
  %i.n = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.o = fmul float %i.m, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.e, float %i.h, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !10 ; 2 uses
  %i.s = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.t = fmul float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.v, float %i.p)
  %i.x = fneg float %i.d
  %i.y = fmul float %i.r, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.n, float %i.w)
  %i.aa = fneg float %i.l
  %i.ab = fmul float %i.a, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.v, float %i.z)
  %i.ad = fneg float %i.s
  %i.ae = fmul float %i.j, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.h, float %i.ac)
  ret float %i.af
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN24btInverseDynamicsBullet320isValidInertiaMatrixERKNS_5mat33Eib(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 6 uses
  %i.b = fcmp olt float %i.a, f0xB5200000
  br i1 %i.b, label %_ZN24btInverseDynamicsBullet327isPositiveSemiDefiniteFuzzyERKNS_5mat33E.exit.thread, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN24btInverseDynamicsBullet322isValidTransformMatrixERKNS_5mat33E:bb.a
  %i.ay = load float, ptr %i.at, align 4, !tbaa !10
  %i.az = fpext float %i.ay to double
  %i.ba = fpext float %.lcssa to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12, i32 noundef %i.aq, double noundef %i.av, double noundef %i.ax, double noundef %i.az, double noundef %i.ba)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 463)
  %i.bb = load float, ptr %0, align 4, !tbaa !10
  %i.bc = fpext float %i.bb to double
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fpext float %i.be to double
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !10
  %i.bi = fpext float %i.bh to double
  %i.bj = load float, ptr %i.a, align 4, !tbaa !10
  %i.bk = fpext float %i.bj to double
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !10
  %i.bn = fpext float %i.bm to double
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !10
  %i.bq = fpext float %i.bp to double
  %i.br = load float, ptr %i.b, align 4, !tbaa !10
  %i.bs = fpext float %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = fpext float %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !10
  %i.by = fpext float %i.bx to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, double noundef %i.bc, double noundef %i.bf, double noundef %i.bi, double noundef %i.bk, double noundef %i.bn, double noundef %i.bq, double noundef %i.bs, double noundef %i.bv, double noundef %i.by)
  br label %bb.j

bb.c:                                             ; preds = %.critedge.2
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 470)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 471)
  %i.bz = load float, ptr %0, align 4, !tbaa !10
  %i.ca = fpext float %i.bz to double
  %i.cb = load float, ptr %i.l, align 4, !tbaa !10
  %i.cc = fpext float %i.cb to double
  %i.cd = load float, ptr %i.x, align 4, !tbaa !10
  %i.ce = fpext float %i.cd to double
  %i.cf = load float, ptr %i.a, align 4, !tbaa !10
  %i.cg = fpext float %i.cf to double
  %i.ch = load float, ptr %i.aj, align 4, !tbaa !10
  %i.ci = fpext float %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !10
  %i.cl = fpext float %i.ck to double
  %i.cm = load float, ptr %i.b, align 4, !tbaa !10
  %i.cn = fpext float %i.cm to double
  %i.co = load float, ptr %i.am, align 4, !tbaa !10
  %i.cp = fpext float %i.co to double
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !10
  %i.cs = fpext float %i.cr to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, double noundef %i.ca, double noundef %i.cc, double noundef %i.ce, double noundef %i.cg, double noundef %i.ci, double noundef %i.cl, double noundef %i.cn, double noundef %i.cp, double noundef %i.cs)
  br label %bb.j

bb.d:                                             ; preds = %.critedge.2
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cu = fmul float %i.d, %i.aa
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.c, float %i.y, float %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.g, float %i.ae, float %i.cv)
  %i.cy = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.cz = fcmp ogt float %i.cy, f0x36C80000
  br i1 %i.cz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 476)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 477)
  %i.da = load float, ptr %0, align 4, !tbaa !10
  %i.db = fpext float %i.da to double
  %i.dc = load float, ptr %i.l, align 4, !tbaa !10
  %i.dd = fpext float %i.dc to double
  %i.de = load float, ptr %i.x, align 4, !tbaa !10
  %i.df = fpext float %i.de to double
  %i.dg = load float, ptr %i.a, align 4, !tbaa !10
  %i.dh = fpext float %i.dg to double
  %i.di = load float, ptr %i.aj, align 4, !tbaa !10
  %i.dj = fpext float %i.di to double
  %i.dk = load float, ptr %i.ct, align 4, !tbaa !10
  %i.dl = fpext float %i.dk to double
  %i.dm = load float, ptr %i.b, align 4, !tbaa !10
  %i.dn = fpext float %i.dm to double
  %i.do = load float, ptr %i.am, align 4, !tbaa !10
  %i.dp = fpext float %i.do to double
  %i.dq = load float, ptr %i.cw, align 4, !tbaa !10
  %i.dr = fpext float %i.dq to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, double noundef %i.db, double noundef %i.dd, double noundef %i.df, double noundef %i.dh, double noundef %i.dj, double noundef %i.dl, double noundef %i.dn, double noundef %i.dp, double noundef %i.dr)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ds = fmul float %i.o, %i.aa
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.m, float %i.y, float %i.ds)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ae, float %i.dt)
  %i.dv = tail call noundef float @llvm.fabs.f32(float %i.du)
  %i.dw = fcmp ogt float %i.dv, f0x36C80000
  br i1 %i.dw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 482)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 483)
  %i.dx = load float, ptr %0, align 4, !tbaa !10
  %i.dy = fpext float %i.dx to double
  %i.dz = load float, ptr %i.l, align 4, !tbaa !10
  %i.ea = fpext float %i.dz to double
  %i.eb = load float, ptr %i.x, align 4, !tbaa !10
  %i.ec = fpext float %i.eb to double
  %i.ed = load float, ptr %i.a, align 4, !tbaa !10
  %i.ee = fpext float %i.ed to double
  %i.ef = load float, ptr %i.aj, align 4, !tbaa !10
  %i.eg = fpext float %i.ef to double
  %i.eh = load float, ptr %i.ct, align 4, !tbaa !10
  %i.ei = fpext float %i.eh to double
  %i.ej = load float, ptr %i.b, align 4, !tbaa !10
  %i.ek = fpext float %i.ej to double
  %i.el = load float, ptr %i.am, align 4, !tbaa !10
  %i.em = fpext float %i.el to double
  %i.en = load float, ptr %i.cw, align 4, !tbaa !10
  %i.eo = fpext float %i.en to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, double noundef %i.dy, double noundef %i.ea, double noundef %i.ec, double noundef %i.ee, double noundef %i.eg, double noundef %i.ei, double noundef %i.ek, double noundef %i.em, double noundef %i.eo)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ep = fmul float %i.c, %i.o
  %i.eq = fmul float %i.m, %i.aa
  %i.er = fmul float %i.g, %i.eq
  %i.es = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ae, float %i.er)
  %i.et = fmul float %i.d, %i.y
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.s, float %i.es)
  %i.ev = fneg float %i.o
  %i.ew = fmul float %i.y, %i.ev
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.g, float %i.eu)
  %i.ey = fneg float %i.aa
  %i.ez = fmul float %i.c, %i.ey
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.s, float %i.ex)
  %i.fb = fneg float %i.d
  %i.fc = fmul float %i.m, %i.fb
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.ae, float %i.fa)
  %i.fe = fcmp ugt float %i.fd, 0.000000e+00
  br i1 %i.fe, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 489)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 490)
  %i.ff = load float, ptr %0, align 4, !tbaa !10
  %i.fg = fpext float %i.ff to double
  %i.fh = load float, ptr %i.l, align 4, !tbaa !10
  %i.fi = fpext float %i.fh to double
  %i.fj = load float, ptr %i.x, align 4, !tbaa !10
  %i.fk = fpext float %i.fj to double
  %i.fl = load float, ptr %i.a, align 4, !tbaa !10
  %i.fm = fpext float %i.fl to double
  %i.fn = load float, ptr %i.aj, align 4, !tbaa !10
  %i.fo = fpext float %i.fn to double
  %i.fp = load float, ptr %i.ct, align 4, !tbaa !10
  %i.fq = fpext float %i.fp to double
  %i.fr = load float, ptr %i.b, align 4, !tbaa !10
  %i.fs = fpext float %i.fr to double
  %i.ft = load float, ptr %i.am, align 4, !tbaa !10
  %i.fu = fpext float %i.ft to double
  %i.fv = load float, ptr %i.cw, align 4, !tbaa !10
  %i.fw = fpext float %i.fv to double
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, double noundef %i.fg, double noundef %i.fi, double noundef %i.fk, double noundef %i.fm, double noundef %i.fo, double noundef %i.fq, double noundef %i.fs, double noundef %i.fu, double noundef %i.fw)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.g, %bb.e, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.b ], [ true, %bb.h ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN24btInverseDynamicsBullet312isUnitVectorERKNS_4vec3E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = fadd float %i.h, -1.000000e+00
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp olt float %i.j, f0x35200000
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN24btInverseDynamicsBullet313rpyFromMatrixERKNS_5mat33E(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !10
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.e = tail call noundef float @atan2f(float noundef %i.c, float noundef %i.d) #17 ; 2 uses
  %.sroa.4.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %i.e, i64 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = fneg float %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = tail call noundef float @atan2f(float noundef %i.h, float noundef %i.j) #17 ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.k, i64 0
  %i.l = tail call noundef float @cosf(float noundef %i.e) #17
  %i.m = tail call noundef float @sinf(float noundef %i.k) #17
  %i.n = fmul float %i.m, %i.c
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.d, float %i.n)
  %i.p = tail call noundef float @atan2f(float noundef %i.g, float noundef %i.o) #17
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.p, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.8.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 float", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS20btAlignedObjectArrayIfE", !11, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !6, i64 4}
!17 = !{!15, !13, i64 16}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIiELj16EE"}
!20 = !{!"p1 _ZTS20btAlignedObjectArrayIiE", !12, i64 0}
!21 = !{!"_ZTS20btAlignedObjectArrayIS_IiEE", !19, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !14, i64 24}
!22 = !{!"_ZTS9btMatrixXIfE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !15, i64 24, !21, i64 56}
!23 = !{!22, !6, i64 4}
!24 = !{!22, !6, i64 16}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !18, !25, !26}
!38 = distinct !{!38, !18, !25}
!39 = !{!30}
!40 = !{!31}
!41 = !{!32}
!42 = !{!33}
!43 = !{!34}
!44 = !{!36, !35, !30, !33, !32, !31}
!45 = !{!36}
!46 = !{!35, !30, !33, !32, !31}
!47 = !{!35}
!48 = !{!30, !33, !32, !31}
!49 = distinct !{!49, !18, !25, !26}
!50 = distinct !{!50, !18, !25}
!51 = distinct !{!51, !18, !25, !26}
!52 = distinct !{!52, !18, !25}
end_hunk_1
