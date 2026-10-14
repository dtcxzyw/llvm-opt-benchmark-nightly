Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/IDMath?download=true
inline.NumInlined: 423
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24btInverseDynamicsBullet33mulERKNS_5mat33ERKNS_5mat3xEPS3_:bb.a
  %bound1116 = icmp ult ptr %i.g, %i.s
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %i.s, %i.ag
  %bound1120 = icmp ult ptr %i.g, %i.w
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %i.w, %i.ac
  %bound1124 = icmp ult ptr %i.aa, %i.y
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  %bound0127 = icmp ult ptr %i.w, %i.ad
  %bound1128 = icmp ult ptr %0, %i.y
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx126, %found.conflict129
  %bound0131 = icmp ult ptr %i.w, %i.af
  %bound1132 = icmp ult ptr %i.ae, %i.y
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %i.w, %i.ah
  %bound1136 = icmp ult ptr %i.ag, %i.y
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %i.s, %i.g
  %bound1140 = icmp ult ptr %i.g, %i.y
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %i.aa, %i.ad
  %bound1144 = icmp ult ptr %0, %i.ac
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %i.aa, %i.af
  %bound1148 = icmp ult ptr %i.ae, %i.ac
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  %bound0151 = icmp ult ptr %i.aa, %i.ah
  %bound1152 = icmp ult ptr %i.ag, %i.ac
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  %bound0155 = icmp ult ptr %i.aa, %i.ag
  %bound1156 = icmp ult ptr %i.g, %i.ac
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx154, %found.conflict157
  br i1 %conflict.rdx158, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.ai = load <1 x float>, ptr %0, align 4
  %broadcast.splat161 = shufflevector <1 x float> %i.ai, <1 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load <1 x float>, ptr %i.h, align 4
  %broadcast.splat = shufflevector <1 x float> %i.aj, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ak = load <1 x float>, ptr %i.i, align 4
  %broadcast.splat164 = shufflevector <1 x float> %i.ak, <1 x float> poison, <4 x i32> zeroinitializer
  %i.al = load <1 x float>, ptr %i.k, align 4
  %broadcast.splat168 = shufflevector <1 x float> %i.al, <1 x float> poison, <4 x i32> zeroinitializer
  %i.am = load <1 x float>, ptr %i.l, align 4
  %broadcast.splat166 = shufflevector <1 x float> %i.am, <1 x float> poison, <4 x i32> zeroinitializer
  %i.an = load <1 x float>, ptr %i.m, align 4
  %broadcast.splat170 = shufflevector <1 x float> %i.an, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ao = load <1 x float>, ptr %i.n, align 4
  %broadcast.splat174 = shufflevector <1 x float> %i.ao, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ap = load float, ptr %i.o, align 4, !tbaa !10, !alias.scope !39
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = load float, ptr %i.p, align 4, !tbaa !10, !alias.scope !39
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %i.aq, i64 0
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.ar, align 4, !tbaa !10, !alias.scope !40 ; 3 uses
  %i.as = add nuw nsw i64 %index, %i.u            ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %wide.load159 = load <4 x float>, ptr %i.at, align 4, !tbaa !10, !alias.scope !41 ; 3 uses
  %i.au = fmul <4 x float> %broadcast.splat, %wide.load159
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat161, <4 x float> %wide.load, <4 x float> %i.au)
  %i.aw = add nuw nsw i64 %index, %i.t            ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %wide.load162 = load <4 x float>, ptr %i.ax, align 4, !tbaa !10, !alias.scope !42 ; 3 uses
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat164, <4 x float> %wide.load162, <4 x float> %i.av)
  %i.az = fmul <4 x float> %wide.load159, %broadcast.splat166
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat168, <4 x float> %wide.load, <4 x float> %i.az)
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat170, <4 x float> %wide.load162, <4 x float> %i.ba)
  %i.bc = fmul <4 x float> %wide.load159, %broadcast.splat172
  %i.bd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat174, <4 x float> %wide.load, <4 x float> %i.bc)
  %i.be = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat176, <4 x float> %wide.load162, <4 x float> %i.bd)
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
  tail call void @abort() #15
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
  %.idx = shl nsw i64 %i.o, 3                     ; 5 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %.idx    ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 52
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.s = ptrtoaddr ptr %i.n to i64                ; 13 uses
  %i.t = ptrtoaddr ptr %i.i to i64                ; 7 uses
  %i.u = ptrtoaddr ptr %i.g to i64                ; 7 uses
  %i.v = shl nsw i64 %i.o, 2                      ; 5 uses
  %i.w = add nsw i64 %i.v, -1
  %diff.check = icmp ult i64 %i.w, 15
  %i.x = add nsw i64 %.idx, -1
  %diff.check25 = icmp ult i64 %i.x, 15
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 6 uses
  %i.z = add i64 %i.y, %i.u
  %i.aa = sub i64 %i.s, %i.z
  %diff.check26 = icmp ugt i64 %i.aa, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  %i.ab = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %i.ac = add i64 %i.ab, %i.u
  %i.ad = sub i64 %i.s, %i.ac
  %diff.check28 = icmp ugt i64 %i.ad, -16
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  %i.ae = sub i64 %i.u, %i.s
  %diff.check30 = icmp ugt i64 %i.ae, -16
  %conflict.rdx31 = or i1 %conflict.rdx29, %diff.check30
  %i.af = add i64 %i.y, %i.t
  %i.ag = sub i64 %i.s, %i.af
  %diff.check32 = icmp ugt i64 %i.ag, -16
  %conflict.rdx33 = or i1 %conflict.rdx31, %diff.check32
  %i.ah = add i64 %i.ab, %i.t
  %i.ai = sub i64 %i.s, %i.ah
  %diff.check34 = icmp ugt i64 %i.ai, -16
  %conflict.rdx35 = or i1 %conflict.rdx33, %diff.check34
  %i.aj = sub i64 %i.t, %i.s
  %diff.check36 = icmp ugt i64 %i.aj, -16
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %3 = add i64 %i.y, %i.u
  %4 = add i64 %i.v, %i.s
  %i.ak = sub i64 %4, %3
  %diff.check38 = icmp ugt i64 %i.ak, -16
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  %i.al = add i64 %i.v, %i.s
  %i.am = sub i64 %i.al, %i.u                     ; 2 uses
  %i.an = sub i64 %i.ab, %i.am
  %diff.check40 = icmp ugt i64 %i.an, -16
  %conflict.rdx41 = or i1 %conflict.rdx39, %diff.check40
  %i.ao = add i64 %i.am, -1
  %diff.check42 = icmp ult i64 %i.ao, 15
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  %5 = add i64 %i.y, %i.t
  %6 = add i64 %i.v, %i.s
  %i.ap = sub i64 %6, %5
  %diff.check44 = icmp ugt i64 %i.ap, -16
  %conflict.rdx45 = or i1 %conflict.rdx43, %diff.check44
  %7 = add i64 %i.v, %i.s
  %i.aq = sub i64 %7, %i.t                        ; 2 uses
  %i.ar = sub i64 %i.ab, %i.aq
  %diff.check46 = icmp ugt i64 %i.ar, -16
  %conflict.rdx47 = or i1 %conflict.rdx45, %diff.check46
  %i.as = add i64 %i.aq, -1
  %diff.check48 = icmp ult i64 %i.as, 15
  %conflict.rdx49 = or i1 %conflict.rdx47, %diff.check48
  %i.at = add i64 %.idx, %i.s
  %i.au = sub i64 %i.at, %i.u                     ; 2 uses
  %i.av = sub i64 %i.y, %i.au
  %diff.check50 = icmp ugt i64 %i.av, -16
  %conflict.rdx51 = or i1 %conflict.rdx49, %diff.check50
  %i.aw = sub i64 %i.ab, %i.au
  %diff.check52 = icmp ugt i64 %i.aw, -16
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  %i.ax = add i64 %.idx, %i.s                     ; 2 uses
  %8 = sub i64 %i.u, %i.ax
  %diff.check54 = icmp ugt i64 %8, -16
  %conflict.rdx55 = or i1 %conflict.rdx53, %diff.check54
  %9 = add i64 %i.y, %i.t
  %i.ay = sub i64 %9, %i.ax
  %diff.check56 = icmp ugt i64 %i.ay, -16
  %conflict.rdx57 = or i1 %conflict.rdx55, %diff.check56
  %10 = add i64 %.idx, %i.s
  %11 = sub i64 %10, %i.t                         ; 2 uses
  %i.az = sub i64 %i.ab, %11
  %diff.check58 = icmp ugt i64 %i.az, -16
  %conflict.rdx59 = or i1 %conflict.rdx57, %diff.check58
  %i.ba = add i64 %11, -1
  %diff.check60 = icmp ult i64 %i.ba, 15
  %conflict.rdx61 = or i1 %conflict.rdx59, %diff.check60
  br i1 %conflict.rdx61, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load62 = load <4 x float>, ptr %i.bc, align 4, !tbaa !10
  %i.bd = fadd <4 x float> %wide.load, %wide.load62
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  store <4 x float> %i.bd, ptr %i.be, align 4, !tbaa !10
  %i.bf = add nuw nsw i64 %index, %i.p            ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bf
  %wide.load63 = load <4 x float>, ptr %i.bg, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bf
  %wide.load64 = load <4 x float>, ptr %i.bh, align 4, !tbaa !10
  %i.bi = fadd <4 x float> %wide.load63, %wide.load64
  %i.bj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bi, ptr %i.bj, align 4, !tbaa !10
  %i.bk = add nuw nsw i64 %i.q, %index            ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %wide.load65 = load <4 x float>, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk
  %wide.load66 = load <4 x float>, ptr %i.bm, align 4, !tbaa !10
  %i.bn = fadd <4 x float> %wide.load65, %wide.load66
  %i.bo = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.bn, ptr %i.bo, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 121)
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !23
  %i.br = load i32, ptr %i.c, align 4, !tbaa !23
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.3, i32 noundef %i.bq, i32 noundef %i.br)
  tail call void @abort() #15
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 8 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !10
  %i.bw = fadd float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %i.bw, ptr %i.bx, align 4, !tbaa !10
  %i.by = add nuw nsw i64 %indvars.iv, %i.p       ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.by
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = fadd float %i.ca, %i.cc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.cd, ptr %gep, align 4, !tbaa !10
  %i.ce = add nuw nsw i64 %i.q, %indvars.iv       ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ce
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10
  %i.cj = fadd float %i.cg, %i.ci
  %i.ck = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.cj, ptr %i.ck, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !50

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.cl = mul i32 %i.b, 3
  %i.cm = add i32 %.promoted21, %i.cl
  store i32 %i.cm, ptr %i.j, align 8, !tbaa !24
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
  %.idx = shl nsw i64 %i.o, 3                     ; 5 uses
  %i.r = getelementptr i8, ptr %i.n, i64 %.idx    ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 52
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.s = ptrtoaddr ptr %i.n to i64                ; 13 uses
  %i.t = ptrtoaddr ptr %i.i to i64                ; 7 uses
  %i.u = ptrtoaddr ptr %i.g to i64                ; 7 uses
  %i.v = shl nsw i64 %i.o, 2                      ; 5 uses
  %i.w = add nsw i64 %i.v, -1
  %diff.check = icmp ult i64 %i.w, 15
  %i.x = add nsw i64 %.idx, -1
  %diff.check25 = icmp ult i64 %i.x, 15
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.y = shl nuw nsw i64 %wide.trip.count, 3      ; 6 uses
  %i.z = add i64 %i.y, %i.u
  %i.aa = sub i64 %i.s, %i.z
  %diff.check26 = icmp ugt i64 %i.aa, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  %i.ab = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %i.ac = add i64 %i.ab, %i.u
  %i.ad = sub i64 %i.s, %i.ac
  %diff.check28 = icmp ugt i64 %i.ad, -16
  %conflict.rdx29 = or i1 %conflict.rdx27, %diff.check28
  %i.ae = sub i64 %i.u, %i.s
  %diff.check30 = icmp ugt i64 %i.ae, -16
  %conflict.rdx31 = or i1 %conflict.rdx29, %diff.check30
  %i.af = add i64 %i.y, %i.t
  %i.ag = sub i64 %i.s, %i.af
  %diff.check32 = icmp ugt i64 %i.ag, -16
  %conflict.rdx33 = or i1 %conflict.rdx31, %diff.check32
  %i.ah = add i64 %i.ab, %i.t
  %i.ai = sub i64 %i.s, %i.ah
  %diff.check34 = icmp ugt i64 %i.ai, -16
  %conflict.rdx35 = or i1 %conflict.rdx33, %diff.check34
  %i.aj = sub i64 %i.t, %i.s
  %diff.check36 = icmp ugt i64 %i.aj, -16
  %conflict.rdx37 = or i1 %conflict.rdx35, %diff.check36
  %3 = add i64 %i.y, %i.u
  %4 = add i64 %i.v, %i.s
  %i.ak = sub i64 %4, %3
  %diff.check38 = icmp ugt i64 %i.ak, -16
  %conflict.rdx39 = or i1 %conflict.rdx37, %diff.check38
  %i.al = add i64 %i.v, %i.s
  %i.am = sub i64 %i.al, %i.u                     ; 2 uses
  %i.an = sub i64 %i.ab, %i.am
  %diff.check40 = icmp ugt i64 %i.an, -16
  %conflict.rdx41 = or i1 %conflict.rdx39, %diff.check40
  %i.ao = add i64 %i.am, -1
  %diff.check42 = icmp ult i64 %i.ao, 15
  %conflict.rdx43 = or i1 %conflict.rdx41, %diff.check42
  %5 = add i64 %i.y, %i.t
  %6 = add i64 %i.v, %i.s
  %i.ap = sub i64 %6, %5
  %diff.check44 = icmp ugt i64 %i.ap, -16
  %conflict.rdx45 = or i1 %conflict.rdx43, %diff.check44
  %7 = add i64 %i.v, %i.s
  %i.aq = sub i64 %7, %i.t                        ; 2 uses
  %i.ar = sub i64 %i.ab, %i.aq
  %diff.check46 = icmp ugt i64 %i.ar, -16
  %conflict.rdx47 = or i1 %conflict.rdx45, %diff.check46
  %i.as = add i64 %i.aq, -1
  %diff.check48 = icmp ult i64 %i.as, 15
  %conflict.rdx49 = or i1 %conflict.rdx47, %diff.check48
  %i.at = add i64 %.idx, %i.s
  %i.au = sub i64 %i.at, %i.u                     ; 2 uses
  %i.av = sub i64 %i.y, %i.au
  %diff.check50 = icmp ugt i64 %i.av, -16
  %conflict.rdx51 = or i1 %conflict.rdx49, %diff.check50
  %i.aw = sub i64 %i.ab, %i.au
  %diff.check52 = icmp ugt i64 %i.aw, -16
  %conflict.rdx53 = or i1 %conflict.rdx51, %diff.check52
  %i.ax = add i64 %.idx, %i.s                     ; 2 uses
  %8 = sub i64 %i.u, %i.ax
  %diff.check54 = icmp ugt i64 %8, -16
  %conflict.rdx55 = or i1 %conflict.rdx53, %diff.check54
  %9 = add i64 %i.y, %i.t
  %i.ay = sub i64 %9, %i.ax
  %diff.check56 = icmp ugt i64 %i.ay, -16
  %conflict.rdx57 = or i1 %conflict.rdx55, %diff.check56
  %10 = add i64 %.idx, %i.s
  %11 = sub i64 %10, %i.t                         ; 2 uses
  %i.az = sub i64 %i.ab, %11
  %diff.check58 = icmp ugt i64 %i.az, -16
  %conflict.rdx59 = or i1 %conflict.rdx57, %diff.check58
  %i.ba = add i64 %11, -1
  %diff.check60 = icmp ult i64 %i.ba, 15
  %conflict.rdx61 = or i1 %conflict.rdx59, %diff.check60
  br i1 %conflict.rdx61, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  %wide.load62 = load <4 x float>, ptr %i.bc, align 4, !tbaa !10
  %i.bd = fsub <4 x float> %wide.load, %wide.load62
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  store <4 x float> %i.bd, ptr %i.be, align 4, !tbaa !10
  %i.bf = add nuw nsw i64 %index, %i.p            ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bf
  %wide.load63 = load <4 x float>, ptr %i.bg, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bf
  %wide.load64 = load <4 x float>, ptr %i.bh, align 4, !tbaa !10
  %i.bi = fsub <4 x float> %wide.load63, %wide.load64
  %i.bj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  store <4 x float> %i.bi, ptr %i.bj, align 4, !tbaa !10
  %i.bk = add nuw nsw i64 %i.q, %index            ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %wide.load65 = load <4 x float>, ptr %i.bl, align 4, !tbaa !10
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk
  %wide.load66 = load <4 x float>, ptr %i.bm, align 4, !tbaa !10
  %i.bn = fsub <4 x float> %wide.load65, %wide.load66
  %i.bo = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.bn, ptr %i.bo, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 137)
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !23
  %i.br = load i32, ptr %i.c, align 4, !tbaa !23
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.3, i32 noundef %i.bq, i32 noundef %i.br)
  tail call void @abort() #15
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 8 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !10
  %i.bw = fsub float %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  store float %i.bw, ptr %i.bx, align 4, !tbaa !10
  %i.by = add nuw nsw i64 %indvars.iv, %i.p       ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.by
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = fsub float %i.ca, %i.cc
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.cd, ptr %gep, align 4, !tbaa !10
  %i.ce = add nuw nsw i64 %i.q, %indvars.iv       ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ce
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10
  %i.cj = fsub float %i.cg, %i.ci
  %i.ck = getelementptr [4 x i8], ptr %i.r, i64 %indvars.iv
  store float %i.cj, ptr %i.ck, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !52

