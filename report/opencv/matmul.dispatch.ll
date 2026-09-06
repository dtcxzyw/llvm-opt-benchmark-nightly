Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv12cpu_baselineL13transform_32sEPKiPiPKdiii:bb.a

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.j ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.hm, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.hh = getelementptr inbounds [8 x i8], ptr %.0176194.i.epil, i64 %i.db ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !29
  %i.hj = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hk = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.hj)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !30
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.hm = getelementptr i8, ptr %i.hh, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.j, !llvm.loop !129

._crit_edge197.split.i:                           ; preds = %bb.j, %._crit_edge197.split.i.unr-lcssa
  %i.hn = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %i.dc
  %exitcond219.not.i = icmp eq i32 %i.hn, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IidEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !127

_ZN2cv12cpu_baselineL10transform_IidEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %bb.i, %bb.f, %bb.d, %bb.b, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13transform_32fEPKfPfS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp eq i32 %5, 2
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph212.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph212.i:                                      ; preds = %.preheader.i
  %i.d = shl nuw nsw i32 %3, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.k, 6
  br i1 %min.iters.check164, label %scalar.ph163.preheader, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph212.i
  %i.n = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %scevgep153 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %scevgep154 = getelementptr i8, ptr %0, i64 %i.n
  %scevgep155 = getelementptr i8, ptr %2, i64 24
  %bound0156 = icmp ult ptr %1, %scevgep154
  %bound1157 = icmp ult ptr %0, %scevgep153
  %found.conflict158 = and i1 %bound0156, %bound1157
  %bound0159 = icmp ult ptr %1, %scevgep155
  %bound1160 = icmp ult ptr %2, %scevgep153
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %found.conflict158, %found.conflict161
  br i1 %conflict.rdx162, label %scalar.ph163.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck152
  %n.vec166 = and i64 %i.m, -4                    ; 3 uses
  %i.o = shl i64 %n.vec166, 1
  %i.p = load float, ptr %2, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert172 = insertelement <4 x float> poison, float %i.p, i64 0
  %broadcast.splat173 = shufflevector <4 x float> %broadcast.splatinsert172, <4 x float> poison, <4 x i32> zeroinitializer
  %i.q = load float, ptr %i.e, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert170 = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat171 = shufflevector <4 x float> %broadcast.splatinsert170, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = load float, ptr %i.f, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.g, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer
  %i.t = load float, ptr %i.h, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer
  %i.u = load float, ptr %i.i, align 4, !tbaa !22, !alias.scope !159
  %broadcast.splatinsert180 = insertelement <4 x float> poison, float %i.u, i64 0
  %i.v = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> %broadcast.splatinsert180, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next183, %vector.body167 ] ; 2 uses
  %i.w = shl nuw i64 %index168, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %wide.vec = load <8 x float>, ptr %i.x, align 4, !tbaa !22, !alias.scope !160 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec169 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.y = fmul <4 x float> %strided.vec169, %broadcast.splat171
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat173, <4 x float> %strided.vec, <4 x float> %i.y)
  %i.aa = fmul <4 x float> %strided.vec169, %broadcast.splat177
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat179, <4 x float> %strided.vec, <4 x float> %i.aa)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> %i.ab, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec182 = fadd <8 x float> %i.v, %i.ad
  store <8 x float> %interleaved.vec182, ptr %i.ac, align 4, !tbaa !22, !alias.scope !161, !noalias !162
  %index.next183 = add nuw i64 %index168, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next183, %n.vec166
  br i1 %i.ae, label %middle.block184, label %vector.body167, !llvm.loop !134

middle.block184:                                  ; preds = %vector.body167
  %cmp.n185 = icmp eq i64 %i.m, %n.vec166
  br i1 %cmp.n185, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph163.preheader

scalar.ph163.preheader:                           ; preds = %vector.memcheck152, %.lr.ph212.i, %middle.block184
  %indvars.iv242.i.ph = phi i64 [ 0, %vector.memcheck152 ], [ 0, %.lr.ph212.i ], [ %i.o, %middle.block184 ]
  br label %scalar.ph163

scalar.ph163:                                     ; preds = %scalar.ph163.preheader, %scalar.ph163
  %indvars.iv242.i = phi i64 [ %indvars.iv.next243.i, %scalar.ph163 ], [ %indvars.iv242.i.ph, %scalar.ph163.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv242.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv242.i
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !22 ; 2 uses
  %i.ai = load <4 x float>, ptr %2, align 4, !tbaa !22 ; 3 uses
  %i.aj = load <2 x float>, ptr %i.h, align 4, !tbaa !22 ; 2 uses
  %i.ak = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.an = shufflevector <4 x float> %i.ai, <4 x float> %i.am, <2 x i32> <i32 1, i32 4>
  %i.ao = fmul <2 x float> %i.ak, %i.an
  %i.ap = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aq = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.aq, <2 x float> %i.ao)
  %i.as = shufflevector <2 x float> %i.al, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  %i.at = fadd <2 x float> %i.as, %i.ar
  store <2 x float> %i.at, ptr %i.ag, align 4, !tbaa !22
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 2 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next243.i, %i.j
  br i1 %i.au, label %scalar.ph163, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !135

bb.b:                                             ; preds = %bb.a
  %i.av = icmp eq i32 %4, 3                       ; 2 uses
  %i.aw = icmp eq i32 %5, 3
  %or.cond3.i = and i1 %i.av, %i.aw
  br i1 %or.cond3.i, label %.preheader183.i, label %bb.c

.preheader183.i:                                  ; preds = %bb.b
  %i.ax = icmp sgt i32 %3, 0
  br i1 %i.ax, label %.lr.ph210.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph210.i:                                      ; preds = %.preheader183.i
  %i.ay = mul i32 %3, 3                           ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = zext i32 %i.ay to i64                   ; 3 uses
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 3)
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = udiv i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check118 = icmp ult i32 %i.ay, 10
  br i1 %min.iters.check118, label %scalar.ph117.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.lr.ph210.i
  %i.bp = add nsw i64 %i.bk, -1
  %i.bq = udiv i64 %i.bp, 3
  %i.br = mul nuw nsw i64 %i.bq, 12
  %i.bs = add nuw nsw i64 %i.br, 12               ; 2 uses
  %scevgep107 = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %scevgep108 = getelementptr i8, ptr %0, i64 %i.bs
  %scevgep109 = getelementptr i8, ptr %2, i64 48
  %bound0110 = icmp ult ptr %1, %scevgep108
  %bound1111 = icmp ult ptr %0, %scevgep107
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0113 = icmp ult ptr %1, %scevgep109
  %bound1114 = icmp ult ptr %2, %scevgep107
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %found.conflict112, %found.conflict115
  br i1 %conflict.rdx116, label %scalar.ph117.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %vector.memcheck105
  %n.vec120 = and i64 %i.bo, 9223372036854775804  ; 3 uses
  %i.bt = mul i64 %n.vec120, 3
  %i.bu = load float, ptr %2, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bv = load float, ptr %i.az, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = load float, ptr %i.ba, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.bx = load float, ptr %i.bb, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.by = load float, ptr %i.bc, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert133 = insertelement <4 x float> poison, float %i.by, i64 0
  %i.bz = load float, ptr %i.bd, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = load float, ptr %i.be, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert135 = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cb = load float, ptr %i.bf, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cc = load float, ptr %i.bg, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert141 = insertelement <4 x float> poison, float %i.cc, i64 0
  %broadcast.splat142 = shufflevector <4 x float> %broadcast.splatinsert141, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load float, ptr %i.bh, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert139 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat140 = shufflevector <4 x float> %broadcast.splatinsert139, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = load float, ptr %i.bi, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cf = load float, ptr %i.bj, align 4, !tbaa !22, !alias.scope !163
  %broadcast.splatinsert145 = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat146 = shufflevector <4 x float> %broadcast.splatinsert145, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> %broadcast.splatinsert137, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %7 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> %broadcast.splatinsert135, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.cg = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> %broadcast.splatinsert133, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next148, %vector.body121 ] ; 2 uses
  %i.ch = mul nuw i64 %index122, 3                ; 13 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.co = getelementptr i8, ptr %i.cn, i64 36
  %i.cp = load float, ptr %i.ci, align 4, !tbaa !22, !alias.scope !164
  %i.cq = load float, ptr %i.ck, align 4, !tbaa !22, !alias.scope !164
  %i.cr = load float, ptr %i.cm, align 4, !tbaa !22, !alias.scope !164
  %i.cs = load float, ptr %i.co, align 4, !tbaa !22, !alias.scope !164
  %i.ct = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 1
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.dc = getelementptr i8, ptr %i.db, i64 28
  %i.dd = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.de = getelementptr i8, ptr %i.dd, i64 40
  %i.df = load float, ptr %i.cy, align 4, !tbaa !22, !alias.scope !164
  %i.dg = load float, ptr %i.da, align 4, !tbaa !22, !alias.scope !164
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !22, !alias.scope !164
  %i.di = load float, ptr %i.de, align 4, !tbaa !22, !alias.scope !164
  %i.dj = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 3 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dr = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.ds = getelementptr i8, ptr %i.dr, i64 32
  %i.dt = getelementptr [4 x i8], ptr %0, i64 %i.ch
  %i.du = getelementptr i8, ptr %i.dt, i64 44
  %i.dv = load float, ptr %i.do, align 4, !tbaa !22, !alias.scope !164
  %i.dw = load float, ptr %i.dq, align 4, !tbaa !22, !alias.scope !164
  %i.dx = load float, ptr %i.ds, align 4, !tbaa !22, !alias.scope !164
  %i.dy = load float, ptr %i.du, align 4, !tbaa !22, !alias.scope !164
  %i.dz = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 1
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 2
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 3 ; 2 uses
  %8 = fmul <4 x float> %i.dm, %broadcast.splat124
  %i.ed = fmul <4 x float> %i.dm, %broadcast.splat132
  %i.ee = fmul <4 x float> %i.dm, %broadcast.splat140
  %9 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat142, <4 x float> %i.cw, <4 x float> %i.ee)
  %10 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat144, <4 x float> %i.ec, <4 x float> %9)
  %11 = fadd <4 x float> %broadcast.splat146, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch
  %13 = shufflevector <4 x float> %i.ec, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <4 x float> %i.cw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <4 x float> %8, <4 x float> %i.ed, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cg, <8 x float> %14, <8 x float> %15)
  %i.ef = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %7, <8 x float> %13, <8 x float> %16)
  %i.eg = fadd <8 x float> %6, %i.ef
  %i.eh = shufflevector <4 x float> %11, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec147 = shufflevector <8 x float> %i.eg, <8 x float> %i.eh, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec147, ptr %12, align 4, !tbaa !22, !alias.scope !165, !noalias !166
  %index.next148 = add nuw i64 %index122, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next148, %n.vec120
  br i1 %i.ei, label %middle.block149, label %vector.body121, !llvm.loop !140

middle.block149:                                  ; preds = %vector.body121
  %cmp.n150 = icmp eq i64 %i.bo, %n.vec120
  br i1 %cmp.n150, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph117.preheader

scalar.ph117.preheader:                           ; preds = %vector.memcheck105, %.lr.ph210.i, %middle.block149
  %indvars.iv239.i.ph = phi i64 [ 0, %vector.memcheck105 ], [ 0, %.lr.ph210.i ], [ %i.bt, %middle.block149 ]
  br label %scalar.ph117

scalar.ph117:                                     ; preds = %scalar.ph117.preheader, %scalar.ph117
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %scalar.ph117 ], [ %indvars.iv239.i.ph, %scalar.ph117.preheader ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv239.i ; 2 uses
  %i.ek = load float, ptr %i.bg, align 4, !tbaa !22
  %i.el = load float, ptr %i.bh, align 4, !tbaa !22
  %i.em = load float, ptr %i.bi, align 4, !tbaa !22
  %i.en = load float, ptr %i.bj, align 4, !tbaa !22
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv239.i
  %i.ep = load <3 x float>, ptr %i.ej, align 4, !tbaa !22 ; 5 uses
  %i.eq = load float, ptr %i.ej, align 4, !tbaa !22
  %i.er = load <8 x float>, ptr %2, align 4, !tbaa !22 ; 4 uses
  %i.es = shufflevector <3 x float> %i.ep, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = shufflevector <8 x float> %i.er, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.eu = fmul <2 x float> %i.es, %i.et
  %i.ev = shufflevector <8 x float> %i.er, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ew = shufflevector <3 x float> %i.ep, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.ew, <2 x float> %i.eu)
  %i.ey = shufflevector <8 x float> %i.er, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ez = shufflevector <3 x float> %i.ep, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.ez, <2 x float> %i.ex)
  %i.fb = shufflevector <8 x float> %i.er, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.fc = fadd <2 x float> %i.fb, %i.fa
  %i.fd = extractelement <3 x float> %i.ep, i64 1
  %i.fe = fmul float %i.fd, %i.el
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.eq, float %i.fe)
  %i.fg = extractelement <3 x float> %i.ep, i64 2
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.em, float %i.fg, float %i.ff)
  %i.fi = fadd float %i.en, %i.fh
  store <2 x float> %i.fc, ptr %i.eo, align 4, !tbaa !22
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv239.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store float %i.fi, ptr %i.fk, align 4, !tbaa !22
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 3 ; 2 uses
  %i.fl = icmp samesign ult i64 %indvars.iv.next240.i, %i.bk
  br i1 %i.fl, label %scalar.ph117, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !141

bb.c:                                             ; preds = %bb.b
  %i.fm = icmp eq i32 %5, 1
  %or.cond5.i = and i1 %i.av, %i.fm
  br i1 %or.cond5.i, label %.preheader185.i, label %bb.d

