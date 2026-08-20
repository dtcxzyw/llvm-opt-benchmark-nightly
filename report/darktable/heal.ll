inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@dt_heal:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.b
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @collect_runs(i32 noundef range(i32 0, 2) %0, ptr noalias nofree noundef readonly captures(none) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i64 noundef range(i64 0, -9223372036854775808) %4, ptr noalias nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr %6, align 8, !tbaa !32
  br label %.lr.ph

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
  %.062.i = phi i64 [ 2, %bb.c ], [ 0, %bb.b ], [ 1, %.lr.ph ] ; 2 uses
  %.060.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %i.o = icmp ult i64 %.062.i, %2
  br i1 %i.o, label %.lr.ph.i, label %_collect_color_runs.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = trunc i64 %i.e to i32                    ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.i, %.lr.ph.i
  %.078.i.ph = phi i64 [ %i.an, %bb.i ], [ %.062.i, %.lr.ph.i ] ; 5 uses
  %.05777.i.ph = phi i32 [ %i.al, %bb.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.not71.i.ph = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i ] ; 2 uses
  %.16175.i.ph = phi i64 [ %i.am, %bb.i ], [ %.060.i, %.lr.ph.i ] ; 3 uses
  %.16474.i.ph = phi i64 [ %.16474.i.lcssa56, %bb.i ], [ %.063.i, %.lr.ph.i ] ; 4 uses
  %i.q = lshr i32 %.05777.i.ph, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = zext i32 %.05777.i.ph to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.078.i.ph
  %i.u = load float, ptr %i.t, align 4, !tbaa !16, !alias.scope !51, !noalias !54
  %i.v = fcmp reassoc nsz arcp contract afn oeq float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.e, label %.thread

bb.e:                                             ; preds = %.outer
  br i1 %.not71.i.ph, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.idx73.i.peel = shl i64 %.16474.i.ph, 3
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %.idx73.i.peel ; 2 uses
  store i32 %i.r, ptr %i.w, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.x = sub i64 %.078.i.ph, %i.s
  %i.y = lshr i64 %i.x, 1
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !56, !alias.scope !54, !noalias !51
  %i.ab = add i64 %.16474.i.ph, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.265.i.peel = phi i64 [ %i.ab, %bb.f ], [ %.16474.i.ph, %bb.e ] ; 3 uses
  %i.ac = add i64 %.078.i.ph, 2                   ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %2
  br i1 %i.ad, label %.peel.next, label %_collect_color_runs.exit

.peel.next:                                       ; preds = %bb.g, %bb.h
  %.078.i = phi i64 [ %i.ai, %bb.h ], [ %i.ac, %bb.g ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.078.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16, !alias.scope !51, !noalias !54
  %i.ag = fcmp reassoc nsz arcp contract afn oeq float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.h, label %.thread.thread

.thread.thread:                                   ; preds = %.peel.next
  %i.ah = trunc i64 %.078.i to i32
  br label %bb.i

bb.h:                                             ; preds = %.peel.next
  %i.ai = add i64 %.078.i, 2                      ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %2
  br i1 %i.aj, label %.peel.next, label %_collect_color_runs.exit, !llvm.loop !57

.thread:                                          ; preds = %.outer
  %i.ak = trunc i64 %.078.i.ph to i32
  %spec.select = select i1 %.not71.i.ph, i32 %i.ak, i32 %.05777.i.ph
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread.thread
  %.16474.i.lcssa56 = phi i64 [ %.16474.i.ph, %.thread ], [ %.265.i.peel, %.thread.thread ] ; 4 uses
  %.078.i.lcssa54 = phi i64 [ %.078.i.ph, %.thread ], [ %.078.i, %.thread.thread ]
  %i.al = phi i32 [ %spec.select, %.thread ], [ %i.ah, %.thread.thread ] ; 3 uses
  %i.am = add i64 %.16175.i.ph, 1                 ; 2 uses
  %i.an = add i64 %.078.i.lcssa54, 2              ; 4 uses
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
  %.161.lcssa91.i = phi i64 [ %i.am, %bb.k ], [ %.060.i, %bb.d ], [ %.16175.i.ph, %bb.h ], [ %.16175.i.ph, %bb.g ]
  %.4.i = phi i64 [ %i.be, %bb.k ], [ %.063.i, %bb.d ], [ %.265.i.peel, %bb.h ], [ %.265.i.peel, %bb.g ] ; 2 uses
  %i.bf = load i64, ptr %7, align 8, !tbaa !32, !noalias !59
  %i.bg = add i64 %i.bf, %.161.lcssa91.i
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
  %8 = insertelement <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, float %7, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.b

._crit_edge142.loopexit:                          ; preds = %._crit_edge
  %i.d = extractelement <2 x float> %i.gt, i64 0
  %i.e = fadd reassoc nsz arcp contract afn float %i.d, %.sroa.0153.4
  %i.f = extractelement <2 x float> %i.gt, i64 1
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, %i.f
  br label %._crit_edge142

._crit_edge142:                                   ; preds = %._crit_edge142.loopexit, %bb.a
  %i.h = phi float [ 0.000000e+00, %bb.a ], [ %i.g, %._crit_edge142.loopexit ]
  ret float %i.h

bb.b:                                             ; preds = %.lr.ph141, %._crit_edge
  %.sroa.0153.1 = phi nsz float [ 0.000000e+00, %.lr.ph141 ], [ %.sroa.0153.4, %._crit_edge ] ; 4 uses
  %.0117139 = phi i64 [ 0, %.lr.ph141 ], [ %i.gu, %._crit_edge ] ; 2 uses
  %i.i = phi <2 x float> [ zeroinitializer, %.lr.ph141 ], [ %i.gt, %._crit_edge ] ; 4 uses
  %.idx = shl i64 %.0117139, 3
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = zext i32 %i.k to i64                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56   ; 4 uses
  %i.o = shl nuw nsw i64 %i.l, 2                  ; 6 uses
  %i.p = udiv i64 %i.l, %3                        ; 3 uses
  %i.q = urem i64 %i.l, %3                        ; 2 uses
  %i.r = icmp eq i64 %i.p, 1
  %spec.select = select i1 %i.r, float 3.000000e+00, float 4.000000e+00 ; 2 uses
  %i.s = icmp eq i64 %i.p, %2
  %i.t = fadd reassoc nsz arcp contract afn float %spec.select, -1.000000e+00
  %.1116 = select nsz i1 %i.s, float %i.t, float %spec.select ; 4 uses
  %i.u = and i64 %i.p, 1                          ; 3 uses
  %i.v = xor i64 %i.u, %6
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 5 uses
  %i.x = icmp eq i32 %i.n, 1
  br i1 %i.x, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.y = icmp ne i64 %i.q, 0
  %i.z = icmp ne i64 %6, %i.u
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %.preheader132, label %bb.d

.preheader132:                                    ; preds = %bb.c
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %i.o
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.w ; 2 uses
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ad = load <2 x float>, ptr %.sroa.5150.0..sroa_idx, align 4, !tbaa !16
  %i.ae = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ac, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit133

bb.d:                                             ; preds = %bb.c
  %i.ag = fadd reassoc nsz arcp contract afn float %.1116, -1.000000e+00
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132, %bb.d
  %.0114 = phi nsz float [ %.1116, %.preheader132 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.ad, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.ai = phi <2 x float> [ %i.af, %.preheader132 ], [ zeroinitializer, %bb.d ]
  %i.aj = add nuw nsw i64 %i.q, 1
  %i.ak = icmp samesign ult i64 %i.aj, %3
  %i.al = icmp eq i64 %6, %i.u
  %or.cond3 = or i1 %i.al, %i.ak
  br i1 %or.cond3, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit133
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.w ; 2 uses
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ao = load <2 x float>, ptr %.sroa.5147.0..sroa_idx, align 4, !tbaa !16
  %i.ap = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.an, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.loopexit

bb.e:                                             ; preds = %.loopexit133
  %i.ar = fadd reassoc nsz arcp contract afn float %.0114, -1.000000e+00
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.e
  %.1 = phi nsz float [ %.0114, %.preheader ], [ %i.ar, %bb.e ]
  %i.as = phi <2 x float> [ %i.ao, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.at = phi <2 x float> [ %i.aq, %.preheader ], [ zeroinitializer, %bb.e ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o ; 4 uses
  %i.av = sub i64 %i.o, %i.a
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.o ; 2 uses
  %10 = load float, ptr %i.au, align 4, !tbaa !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ba = load <2 x float>, ptr %i.ax, align 4, !tbaa !16 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %.1, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bc
  %i.be = load <2 x float>, ptr %i.ay, align 4, !tbaa !16
  %i.bf = load <2 x float>, ptr %i.az, align 4, !tbaa !16
  %i.bg = fadd reassoc nsz arcp contract afn <2 x float> %i.be, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn <2 x float> %i.bg, %i.ah
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.as
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bd, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn <2 x float> %i.bj, %i.c ; 3 uses
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn <2 x float> %i.bl, %i.i
  %11 = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %12 = load float, ptr %11, align 4, !tbaa !16   ; 2 uses
  %13 = insertelement <2 x float> poison, float %10, i64 0
  %14 = insertelement <2 x float> %13, float %12, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %14, %i.bc
  %i.bo = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.aw, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bq = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %gep, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bs = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.br
  %i.bt = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.ai
  %i.bu = fadd reassoc nsz arcp contract afn <2 x float> %i.bt, %i.at
  %i.bv = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bu
  %15 = shufflevector <2 x float> %i.bv, <2 x float> %i.bk, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %15, %9 ; 3 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %16, %16
  %i.bw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %.sroa.0153.1
  %i.by = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %17 = insertelement <4 x float> %i.by, float %10, i64 0
  %18 = insertelement <4 x float> %17, float %12, i64 3
  %i.bz = fsub reassoc nsz arcp contract afn <4 x float> %18, %16
  store <4 x float> %i.bz, ptr %i.au, align 4, !tbaa !16
  br label %._crit_edge

bb.f:                                             ; preds = %bb.b
  %i.ca = zext i32 %i.n to i64                    ; 3 uses
  %.not143 = icmp eq i32 %i.n, 0
  br i1 %.not143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.w ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ce = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16, !alias.scope !60 ; 3 uses
  %i.cf = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.cd, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16, !alias.scope !60 ; 3 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader206, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 4294967288              ; 3 uses
  %i.ch = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.sroa.0153.1, i64 0
  %i.ci = shufflevector <2 x float> %i.i, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cj = shufflevector <8 x float> %i.ci, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ci, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.1116, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cl = shufflevector <4 x float> %i.cf, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %i.cm = shufflevector <2 x float> %i.ce, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.cn = shufflevector <2 x float> %i.ce, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.co = shufflevector <4 x float> %i.cf, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.ch, %vector.ph ], [ %i.dg, %vector.body ]
  %vec.phi169 = phi <8 x float> [ %i.cj, %vector.ph ], [ %i.dq, %vector.body ]
  %vec.phi170 = phi <8 x float> [ %i.ck, %vector.ph ], [ %i.ea, %vector.body ]
  %vector.recur = phi <8 x float> [ %i.cl, %vector.ph ], [ %strided.vec179, %vector.body ]
  %vector.recur172 = phi <8 x float> [ %i.cm, %vector.ph ], [ %strided.vec178, %vector.body ]
  %vector.recur174 = phi <8 x float> [ %i.cn, %vector.ph ], [ %strided.vec177, %vector.body ]
  %vector.recur176 = phi <8 x float> [ %i.co, %vector.ph ], [ %strided.vec, %vector.body ]
  %i.cp = add nuw nsw i64 %index, %i.l
  %i.cq = shl nuw nsw i64 %i.cp, 2                ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.w
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cq ; 2 uses
  %i.cu = sub i64 %i.cq, %i.a
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = getelementptr [4 x i8], ptr %i.cr, i64 %i.a
  %wide.vec = load <32 x float>, ptr %i.cs, align 4, !tbaa !16 ; 6 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec177 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec178 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %strided.vec179 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 3 uses
  %i.cx = shufflevector <8 x float> %vector.recur176, <8 x float> %strided.vec, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %wide.vec180 = load <32 x float>, ptr %i.ct, align 4, !tbaa !16 ; 4 uses
  %strided.vec181 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec182 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 2 uses
  %strided.vec183 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec184 = shufflevector <32 x float> %wide.vec180, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec181, %broadcast.splat
  %wide.vec185 = load <32 x float>, ptr %i.cv, align 4, !tbaa !16 ; 4 uses
  %strided.vec186 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec187 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec188 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec189 = shufflevector <32 x float> %wide.vec185, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec190 = load <32 x float>, ptr %i.cw, align 4, !tbaa !16 ; 4 uses
  %strided.vec191 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec192 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec193 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec194 = shufflevector <32 x float> %wide.vec190, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %strided.vec186
  %i.da = fadd reassoc nsz arcp contract afn <8 x float> %i.cz, %strided.vec191
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %i.cx
  %i.dc = fsub reassoc nsz arcp contract afn <8 x float> %i.cy, %i.db
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.dc, %broadcast.splat168 ; 3 uses
  %i.de = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec181, %i.dd
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dd
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.df, %vec.phi ; 2 uses
  %i.dh = shufflevector <8 x float> %vector.recur174, <8 x float> %strided.vec177, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.di = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec182, %broadcast.splat
  %i.dj = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec177, %strided.vec187
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %i.dj, %strided.vec192
  %i.dl = fadd reassoc nsz arcp contract afn <8 x float> %i.dk, %i.dh
  %i.dm = fsub reassoc nsz arcp contract afn <8 x float> %i.di, %i.dl
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %broadcast.splat168 ; 3 uses
  %i.do = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec182, %i.dn
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %i.dn, %i.dn
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.dp, %vec.phi169 ; 2 uses
  %i.dr = shufflevector <8 x float> %vector.recur172, <8 x float> %strided.vec178, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec183, %broadcast.splat
  %i.dt = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec178, %strided.vec188
  %i.du = fadd reassoc nsz arcp contract afn <8 x float> %i.dt, %strided.vec193
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.du, %i.dr
  %i.dw = fsub reassoc nsz arcp contract afn <8 x float> %i.ds, %i.dv
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %i.dw, %broadcast.splat168 ; 3 uses
  %i.dy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec183, %i.dx
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %i.dx
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, %vec.phi170 ; 2 uses
  %i.eb = shufflevector <8 x float> %vector.recur, <8 x float> %strided.vec179, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec184, %broadcast.splat
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec179, %strided.vec189
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %i.ed, %strided.vec194
  %i.ef = fadd reassoc nsz arcp contract afn <8 x float> %i.ee, %i.eb
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %i.ec, %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %broadcast.splat168
  %i.ei = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec184, %i.eh
  %i.ej = shufflevector <8 x float> %i.de, <8 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ek = shufflevector <8 x float> %i.dy, <8 x float> %i.ei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ej, <16 x float> %i.ek, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ct, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dg) ; 2 uses
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dq)
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ea)
  %cmp.n = icmp eq i64 %n.vec, %i.ca
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.eo, i64 1 ; 2 uses
  %i.er = shufflevector <32 x float> %wide.vec, <32 x float> poison, <2 x i32> <i32 29, i32 30>
  %i.es = shufflevector <32 x float> %wide.vec, <32 x float> poison, <2 x i32> <i32 28, i32 31>
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader206

.lr.ph.preheader206:                              ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0153.3.ph = phi float [ %.sroa.0153.1, %.lr.ph.preheader ], [ %i.em, %middle.block ]
  %.0110135.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi <2 x float> [ %i.ce, %.lr.ph.preheader ], [ %i.er, %middle.block ]
  %.ph207 = phi <2 x float> [ %i.i, %.lr.ph.preheader ], [ %i.eq, %middle.block ]
  %.ph208 = phi <2 x float> [ %i.cg, %.lr.ph.preheader ], [ %i.es, %middle.block ]
  %i.et = insertelement <2 x float> poison, float %.1116, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader206, %.lr.ph
  %.sroa.0153.3 = phi nsz float [ %i.go, %.lr.ph ], [ %.sroa.0153.3.ph, %.lr.ph.preheader206 ]
  %.0110135 = phi i64 [ %i.gr, %.lr.ph ], [ %.0110135.ph, %.lr.ph.preheader206 ] ; 2 uses
  %i.ev = phi <2 x float> [ %i.fm, %.lr.ph ], [ %.ph, %.lr.ph.preheader206 ]
  %i.ew = phi <2 x float> [ %i.fx, %.lr.ph ], [ %.ph207, %.lr.ph.preheader206 ]
  %i.ex = phi <2 x float> [ %i.gs, %.lr.ph ], [ %.ph208, %.lr.ph.preheader206 ]
  %i.ey = add nuw nsw i64 %.0110135, %i.l
  %i.ez = shl nuw nsw i64 %i.ey, 2                ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.w ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez ; 4 uses
  %i.fd = sub i64 %i.ez, %i.a
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fd ; 3 uses
  %i.ff = getelementptr [4 x i8], ptr %i.fa, i64 %i.a ; 2 uses
  %19 = load float, ptr %i.fb, align 4, !tbaa !16
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !16 ; 2 uses
  %i.fh = load float, ptr %i.fe, align 4, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !16 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fj, align 4, !tbaa !16 ; 2 uses
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fn, %i.eu
  %i.fp = load <2 x float>, ptr %i.fk, align 4, !tbaa !16
  %i.fq = load <2 x float>, ptr %i.fl, align 4, !tbaa !16
  %i.fr = fadd reassoc nsz arcp contract afn <2 x float> %i.fm, %i.fp
  %i.fs = fadd reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fq
  %i.ft = fadd reassoc nsz arcp contract afn <2 x float> %i.fs, %i.ev
  %i.fu = fsub reassoc nsz arcp contract afn <2 x float> %i.fo, %i.ft
  %i.fv = fmul reassoc nsz arcp contract afn <2 x float> %i.fu, %i.c ; 3 uses
  %i.fw = fmul reassoc nsz arcp contract afn <2 x float> %i.fv, %i.fv
  %i.fx = fadd reassoc nsz arcp contract afn <2 x float> %i.fw, %i.ew ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %21 = load float, ptr %20, align 4, !tbaa !16   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !16
  %22 = insertelement <2 x float> poison, float %i.fg, i64 0
  %23 = insertelement <2 x float> %22, float %i.fz, i64 1
  %i.gc = fmul reassoc nsz arcp contract afn <2 x float> %23, %i.eu
  %i.gd = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.ff, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !16
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.gf = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %21, i64 1
  %i.gh = insertelement <2 x float> poison, float %19, i64 0 ; 2 uses
  %i.gi = insertelement <2 x float> %i.gh, float %i.gb, i64 1
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gg, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, %i.ge
  %i.gl = fadd reassoc nsz arcp contract afn <2 x float> %i.gk, %i.ex
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gl
  %24 = shufflevector <2 x float> %i.gm, <2 x float> %i.fv, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %25 = fmul reassoc nsz arcp contract afn <4 x float> %24, %9 ; 3 uses
  %foldExtExtBinop204 = fmul reassoc nsz arcp contract afn <4 x float> %25, %25
  %i.gn = extractelement <4 x float> %foldExtExtBinop204, i64 0
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %.sroa.0153.3 ; 2 uses
  %i.gp = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %26 = insertelement <4 x float> %i.gp, float %i.fg, i64 0
  %27 = insertelement <4 x float> %26, float %i.fz, i64 3
  %i.gq = fsub reassoc nsz arcp contract afn <4 x float> %27, %25
  store <4 x float> %i.gq, ptr %i.fc, align 4, !tbaa !16
  %i.gr = add nuw nsw i64 %.0110135, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gr, %i.ca
  %i.gs = insertelement <2 x float> %i.gh, float %21, i64 1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f, %.loopexit
  %.sroa.0153.4 = phi nsz float [ %i.bx, %.loopexit ], [ %.sroa.0153.1, %bb.f ], [ %i.em, %middle.block ], [ %i.go, %.lr.ph ] ; 2 uses
  %i.gt = phi <2 x float> [ %i.bm, %.loopexit ], [ %i.i, %bb.f ], [ %i.eq, %middle.block ], [ %i.fx, %.lr.ph ] ; 3 uses
  %i.gu = add nuw i64 %.0117139, 1                ; 2 uses
  %exitcond145.not = icmp eq i64 %i.gu, %5
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
