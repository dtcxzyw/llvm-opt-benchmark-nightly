inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@collect_runs:bb.a
._crit_edge:                                      ; preds = %_collect_color_runs.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_collect_color_runs.exit
  %i.a = phi i64 [ %.4.i, %_collect_color_runs.exit ], [ %.pre, %.lr.ph.preheader ] ; 4 uses
  %.035 = phi i64 [ %i.d, %_collect_color_runs.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.b = trunc i64 %.035 to i32
  %i.c = and i32 %i.b, 1
  %i.d = add nuw i64 %.035, 1                     ; 3 uses
  %i.e = mul i64 %i.d, %4                         ; 2 uses
  %i.f = mul i64 %.035, %2
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.h = icmp eq i32 %i.c, %0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.i = load float, ptr %i.g, align 4, !tbaa !16, !alias.scope !51, !noalias !54
  %i.j = fcmp reassoc nsz arcp contract afn une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.e to i32
  %.idx.i = shl i64 %i.a, 3
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 %.idx.i ; 2 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.n = add i64 %i.a, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.063.i = phi i64 [ %i.n, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %.061.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.0.i = phi i64 [ 2, %bb.c ], [ 0, %bb.b ], [ 1, %.lr.ph ] ; 2 uses
  %i.o = icmp ult i64 %.0.i, %2
  br i1 %i.o, label %.lr.ph.i, label %_collect_color_runs.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = trunc i64 %i.e to i32                    ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %.lr.ph.i
  %.05778.i.ph = phi i64 [ %i.an, %bb.i ], [ %.0.i, %.lr.ph.i ] ; 5 uses
  %.05877.i.ph = phi i32 [ %i.al, %bb.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.not71.i.ph = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i ] ; 2 uses
  %.16275.i.ph = phi i64 [ %i.am, %bb.i ], [ %.061.i, %.lr.ph.i ] ; 3 uses
  %.16474.i.ph = phi i64 [ %.16474.i.lcssa56, %bb.i ], [ %.063.i, %.lr.ph.i ] ; 4 uses
  %i.q = lshr i32 %.05877.i.ph, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %.05877.i.ph to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.05778.i.ph
  %i.u = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !51, !noalias !54
  %i.v = fcmp reassoc nsz arcp contract afn oeq float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.e, label %.thread

bb.e:                                             ; preds = %.outer
  br i1 %.not71.i.ph, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.idx73.i.peel = shl i64 %.16474.i.ph, 3
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %.idx73.i.peel ; 2 uses
  store i32 %i.r, ptr %i.w, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.x = sub i64 %.05778.i.ph, %i.s
  %i.y = lshr i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.ab = add i64 %.16474.i.ph, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.265.i.peel = phi i64 [ %i.ab, %bb.f ], [ %.16474.i.ph, %bb.e ] ; 3 uses
  %i.ac = add i64 %.05778.i.ph, 2                 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %2
  br i1 %i.ad, label %.peel.next, label %_collect_color_runs.exit

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.05778.i = phi i64 [ %i.ai, %bb.h ], [ %i.ac, %bb.g ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.05778.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !51, !noalias !54
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %.thread.thread

.thread.thread:                                   ; preds = %.peel.next
  %i.ah = trunc i64 %.05778.i to i32
  br label %bb.i

bb.h:                                             ; preds = %.peel.next
  %i.ai = add i64 %.05778.i, 2                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %2
  br i1 %i.aj, label %.peel.next, label %_collect_color_runs.exit, !llvm.loop !57

.thread:                                          ; preds = %.outer
  %i.ak = trunc i64 %.05778.i.ph to i32
  %spec.select = select i1 %.not71.i.ph, i32 %i.ak, i32 %.05877.i.ph
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread.thread
  %.16474.i.lcssa56 = phi i64 [ %.16474.i.ph, %.thread ], [ %.265.i.peel, %.thread.thread ] ; 4 uses
  %.05778.i.lcssa54 = phi i64 [ %.05778.i.ph, %.thread ], [ %.05778.i, %.thread.thread ]
  %i.al = phi i32 [ %spec.select, %.thread ], [ %i.ah, %.thread.thread ] ; 3 uses
  %i.am = add i64 %.16275.i.ph, 1                 ; 2 uses
  %i.an = add i64 %.05778.i.lcssa54, 2            ; 4 uses
  %i.ao = icmp ult i64 %i.an, %2
  br i1 %i.ao, label %.outer, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.i
  %i.ap = lshr i32 %i.al, 1
  %i.aq = add i32 %i.ap, %i.p                     ; 2 uses
  %.idx72.i = shl i64 %.16474.i.lcssa56, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 %.idx72.i ; 4 uses
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.as = zext i32 %i.al to i64
  %i.at = sub i64 %i.an, %i.as
  %i.au = lshr i64 %i.at, 1
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.ax = icmp ugt i32 %i.av, 1
  %i.ay = icmp ugt i64 %i.an, %2
  %or.cond.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.thread
  %i.az = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.ba = add i32 %i.az, %i.aq
  %i.bb = getelementptr i8, ptr %i.ar, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.bc = getelementptr i8, ptr %i.ar, i64 12
  store i32 1, ptr %i.bc, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.bd = add i64 %.16474.i.lcssa56, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.thread
  %.3.i = phi i64 [ %i.bd, %bb.j ], [ %.16474.i.lcssa56, %._crit_edge.i.thread ]
  %i.be = add i64 %.3.i, 1
  br label %_collect_color_runs.exit

_collect_color_runs.exit:                         ; preds = %bb.g, %bb.h, %bb.d, %bb.k
  %.162.lcssa92.i = phi i64 [ %i.am, %bb.k ], [ %.061.i, %bb.d ], [ %.16275.i.ph, %bb.h ], [ %.16275.i.ph, %bb.g ]
  %.4.i = phi i64 [ %i.be, %bb.k ], [ %.063.i, %bb.d ], [ %.265.i.peel, %bb.h ], [ %.265.i.peel, %bb.g ] ; 2 uses
  %i.bf = load i64, ptr %7, align 8, !tbaa !32, !noalias !59
  %i.bg = add i64 %i.bf, %.162.lcssa92.i
  store i64 %i.bg, ptr %7, align 8, !tbaa !32, !noalias !59
  store i64 %.4.i, ptr %6, align 8, !tbaa !32
  %exitcond.not = icmp eq i64 %i.d, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc float @_heal_laplace_iteration(ptr noalias nofree noundef nonnull captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, i64 noundef range(i64 0, 2) %6, float noundef %7) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge142, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.a
  %i.a = shl i64 %3, 2                            ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.a
  %i.b = insertelement <2 x float> poison, float %7, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.d = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, float %7, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.b

._crit_edge142.loopexit:                          ; preds = %._crit_edge
  %i.f = extractelement <2 x float> %i.go, i64 0
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %.sroa.0153.4
  %i.h = extractelement <2 x float> %i.go, i64 1
  %i.i = fadd reassoc nsz arcp contract afn float %i.g, %i.h
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %bb.a
  %i.j = phi float [ 0.000000e+00, %bb.a ], [ %i.i, %._crit_edge142.loopexit ]
  ret float %i.j

bb.b:                                             ; preds = %.lr.ph141, %._crit_edge
  %.sroa.0153.1 = phi nsz float [ 0.000000e+00, %.lr.ph141 ], [ %.sroa.0153.4, %._crit_edge ] ; 4 uses
  %.0110139 = phi i64 [ 0, %.lr.ph141 ], [ %i.gp, %._crit_edge ] ; 2 uses
  %i.k = phi <2 x float> [ zeroinitializer, %.lr.ph141 ], [ %i.go, %._crit_edge ] ; 4 uses
  %.idx = shl i64 %.0110139, 3
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !56   ; 4 uses
  %i.q = shl nuw nsw i64 %i.n, 2                  ; 6 uses
  %i.r = udiv i64 %i.n, %3                        ; 3 uses
  %i.s = urem i64 %i.n, %3                        ; 2 uses
  %i.t = icmp eq i64 %i.r, 1
  %spec.select = select i1 %i.t, float 3.000000e+00, float 4.000000e+00 ; 2 uses
  %i.u = icmp eq i64 %i.r, %2
  %i.v = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %.1117 = select nsz i1 %i.u, float %i.v, float %spec.select ; 6 uses
  %i.w = and i64 %i.r, 1                          ; 3 uses
  %i.x = xor i64 %i.w, %6
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 5 uses
  %i.z = icmp eq i32 %i.p, 1
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ne i64 %i.s, 0
  %i.ab = icmp ne i64 %6, %i.w
  %or.cond = or i1 %i.ab, %i.aa
  br i1 %or.cond, label %.preheader132, label %bb.d

.preheader132:                                    ; preds = %bb.c
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.q
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.y ; 2 uses
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.af = load <2 x float>, ptr %.sroa.5150.0..sroa_idx, align 4, !tbaa !16
  %i.ag = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ae, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit133

bb.d:                                             ; preds = %bb.c
  %i.ai = fadd reassoc nsz arcp contract afn float %.1117, -1.000000e+00
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132, %bb.d
  %.0115 = phi nsz float [ %.1117, %.preheader132 ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = phi <2 x float> [ %i.af, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.ak = phi <2 x float> [ %i.ah, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.al = add nuw nsw i64 %i.s, 1
  %i.am = icmp samesign ult i64 %i.al, %3
  %i.an = icmp eq i64 %6, %i.w
  %or.cond3 = or i1 %i.an, %i.am
  br i1 %or.cond3, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit133
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.y ; 2 uses
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aq = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 4, !tbaa !16
  %i.ar = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ap, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit133
  %i.at = fadd reassoc nsz arcp contract afn float %.0115, -1.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e
  %.1 = phi nsz float [ %.0115, %.preheader ], [ %i.at, %bb.e ]
  %i.au = phi <2 x float> [ %i.aq, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.av = phi <2 x float> [ %i.as, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 4 uses
  %i.ax = sub i64 %i.q, %i.a
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.q ; 2 uses
  %i.az = load float, ptr %i.aw, align 4, !tbaa !16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.bd = load <2 x float>, ptr %i.ba, align 4, !tbaa !16 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %.1, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.bf
  %i.bh = load <2 x float>, ptr %i.bb, align 4, !tbaa !16
  %i.bi = load <2 x float>, ptr %i.bc, align 4, !tbaa !16
  %i.bj = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bi
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bj, %i.aj
  %i.bl = fadd reassoc nsz arcp contract afn <2 x float> %i.bk, %i.au
  %i.bm = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %i.c ; 3 uses
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !16 ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.br, i64 1
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, %i.bf
  %i.bv = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.ay, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bx = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %gep, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bz = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, %i.by
  %i.ca = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.ak
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.ca, %i.av
  %i.cc = fsub reassoc nsz arcp contract afn <2 x float> %i.bu, %i.cb
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> %i.bn, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, %i.e ; 3 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ce
  %i.cf = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %.sroa.0153.1
  %i.ch = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.az, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.br, i64 3
  %i.ck = fsub reassoc nsz arcp contract afn <4 x float> %i.cj, %i.ce
  store <4 x float> %i.ck, ptr %i.aw, align 4, !tbaa !16
  br label %._crit_edge

bb.f:                                             ; preds = %bb.b
  %i.cl = zext i32 %i.p to i64                    ; 3 uses
  %.not143 = icmp eq i32 %i.p, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -16
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.y ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !16, !alias.scope !60 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %8 = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16, !alias.scope !60 ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %i.co, align 4, !tbaa !16, !alias.scope !60 ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %.lr.ph.preheader206, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.cl, 4294967288              ; 3 uses
  %i.cp = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0153.1, i64 0
  %i.cq = shufflevector <2 x float> %i.k, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.cq, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cq, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.1117, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.sroa.9.0.copyload, i64 7
  %i.ct = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.cu = shufflevector <2 x float> %8, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %vector.recur.init175 = insertelement <8 x float> poison, float %.sroa.0.0.copyload, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.cp, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi169 = phi <8 x float> [ %i.cr, %vector.ph ], [ %i.dw, %vector.body ]
  %vec.phi170 = phi <8 x float> [ %i.cs, %vector.ph ], [ %i.eg, %vector.body ]
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %strided.vec179, %vector.body ]
  %vector.recur172 = phi <8 x float> [ %i.ct, %vector.ph ], [ %strided.vec178, %vector.body ]
  %vector.recur174 = phi <8 x float> [ %i.cu, %vector.ph ], [ %strided.vec177, %vector.body ]
  %vector.recur176 = phi <8 x float> [ %vector.recur.init175, %vector.ph ], [ %strided.vec, %vector.body ]
  %i.cv = add nuw nsw i64 %index, %i.n
  %i.cw = shl nuw nsw i64 %i.cv, 2                ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.y
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw ; 2 uses
  %i.da = sub i64 %i.cw, %i.a
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dc = getelementptr [4 x i8], ptr %i.cx, i64 %i.a
  %wide.vec = load <32 x float>, ptr %i.cy, align 4, !tbaa !16 ; 7 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec177 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec178 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 3 uses
  %i.dd = shufflevector <8 x float> %vector.recur176, <8 x float> %strided.vec, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %wide.vec180 = load <32 x float>, ptr %i.cz, align 4, !tbaa !16 ; 4 uses
  %strided.vec181 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec182 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec183 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec184 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec181, %broadcast.splat
  %wide.vec185 = load <32 x float>, ptr %i.db, align 4, !tbaa !16 ; 4 uses
  %strided.vec186 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec187 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec188 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec189 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec190 = load <32 x float>, ptr %i.dc, align 4, !tbaa !16 ; 4 uses
  %strided.vec191 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec192 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec193 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec194 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec186
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.df, %strided.vec191
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, %i.dd
  %i.di = fsub reassoc nsz arcp contract afn <8 x float> %i.de, %i.dh
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.di, %broadcast.splat168 ; 3 uses
  %i.dk = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec181, %i.dj
  %i.dl = fmul reassoc nsz arcp contract afn <8 x float> %i.dj, %i.dj
  %i.dm = fadd reassoc nsz arcp contract afn <8 x float> %i.dl, %vec.phi ; 2 uses
  %i.dn = shufflevector <8 x float> %vector.recur174, <8 x float> %strided.vec177, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.do = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec182, %broadcast.splat
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec177, %strided.vec187
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %strided.vec192
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %i.dq, %i.dn
  %i.ds = fsub reassoc nsz arcp contract afn <8 x float> %i.do, %i.dr
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, %broadcast.splat168 ; 3 uses
  %i.du = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec182, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dt
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.dv, %vec.phi169 ; 2 uses
  %i.dx = shufflevector <8 x float> %vector.recur172, <8 x float> %strided.vec178, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec183, %broadcast.splat
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec178, %strided.vec188
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, %strided.vec193
  %i.eb = fadd reassoc nsz arcp contract afn <8 x float> %i.ea, %i.dx
  %i.ec = fsub reassoc nsz arcp contract afn <8 x float> %i.dy, %i.eb
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %i.ec, %broadcast.splat168 ; 3 uses
  %i.ee = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec183, %i.ed
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, %i.ed
  %i.eg = fadd reassoc nsz arcp contract afn <8 x float> %i.ef, %vec.phi170 ; 2 uses
  %i.eh = shufflevector <8 x float> %vector.recur, <8 x float> %strided.vec179, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec184, %broadcast.splat
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec189
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.ej, %strided.vec194
  %i.el = fadd reassoc nsz arcp contract afn <8 x float> %i.ek, %i.eh
  %i.em = fsub reassoc nsz arcp contract afn <8 x float> %i.ei, %i.el
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %i.em, %broadcast.splat168
  %i.eo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec184, %i.en
  %i.ep = shufflevector <8 x float> %i.dk, <8 x float> %i.du, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = shufflevector <8 x float> %i.ee, <8 x float> %i.eo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ep, <16 x float> %i.eq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.cz, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %i.es = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dm) ; 2 uses
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dw)
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.eg)
  %vector.recur.extract = extractelement <32 x float> %wide.vec, i64 31
  %vector.recur.extract197 = extractelement <32 x float> %wide.vec, i64 28
  %cmp.n = icmp eq i64 %n.vec, %i.cl
  %i.ev = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.eu, i64 1 ; 2 uses
  %i.ex = shufflevector <32 x float> %wide.vec, <32 x float> poison, <2 x i32> <i32 29, i32 30>
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0153.3.ph = phi float [ %.sroa.0153.1, %.lr.ph.preheader ], [ %i.es, %middle.block ]
  %.sroa.9.0.ph = phi float [ %.sroa.9.0.copyload, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.sroa.0.0.ph = phi float [ %.sroa.0.0.copyload, %.lr.ph.preheader ], [ %vector.recur.extract197, %middle.block ]
  %.0111135.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi <2 x float> [ %8, %.lr.ph.preheader ], [ %i.ex, %middle.block ]
  %.ph207 = phi <2 x float> [ %i.k, %.lr.ph.preheader ], [ %i.ew, %middle.block ]
  %i.ey = insertelement <2 x float> poison, float %.1117, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %.sroa.0153.3 = phi nsz float [ %i.gi, %.lr.ph ], [ %.sroa.0153.3.ph, %.lr.ph.preheader206 ]
  %.sroa.9.0 = phi nsz float [ %i.gd, %.lr.ph ], [ %.sroa.9.0.ph, %.lr.ph.preheader206 ]
  %.sroa.0.0 = phi nsz float [ %9, %.lr.ph ], [ %.sroa.0.0.ph, %.lr.ph.preheader206 ]
  %.0111135 = phi i64 [ %i.gn, %.lr.ph ], [ %.0111135.ph, %.lr.ph.preheader206 ] ; 2 uses
  %i.fa = phi <2 x float> [ %i.fq, %.lr.ph ], [ %.ph, %.lr.ph.preheader206 ]
  %i.fb = phi <2 x float> [ %i.gb, %.lr.ph ], [ %.ph207, %.lr.ph.preheader206 ]
  %i.fc = add nuw nsw i64 %.0111135, %i.n
  %i.fd = shl nuw nsw i64 %i.fc, 2                ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.y ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd ; 4 uses
  %i.fh = sub i64 %i.fd, %i.a
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fh ; 3 uses
  %i.fj = getelementptr [4 x i8], ptr %i.fe, i64 %i.a ; 3 uses
  %9 = load float, ptr %i.ff, align 4, !tbaa !16  ; 2 uses
  %10 = load float, ptr %i.fg, align 4, !tbaa !16 ; 2 uses
  %11 = fmul reassoc nsz arcp contract afn float %10, %.1117
  %i.fk = load float, ptr %i.fi, align 4, !tbaa !16
  %i.fl = load float, ptr %i.fj, align 4, !tbaa !16
  %12 = fadd reassoc nsz arcp contract afn float %9, %i.fk
  %13 = fadd reassoc nsz arcp contract afn float %12, %i.fl
  %14 = fadd reassoc nsz arcp contract afn float %13, %.sroa.0.0
  %15 = fsub reassoc nsz arcp contract afn float %11, %14
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fq = load <2 x float>, ptr %i.fm, align 4, !tbaa !16 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.fn, align 4, !tbaa !16 ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <2 x float> %i.fr, %i.ez
  %i.ft = load <2 x float>, ptr %i.fo, align 4, !tbaa !16
  %i.fu = load <2 x float>, ptr %i.fp, align 4, !tbaa !16
  %i.fv = fadd reassoc nsz arcp contract afn <2 x float> %i.fq, %i.ft
  %i.fw = fadd reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fu
  %i.fx = fadd reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fa
  %i.fy = fsub reassoc nsz arcp contract afn <2 x float> %i.fs, %i.fx
  %i.fz = fmul reassoc nsz arcp contract afn <2 x float> %i.fy, %i.c ; 3 uses
  %i.ga = fmul reassoc nsz arcp contract afn <2 x float> %i.fz, %i.fz
  %i.gb = fadd reassoc nsz arcp contract afn <2 x float> %i.ga, %i.fb ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !16 ; 2 uses
  %16 = fmul reassoc nsz arcp contract afn float %i.gf, %.1117
  %17 = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  %18 = load float, ptr %17, align 4, !tbaa !16
  %19 = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %20 = load float, ptr %19, align 4, !tbaa !16
  %21 = fadd reassoc nsz arcp contract afn float %i.gd, %18
  %22 = fadd reassoc nsz arcp contract afn float %21, %20
  %23 = fadd reassoc nsz arcp contract afn float %22, %.sroa.9.0
  %24 = fsub reassoc nsz arcp contract afn float %16, %23
  %25 = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %26 = insertelement <4 x float> %25, float %15, i64 0
  %27 = insertelement <4 x float> %26, float %24, i64 3
  %i.gg = fmul reassoc nsz arcp contract afn <4 x float> %27, %i.e ; 3 uses
  %foldExtExtBinop204 = fmul reassoc nsz arcp contract afn <4 x float> %i.gg, %i.gg
  %i.gh = extractelement <4 x float> %foldExtExtBinop204, i64 0
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %.sroa.0153.3 ; 2 uses
  %i.gj = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gk = insertelement <4 x float> %i.gj, float %10, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.gf, i64 3
  %i.gm = fsub reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gg
  store <4 x float> %i.gm, ptr %i.fg, align 4, !tbaa !16
  %i.gn = add nuw nsw i64 %.0111135, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %i.cl
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f, %.loopexit
  %.sroa.0153.4 = phi nsz float [ %i.cg, %.loopexit ], [ %.sroa.0153.1, %bb.f ], [ %i.es, %middle.block ], [ %i.gi, %.lr.ph ] ; 2 uses
  %i.go = phi <2 x float> [ %i.bp, %.loopexit ], [ %i.k, %bb.f ], [ %i.ew, %middle.block ], [ %i.gb, %.lr.ph ] ; 3 uses
  %i.gp = add nuw i64 %.0110139, 1                ; 2 uses
  %exitcond145.not = icmp eq i64 %i.gp, %5
  br i1 %exitcond145.not, label %._crit_edge142.loopexit, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_heal_sub: argument 0"}
!13 = distinct !{!13, !"_heal_sub"}
!14 = !{!15}
!15 = distinct !{!15, !13, !"_heal_sub: argument 1"}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !9, i64 0}
!18 = !{!12, !15}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20, !21}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!28, !30, !31}
!28 = distinct !{!28, !29, !"_heal_laplace_loop: argument 0"}
!29 = distinct !{!29, !"_heal_laplace_loop"}
!30 = distinct !{!30, !29, !"_heal_laplace_loop: argument 1"}
!31 = distinct !{!31, !29, !"_heal_laplace_loop: argument 2"}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !9, i64 0}
!34 = !{!28, !30}
!35 = !{!31}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_heal_add: argument 1"}
!38 = distinct !{!38, !"_heal_add"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_heal_add: argument 2"}
!41 = !{!37, !40}
!42 = !{!43, !40}
!43 = distinct !{!43, !38, !"_heal_add: argument 0"}
!44 = !{!43, !37}
!45 = distinct !{!45, !20, !21}
!46 = distinct !{!46, !21, !20}
!47 = distinct !{!47, !20, !21}
!48 = distinct !{!48, !21, !20}
!49 = distinct !{!49, !20, !21}
!50 = distinct !{!50, !21, !20}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_collect_color_runs: argument 0"}
!53 = distinct !{!53, !"_collect_color_runs"}
!54 = !{!55}
!55 = distinct !{!55, !53, !"_collect_color_runs: argument 1"}
!56 = !{!8, !8, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = !{!52, !55}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"copy_pixel: argument 0"}
!62 = distinct !{!62, !"copy_pixel"}
!63 = distinct !{!63, !62, !"copy_pixel: argument 1"}
!64 = distinct !{!64, !20, !21}
!65 = distinct !{!65, !21, !20}
end_hunk_0