.preheader185.i:                                  ; preds = %bb.c
  %i.fn = icmp sgt i32 %3, 0
  br i1 %i.fn, label %.lr.ph208.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph208.i:                                      ; preds = %.preheader185.i
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %wide.trip.count237.i = zext nneg i32 %3 to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %3, 8
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph208.i
  %i.fr = shl nuw nsw i64 %wide.trip.count237.i, 2
  %scevgep73 = getelementptr i8, ptr %1, i64 %i.fr ; 2 uses
  %scevgep74 = getelementptr i8, ptr %2, i64 16
  %i.fs = mul nuw nsw i64 %wide.trip.count237.i, 12
  %scevgep75 = getelementptr i8, ptr %0, i64 %i.fs
  %bound076 = icmp ult ptr %1, %scevgep74
  %bound177 = icmp ult ptr %2, %scevgep73
  %found.conflict78 = and i1 %bound076, %bound177
  %bound079 = icmp ult ptr %1, %scevgep75
  %bound180 = icmp ult ptr %0, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %found.conflict78, %found.conflict81
  br i1 %conflict.rdx82, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck72
  %n.vec86 = and i64 %wide.trip.count237.i, 2147483644 ; 4 uses
  %i.ft = mul nuw nsw i64 %n.vec86, 12
  %i.fu = getelementptr i8, ptr %0, i64 %i.ft
  %i.fv = load float, ptr %2, align 4, !tbaa !22, !alias.scope !167
  %broadcast.splatinsert94 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat95 = shufflevector <4 x float> %broadcast.splatinsert94, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = load float, ptr %i.fo, align 4, !tbaa !22, !alias.scope !167
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %i.fw, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = load float, ptr %i.fp, align 4, !tbaa !22, !alias.scope !167
  %broadcast.splatinsert96 = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat97 = shufflevector <4 x float> %broadcast.splatinsert96, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = load float, ptr %i.fq, align 4, !tbaa !22, !alias.scope !167
  %broadcast.splatinsert98 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat99 = shufflevector <4 x float> %broadcast.splatinsert98, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next100, %vector.body87 ] ; 3 uses
  %i.fz = mul i64 %index88, 12                    ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.fz ; 3 uses
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz     ; 3 uses
  %next.gep89 = getelementptr i8, ptr %i.ga, i64 12
  %i.gb = getelementptr i8, ptr %0, i64 %i.fz     ; 3 uses
  %next.gep90 = getelementptr i8, ptr %i.gb, i64 24
  %i.gc = getelementptr i8, ptr %0, i64 %i.fz     ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.gc, i64 36
  %i.gd = load float, ptr %next.gep, align 4, !tbaa !22, !alias.scope !168
  %i.ge = load float, ptr %next.gep89, align 4, !tbaa !22, !alias.scope !168
  %i.gf = load float, ptr %next.gep90, align 4, !tbaa !22, !alias.scope !168
  %i.gg = load float, ptr %next.gep91, align 4, !tbaa !22, !alias.scope !168
  %i.gh = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gi = insertelement <4 x float> %i.gh, float %i.ge, i64 1
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 2
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 3
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.gm = getelementptr i8, ptr %i.ga, i64 16
  %i.gn = getelementptr i8, ptr %i.gb, i64 28
  %i.go = getelementptr i8, ptr %i.gc, i64 40
  %i.gp = load float, ptr %i.gl, align 4, !tbaa !22, !alias.scope !168
  %i.gq = load float, ptr %i.gm, align 4, !tbaa !22, !alias.scope !168
  %i.gr = load float, ptr %i.gn, align 4, !tbaa !22, !alias.scope !168
  %i.gs = load float, ptr %i.go, align 4, !tbaa !22, !alias.scope !168
  %i.gt = insertelement <4 x float> poison, float %i.gp, i64 0
  %i.gu = insertelement <4 x float> %i.gt, float %i.gq, i64 1
  %i.gv = insertelement <4 x float> %i.gu, float %i.gr, i64 2
  %i.gw = insertelement <4 x float> %i.gv, float %i.gs, i64 3
  %i.gx = fmul <4 x float> %broadcast.splat93, %i.gw
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat95, <4 x float> %i.gk, <4 x float> %i.gx)
  %i.gz = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ha = getelementptr i8, ptr %i.ga, i64 20
  %i.hb = getelementptr i8, ptr %i.gb, i64 32
  %i.hc = getelementptr i8, ptr %i.gc, i64 44
  %i.hd = load float, ptr %i.gz, align 4, !tbaa !22, !alias.scope !168
  %i.he = load float, ptr %i.ha, align 4, !tbaa !22, !alias.scope !168
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !22, !alias.scope !168
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !22, !alias.scope !168
  %i.hh = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 1
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 2
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 3
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat97, <4 x float> %i.hk, <4 x float> %i.gy)
  %i.hm = fadd <4 x float> %i.hl, %broadcast.splat99
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index88
  store <4 x float> %i.hm, ptr %i.hn, align 4, !tbaa !22, !alias.scope !169, !noalias !170
  %index.next100 = add nuw i64 %index88, 4        ; 2 uses
  %i.ho = icmp eq i64 %index.next100, %n.vec86
  br i1 %i.ho, label %middle.block101, label %vector.body87, !llvm.loop !146

middle.block101:                                  ; preds = %vector.body87
  %cmp.n102 = icmp eq i64 %n.vec86, %wide.trip.count237.i
  br i1 %cmp.n102, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %vector.memcheck72, %.lr.ph208.i, %middle.block101
  %indvars.iv234.i.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %.lr.ph208.i ], [ %n.vec86, %middle.block101 ]
  %.0177207.i.ph = phi ptr [ %0, %vector.memcheck72 ], [ %0, %.lr.ph208.i ], [ %i.fu, %middle.block101 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %scalar.ph83 ], [ %indvars.iv234.i.ph, %scalar.ph83.preheader ] ; 2 uses
  %.0177207.i = phi ptr [ %i.id, %scalar.ph83 ], [ %.0177207.i.ph, %scalar.ph83.preheader ] ; 4 uses
  %i.hp = load float, ptr %2, align 4, !tbaa !22
  %i.hq = load float, ptr %.0177207.i, align 4, !tbaa !22
  %i.hr = load float, ptr %i.fo, align 4, !tbaa !22
  %i.hs = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 4
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !22
  %i.hu = fmul float %i.hr, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.hq, float %i.hu)
  %i.hw = load float, ptr %i.fp, align 4, !tbaa !22
  %i.hx = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 8
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !22
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hy, float %i.hv)
  %i.ia = load float, ptr %i.fq, align 4, !tbaa !22
  %i.ib = fadd float %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv234.i
  store float %i.ib, ptr %i.ic, align 4, !tbaa !22
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 12
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph83, !llvm.loop !147

bb.d:                                             ; preds = %bb.c
  %i.ie = icmp eq i32 %4, 4
  %i.if = icmp eq i32 %5, 4
  %or.cond7.i = and i1 %i.ie, %i.if
  %i.ig = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %or.cond7.i, label %.preheader187.i, label %.preheader190.i

.preheader190.i:                                  ; preds = %bb.d
  br i1 %i.ig, label %.preheader189.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.preheader189.lr.ph.i:                            ; preds = %.preheader190.i
  %i.ih = icmp sgt i32 %5, 0
  %i.ii = sext i32 %4 to i64                      ; 7 uses
  %i.ij = sext i32 %5 to i64                      ; 2 uses
  br i1 %i.ih, label %.preheader189.lr.ph.split.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.preheader189.lr.ph.split.i:                      ; preds = %.preheader189.lr.ph.i
  %i.ik = icmp sgt i32 %4, 0
  %wide.trip.count228.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %i.ik, label %.preheader189.us.preheader.i, label %.preheader189.i.preheader

.preheader189.i.preheader:                        ; preds = %.preheader189.lr.ph.split.i
  %xtraiter = and i64 %wide.trip.count228.i, 3    ; 3 uses
  %i.il = icmp ult i32 %5, 4
  %unroll_iter = and i64 %wide.trip.count228.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod192 = icmp ne i64 %xtraiter, 0
  br label %.preheader189.i

.preheader189.us.preheader.i:                     ; preds = %.preheader189.lr.ph.split.i
  %wide.trip.count223.i = zext nneg i32 %4 to i64 ; 2 uses
  %xtraiter194 = and i64 %wide.trip.count223.i, 3 ; 3 uses
  %i.im = icmp ult i32 %4, 4
  %unroll_iter199 = and i64 %wide.trip.count223.i, 2147483644
  %lcmp.mod196.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod198 = icmp ne i64 %xtraiter194, 0
  br label %.preheader189.us.i

.preheader189.us.i:                               ; preds = %._crit_edge197.split.us.us.i, %.preheader189.us.preheader.i
  %.1201.us.i = phi ptr [ %i.jr, %._crit_edge197.split.us.us.i ], [ %0, %.preheader189.us.preheader.i ] ; 6 uses
  %.0178199.us.i = phi ptr [ %i.js, %._crit_edge197.split.us.us.i ], [ %1, %.preheader189.us.preheader.i ] ; 2 uses
  %.4198.us.i = phi i32 [ %i.jq, %._crit_edge197.split.us.us.i ], [ 0, %.preheader189.us.preheader.i ]
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.preheader189.us.i
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %._crit_edge.us.us.i ], [ 0, %.preheader189.us.i ] ; 2 uses
  %.0176194.us.us.i = phi ptr [ %i.jp, %._crit_edge.us.us.i ], [ %2, %.preheader189.us.i ] ; 6 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %i.ii ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !22 ; 2 uses
  br i1 %i.im, label %.epil.preheader193, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.0193.us.us.i = phi float [ %i.ji, %.lr.ph.us.us.i.new ], [ %i.io, %.lr.ph.us.us.i ]
  %niter200 = phi i64 [ %niter200.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !22
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i
  %i.is = load float, ptr %i.ir, align 4, !tbaa !22
  %i.it = tail call float @llvm.fmuladd.f32(float %i.iq, float %i.is, float %.0193.us.us.i)
  %indvars.iv.next221.i = or disjoint i64 %indvars.iv220.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !22
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !22
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.ix, float %i.it)
  %indvars.iv.next221.i.1 = or disjoint i64 %indvars.iv220.i, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.1
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !22
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.1
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !22
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.jc, float %i.iy)
  %indvars.iv.next221.i.2 = or disjoint i64 %indvars.iv220.i, 3 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.2
  %i.jf = load float, ptr %i.je, align 4, !tbaa !22
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.2
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !22
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jh, float %i.jd) ; 3 uses
  %indvars.iv.next221.i.3 = add nuw nsw i64 %indvars.iv220.i, 4 ; 2 uses
  %niter200.next.3 = add i64 %niter200, 4         ; 2 uses
  %niter200.ncmp.3 = icmp eq i64 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !148

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod196.not, label %._crit_edge.us.us.i, label %.epil.preheader193