._crit_edge:                                      ; preds = %.preheader, %middle.block
  %i.cl = mul i32 %i.b, 3
  %i.cm = add i32 %.promoted21, %i.cl
  store i32 %i.cm, ptr %i.j, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.preheader18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformXERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = tail call noundef float @cosf(float noundef %i.a) #16 ; 2 uses
  %i.c = tail call noundef float @sinf(float noundef %i.a) #16 ; 2 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.b, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.c, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.i = fneg float %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.b, ptr %i.k, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformYERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = tail call noundef float @cosf(float noundef %i.a) #16 ; 2 uses
  %i.c = tail call noundef float @sinf(float noundef %i.a) #16 ; 2 uses
  store float %i.b, ptr %0, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !10
  %i.e = fneg float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.e, ptr %i.f, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.c, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.b, ptr %i.k, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN24btInverseDynamicsBullet310transformZERKf(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.btInverseDynamicsBullet3::mat33") align 4 captures(none) initializes((0, 12), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = tail call noundef float @cosf(float noundef %i.a) #16 ; 2 uses
  %i.c = tail call noundef float @sinf(float noundef %i.a) #16 ; 2 uses
  store float %i.b, ptr %0, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !10
  %i.f = fneg float %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.b, ptr %i.h, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> zeroinitializer, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !10
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
  %i.a = tail call noundef float @sinf(float noundef %3) #16 ; 3 uses
end_hunk_0