.epil.preheader193:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv220.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next221.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.0193.us.us.i.epil.init = phi float [ %i.io, %.lr.ph.us.us.i ], [ %i.ji, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader193
  %indvars.iv220.i.epil = phi i64 [ %indvars.iv.next221.i.epil, %bb.e ], [ %indvars.iv220.i.epil.init, %.epil.preheader193 ] ; 3 uses
  %.0193.us.us.i.epil = phi float [ %i.jn, %bb.e ], [ %.0193.us.us.i.epil.init, %.epil.preheader193 ]
  %epil.iter195 = phi i64 [ %epil.iter195.next, %bb.e ], [ 0, %.epil.preheader193 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i.epil
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !22
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i.epil
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !22
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.jm, float %.0193.us.us.i.epil) ; 2 uses
  %indvars.iv.next221.i.epil = add nuw nsw i64 %indvars.iv220.i.epil, 1
  %epil.iter195.next = add i64 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i64 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %._crit_edge.us.us.i, label %bb.e, !llvm.loop !149

._crit_edge.us.us.i:                              ; preds = %bb.e, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi float [ %i.ji, %._crit_edge.us.us.i.unr-lcssa ], [ %i.jn, %bb.e ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.0178199.us.i, i64 %indvars.iv225.i
  store float %.lcssa, ptr %i.jo, align 4, !tbaa !22
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.in, i64 4
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge197.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !150

._crit_edge197.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.jq = add nuw nsw i32 %.4198.us.i, 1          ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %i.ii
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.0178199.us.i, i64 %i.ij
  %exitcond230.not.i = icmp eq i32 %i.jq, %3
  br i1 %exitcond230.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.us.i, !llvm.loop !151

.preheader187.i:                                  ; preds = %bb.d
  br i1 %i.ig, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader187.i
  %i.jt = shl i32 %3, 2
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.kd = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.kf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.kn = zext i32 %i.jt to i64                   ; 3 uses
  %i.ko = tail call i64 @llvm.usub.sat.i64(i64 %i.kn, i64 4) ; 2 uses
  %i.kp = lshr exact i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ko, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.kr = tail call i64 @llvm.usub.sat.i64(i64 %i.kn, i64 4)
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %i.kt = add nuw nsw i64 %i.ks, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.kt  ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.kt
  %scevgep30 = getelementptr i8, ptr %2, i64 80
  %bound0 = icmp ult ptr %1, %scevgep29
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %1, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kq, 2147483644              ; 3 uses
  %i.ku = shl nuw nsw i64 %n.vec, 2
  %i.kv = load float, ptr %2, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.kv, i64 0
  %i.kw = load float, ptr %i.ju, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kx = load float, ptr %i.jv, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.ky = load float, ptr %i.jw, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert38 = insertelement <4 x float> poison, float %i.ky, i64 0
  %i.kz = load float, ptr %i.jx, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.la = load float, ptr %i.jy, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %i.la, i64 0
  %i.lb = load float, ptr %i.jz, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.lb, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lc = load float, ptr %i.ka, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.lc, i64 0
  %i.ld = load float, ptr %i.kb, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.ld, i64 0
  %i.le = load float, ptr %i.kc, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.le, i64 0
  %i.lf = load float, ptr %i.kd, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lg = load float, ptr %i.ke, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.lg, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lh = load float, ptr %i.kf, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.lh, i64 0
  %i.li = load float, ptr %i.kg, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.li, i64 0
  %i.lj = load float, ptr %i.kh, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lk = load float, ptr %i.ki, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %i.lk, i64 0
  %i.ll = load float, ptr %i.kj, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.ll, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = load float, ptr %i.kk, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.lm, i64 0
  %17 = load float, ptr %i.kl, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert68 = insertelement <4 x float> poison, float %17, i64 0
  %i.ln = load float, ptr %i.km, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert70.a = insertelement <4 x float> poison, float %i.ln, i64 0
  %18 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> %broadcast.splatinsert50, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %19 = shufflevector <4 x float> %broadcast.splatinsert38, <4 x float> %broadcast.splatinsert48, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %20 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> %broadcast.splatinsert46, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.lo = shufflevector <4 x float> %broadcast.splatinsert34, <4 x float> %broadcast.splatinsert44, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %21 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> %broadcast.splatinsert70.a, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %22 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> %broadcast.splatinsert68, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.lp = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> %broadcast.splatinsert66, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.lq = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> %broadcast.splatinsert64, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lr = shl nuw i64 %index, 2                   ; 17 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 48
  %i.lz = load float, ptr %i.ls, align 4, !tbaa !22, !alias.scope !172
  %i.ma = load float, ptr %i.lu, align 4, !tbaa !22, !alias.scope !172
  %i.mb = load float, ptr %i.lw, align 4, !tbaa !22, !alias.scope !172
  %i.mc = load float, ptr %i.ly, align 4, !tbaa !22, !alias.scope !172
  %i.md = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 1
  %i.mf = insertelement <4 x float> %i.me, float %i.mb, i64 2
  %i.mg = insertelement <4 x float> %i.mf, float %i.mc, i64 3 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 20
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 36
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 52
  %i.mp = load float, ptr %i.mi, align 4, !tbaa !22, !alias.scope !172
  %i.mq = load float, ptr %i.mk, align 4, !tbaa !22, !alias.scope !172
  %i.mr = load float, ptr %i.mm, align 4, !tbaa !22, !alias.scope !172
  %i.ms = load float, ptr %i.mo, align 4, !tbaa !22, !alias.scope !172
  %i.mt = insertelement <4 x float> poison, float %i.mp, i64 0
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 1
  %i.mv = insertelement <4 x float> %i.mu, float %i.mr, i64 2
  %i.mw = insertelement <4 x float> %i.mv, float %i.ms, i64 3 ; 4 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  %i.nf = load float, ptr %i.my, align 4, !tbaa !22, !alias.scope !172
  %i.ng = load float, ptr %i.na, align 4, !tbaa !22, !alias.scope !172
  %i.nh = load float, ptr %i.nc, align 4, !tbaa !22, !alias.scope !172
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !22, !alias.scope !172
  %i.nj = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nk = insertelement <4 x float> %i.nj, float %i.ng, i64 1
  %i.nl = insertelement <4 x float> %i.nk, float %i.nh, i64 2
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 3 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 28
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 44
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 60
  %i.nv = load float, ptr %i.no, align 4, !tbaa !22, !alias.scope !172
  %i.nw = load float, ptr %i.nq, align 4, !tbaa !22, !alias.scope !172
  %i.nx = load float, ptr %i.ns, align 4, !tbaa !22, !alias.scope !172
  %i.ny = load float, ptr %i.nu, align 4, !tbaa !22, !alias.scope !172
  %i.nz = insertelement <4 x float> poison, float %i.nv, i64 0
  %i.oa = insertelement <4 x float> %i.nz, float %i.nw, i64 1
  %i.ob = insertelement <4 x float> %i.oa, float %i.nx, i64 2
  %i.oc = insertelement <4 x float> %i.ob, float %i.ny, i64 3 ; 2 uses
  %23 = fmul <4 x float> %i.mw, %broadcast.splat
  %24 = fmul <4 x float> %i.mw, %broadcast.splat43
  %25 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lr
  %i.od = fmul <4 x float> %i.mw, %broadcast.splat53
  %i.oe = fmul <4 x float> %i.mw, %broadcast.splat63
  %26 = shufflevector <4 x float> %i.oc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %27 = shufflevector <4 x float> %i.nm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %28 = shufflevector <4 x float> %i.mg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.of = shufflevector <4 x float> %23, <4 x float> %24, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.og = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lo, <8 x float> %28, <8 x float> %i.of)
  %i.oh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %20, <8 x float> %27, <8 x float> %i.og)
  %29 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %19, <8 x float> %26, <8 x float> %i.oh)
  %30 = fadd <8 x float> %18, %29
  %31 = shufflevector <4 x float> %i.oc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %32 = shufflevector <4 x float> %i.nm, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %33 = shufflevector <4 x float> %i.mg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %34 = shufflevector <4 x float> %i.od, <4 x float> %i.oe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lq, <8 x float> %33, <8 x float> %34)
  %35 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.lp, <8 x float> %32, <8 x float> %i.oi)
  %i.oj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %22, <8 x float> %31, <8 x float> %35)
  %i.ok = fadd <8 x float> %21, %i.oj
  %interleaved.vec = shufflevector <8 x float> %30, <8 x float> %i.ok, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %25, align 4, !tbaa !22, !alias.scope !173, !noalias !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kq, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv231.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ku, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph ], [ %indvars.iv231.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv231.i
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231.i
  %i.oo = load <4 x float>, ptr %i.om, align 4, !tbaa !22 ; 4 uses
  %i.op = load <8 x float>, ptr %2, align 4, !tbaa !22 ; 5 uses
  %i.oq = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.or = shufflevector <8 x float> %i.op, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %i.os = fmul <2 x float> %i.oq, %i.or
  %i.ot = shufflevector <8 x float> %i.op, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.ou = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ov = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ot, <2 x float> %i.ou, <2 x float> %i.os)
  %i.ow = shufflevector <8 x float> %i.op, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.ox = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.oy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.ox, <2 x float> %i.ov)
  %i.oz = load <2 x float>, ptr %i.kb, align 4, !tbaa !22 ; 2 uses
  %i.pa = shufflevector <8 x float> %i.op, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> %i.oz, <2 x i32> <i32 0, i32 2>
  %i.pc = shufflevector <4 x float> %i.oo, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.pd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pb, <2 x float> %i.pc, <2 x float> %i.oy)
  %i.pe = shufflevector <2 x float> %i.oz, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pf = shufflevector <8 x float> %i.op, <8 x float> %i.pe, <2 x i32> <i32 4, i32 9>
  %i.pg = fadd <2 x float> %i.pf, %i.pd
  store <2 x float> %i.pg, ptr %i.on, align 4, !tbaa !22
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load <8 x float>, ptr %i.kd, align 4, !tbaa !22 ; 5 uses
  %i.pk = shufflevector <8 x float> %i.pj, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %i.pl = fmul <2 x float> %i.oq, %i.pk
  %i.pm = shufflevector <8 x float> %i.pj, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.pn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pm, <2 x float> %i.ou, <2 x float> %i.pl)
  %i.po = shufflevector <8 x float> %i.pj, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.ox, <2 x float> %i.pn)
  %i.pq = load <2 x float>, ptr %i.kl, align 4, !tbaa !22 ; 2 uses
  %i.pr = shufflevector <8 x float> %i.pj, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> %i.pq, <2 x i32> <i32 0, i32 2>
  %i.pt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ps, <2 x float> %i.pc, <2 x float> %i.pp)
  %i.pu = shufflevector <2 x float> %i.pq, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pv = shufflevector <8 x float> %i.pj, <8 x float> %i.pu, <2 x i32> <i32 4, i32 9>
  %i.pw = fadd <2 x float> %i.pv, %i.pt
  store <2 x float> %i.pw, ptr %i.pi, align 4, !tbaa !22
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 4 ; 2 uses
  %i.px = icmp samesign ult i64 %indvars.iv.next232.i, %i.kn
  br i1 %i.px, label %scalar.ph, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !157

.preheader189.i:                                  ; preds = %.preheader189.i.preheader, %._crit_edge197.split.i
  %.0178199.i = phi ptr [ %i.qw, %._crit_edge197.split.i ], [ %1, %.preheader189.i.preheader ] ; 6 uses
  %.4198.i = phi i32 [ %i.qv, %._crit_edge197.split.i ], [ 0, %.preheader189.i.preheader ]
  br i1 %i.il, label %.epil.preheader, label %.preheader189.i.new

.preheader189.i.new:                              ; preds = %.preheader189.i, %.preheader189.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader189.i.new ], [ 0, %.preheader189.i ] ; 5 uses
  %.0176194.i = phi ptr [ %i.qq, %.preheader189.i.new ], [ %2, %.preheader189.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader189.i.new ], [ 0, %.preheader189.i ]
  %i.py = getelementptr inbounds [4 x i8], ptr %.0176194.i, i64 %i.ii ; 2 uses
  %i.pz = load float, ptr %i.py, align 4, !tbaa !22
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  store float %i.pz, ptr %i.qa, align 4, !tbaa !22
  %i.qb = getelementptr i8, ptr %i.py, i64 4
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.ii ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !22
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  store float %i.qd, ptr %i.qf, align 4, !tbaa !22
  %i.qg = getelementptr i8, ptr %i.qc, i64 4
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.ii ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !22
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store float %i.qi, ptr %i.qk, align 4, !tbaa !22
  %i.ql = getelementptr i8, ptr %i.qh, i64 4
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.ql, i64 %i.ii ; 2 uses
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !22
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  store float %i.qn, ptr %i.qp, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qm, i64 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.split.i.unr-lcssa, label %.preheader189.i.new, !llvm.loop !150

._crit_edge197.split.i.unr-lcssa:                 ; preds = %.preheader189.i.new
  br i1 %lcmp.mod.not, label %._crit_edge197.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge197.split.i.unr-lcssa, %.preheader189.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader189.i ], [ %indvars.iv.next.i.3, %._crit_edge197.split.i.unr-lcssa ]
  %.0176194.i.epil.init = phi ptr [ %2, %.preheader189.i ], [ %i.qq, %._crit_edge197.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.qu, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.qr = getelementptr inbounds [4 x i8], ptr %.0176194.i.epil, i64 %i.ii ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !22
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store float %i.qs, ptr %i.qt, align 4, !tbaa !22
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.qu = getelementptr i8, ptr %i.qr, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.f, !llvm.loop !158

._crit_edge197.split.i:                           ; preds = %bb.f, %._crit_edge197.split.i.unr-lcssa
  %i.qv = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %i.ij
  %exitcond219.not.i = icmp eq i32 %i.qv, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !151

_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %scalar.ph, %scalar.ph83, %scalar.ph117, %scalar.ph163, %middle.block, %middle.block101, %middle.block149, %middle.block184, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13transform_64fEPKdPdS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp eq i32 %5, 2
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph212.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph212.i:                                      ; preds = %.preheader.i
  %i.d = shl nuw nsw i32 %3, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.k, 6
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph212.i
  %i.n = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %scevgep151 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %scevgep152 = getelementptr i8, ptr %0, i64 %i.n
  %scevgep153 = getelementptr i8, ptr %2, i64 48
  %bound0154 = icmp ult ptr %1, %scevgep152
  %bound1155 = icmp ult ptr %0, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %1, %scevgep153
  %bound1158 = icmp ult ptr %2, %scevgep151
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  br i1 %conflict.rdx160, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck150
  %n.vec164 = and i64 %i.m, -2                    ; 3 uses
  %i.o = shl i64 %n.vec164, 1
  %i.p = load double, ptr %2, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load double, ptr %i.e, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = load double, ptr %i.f, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert172 = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = load double, ptr %i.g, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = load double, ptr %i.h, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert174 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat175 = shufflevector <2 x double> %broadcast.splatinsert174, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load double, ptr %i.i, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert178 = insertelement <2 x double> poison, double %i.u, i64 0
  %i.v = shufflevector <2 x double> %broadcast.splatinsert172, <2 x double> %broadcast.splatinsert178, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next181, %vector.body165 ] ; 2 uses
  %i.w = shl nuw i64 %index166, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %wide.vec = load <4 x double>, ptr %i.x, align 8, !tbaa !29, !alias.scope !205 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec167 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fmul <2 x double> %strided.vec167, %broadcast.splat169
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat171, <2 x double> %strided.vec, <2 x double> %i.y)
  %i.aa = fmul <2 x double> %strided.vec167, %broadcast.splat175
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat177, <2 x double> %strided.vec, <2 x double> %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.ad = shufflevector <2 x double> %i.z, <2 x double> %i.ab, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec180 = fadd <4 x double> %i.v, %i.ad
  store <4 x double> %interleaved.vec180, ptr %i.ac, align 8, !tbaa !29, !alias.scope !206, !noalias !207
  %index.next181 = add nuw i64 %index166, 2       ; 2 uses
  %i.ae = icmp eq i64 %index.next181, %n.vec164
  br i1 %i.ae, label %middle.block182, label %vector.body165, !llvm.loop !179

middle.block182:                                  ; preds = %vector.body165
  %cmp.n183 = icmp eq i64 %i.m, %n.vec164
  br i1 %cmp.n183, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %vector.memcheck150, %.lr.ph212.i, %middle.block182
  %indvars.iv242.i.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph212.i ], [ %i.o, %middle.block182 ]
  br label %scalar.ph161

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv242.i = phi i64 [ %indvars.iv.next243.i, %scalar.ph161 ], [ %indvars.iv242.i.ph, %scalar.ph161.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv242.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv242.i
  %i.ah = load <2 x double>, ptr %i.af, align 8, !tbaa !29 ; 2 uses
  %i.ai = load <4 x double>, ptr %2, align 8, !tbaa !29 ; 3 uses
  %i.aj = load <2 x double>, ptr %i.h, align 8, !tbaa !29
  %i.ak = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.am = shufflevector <4 x double> %i.ai, <4 x double> %i.al, <2 x i32> <i32 1, i32 4>
  %i.an = fmul <2 x double> %i.ak, %i.am
  %i.ao = shufflevector <4 x double> %i.ai, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.ap = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ap, <2 x double> %i.an)
  %i.ar = shufflevector <4 x double> %i.ai, <4 x double> %i.al, <2 x i32> <i32 2, i32 5>
  %i.as = fadd <2 x double> %i.ar, %i.aq
  store <2 x double> %i.as, ptr %i.ag, align 8, !tbaa !29
  %indvars.iv.next243.i = add nuw nsw i64 %indvars.iv242.i, 2 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next243.i, %i.j
  br i1 %i.at, label %scalar.ph161, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !180

bb.b:                                             ; preds = %bb.a
  %i.au = icmp eq i32 %4, 3                       ; 2 uses
  %i.av = icmp eq i32 %5, 3
  %or.cond3.i = and i1 %i.au, %i.av
  br i1 %or.cond3.i, label %.preheader183.i, label %bb.c

.preheader183.i:                                  ; preds = %bb.b
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %.lr.ph210.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph210.i:                                      ; preds = %.preheader183.i
  %i.ax = mul i32 %3, 3                           ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.bj = zext i32 %i.ax to i64                   ; 3 uses
  %i.bk = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 3)
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = udiv i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check116 = icmp ult i32 %i.ax, 10
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph210.i
  %i.bo = add nsw i64 %i.bj, -1
  %i.bp = udiv i64 %i.bo, 3
  %i.bq = mul nuw nsw i64 %i.bp, 24
  %i.br = add nuw nsw i64 %i.bq, 24               ; 2 uses
  %scevgep105 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %scevgep106 = getelementptr i8, ptr %0, i64 %i.br
  %scevgep107 = getelementptr i8, ptr %2, i64 96
  %bound0108 = icmp ult ptr %1, %scevgep106
  %bound1109 = icmp ult ptr %0, %scevgep105
  %found.conflict110 = and i1 %bound0108, %bound1109
  %bound0111 = icmp ult ptr %1, %scevgep107
  %bound1112 = icmp ult ptr %2, %scevgep105
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %found.conflict110, %found.conflict113
  br i1 %conflict.rdx114, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck103
  %n.vec118 = and i64 %i.bn, 9223372036854775806  ; 3 uses
  %i.bs = mul i64 %n.vec118, 3
  %i.bt = load double, ptr %2, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bu = load double, ptr %i.ay, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bv = load double, ptr %i.az, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bw = load double, ptr %i.ba, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert127 = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bx = load double, ptr %i.bb, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.by = load double, ptr %i.bc, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %i.by, i64 0
  %i.bz = load double, ptr %i.bd, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ca = load double, ptr %i.be, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cb = load double, ptr %i.bf, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert139 = insertelement <2 x double> poison, double %i.cb, i64 0
  %broadcast.splat140 = shufflevector <2 x double> %broadcast.splatinsert139, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = load double, ptr %i.bg, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %i.cc, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = load double, ptr %i.bh, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert141 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat142 = shufflevector <2 x double> %broadcast.splatinsert141, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = load double, ptr %i.bi, align 8, !tbaa !29, !alias.scope !208
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = shufflevector <2 x double> %broadcast.splatinsert127, <2 x double> %broadcast.splatinsert135, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %7 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> %broadcast.splatinsert133, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cf = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> %broadcast.splatinsert131, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cg = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> %broadcast.splatinsert129, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next146, %vector.body119 ] ; 2 uses
  %i.ch = mul nuw i64 %index120, 3                ; 7 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cj = getelementptr [8 x i8], ptr %0, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  %i.cl = load double, ptr %i.ci, align 8, !tbaa !29, !alias.scope !209
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !29, !alias.scope !209
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cm, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = getelementptr [8 x i8], ptr %0, i64 %i.ch
  %i.cs = getelementptr i8, ptr %i.cr, i64 32
  %i.ct = load double, ptr %i.cq, align 8, !tbaa !29, !alias.scope !209
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !29, !alias.scope !209
  %i.cv = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.cu, i64 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ch
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = getelementptr [8 x i8], ptr %0, i64 %i.ch
  %i.da = getelementptr i8, ptr %i.cz, i64 40
  %i.db = load double, ptr %i.cy, align 8, !tbaa !29, !alias.scope !209
  %i.dc = load double, ptr %i.da, align 8, !tbaa !29, !alias.scope !209
  %i.dd = insertelement <2 x double> poison, double %i.db, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1 ; 2 uses
  %8 = fmul <2 x double> %i.cw, %broadcast.splat138
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat140, <2 x double> %i.co, <2 x double> %8)
  %10 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat142, <2 x double> %i.de, <2 x double> %9)
  %11 = fadd <2 x double> %broadcast.splat144, %10
  %12 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ch
  %13 = shufflevector <2 x double> %i.de, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = shufflevector <2 x double> %i.co, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %15 = shufflevector <2 x double> %i.cw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %16 = fmul <4 x double> %15, %i.cg
  %17 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cf, <4 x double> %14, <4 x double> %16)
  %i.df = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %7, <4 x double> %13, <4 x double> %17)
  %i.dg = fadd <4 x double> %6, %i.df
  %i.dh = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec145 = shufflevector <4 x double> %i.dg, <4 x double> %i.dh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec145, ptr %12, align 8, !tbaa !29, !alias.scope !210, !noalias !211
  %index.next146 = add nuw i64 %index120, 2       ; 2 uses
  %i.di = icmp eq i64 %index.next146, %n.vec118
  br i1 %i.di, label %middle.block147, label %vector.body119, !llvm.loop !185

middle.block147:                                  ; preds = %vector.body119
  %cmp.n148 = icmp eq i64 %i.bn, %n.vec118
  br i1 %cmp.n148, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %vector.memcheck103, %.lr.ph210.i, %middle.block147
  %indvars.iv239.i.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %.lr.ph210.i ], [ %i.bs, %middle.block147 ]
  br label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %scalar.ph115 ], [ %indvars.iv239.i.ph, %scalar.ph115.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv239.i ; 2 uses
  %i.dk = load double, ptr %i.bf, align 8, !tbaa !29
  %i.dl = load double, ptr %i.bg, align 8, !tbaa !29
  %i.dm = load double, ptr %i.bh, align 8, !tbaa !29
  %i.dn = load double, ptr %i.bi, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv239.i
  %i.dp = load <3 x double>, ptr %i.dj, align 8, !tbaa !29 ; 5 uses
  %i.dq = load double, ptr %i.dj, align 8, !tbaa !29
  %i.dr = load <8 x double>, ptr %2, align 8, !tbaa !29 ; 4 uses
  %i.ds = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dt = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.du = fmul <2 x double> %i.ds, %i.dt
  %i.dv = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.dw = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dw, <2 x double> %i.du)
  %i.dy = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.dz = shufflevector <3 x double> %i.dp, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dz, <2 x double> %i.dx)
  %i.eb = shufflevector <8 x double> %i.dr, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.ec = fadd <2 x double> %i.eb, %i.ea
  %i.ed = extractelement <3 x double> %i.dp, i64 1
  %i.ee = fmul double %i.ed, %i.dl
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dq, double %i.ee)
  %i.eg = extractelement <3 x double> %i.dp, i64 2
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.eg, double %i.ef)
  %i.ei = fadd double %i.dn, %i.eh
  store <2 x double> %i.ec, ptr %i.do, align 8, !tbaa !29
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv239.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !29
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, 3 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next240.i, %i.bj
  br i1 %i.el, label %scalar.ph115, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !186

bb.c:                                             ; preds = %bb.b
  %i.em = icmp eq i32 %5, 1
  %or.cond5.i = and i1 %i.au, %i.em
  br i1 %or.cond5.i, label %.preheader185.i, label %bb.d

.preheader185.i:                                  ; preds = %bb.c
  %i.en = icmp sgt i32 %3, 0
  br i1 %i.en, label %.lr.ph208.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph208.i:                                      ; preds = %.preheader185.i
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %wide.trip.count237.i = zext nneg i32 %3 to i64 ; 5 uses
  %min.iters.check84 = icmp ult i32 %3, 6
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph208.i
  %i.er = shl nuw nsw i64 %wide.trip.count237.i, 3
  %scevgep73 = getelementptr i8, ptr %1, i64 %i.er ; 2 uses
  %scevgep74 = getelementptr i8, ptr %2, i64 32
  %i.es = mul nuw nsw i64 %wide.trip.count237.i, 24
  %scevgep75 = getelementptr i8, ptr %0, i64 %i.es
  %bound076 = icmp ult ptr %1, %scevgep74
  %bound177 = icmp ult ptr %2, %scevgep73
  %found.conflict78 = and i1 %bound076, %bound177
  %bound079 = icmp ult ptr %1, %scevgep75
  %bound180 = icmp ult ptr %0, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %found.conflict78, %found.conflict81
  br i1 %conflict.rdx82, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %vector.memcheck72
  %n.vec86 = and i64 %wide.trip.count237.i, 2147483646 ; 4 uses
  %i.et = mul nuw nsw i64 %n.vec86, 24
  %i.eu = getelementptr i8, ptr %0, i64 %i.et
  %i.ev = load double, ptr %2, align 8, !tbaa !29, !alias.scope !212
  %broadcast.splatinsert92 = insertelement <2 x double> poison, double %i.ev, i64 0
  %broadcast.splat93 = shufflevector <2 x double> %broadcast.splatinsert92, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = load double, ptr %i.eo, align 8, !tbaa !29, !alias.scope !212
  %broadcast.splatinsert90 = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat91 = shufflevector <2 x double> %broadcast.splatinsert90, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = load double, ptr %i.ep, align 8, !tbaa !29, !alias.scope !212
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = load double, ptr %i.eq, align 8, !tbaa !29, !alias.scope !212
  %broadcast.splatinsert96 = insertelement <2 x double> poison, double %i.ey, i64 0
  %broadcast.splat97 = shufflevector <2 x double> %broadcast.splatinsert96, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next98, %vector.body87 ] ; 3 uses
  %i.ez = mul i64 %index88, 24                    ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.ez ; 3 uses
  %i.fa = getelementptr i8, ptr %0, i64 %i.ez     ; 3 uses
  %next.gep89 = getelementptr i8, ptr %i.fa, i64 24
  %i.fb = load double, ptr %next.gep, align 8, !tbaa !29, !alias.scope !213
  %i.fc = load double, ptr %next.gep89, align 8, !tbaa !29, !alias.scope !213
  %i.fd = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fc, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.fg = getelementptr i8, ptr %i.fa, i64 32
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !29, !alias.scope !213
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !29, !alias.scope !213
  %i.fj = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fi, i64 1
  %i.fl = fmul <2 x double> %broadcast.splat91, %i.fk
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat93, <2 x double> %i.fe, <2 x double> %i.fl)
  %i.fn = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.fo = getelementptr i8, ptr %i.fa, i64 40
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !29, !alias.scope !213
  %i.fq = load double, ptr %i.fo, align 8, !tbaa !29, !alias.scope !213
  %i.fr = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fq, i64 1
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat95, <2 x double> %i.fs, <2 x double> %i.fm)
  %i.fu = fadd <2 x double> %i.ft, %broadcast.splat97
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index88
  store <2 x double> %i.fu, ptr %i.fv, align 8, !tbaa !29, !alias.scope !214, !noalias !215
  %index.next98 = add nuw i64 %index88, 2         ; 2 uses
  %i.fw = icmp eq i64 %index.next98, %n.vec86
  br i1 %i.fw, label %middle.block99, label %vector.body87, !llvm.loop !191

middle.block99:                                   ; preds = %vector.body87
  %cmp.n100 = icmp eq i64 %n.vec86, %wide.trip.count237.i
  br i1 %cmp.n100, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %vector.memcheck72, %.lr.ph208.i, %middle.block99
  %indvars.iv234.i.ph = phi i64 [ 0, %vector.memcheck72 ], [ 0, %.lr.ph208.i ], [ %n.vec86, %middle.block99 ]
  %.0177207.i.ph = phi ptr [ %0, %vector.memcheck72 ], [ %0, %.lr.ph208.i ], [ %i.eu, %middle.block99 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %scalar.ph83 ], [ %indvars.iv234.i.ph, %scalar.ph83.preheader ] ; 2 uses
  %.0177207.i = phi ptr [ %i.gl, %scalar.ph83 ], [ %.0177207.i.ph, %scalar.ph83.preheader ] ; 4 uses
  %i.fx = load double, ptr %2, align 8, !tbaa !29
  %i.fy = load double, ptr %.0177207.i, align 8, !tbaa !29
  %i.fz = load double, ptr %i.eo, align 8, !tbaa !29
  %i.ga = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 8
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !29
  %i.gc = fmul double %i.fz, %i.gb
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fy, double %i.gc)
  %i.ge = load double, ptr %i.ep, align 8, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !29
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gg, double %i.gd)
  %i.gi = load double, ptr %i.eq, align 8, !tbaa !29
  %i.gj = fadd double %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv234.i
  store double %i.gj, ptr %i.gk, align 8, !tbaa !29
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0177207.i, i64 24
  %exitcond238.not.i = icmp eq i64 %indvars.iv.next235.i, %wide.trip.count237.i
  br i1 %exitcond238.not.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph83, !llvm.loop !192

bb.d:                                             ; preds = %bb.c
  %i.gm = icmp eq i32 %4, 4
  %i.gn = icmp eq i32 %5, 4
  %or.cond7.i = and i1 %i.gm, %i.gn
  %i.go = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %or.cond7.i, label %.preheader187.i, label %.preheader190.i

.preheader190.i:                                  ; preds = %bb.d
  br i1 %i.go, label %.preheader189.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.preheader189.lr.ph.i:                            ; preds = %.preheader190.i
  %i.gp = icmp sgt i32 %5, 0
  %i.gq = sext i32 %4 to i64                      ; 7 uses
  %i.gr = sext i32 %5 to i64                      ; 2 uses
  br i1 %i.gp, label %.preheader189.lr.ph.split.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.preheader189.lr.ph.split.i:                      ; preds = %.preheader189.lr.ph.i
  %i.gs = icmp sgt i32 %4, 0
  %wide.trip.count228.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %i.gs, label %.preheader189.us.preheader.i, label %.preheader189.i.preheader

.preheader189.i.preheader:                        ; preds = %.preheader189.lr.ph.split.i
  %xtraiter = and i64 %wide.trip.count228.i, 3    ; 3 uses
  %i.gt = icmp ult i32 %5, 4
  %unroll_iter = and i64 %wide.trip.count228.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod190 = icmp ne i64 %xtraiter, 0
  br label %.preheader189.i

.preheader189.us.preheader.i:                     ; preds = %.preheader189.lr.ph.split.i
  %wide.trip.count223.i = zext nneg i32 %4 to i64 ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count223.i, 3 ; 3 uses
  %i.gu = icmp ult i32 %4, 4
  %unroll_iter197 = and i64 %wide.trip.count223.i, 2147483644
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  br label %.preheader189.us.i

.preheader189.us.i:                               ; preds = %._crit_edge197.split.us.us.i, %.preheader189.us.preheader.i
  %.1201.us.i = phi ptr [ %i.hz, %._crit_edge197.split.us.us.i ], [ %0, %.preheader189.us.preheader.i ] ; 6 uses
  %.0178199.us.i = phi ptr [ %i.ia, %._crit_edge197.split.us.us.i ], [ %1, %.preheader189.us.preheader.i ] ; 2 uses
  %.4198.us.i = phi i32 [ %i.hy, %._crit_edge197.split.us.us.i ], [ 0, %.preheader189.us.preheader.i ]
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.preheader189.us.i
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %._crit_edge.us.us.i ], [ 0, %.preheader189.us.i ] ; 2 uses
  %.0176194.us.us.i = phi ptr [ %i.hx, %._crit_edge.us.us.i ], [ %2, %.preheader189.us.i ] ; 6 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %i.gq ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !29 ; 2 uses
  br i1 %i.gu, label %.epil.preheader191, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.0193.us.us.i = phi double [ %i.hq, %.lr.ph.us.us.i.new ], [ %i.gw, %.lr.ph.us.us.i ]
  %niter198 = phi i64 [ %niter198.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !29
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !29
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gy, double %i.ha, double %.0193.us.us.i)
  %indvars.iv.next221.i = or disjoint i64 %indvars.iv220.i, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !29
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !29
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.hf, double %i.hb)
  %indvars.iv.next221.i.1 = or disjoint i64 %indvars.iv220.i, 2 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.1
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.1
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !29
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.hk, double %i.hg)
  %indvars.iv.next221.i.2 = or disjoint i64 %indvars.iv220.i, 3 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.2
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !29
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.2
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !29
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hn, double %i.hp, double %i.hl) ; 3 uses
  %indvars.iv.next221.i.3 = add nuw nsw i64 %indvars.iv220.i, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !193

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod194.not, label %._crit_edge.us.us.i, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv220.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next221.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.0193.us.us.i.epil.init = phi double [ %i.gw, %.lr.ph.us.us.i ], [ %i.hq, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader191
  %indvars.iv220.i.epil = phi i64 [ %indvars.iv.next221.i.epil, %bb.e ], [ %indvars.iv220.i.epil.init, %.epil.preheader191 ] ; 3 uses
  %.0193.us.us.i.epil = phi double [ %i.hv, %bb.e ], [ %.0193.us.us.i.epil.init, %.epil.preheader191 ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %bb.e ], [ 0, %.epil.preheader191 ]
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i.epil
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i.epil
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !29
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.hu, double %.0193.us.us.i.epil) ; 2 uses
  %indvars.iv.next221.i.epil = add nuw nsw i64 %indvars.iv220.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge.us.us.i, label %bb.e, !llvm.loop !194

._crit_edge.us.us.i:                              ; preds = %bb.e, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi double [ %i.hq, %._crit_edge.us.us.i.unr-lcssa ], [ %i.hv, %bb.e ]
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.0178199.us.i, i64 %indvars.iv225.i
  store double %.lcssa, ptr %i.hw, align 8, !tbaa !29
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.gv, i64 8
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge197.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !195

._crit_edge197.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.hy = add nuw nsw i32 %.4198.us.i, 1          ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %i.gq
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.0178199.us.i, i64 %i.gr
  %exitcond230.not.i = icmp eq i32 %i.hy, %3
  br i1 %exitcond230.not.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.us.i, !llvm.loop !196

.preheader187.i:                                  ; preds = %bb.d
  br i1 %i.go, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader187.i
  %i.ib = shl i32 %3, 2                           ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.iv = zext i32 %i.ib to i64                   ; 3 uses
  %i.iw = tail call i64 @llvm.usub.sat.i64(i64 %i.iv, i64 4)
  %i.ix = lshr exact i64 %i.iw, 2
  %i.iy = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ib, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.iz = shl nuw nsw i64 %i.iv, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.iz  ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.iz
  %scevgep30 = getelementptr i8, ptr %2, i64 160
  %bound0 = icmp ult ptr %1, %scevgep29
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %1, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iy, 2147483646              ; 3 uses
  %i.ja = shl nuw nsw i64 %n.vec, 2
  %i.jb = load double, ptr %2, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jc = load double, ptr %i.ic, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jd = load double, ptr %i.id, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.je = load double, ptr %i.ie, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert38 = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jf = load double, ptr %i.if, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jg = load double, ptr %i.ig, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jh = load double, ptr %i.ih, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.ji = load double, ptr %i.ii, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jj = load double, ptr %i.ij, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.jk = load double, ptr %i.ik, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jl = load double, ptr %i.il, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jm = load double, ptr %i.im, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jn = load double, ptr %i.in, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.jo = load double, ptr %i.io, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jp = load double, ptr %i.ip, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.jq = load double, ptr %i.iq, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.jr = load double, ptr %i.ir, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.js = load double, ptr %i.is, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.js, i64 0
  %18 = load double, ptr %i.it, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %18, i64 0
  %i.jt = load double, ptr %i.iu, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert70.a = insertelement <2 x double> poison, double %i.jt, i64 0
  %19 = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> %broadcast.splatinsert50, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %20 = shufflevector <2 x double> %broadcast.splatinsert38, <2 x double> %broadcast.splatinsert48, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %21 = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> %broadcast.splatinsert46, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ju = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> %broadcast.splatinsert44, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %22 = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert42, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %23 = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> %broadcast.splatinsert70.a, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.jv = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> %broadcast.splatinsert68, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.jw = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> %broadcast.splatinsert66, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.jx = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> %broadcast.splatinsert64, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.jy = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> %broadcast.splatinsert62, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jz = shl nuw i64 %index, 2                   ; 9 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load double, ptr %i.ka, align 8, !tbaa !29, !alias.scope !217
  %i.ke = load double, ptr %i.kc, align 8, !tbaa !29, !alias.scope !217
  %i.kf = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kg = insertelement <2 x double> %i.kf, double %i.ke, i64 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.kl = load double, ptr %i.ki, align 8, !tbaa !29, !alias.scope !217
  %i.km = load double, ptr %i.kk, align 8, !tbaa !29, !alias.scope !217
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.km, i64 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 48
  %i.kt = load double, ptr %i.kq, align 8, !tbaa !29, !alias.scope !217
  %i.ku = load double, ptr %i.ks, align 8, !tbaa !29, !alias.scope !217
  %i.kv = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.kw = insertelement <2 x double> %i.kv, double %i.ku, i64 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.jz
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lb = load double, ptr %i.ky, align 8, !tbaa !29, !alias.scope !217
  %i.lc = load double, ptr %i.la, align 8, !tbaa !29, !alias.scope !217
  %i.ld = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.lc, i64 1 ; 2 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jz
  %25 = shufflevector <2 x double> %i.le, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %26 = shufflevector <2 x double> %i.kw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lf = shufflevector <2 x double> %i.kg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lg = shufflevector <2 x double> %i.ko, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lh = fmul <4 x double> %i.lg, %22
  %27 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ju, <4 x double> %i.lf, <4 x double> %i.lh)
  %i.li = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %21, <4 x double> %26, <4 x double> %27)
  %i.lj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %20, <4 x double> %25, <4 x double> %i.li)
  %28 = fadd <4 x double> %19, %i.lj
  %29 = shufflevector <2 x double> %i.le, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lk = shufflevector <2 x double> %i.kw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %30 = shufflevector <2 x double> %i.kg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %31 = shufflevector <2 x double> %i.ko, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %32 = fmul <4 x double> %31, %i.jy
  %i.ll = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jx, <4 x double> %30, <4 x double> %32)
  %33 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jw, <4 x double> %i.lk, <4 x double> %i.ll)
  %i.lm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jv, <4 x double> %29, <4 x double> %33)
  %i.ln = fadd <4 x double> %23, %i.lm
  %interleaved.vec = shufflevector <4 x double> %28, <4 x double> %i.ln, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %24, align 8, !tbaa !29, !alias.scope !218, !noalias !219
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.lo = icmp eq i64 %index.next, %n.vec
  br i1 %i.lo, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iy, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv231.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.ja, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph ], [ %indvars.iv231.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv231.i
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv231.i
  %i.lr = load <4 x double>, ptr %i.lp, align 8, !tbaa !29 ; 4 uses
  %i.ls = load <8 x double>, ptr %2, align 8, !tbaa !29 ; 5 uses
  %i.lt = shufflevector <4 x double> %i.lr, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lu = shufflevector <8 x double> %i.ls, <8 x double> poison, <2 x i32> <i32 1, i32 6>
  %i.lv = fmul <2 x double> %i.lt, %i.lu
  %i.lw = shufflevector <8 x double> %i.ls, <8 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.lx = shufflevector <4 x double> %i.lr, <4 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lx, <2 x double> %i.lv)
  %i.lz = shufflevector <8 x double> %i.ls, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.ma = shufflevector <4 x double> %i.lr, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ma, <2 x double> %i.ly)
  %i.mc = load <2 x double>, ptr %i.ij, align 8, !tbaa !29
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.me = shufflevector <8 x double> %i.ls, <8 x double> %i.md, <2 x i32> <i32 3, i32 8>
  %i.mf = shufflevector <4 x double> %i.lr, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.mf, <2 x double> %i.mb)
  %i.mh = shufflevector <8 x double> %i.ls, <8 x double> %i.md, <2 x i32> <i32 4, i32 9>
  %i.mi = fadd <2 x double> %i.mh, %i.mg
  store <2 x double> %i.mi, ptr %i.lq, align 8, !tbaa !29
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv231.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load <8 x double>, ptr %i.il, align 8, !tbaa !29 ; 5 uses
  %i.mm = shufflevector <8 x double> %i.ml, <8 x double> poison, <2 x i32> <i32 1, i32 6>
  %i.mn = fmul <2 x double> %i.lt, %i.mm
  %i.mo = shufflevector <8 x double> %i.ml, <8 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.lx, <2 x double> %i.mn)
  %i.mq = shufflevector <8 x double> %i.ml, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> %i.ma, <2 x double> %i.mp)
  %i.ms = load <2 x double>, ptr %i.it, align 8, !tbaa !29
  %i.mt = shufflevector <2 x double> %i.ms, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.mu = shufflevector <8 x double> %i.ml, <8 x double> %i.mt, <2 x i32> <i32 3, i32 8>
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mf, <2 x double> %i.mr)
  %i.mw = shufflevector <8 x double> %i.ml, <8 x double> %i.mt, <2 x i32> <i32 4, i32 9>
  %i.mx = fadd <2 x double> %i.mw, %i.mv
  store <2 x double> %i.mx, ptr %i.mk, align 8, !tbaa !29
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 4 ; 2 uses
  %i.my = icmp samesign ult i64 %indvars.iv.next232.i, %i.iv
  br i1 %i.my, label %scalar.ph, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !202

.preheader189.i:                                  ; preds = %.preheader189.i.preheader, %._crit_edge197.split.i
  %.0178199.i = phi ptr [ %i.nx, %._crit_edge197.split.i ], [ %1, %.preheader189.i.preheader ] ; 6 uses
  %.4198.i = phi i32 [ %i.nw, %._crit_edge197.split.i ], [ 0, %.preheader189.i.preheader ]
  br i1 %i.gt, label %.epil.preheader, label %.preheader189.i.new

.preheader189.i.new:                              ; preds = %.preheader189.i, %.preheader189.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader189.i.new ], [ 0, %.preheader189.i ] ; 5 uses
  %.0176194.i = phi ptr [ %i.nr, %.preheader189.i.new ], [ %2, %.preheader189.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader189.i.new ], [ 0, %.preheader189.i ]
  %i.mz = getelementptr inbounds [8 x i8], ptr %.0176194.i, i64 %i.gq ; 2 uses
  %i.na = load double, ptr %i.mz, align 8, !tbaa !29
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  store double %i.na, ptr %i.nb, align 8, !tbaa !29
  %i.nc = getelementptr i8, ptr %i.mz, i64 8
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.gq ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !29
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store double %i.ne, ptr %i.ng, align 8, !tbaa !29
  %i.nh = getelementptr i8, ptr %i.nd, i64 8
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.gq ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !29
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store double %i.nj, ptr %i.nl, align 8, !tbaa !29
  %i.nm = getelementptr i8, ptr %i.ni, i64 8
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.gq ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !29
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store double %i.no, ptr %i.nq, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.nr = getelementptr i8, ptr %i.nn, i64 8      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.split.i.unr-lcssa, label %.preheader189.i.new, !llvm.loop !195

._crit_edge197.split.i.unr-lcssa:                 ; preds = %.preheader189.i.new
  br i1 %lcmp.mod.not, label %._crit_edge197.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge197.split.i.unr-lcssa, %.preheader189.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader189.i ], [ %indvars.iv.next.i.3, %._crit_edge197.split.i.unr-lcssa ]
  %.0176194.i.epil.init = phi ptr [ %2, %.preheader189.i ], [ %i.nr, %._crit_edge197.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.nv, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ns = getelementptr inbounds [8 x i8], ptr %.0176194.i.epil, i64 %i.gq ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !29
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store double %i.nt, ptr %i.nu, align 8, !tbaa !29
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.nv = getelementptr i8, ptr %i.ns, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.f, !llvm.loop !203

._crit_edge197.split.i:                           ; preds = %bb.f, %._crit_edge197.split.i.unr-lcssa
  %i.nw = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %i.gr
  %exitcond219.not.i = icmp eq i32 %i.nw, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !196

_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %scalar.ph, %scalar.ph83, %scalar.ph115, %scalar.ph161, %middle.block, %middle.block99, %middle.block147, %middle.block182, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN2cv12cpu_baseline20getDiagTransformFuncEi(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @_ZZN2cv12cpu_baseline20getDiagTransformFuncEiE16diagTransformTab, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL16diagtransform_8uEPKhPhPKfiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 4 uses
  switch i32 %4, label %.preheader100.i [
    i32 2, label %.preheader101.i
    i32 3, label %.preheader103.i
    i32 4, label %.preheader105.i
  ]

.preheader105.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader105.i
  %i.b = shl nuw nsw i32 %3, 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.j = zext nneg i32 %i.b to i64
  br label %bb.d

.preheader103.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph109.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph109.i:                                      ; preds = %.preheader103.i
  %i.k = mul nuw nsw i32 %3, 3
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = zext nneg i32 %i.k to i64
  br label %bb.c

.preheader101.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph111.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph111.i:                                      ; preds = %.preheader101.i
  %i.q = shl nuw nsw i32 %3, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = zext nneg i32 %i.q to i64
  br label %bb.b

.preheader100.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.preheader.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.preheader.lr.ph.i:                               ; preds = %.preheader100.i
  %i.u = icmp sgt i32 %4, 0
  %i.v = sext i32 %4 to i64                       ; 3 uses
  br i1 %i.u, label %.preheader.preheader.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %4 to i64
  br label %.preheader.i

bb.b:                                             ; preds = %bb.b, %.lr.ph111.i
  %indvars.iv125.i = phi i64 [ 0, %.lr.ph111.i ], [ %indvars.iv.next126.i, %bb.b ] ; 4 uses
  %i.w = load float, ptr %2, align 4, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv125.i
  %i.y = load float, ptr %i.r, align 4, !tbaa !22
  %i.z = load <2 x i8>, ptr %i.x, align 1, !tbaa !23
  %i.aa = uitofp <2 x i8> %i.z to <2 x float>
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL17diagtransform_32sEPKiPiPKdiii:bb.a
  store i32 %i.cc, ptr %i.cg, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv122.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 %i.ce, ptr %i.ci, align 4, !tbaa !30
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv.next123.i, %i.ac
  br i1 %i.cj, label %bb.c, label %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !241

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !30
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.c, double %i.cm, double %i.e)
  %i.co = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.cp = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.co)
  %i.cq = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !30
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ct, double %i.i)
  %i.cv = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.cw = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cv)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  store i32 %i.cp, ptr %i.cx, align 4, !tbaa !30
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cq
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !30
  %i.cz = or disjoint i64 %indvars.iv.i, 2        ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30
  %i.dc = sitofp i32 %i.db to double
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.k, double %i.dc, double %i.m)
  %i.de = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.df = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.de)
  %i.dg = or disjoint i64 %indvars.iv.i, 3        ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = sitofp i32 %i.di to double
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.o, double %i.dj, double %i.q)
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dl)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  store i32 %i.df, ptr %i.dn, align 4, !tbaa !30
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i, %i.r
  br i1 %i.dp, label %bb.d, label %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !242

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.096117.i = phi ptr [ %i.ec, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.097116.i = phi ptr [ %i.ed, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.eb, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  br i1 %i.aw, label %.epil.preheader23, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod25.not, label %._crit_edge.i, label %.epil.preheader23

.epil.preheader23:                                ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv128.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next129.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.095112.i.epil.init = phi ptr [ %2, %.preheader.i ], [ %i.fb, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv128.i.epil.init
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.095112.i.epil.init, i64 %indvars.iv128.i.epil.init
  %i.du = load double, ptr %i.dt, align 8, !tbaa !29
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.095112.i.epil.init, i64 %i.av
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !29
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.du, double %i.dw)
  %i.dy = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.dz = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.dy)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv128.i.epil.init
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader23
  %i.eb = add nuw nsw i32 %.3115.i, 1             ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %i.av
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %i.av
  %exitcond131.not.i = icmp eq i32 %i.eb, %3
  br i1 %exitcond131.not.i, label %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit, label %.preheader.i, !llvm.loop !243

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %.095112.i = phi ptr [ %i.fb, %.preheader.i.new ], [ %2, %.preheader.i ] ; 2 uses
  %niter28 = phi i64 [ %niter28.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv128.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !30
  %i.eg = sitofp i32 %i.ef to double
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.095112.i, i64 %indvars.iv128.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !29
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.095112.i, i64 %i.av ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !29
  %i.el = tail call double @llvm.fmuladd.f64(double %i.eg, double %i.ei, double %i.ek)
  %i.em = insertelement <2 x double> poison, double %i.el, i64 0
  %i.en = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.em)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv128.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !30
  %indvars.iv.next129.i = or disjoint i64 %indvars.iv128.i, 1 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.ej, i64 8      ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv.next129.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !30
  %i.es = sitofp i32 %i.er to double
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.next129.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !29
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.av ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !29
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.es, double %i.eu, double %i.ew)
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ey)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv.next129.i
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !30
  %indvars.iv.next129.i.1 = add nuw nsw i64 %indvars.iv128.i, 2 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ev, i64 8      ; 2 uses
  %niter28.next.1 = add i64 %niter28, 2           ; 2 uses
  %niter28.ncmp.1 = icmp eq i64 %niter28.next.1, %unroll_iter27
  br i1 %niter28.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !244

_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit.loopexit19.unr-lcssa: ; preds = %bb.b
  %i.fc = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fc, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit

.epil.preheader:                                  ; preds = %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit.loopexit19.unr-lcssa, %.lr.ph111.i
  %indvars.iv125.i.epil.init = phi i64 [ 0, %.lr.ph111.i ], [ %indvars.iv.next126.i.1, %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit.loopexit19.unr-lcssa ] ; 3 uses
  %lcmp.mod22 = trunc i64 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv125.i.epil.init
  %i.fe = load <2 x i32>, ptr %i.fd, align 4, !tbaa !30
  %i.ff = sitofp <2 x i32> %i.fe to <2 x double>
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ff, <2 x double> %i.ap) ; 2 uses
  %i.fh = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fg)
  %i.fi = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fj = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.fi)
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv125.i.epil.init
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !30
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv125.i.epil.init
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fj, ptr %i.fm, align 4, !tbaa !30
  br label %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit

_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit: ; preds = %bb.d, %bb.c, %.epil.preheader, %_ZN2cv12cpu_baselineL14diagtransform_IidEEvPKT_PS2_PKT0_iii.exit.loopexit19.unr-lcssa, %._crit_edge.i, %.preheader105.i, %.preheader103.i, %.preheader101.i, %.preheader100.i, %.preheader.lr.ph.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL17diagtransform_32fEPKfPfS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 %5) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 4 uses
  switch i32 %4, label %.preheader100.i [
    i32 2, label %.preheader101.i
    i32 3, label %.preheader103.i
    i32 4, label %.preheader105.i
  ]

.preheader105.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader105.i
  %i.b = shl i32 %3, 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.j = zext i32 %i.b to i64                     ; 3 uses
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 4) ; 2 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 4)
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 16                 ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.p   ; 2 uses
  %scevgep19 = getelementptr i8, ptr %2, i64 80
  %scevgep20 = getelementptr i8, ptr %0, i64 %i.p
  %bound0 = icmp ult ptr %1, %scevgep19
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %1, %scevgep20
  %bound122 = icmp ult ptr %0, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 2147483644               ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 2
  %i.r = load float, ptr %2, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.r, i64 0
  %i.s = load float, ptr %i.c, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert24 = insertelement <4 x float> poison, float %i.s, i64 0
  %i.t = load float, ptr %i.d, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert26 = insertelement <4 x float> poison, float %i.t, i64 0
  %i.u = load float, ptr %i.e, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert28 = insertelement <4 x float> poison, float %i.u, i64 0
  %i.v = load float, ptr %i.f, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %i.v, i64 0
  %i.w = load float, ptr %i.g, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert32 = insertelement <4 x float> poison, float %i.w, i64 0
  %i.x = load float, ptr %i.h, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.x, i64 0
  %6 = load float, ptr %i.i, align 4, !tbaa !22, !alias.scope !265
  %broadcast.splatinsert36.a = insertelement <4 x float> poison, float %6, i64 0
  %i.y = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert26, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %7 = shufflevector <4 x float> %broadcast.splatinsert24, <4 x float> %broadcast.splatinsert28, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %8 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> %broadcast.splatinsert34, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.z = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> %broadcast.splatinsert36.a, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl nuw i64 %index, 2                   ; 17 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load float, ptr %i.ab, align 4, !tbaa !22, !alias.scope !266
  %i.aj = load float, ptr %i.ad, align 4, !tbaa !22, !alias.scope !266
  %i.ak = load float, ptr %i.af, align 4, !tbaa !22, !alias.scope !266
  %i.al = load float, ptr %i.ah, align 4, !tbaa !22, !alias.scope !266
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.ay = load float, ptr %i.ar, align 4, !tbaa !22, !alias.scope !266
  %i.az = load float, ptr %i.at, align 4, !tbaa !22, !alias.scope !266
  %i.ba = load float, ptr %i.av, align 4, !tbaa !22, !alias.scope !266
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !22, !alias.scope !266
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aa
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load float, ptr %i.bi, align 4, !tbaa !22, !alias.scope !266
  %i.bq = load float, ptr %i.bk, align 4, !tbaa !22, !alias.scope !266
  %i.br = load float, ptr %i.bm, align 4, !tbaa !22, !alias.scope !266
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !22, !alias.scope !266
  %i.bt = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 1
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 2
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 3
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 60
  %i.cf = load float, ptr %i.by, align 4, !tbaa !22, !alias.scope !266
  %i.cg = load float, ptr %i.ca, align 4, !tbaa !22, !alias.scope !266
  %i.ch = load float, ptr %i.cc, align 4, !tbaa !22, !alias.scope !266
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !22, !alias.scope !266
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = shufflevector <4 x float> %i.ap, <4 x float> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.co = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.y, <8 x float> %i.cn, <8 x float> %7)
  %9 = shufflevector <4 x float> %i.bw, <4 x float> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> %9, <8 x float> %i.z)
  %interleaved.vec = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bg, align 4, !tbaa !22, !alias.scope !267, !noalias !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

.preheader103.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph109.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph109.i:                                      ; preds = %.preheader103.i
  %i.cr = mul nuw nsw i32 %3, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.cx = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.cy = add nsw i64 %i.cx, -1
  %i.cz = udiv i64 %i.cy, 3
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check51 = icmp ult i32 %3, 8
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.memcheck38

vector.memcheck38:                                ; preds = %.lr.ph109.i
  %i.db = add nsw i64 %i.cx, -1
  %i.dc = udiv i64 %i.db, 3
  %i.dd = mul nuw nsw i64 %i.dc, 12
  %i.de = add nuw nsw i64 %i.dd, 12               ; 2 uses
  %scevgep40 = getelementptr i8, ptr %1, i64 %i.de ; 2 uses
  %scevgep41 = getelementptr i8, ptr %2, i64 48
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.de
  %bound043 = icmp ult ptr %1, %scevgep41
  %bound144 = icmp ult ptr %2, %scevgep40
  %found.conflict45 = and i1 %bound043, %bound144
  %bound046 = icmp ult ptr %1, %scevgep42
  %bound147 = icmp ult ptr %0, %scevgep40
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %found.conflict45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck38
  %n.vec53 = and i64 %i.da, 9223372036854775804   ; 3 uses
  %i.df = mul i64 %n.vec53, 3
  %i.dg = load float, ptr %2, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dh = load float, ptr %i.cs, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.di = load float, ptr %i.ct, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.dk = load float, ptr %i.cv, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat65 = shufflevector <4 x float> %broadcast.splatinsert64, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = load float, ptr %i.cw, align 4, !tbaa !22, !alias.scope !269
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat67 = shufflevector <4 x float> %broadcast.splatinsert66, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> %broadcast.splatinsert60, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %11 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> %broadcast.splatinsert62, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next69, %vector.body54 ] ; 2 uses
  %i.dm = mul nuw i64 %index55, 3                 ; 13 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.dr = getelementptr i8, ptr %i.dq, i64 24
  %i.ds = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.dt = getelementptr i8, ptr %i.ds, i64 36
  %i.du = load float, ptr %i.dn, align 4, !tbaa !22, !alias.scope !270
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !22, !alias.scope !270
  %i.dw = load float, ptr %i.dr, align 4, !tbaa !22, !alias.scope !270
  %i.dx = load float, ptr %i.dt, align 4, !tbaa !22, !alias.scope !270
  %i.dy = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 3
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.eh = getelementptr i8, ptr %i.eg, i64 28
  %i.ei = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.ej = getelementptr i8, ptr %i.ei, i64 40
  %i.ek = load float, ptr %i.ed, align 4, !tbaa !22, !alias.scope !270
  %i.el = load float, ptr %i.ef, align 4, !tbaa !22, !alias.scope !270
  %i.em = load float, ptr %i.eh, align 4, !tbaa !22, !alias.scope !270
  %i.en = load float, ptr %i.ej, align 4, !tbaa !22, !alias.scope !270
  %i.eo = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 1
  %i.eq = insertelement <4 x float> %i.ep, float %i.em, i64 2
  %i.er = insertelement <4 x float> %i.eq, float %i.en, i64 3
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dm
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ew = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %i.ey = getelementptr [4 x i8], ptr %0, i64 %i.dm
  %i.ez = getelementptr i8, ptr %i.ey, i64 44
  %i.fa = load float, ptr %i.et, align 4, !tbaa !22, !alias.scope !270
  %i.fb = load float, ptr %i.ev, align 4, !tbaa !22, !alias.scope !270
  %i.fc = load float, ptr %i.ex, align 4, !tbaa !22, !alias.scope !270
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !22, !alias.scope !270
  %i.fe = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.fb, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fc, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 3
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat65, <4 x float> %i.fh, <4 x float> %broadcast.splat67)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dm
  %12 = shufflevector <4 x float> %i.eb, <4 x float> %i.er, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %10, <8 x float> %12, <8 x float> %11)
  %i.fl = shufflevector <4 x float> %i.fi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec68 = shufflevector <8 x float> %i.fk, <8 x float> %i.fl, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec68, ptr %i.fj, align 4, !tbaa !22, !alias.scope !271, !noalias !272
  %index.next69 = add nuw i64 %index55, 4         ; 2 uses
  %i.fm = icmp eq i64 %index.next69, %n.vec53
  br i1 %i.fm, label %middle.block70, label %vector.body54, !llvm.loop !254

middle.block70:                                   ; preds = %vector.body54
  %cmp.n71 = icmp eq i64 %i.da, %n.vec53
  br i1 %cmp.n71, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %vector.memcheck38, %.lr.ph109.i, %middle.block70
  %indvars.iv122.i.ph = phi i64 [ 0, %vector.memcheck38 ], [ 0, %.lr.ph109.i ], [ %i.df, %middle.block70 ]
  br label %scalar.ph50

.preheader101.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph111.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph111.i:                                      ; preds = %.preheader101.i
  %i.fn = shl nuw nsw i32 %3, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fr = zext nneg i32 %i.fn to i64              ; 3 uses
  %i.fs = add nsw i64 %i.fr, -2                   ; 2 uses
  %i.ft = lshr exact i64 %i.fs, 1
  %i.fu = add nuw i64 %i.ft, 1                    ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.fs, 14
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph111.i
  %i.fv = shl nuw nsw i64 %i.fr, 2                ; 2 uses
  %scevgep74 = getelementptr i8, ptr %1, i64 %i.fv ; 2 uses
  %scevgep75 = getelementptr i8, ptr %2, i64 24
  %scevgep76 = getelementptr i8, ptr %0, i64 %i.fv
  %bound077 = icmp ult ptr %1, %scevgep75
  %bound178 = icmp ult ptr %2, %scevgep74
  %found.conflict79 = and i1 %bound077, %bound178
  %bound080 = icmp ult ptr %1, %scevgep76
  %bound181 = icmp ult ptr %0, %scevgep74
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %found.conflict79, %found.conflict82
  br i1 %conflict.rdx83, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck73
  %n.vec87 = and i64 %i.fu, -4                    ; 3 uses
  %i.fw = shl i64 %n.vec87, 1
  %i.fx = load float, ptr %2, align 4, !tbaa !22, !alias.scope !273
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fy = load float, ptr %i.fo, align 4, !tbaa !22, !alias.scope !273
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = load float, ptr %i.fp, align 4, !tbaa !22, !alias.scope !273
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = load float, ptr %i.fq, align 4, !tbaa !22, !alias.scope !273
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.ga, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next100, %vector.body88 ] ; 2 uses
  %i.gb = shl nuw i64 %index89, 1                 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gb
  %wide.vec = load <8 x float>, ptr %i.gc, align 4, !tbaa !22, !alias.scope !274 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec90 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat92, <4 x float> %strided.vec, <4 x float> %broadcast.splat94)
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat96, <4 x float> %strided.vec90, <4 x float> %broadcast.splat98)
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gb
  %interleaved.vec99 = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec99, ptr %i.gf, align 4, !tbaa !22, !alias.scope !275, !noalias !276
  %index.next100 = add nuw i64 %index89, 4        ; 2 uses
  %i.gg = icmp eq i64 %index.next100, %n.vec87
  br i1 %i.gg, label %middle.block101, label %vector.body88, !llvm.loop !259

middle.block101:                                  ; preds = %vector.body88
  %cmp.n102 = icmp eq i64 %i.fu, %n.vec87
  br i1 %cmp.n102, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck73, %.lr.ph111.i, %middle.block101
  %indvars.iv125.i.ph = phi i64 [ 0, %vector.memcheck73 ], [ 0, %.lr.ph111.i ], [ %i.fw, %middle.block101 ]
  br label %scalar.ph84

.preheader100.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.preheader.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit

.preheader.lr.ph.i:                               ; preds = %.preheader100.i
  %i.gh = icmp sgt i32 %4, 0
  %i.gi = sext i32 %4 to i64                      ; 5 uses
  br i1 %i.gh, label %.preheader.preheader.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gj = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod107 = trunc i32 %4 to i1
  br label %.preheader.i

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %scalar.ph84 ], [ %indvars.iv125.i.ph, %scalar.ph84.preheader ] ; 3 uses
  %i.gk = load float, ptr %2, align 4, !tbaa !22
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv125.i
  %i.gm = load float, ptr %i.fo, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv125.i
  %i.go = load <2 x float>, ptr %i.gl, align 4, !tbaa !22
  %i.gp = load <2 x float>, ptr %i.fp, align 4, !tbaa !22 ; 2 uses
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gr = insertelement <2 x float> %i.gq, float %i.gk, i64 0
  %i.gs = insertelement <2 x float> %i.gp, float %i.gm, i64 0
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.go, <2 x float> %i.gs)
  store <2 x float> %i.gt, ptr %i.gn, align 4, !tbaa !22
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %i.gu = icmp samesign ult i64 %indvars.iv.next126.i, %i.fr
  br i1 %i.gu, label %scalar.ph84, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !260

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %scalar.ph50 ], [ %indvars.iv122.i.ph, %scalar.ph50.preheader ] ; 4 uses
  %i.gv = load float, ptr %2, align 4, !tbaa !22
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv122.i
  %i.gx = load float, ptr %i.cs, align 4, !tbaa !22
  %i.gy = load float, ptr %i.ct, align 4, !tbaa !22
  %i.gz = load float, ptr %i.cu, align 4, !tbaa !22
  %i.ha = load float, ptr %i.cv, align 4, !tbaa !22
  %i.hb = add nuw nsw i64 %indvars.iv122.i, 2     ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !22
  %i.he = load float, ptr %i.cw, align 4, !tbaa !22
  %i.hf = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.hd, float %i.he)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv122.i
  %i.hh = load <2 x float>, ptr %i.gw, align 4, !tbaa !22
  %i.hi = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.gy, i64 1
  %i.hk = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.gz, i64 1
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hh, <2 x float> %i.hl)
  store <2 x float> %i.hm, ptr %i.hg, align 4, !tbaa !22
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hb
  store float %i.hf, ptr %i.hn, align 4, !tbaa !22
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.ho = icmp samesign ult i64 %indvars.iv.next123.i, %i.cx
  br i1 %i.ho, label %scalar.ph50, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !261

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hp = load float, ptr %2, align 4, !tbaa !22
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.hr = load float, ptr %i.c, align 4, !tbaa !22
  %i.hs = load float, ptr %i.d, align 4, !tbaa !22
  %i.ht = load float, ptr %i.e, align 4, !tbaa !22
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.hv = load <2 x float>, ptr %i.hq, align 4, !tbaa !22
  %i.hw = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hx = insertelement <2 x float> %i.hw, float %i.hs, i64 1
  %i.hy = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hz = insertelement <2 x float> %i.hy, float %i.ht, i64 1
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hv, <2 x float> %i.hz)
  store <2 x float> %i.ia, ptr %i.hu, align 4, !tbaa !22
  %i.ib = load float, ptr %i.f, align 4, !tbaa !22
  %i.ic = or disjoint i64 %indvars.iv.i, 2        ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ic
  %i.ie = load float, ptr %i.g, align 4, !tbaa !22
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ic
  %i.ig = load <2 x float>, ptr %i.id, align 4, !tbaa !22
  %i.ih = load <2 x float>, ptr %i.h, align 4, !tbaa !22 ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ij = insertelement <2 x float> %i.ii, float %i.ib, i64 0
  %i.ik = insertelement <2 x float> %i.ih, float %i.ie, i64 0
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.ig, <2 x float> %i.ik)
  store <2 x float> %i.il, ptr %i.if, align 4, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.im = icmp samesign ult i64 %indvars.iv.next.i, %i.j
  br i1 %i.im, label %scalar.ph, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !262

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.096117.i = phi ptr [ %i.iw, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.097116.i = phi ptr [ %i.ix, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.iv, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  br i1 %i.gj, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv128.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next129.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.095112.i.epil.init = phi ptr [ %2, %.preheader.i ], [ %i.jp, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv128.i.epil.init
  %i.io = load float, ptr %i.in, align 4, !tbaa !22
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.095112.i.epil.init, i64 %indvars.iv128.i.epil.init
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !22
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.095112.i.epil.init, i64 %i.gi
  %i.is = load float, ptr %i.ir, align 4, !tbaa !22
  %i.it = tail call float @llvm.fmuladd.f32(float %i.io, float %i.iq, float %i.is)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv128.i.epil.init
  store float %i.it, ptr %i.iu, align 4, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.iv = add nuw nsw i32 %.3115.i, 1             ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %i.gi
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %i.gi
  %exitcond131.not.i = icmp eq i32 %i.iv, %3
  br i1 %exitcond131.not.i, label %_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader.i, !llvm.loop !263

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %.095112.i = phi ptr [ %i.jp, %.preheader.i.new ], [ %2, %.preheader.i ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv128.i
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !22
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.095112.i, i64 %indvars.iv128.i
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !22
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.095112.i, i64 %i.gi ; 2 uses
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !22
  %i.je = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.jb, float %i.jd)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv128.i
  store float %i.je, ptr %i.jf, align 4, !tbaa !22
  %indvars.iv.next129.i = or disjoint i64 %indvars.iv128.i, 1 ; 3 uses
  %i.jg = getelementptr i8, ptr %i.jc, i64 4      ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.096117.i, i64 %indvars.iv.next129.i
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !22
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next129.i
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !22
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.gi ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !22
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.jk, float %i.jm)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.097116.i, i64 %indvars.iv.next129.i
  store float %i.jn, ptr %i.jo, align 4, !tbaa !22
  %indvars.iv.next129.i.1 = add nuw nsw i64 %indvars.iv128.i, 2 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jl, i64 4      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !264

_ZN2cv12cpu_baselineL14diagtransform_IffEEvPKT_PS2_PKT0_iii.exit: ; preds = %scalar.ph, %scalar.ph50, %scalar.ph84, %._crit_edge.i, %middle.block, %middle.block70, %middle.block101, %.preheader105.i, %.preheader103.i, %.preheader101.i, %.preheader100.i, %.preheader.lr.ph.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL17diagtransform_64fEPKdPdS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 %5) #7 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 4 uses
  switch i32 %4, label %.preheader100.i [
    i32 2, label %.preheader101.i
    i32 3, label %.preheader103.i
    i32 4, label %.preheader105.i
  ]

.preheader105.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader105.i
  %i.b = shl i32 %3, 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.j = zext i32 %i.b to i64                     ; 3 uses
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 4) ; 2 uses
  %i.l = lshr exact i64 %i.k, 2
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 4)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.p   ; 2 uses
  %scevgep19 = getelementptr i8, ptr %2, i64 160
  %scevgep20 = getelementptr i8, ptr %0, i64 %i.p
  %bound0 = icmp ult ptr %1, %scevgep19
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %1, %scevgep20
  %bound122 = icmp ult ptr %0, %scevgep
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 2147483646               ; 3 uses
  %i.q = shl nuw nsw i64 %n.vec, 2
  %i.r = load double, ptr %2, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = load double, ptr %i.c, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %i.s, i64 0
  %i.t = load double, ptr %i.d, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %i.t, i64 0
  %i.u = load double, ptr %i.e, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.u, i64 0
  %i.v = load double, ptr %i.f, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert30 = insertelement <2 x double> poison, double %i.v, i64 0
  %i.w = load double, ptr %i.g, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert32 = insertelement <2 x double> poison, double %i.w, i64 0
  %i.x = load double, ptr %i.h, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %i.x, i64 0
  %6 = load double, ptr %i.i, align 8, !tbaa !29, !alias.scope !297
  %broadcast.splatinsert36.a = insertelement <2 x double> poison, double %6, i64 0
  %i.y = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert26, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %7 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> %broadcast.splatinsert28, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %8 = shufflevector <2 x double> %broadcast.splatinsert30, <2 x double> %broadcast.splatinsert34, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.z = shufflevector <2 x double> %broadcast.splatinsert32, <2 x double> %broadcast.splatinsert36.a, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl nuw i64 %index, 2                   ; 9 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load double, ptr %i.ab, align 8, !tbaa !29, !alias.scope !298
  %i.af = load double, ptr %i.ad, align 8, !tbaa !29, !alias.scope !298
  %i.ag = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load double, ptr %i.aj, align 8, !tbaa !29, !alias.scope !298
  %i.an = load double, ptr %i.al, align 8, !tbaa !29, !alias.scope !298
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load double, ptr %i.as, align 8, !tbaa !29, !alias.scope !298
  %i.aw = load double, ptr %i.au, align 8, !tbaa !29, !alias.scope !298
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !29, !alias.scope !298
  %i.be = load double, ptr %i.bc, align 8, !tbaa !29, !alias.scope !298
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = shufflevector <2 x double> %i.ah, <2 x double> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.y, <4 x double> %i.bh, <4 x double> %7)
  %9 = shufflevector <2 x double> %i.ay, <2 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %8, <4 x double> %9, <4 x double> %i.z)
  %interleaved.vec = shufflevector <4 x double> %i.bi, <4 x double> %i.bj, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.aq, align 8, !tbaa !29, !alias.scope !299, !noalias !300
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.q, %middle.block ]
  br label %scalar.ph

.preheader103.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph109.i, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph109.i:                                      ; preds = %.preheader103.i
  %i.bl = mul nuw nsw i32 %3, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.br = zext nneg i32 %i.bl to i64              ; 3 uses
  %i.bs = add nsw i64 %i.br, -1
  %i.bt = udiv i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check51 = icmp ult i32 %3, 8
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.memcheck38

vector.memcheck38:                                ; preds = %.lr.ph109.i
  %i.bv = add nsw i64 %i.br, -1
  %i.bw = udiv i64 %i.bv, 3
  %i.bx = mul nuw nsw i64 %i.bw, 24
  %i.by = add nuw nsw i64 %i.bx, 24               ; 2 uses
  %scevgep40 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  %scevgep41 = getelementptr i8, ptr %2, i64 96
  %scevgep42 = getelementptr i8, ptr %0, i64 %i.by
  %bound043 = icmp ult ptr %1, %scevgep41
  %bound144 = icmp ult ptr %2, %scevgep40
  %found.conflict45 = and i1 %bound043, %bound144
  %bound046 = icmp ult ptr %1, %scevgep42
  %bound147 = icmp ult ptr %0, %scevgep40
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %found.conflict45, %found.conflict48
  br i1 %conflict.rdx49, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck38
  %n.vec53 = and i64 %i.bu, 9223372036854775806   ; 3 uses
  %i.bz = mul i64 %n.vec53, 3
  %i.ca = load double, ptr %2, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cb = load double, ptr %i.bm, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cc = load double, ptr %i.bn, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = load double, ptr %i.bo, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.ce = load double, ptr %i.bp, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat65 = shufflevector <2 x double> %broadcast.splatinsert64, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = load double, ptr %i.bq, align 8, !tbaa !29, !alias.scope !301
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> %broadcast.splatinsert60, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %11 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> %broadcast.splatinsert62, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next69, %vector.body54 ] ; 2 uses
  %i.cg = mul nuw i64 %index55, 3                 ; 7 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %0, i64 %i.cg
  %i.cj = getelementptr i8, ptr %i.ci, i64 24
  %i.ck = load double, ptr %i.ch, align 8, !tbaa !29, !alias.scope !302
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !29, !alias.scope !302
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = getelementptr [8 x i8], ptr %0, i64 %i.cg
  %i.cr = getelementptr i8, ptr %i.cq, i64 32
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !29, !alias.scope !302
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !29, !alias.scope !302
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cg
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr [8 x i8], ptr %0, i64 %i.cg
  %i.cz = getelementptr i8, ptr %i.cy, i64 40
  %i.da = load double, ptr %i.cx, align 8, !tbaa !29, !alias.scope !302
  %i.db = load double, ptr %i.cz, align 8, !tbaa !29, !alias.scope !302
  %i.dc = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat65, <2 x double> %i.dd, <2 x double> %broadcast.splat67)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cg
  %12 = shufflevector <2 x double> %i.cn, <2 x double> %i.cv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %10, <4 x double> %12, <4 x double> %11)
  %i.dh = shufflevector <2 x double> %i.de, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec68 = shufflevector <4 x double> %i.dg, <4 x double> %i.dh, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec68, ptr %i.df, align 8, !tbaa !29, !alias.scope !303, !noalias !304
  %index.next69 = add nuw i64 %index55, 2         ; 2 uses
  %i.di = icmp eq i64 %index.next69, %n.vec53
  br i1 %i.di, label %middle.block70, label %vector.body54, !llvm.loop !286

middle.block70:                                   ; preds = %vector.body54
  %cmp.n71 = icmp eq i64 %i.bu, %n.vec53
  br i1 %cmp.n71, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %vector.memcheck38, %.lr.ph109.i, %middle.block70
  %indvars.iv122.i.ph = phi i64 [ 0, %vector.memcheck38 ], [ 0, %.lr.ph109.i ], [ %i.bz, %middle.block70 ]
  br label %scalar.ph50

.preheader101.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph111.i, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph111.i:                                      ; preds = %.preheader101.i
  %i.dj = shl nuw nsw i32 %3, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dn = zext nneg i32 %i.dj to i64              ; 3 uses
  %i.do = add nsw i64 %i.dn, -2                   ; 2 uses
  %i.dp = lshr exact i64 %i.do, 1
  %i.dq = add nuw i64 %i.dp, 1                    ; 2 uses
  %min.iters.check85 = icmp ult i64 %i.do, 10
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph111.i
  %i.dr = shl nuw nsw i64 %i.dn, 3                ; 2 uses
  %scevgep74 = getelementptr i8, ptr %1, i64 %i.dr ; 2 uses
  %scevgep75 = getelementptr i8, ptr %2, i64 48
  %scevgep76 = getelementptr i8, ptr %0, i64 %i.dr
  %bound077 = icmp ult ptr %1, %scevgep75
  %bound178 = icmp ult ptr %2, %scevgep74
  %found.conflict79 = and i1 %bound077, %bound178
  %bound080 = icmp ult ptr %1, %scevgep76
  %bound181 = icmp ult ptr %0, %scevgep74
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %found.conflict79, %found.conflict82
  br i1 %conflict.rdx83, label %scalar.ph84.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck73
  %n.vec87 = and i64 %i.dq, -2                    ; 3 uses
  %i.ds = shl i64 %n.vec87, 1
  %i.dt = load double, ptr %2, align 8, !tbaa !29, !alias.scope !305
  %broadcast.splatinsert91 = insertelement <2 x double> poison, double %i.dt, i64 0
  %broadcast.splat92 = shufflevector <2 x double> %broadcast.splatinsert91, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = load double, ptr %i.dk, align 8, !tbaa !29, !alias.scope !305
  %broadcast.splatinsert93 = insertelement <2 x double> poison, double %i.du, i64 0
  %broadcast.splat94 = shufflevector <2 x double> %broadcast.splatinsert93, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = load double, ptr %i.dl, align 8, !tbaa !29, !alias.scope !305
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = load double, ptr %i.dm, align 8, !tbaa !29, !alias.scope !305
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next100, %vector.body88 ] ; 2 uses
  %i.dx = shl nuw i64 %index89, 1                 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dx
  %wide.vec = load <4 x double>, ptr %i.dy, align 8, !tbaa !29, !alias.scope !306 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec90 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat92, <2 x double> %strided.vec, <2 x double> %broadcast.splat94)
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat96, <2 x double> %strided.vec90, <2 x double> %broadcast.splat98)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dx
  %interleaved.vec99 = shufflevector <2 x double> %i.dz, <2 x double> %i.ea, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec99, ptr %i.eb, align 8, !tbaa !29, !alias.scope !307, !noalias !308
  %index.next100 = add nuw i64 %index89, 2        ; 2 uses
  %i.ec = icmp eq i64 %index.next100, %n.vec87
  br i1 %i.ec, label %middle.block101, label %vector.body88, !llvm.loop !291

middle.block101:                                  ; preds = %vector.body88
  %cmp.n102 = icmp eq i64 %i.dq, %n.vec87
  br i1 %cmp.n102, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck73, %.lr.ph111.i, %middle.block101
  %indvars.iv125.i.ph = phi i64 [ 0, %vector.memcheck73 ], [ 0, %.lr.ph111.i ], [ %i.ds, %middle.block101 ]
  br label %scalar.ph84

.preheader100.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.preheader.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit

.preheader.lr.ph.i:                               ; preds = %.preheader100.i
  %i.ed = icmp sgt i32 %4, 0
  %i.ee = sext i32 %4 to i64                      ; 5 uses
  br i1 %i.ed, label %.preheader.preheader.i, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ef = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod107 = trunc i32 %4 to i1
  br label %.preheader.i

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %scalar.ph84
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %scalar.ph84 ], [ %indvars.iv125.i.ph, %scalar.ph84.preheader ] ; 3 uses
  %i.eg = load double, ptr %2, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv125.i
  %i.ei = load double, ptr %i.dk, align 8, !tbaa !29
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv125.i
  %i.ek = load <2 x double>, ptr %i.eh, align 8, !tbaa !29
  %i.el = load <2 x double>, ptr %i.dl, align 8, !tbaa !29 ; 2 uses
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.en = insertelement <2 x double> %i.em, double %i.eg, i64 0
  %i.eo = insertelement <2 x double> %i.el, double %i.ei, i64 0
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ek, <2 x double> %i.eo)
  store <2 x double> %i.ep, ptr %i.ej, align 8, !tbaa !29
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %i.eq = icmp samesign ult i64 %indvars.iv.next126.i, %i.dn
  br i1 %i.eq, label %scalar.ph84, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !292

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %scalar.ph50 ], [ %indvars.iv122.i.ph, %scalar.ph50.preheader ] ; 4 uses
  %i.er = load double, ptr %2, align 8, !tbaa !29
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122.i
  %i.et = load double, ptr %i.bm, align 8, !tbaa !29
  %i.eu = load double, ptr %i.bn, align 8, !tbaa !29
  %i.ev = load double, ptr %i.bo, align 8, !tbaa !29
  %i.ew = load double, ptr %i.bp, align 8, !tbaa !29
  %i.ex = add nuw nsw i64 %indvars.iv122.i, 2     ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !29
  %i.fa = load double, ptr %i.bq, align 8, !tbaa !29
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ez, double %i.fa)
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv122.i
  %i.fd = load <2 x double>, ptr %i.es, align 8, !tbaa !29
  %i.fe = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.eu, i64 1
  %i.fg = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fh = insertelement <2 x double> %i.fg, double %i.ev, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fd, <2 x double> %i.fh)
  store <2 x double> %i.fi, ptr %i.fc, align 8, !tbaa !29
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ex
  store double %i.fb, ptr %i.fj, align 8, !tbaa !29
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.fk = icmp samesign ult i64 %indvars.iv.next123.i, %i.br
  br i1 %i.fk, label %scalar.ph50, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !293

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fl = load double, ptr %2, align 8, !tbaa !29
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.fn = load double, ptr %i.c, align 8, !tbaa !29
  %i.fo = load double, ptr %i.d, align 8, !tbaa !29
  %i.fp = load double, ptr %i.e, align 8, !tbaa !29
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.fr = load <2 x double>, ptr %i.fm, align 8, !tbaa !29
  %i.fs = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.fo, i64 1
  %i.fu = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.fp, i64 1
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.fr, <2 x double> %i.fv)
  store <2 x double> %i.fw, ptr %i.fq, align 8, !tbaa !29
  %i.fx = load double, ptr %i.f, align 8, !tbaa !29
  %i.fy = or disjoint i64 %indvars.iv.i, 2        ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fy
  %i.ga = load double, ptr %i.g, align 8, !tbaa !29
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fy
  %i.gc = load <2 x double>, ptr %i.fz, align 8, !tbaa !29
  %i.gd = load <2 x double>, ptr %i.h, align 8, !tbaa !29 ; 2 uses
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gf = insertelement <2 x double> %i.ge, double %i.fx, i64 0
  %i.gg = insertelement <2 x double> %i.gd, double %i.ga, i64 0
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.gc, <2 x double> %i.gg)
  store <2 x double> %i.gh, ptr %i.gb, align 8, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next.i, %i.j
  br i1 %i.gi, label %scalar.ph, label %_ZN2cv12cpu_baselineL14diagtransform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !294

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.096117.i = phi ptr [ %i.gs, %._crit_edge.i ], [ %0, %.preheader.preheader.i ] ; 4 uses
  %.097116.i = phi ptr [ %i.gt, %._crit_edge.i ], [ %1, %.preheader.preheader.i ] ; 4 uses
  %.3115.i = phi i32 [ %i.gr, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  br i1 %i.ef, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv128.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next129.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %.095112.i.epil.init = phi ptr [ %2, %.preheader.i ], [ %i.hl, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.096117.i, i64 %indvars.iv128.i.epil.init
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !29
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.095112.i.epil.init, i64 %indvars.iv128.i.epil.init
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !29
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.095112.i.epil.init, i64 %i.ee
  %i.go = load double, ptr %i.gn, align 8, !tbaa !29
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gm, double %i.go)
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.097116.i, i64 %indvars.iv128.i.epil.init
  store double %i.gp, ptr %i.gq, align 8, !tbaa !29
end_hunk_1
