Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/box_filters?download=true
inline.NumInlined: 200
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_:.preheader106
  %.270142 = phi i64 [ %i.hx, %.peel.next202 ], [ %i.ft, %.peel.next202.preheader ] ; 4 uses
  %i.hh = phi <4 x float> [ %i.hv, %.peel.next202 ], [ %i.fo, %.peel.next202.preheader ]
  %i.hi = add i64 %.270142, %2
  %i.hj = add i64 %.270142, %i.fa
  %i.hk = shl i64 %i.hj, 32
  %i.hl = ashr exact i64 %i.hk, 28
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 %i.hl
  %i.hn = shl i64 %i.hi, 32
  %i.ho = ashr exact i64 %i.hn, 30                ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ho ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %.idx74 = shl i64 %.270142, 4
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx74
  %i.hs = load <4 x float>, ptr %i.hm, align 4, !tbaa !14, !alias.scope !529, !noalias !530
  %i.ht = fsub reassoc nsz arcp contract afn <4 x float> %i.hh, %i.hs
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.hq, i64 16, i1 false), !tbaa !14, !alias.scope !544, !noalias !532
  %i.hu = load <4 x float>, ptr %i.hq, align 4, !tbaa !14, !alias.scope !533, !noalias !545
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.ht ; 3 uses
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %i.hv, %i.fu
  store <4 x float> %i.hw, ptr %i.hr, align 4, !tbaa !14, !alias.scope !535, !noalias !536
  %i.hx = add i64 %.270142, 1                     ; 2 uses
  %exitcond200.not = icmp eq i64 %i.hx, %i.fc
  br i1 %exitcond200.not, label %.preheader, label %.peel.next202, !llvm.loop !507

.peel.next206:                                    ; preds = %.peel.next206.prol.loopexit, %.peel.next206
  %.2161 = phi i64 [ %i.im, %.peel.next206 ], [ %.2161.unr, %.peel.next206.prol.loopexit ] ; 2 uses
  %.3160 = phi i64 [ %i.iz, %.peel.next206 ], [ %.3160.unr, %.peel.next206.prol.loopexit ] ; 5 uses
  %i.hy = phi <4 x float> [ %i.iv, %.peel.next206 ], [ %.unr, %.peel.next206.prol.loopexit ]
  %i.hz = add i64 %.3160, %i.gc
  %i.ia = add i64 %.2161, -1
  %i.ib = shl i64 %i.hz, 32
  %i.ic = ashr exact i64 %i.ib, 28
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 %i.ic
  %.idx = shl i64 %.3160, 4
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.if = uitofp reassoc nsz arcp contract afn i64 %i.ia to float
  %i.ig = load <4 x float>, ptr %i.id, align 4, !tbaa !14, !alias.scope !541, !noalias !542
  %i.ih = fsub reassoc nsz arcp contract afn <4 x float> %i.hy, %i.ig ; 2 uses
  %i.ii = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fdiv reassoc nsz arcp contract afn <4 x float> %i.ih, %i.ij
  store <4 x float> %i.ik, ptr %i.ie, align 4, !tbaa !14, !alias.scope !539, !noalias !540
  %i.il = sub i64 %.3160, %2
  %i.im = add i64 %.2161, -2                      ; 2 uses
  %i.in = shl i64 %i.il, 32
  %i.io = ashr exact i64 %i.in, 28
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 %i.io
  %i.iq = shl i64 %.3160, 4
  %i.ir = getelementptr i8, ptr %0, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  %i.it = uitofp reassoc nsz arcp contract afn i64 %i.im to float
  %i.iu = load <4 x float>, ptr %i.ip, align 4, !tbaa !14, !alias.scope !541, !noalias !542
  %i.iv = fsub reassoc nsz arcp contract afn <4 x float> %i.ih, %i.iu ; 2 uses
  %i.iw = insertelement <4 x float> poison, float %i.it, i64 0
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iy = fdiv reassoc nsz arcp contract afn <4 x float> %i.iv, %i.ix
  store <4 x float> %i.iy, ptr %i.is, align 4, !tbaa !14, !alias.scope !539, !noalias !540
  %i.iz = add nuw i64 %.3160, 2                   ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %i.iz, %1
  br i1 %exitcond204.not.1, label %._crit_edge, label %.peel.next206, !llvm.loop !508

._crit_edge:                                      ; preds = %.peel.next206.prol.loopexit, %.peel.next206, %.lr.ph162, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @dt_box_mean_vertical(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 16777216
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, -16777217                    ; 2 uses
  %i.c = icmp ult i32 %i.b, 17
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl i64 %4, 1                            ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZL20_alloc_scratch_spacemmmmPm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.f = or disjoint i64 %i.e, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ 2, %.lr.ph.preheader.i.i ]
  %i.g = shl i64 %.0910.i.i, 1                    ; 2 uses
  %i.h = lshr i64 %.011.i.i, 1
  %i.i = icmp ugt i64 %.011.i.i, 3
  br i1 %i.i, label %.lr.ph.i.i, label %_ZL20_alloc_scratch_spacemmmmPm.exit, !llvm.loop !0

_ZL20_alloc_scratch_spacemmmmPm.exit:             ; preds = %.lr.ph.i.i, %bb.c
  %.09.lcssa.i.i = phi i64 [ 2, %bb.c ], [ %i.g, %.lr.ph.i.i ]
  %i.j = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i, i64 %1)
  %i.k = mul i64 %2, %i.d                         ; 2 uses
  %i.l = shl i64 %i.j, 4
  %i.m = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.m)
  %i.n = shl i64 %..i, 2
  %i.o = add i64 %i.n, 60
  %i.p = and i64 %i.o, -64
  %i.q = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.p) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZL20_alloc_scratch_spacemmmmPm.exit
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef %1, i64 noundef %i.k, i64 noundef %4, ptr noundef %i.q)
  tail call void @free(ptr noundef nonnull %i.q) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @__FUNCTION__.dt_box_mean_vertical)
  unreachable

bb.f:                                             ; preds = %bb.d, %_ZL20_alloc_scratch_spacemmmmPm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %.not126 = icmp eq i64 %2, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not403.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 18 uses
  %.not404.i = icmp eq i64 %i.c, 0                ; 3 uses
  %exitcond.peel.not.i = icmp eq i64 %i.c, 1      ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 11 uses
  %exitcond457.peel.not.not.i = icmp ugt i64 %1, %3 ; 2 uses
  %i.e = add i64 %i.c, 1                          ; 5 uses
  %i.f = shl i64 %3, 32
  %i.g = ashr exact i64 %i.f, 32                  ; 3 uses
  %i.h = mul i64 %i.g, %2                         ; 2 uses
  %i.i = uitofp reassoc nsz arcp contract afn i64 %i.e to float ; 2 uses
  %.not.peel.i = icmp eq i64 %3, 0                ; 4 uses
  %i.j = xor i64 %3, -1                           ; 11 uses
  %i.k = sub i64 %1, %3                           ; 11 uses
  %i.l = and i64 %2, -4                           ; 2 uses
  %i.m = insertelement <8 x float> poison, float %i.i, i64 0
  %i.n = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.o = add i64 %i.c, -1                         ; 4 uses
  %i.p = add i64 %i.c, -2                         ; 2 uses
  %i.q = add i64 %1, -2
  %i.r = add i64 %1, -2
  %i.s = xor i64 %3, -1
  %i.t = add i64 %1, %i.s
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.p, 3
  %unroll_iter = and i64 %i.o, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod235 = icmp ne i64 %xtraiter, 0
  %i.v = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %i.w = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.n
  %exitcond457.not.i52 = icmp eq i64 %i.d, 1
  %xtraiter240 = and i64 %i.o, 3                  ; 3 uses
  %i.x = icmp ult i64 %i.p, 3
  %unroll_iter247 = and i64 %i.o, -4
  %lcmp.mod244.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod246 = icmp ne i64 %xtraiter240, 0
  %i.y = insertelement <4 x float> poison, float %i.i, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.z
  %exitcond217.not.i107 = icmp eq i64 %i.d, 1
  %min.iters.check145 = icmp ugt i64 %i.c, 3
  %ident.check144.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check145, %ident.check144.not
  %min.iters.check147 = icmp ult i64 %i.c, 32
  %i.ab = and i64 %i.c, 28
  %n.vec149 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n167 = icmp eq i64 %i.c, %n.vec149
  %min.epilog.iters.check172 = icmp eq i64 %i.ab, 0
  %n.vec174 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n188 = icmp eq i64 %i.c, %n.vec174
  %xtraiter252 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  %exitcond137.not.i123.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph125, %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit
  %.031124 = phi i64 [ 0, %.lr.ph125 ], [ %i.ac, %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit ] ; 5 uses
  %i.ac = add i64 %.031124, 16                    ; 3 uses
  %.not = icmp ugt i64 %i.ac, %2
  br i1 %.not, label %.preheader72, label %bb.c

.preheader72:                                     ; preds = %bb.b
  %i.ad = icmp ult i64 %.031124, %i.l
  br i1 %i.ad, label %.lr.ph, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.031124 ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  br i1 %.not403.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.ag, %.lr.ph.i ] ; 15 uses
  br i1 %.not404.i, label %.preheader208.i, label %.lr.ph216.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0211.i = phi i64 [ %i.ag, %.lr.ph.i ], [ 1, %bb.c ]
  %.082210.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.af = shl i64 %.0211.i, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = lshr i64 %.082210.i, 1
  %i.ai = icmp ugt i64 %.082210.i, 3
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !549

.lr.ph216.i:                                      ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ae, i64 64, i1 false), !tbaa !14, !alias.scope !722, !noalias !723
  %i.aj = load <8 x float>, ptr %i.ae, align 4, !tbaa !14, !alias.scope !724, !noalias !725 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.al = load <8 x float>, ptr %i.ak, align 4, !tbaa !14, !alias.scope !724, !noalias !725 ; 3 uses
  br i1 %exitcond.peel.not.i, label %.preheader208.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph216.i
  br i1 %i.u, label %.peel.next.i.epil.preheader, label %.peel.next.i

.preheader208.i.loopexit.unr-lcssa:               ; preds = %.peel.next.i
  br i1 %lcmp.mod.not, label %.preheader208.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %.preheader208.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.084215.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader ], [ %i.cr, %.preheader208.i.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x float> [ %i.al, %.peel.next.i.preheader ], [ %i.da, %.preheader208.i.loopexit.unr-lcssa ]
  %.epil.init232 = phi <8 x float> [ %i.aj, %.peel.next.i.preheader ], [ %i.cx, %.preheader208.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod235)
  br label %.peel.next.i.epil

.peel.next.i.epil:                                ; preds = %.peel.next.i.epil, %.peel.next.i.epil.preheader
  %.084215.i.epil = phi i64 [ %i.ao, %.peel.next.i.epil ], [ %.084215.i.epil.init, %.peel.next.i.epil.preheader ] ; 3 uses
  %i.am = phi <8 x float> [ %i.ax, %.peel.next.i.epil ], [ %.epil.init, %.peel.next.i.epil.preheader ]
  %i.an = phi <8 x float> [ %i.au, %.peel.next.i.epil ], [ %.epil.init232, %.peel.next.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.peel.next.i.epil ], [ 0, %.peel.next.i.epil.preheader ]
  %i.ao = add nuw i64 %.084215.i.epil, 1
  %i.ap = and i64 %.084215.i.epil, %.0.lcssa.i
  %.idx95.i.epil = shl i64 %i.ap, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.epil
  %i.ar = mul i64 %.084215.i.epil, %2
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ar ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aq, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.as, i64 64, i1 false), !tbaa !14, !alias.scope !727, !noalias !728
  %i.at = load <8 x float>, ptr %i.as, align 4, !tbaa !14, !alias.scope !729, !noalias !730
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %i.at, %i.an ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.aw = load <8 x float>, ptr %i.av, align 4, !tbaa !14, !alias.scope !729, !noalias !730
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, %i.am ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader208.i, label %.peel.next.i.epil, !llvm.loop !559

.preheader208.i:                                  ; preds = %.preheader208.i.loopexit.unr-lcssa, %.peel.next.i.epil, %.lr.ph216.i, %._crit_edge.i
  %i.ay = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.al, %.lr.ph216.i ], [ %i.da, %.preheader208.i.loopexit.unr-lcssa ], [ %i.ax, %.peel.next.i.epil ] ; 2 uses
  %i.az = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.aj, %.lr.ph216.i ], [ %i.cx, %.preheader208.i.loopexit.unr-lcssa ], [ %i.au, %.peel.next.i.epil ] ; 2 uses
  br i1 %exitcond457.peel.not.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.preheader208.i
  %i.ba = and i64 %.0.lcssa.i, %i.g
  %.idx94.peel.i = shl i64 %i.ba, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %.idx94.peel.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.h ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bb, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bc, i64 64, i1 false), !tbaa !14, !alias.scope !732, !noalias !733
  %i.bd = load <8 x float>, ptr %i.bc, align 4, !tbaa !14, !alias.scope !734, !noalias !735
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, %i.az ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load <8 x float>, ptr %i.bf, align 4, !tbaa !14, !alias.scope !734, !noalias !735
  %i.bh = fadd reassoc nsz arcp contract afn <8 x float> %i.bg, %i.ay ; 4 uses
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.be, %i.v
  store <8 x float> %i.bi, ptr %i.ae, align 4, !tbaa !14, !alias.scope !736, !noalias !737
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.bk = fmul reassoc nsz arcp contract afn <8 x float> %i.bh, %i.w
  store <8 x float> %i.bk, ptr %i.bj, align 4, !tbaa !14, !alias.scope !736, !noalias !737
  br i1 %.not.peel.i, label %.critedge.i, label %.peel.next459.i.preheader

.peel.next459.i.preheader:                        ; preds = %bb.d
  br i1 %exitcond457.not.i52, label %.critedge.i, label %.lr.ph71

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %.084215.i = phi i64 [ %i.cr, %.peel.next.i ], [ 1, %.peel.next.i.preheader ] ; 6 uses
  %i.bl = phi <8 x float> [ %i.da, %.peel.next.i ], [ %i.al, %.peel.next.i.preheader ]
  %i.bm = phi <8 x float> [ %i.cx, %.peel.next.i ], [ %i.aj, %.peel.next.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.peel.next.i ], [ 0, %.peel.next.i.preheader ]
  %i.bn = add nuw nsw i64 %.084215.i, 1           ; 2 uses
  %i.bo = and i64 %.084215.i, %.0.lcssa.i
  %.idx95.i = shl i64 %i.bo, 6
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i
  %i.bq = mul i64 %.084215.i, %2
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bq ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bp, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.br, i64 64, i1 false), !tbaa !14, !alias.scope !727, !noalias !728
  %i.bs = load <8 x float>, ptr %i.br, align 4, !tbaa !14, !alias.scope !729, !noalias !730
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bv = load <8 x float>, ptr %i.bu, align 4, !tbaa !14, !alias.scope !729, !noalias !730
  %i.bw = fadd reassoc nsz arcp contract afn <8 x float> %i.bv, %i.bl
  %i.bx = add nuw nsw i64 %.084215.i, 2           ; 2 uses
  %i.by = and i64 %i.bn, %.0.lcssa.i
  %.idx95.i.1 = shl i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.1
  %i.ca = mul i64 %i.bn, %2
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ca ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bz, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.cb, i64 64, i1 false), !tbaa !14, !alias.scope !739, !noalias !728
  %i.cc = load <8 x float>, ptr %i.cb, align 4, !tbaa !14, !alias.scope !729, !noalias !740
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %i.cc, %i.bt
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cf = load <8 x float>, ptr %i.ce, align 4, !tbaa !14, !alias.scope !729, !noalias !740
  %i.cg = fadd reassoc nsz arcp contract afn <8 x float> %i.cf, %i.bw
  %i.ch = add nuw i64 %.084215.i, 3               ; 2 uses
  %i.ci = and i64 %i.bx, %.0.lcssa.i
  %.idx95.i.2 = shl i64 %i.ci, 6
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.2
  %i.ck = mul i64 %i.bx, %2
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ck ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.cj, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.cl, i64 64, i1 false), !tbaa !14, !alias.scope !742, !noalias !728
  %i.cm = load <8 x float>, ptr %i.cl, align 4, !tbaa !14, !alias.scope !729, !noalias !743
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cd
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cp = load <8 x float>, ptr %i.co, align 4, !tbaa !14, !alias.scope !729, !noalias !743
  %i.cq = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cg
  %i.cr = add nuw i64 %.084215.i, 4               ; 2 uses
  %i.cs = and i64 %i.ch, %.0.lcssa.i
  %.idx95.i.3 = shl i64 %i.cs, 6
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.3
  %i.cu = mul i64 %i.ch, %2
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cu ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ct, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.cv, i64 64, i1 false), !tbaa !14, !alias.scope !745, !noalias !728
  %i.cw = load <8 x float>, ptr %i.cv, align 4, !tbaa !14, !alias.scope !729, !noalias !746
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %i.cn ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cz = load <8 x float>, ptr %i.cy, align 4, !tbaa !14, !alias.scope !729, !noalias !746
  %i.da = fadd reassoc nsz arcp contract afn <8 x float> %i.cz, %i.cq ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader208.i.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !571

.peel.next459.i:                                  ; preds = %.lr.ph71
  %exitcond457.not.i = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond457.not.i, label %.critedge.i, label %.lr.ph71, !llvm.loop !572

.lr.ph71:                                         ; preds = %.peel.next459.i.preheader, %.peel.next459.i
  %.085265.i70 = phi i64 [ %i.dy, %.peel.next459.i ], [ 1, %.peel.next459.i.preheader ] ; 3 uses
  %.1266.i69 = phi i64 [ %i.de, %.peel.next459.i ], [ %i.e, %.peel.next459.i.preheader ]
  %i.db = phi <8 x float> [ %i.dm, %.peel.next459.i ], [ %i.be, %.peel.next459.i.preheader ]
  %i.dc = phi <8 x float> [ %i.dp, %.peel.next459.i ], [ %i.bh, %.peel.next459.i.preheader ]
  %i.dd = add nuw i64 %.085265.i70, %3
  %i.de = add i64 %.1266.i69, 1                   ; 3 uses
  %i.df = shl i64 %i.dd, 32
  %i.dg = ashr exact i64 %i.df, 32                ; 2 uses
  %i.dh = and i64 %i.dg, %.0.lcssa.i
  %.idx94.i = shl i64 %i.dh, 6
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 %.idx94.i
  %i.dj = mul i64 %i.dg, %2
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dj ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.dk, i64 64, i1 false), !tbaa !14, !alias.scope !748, !noalias !749
  %i.dl = load <8 x float>, ptr %i.dk, align 4, !tbaa !14, !alias.scope !750, !noalias !751
  %i.dm = fadd reassoc nsz arcp contract afn <8 x float> %i.dl, %i.db ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.do = load <8 x float>, ptr %i.dn, align 4, !tbaa !14, !alias.scope !750, !noalias !751
  %i.dp = fadd reassoc nsz arcp contract afn <8 x float> %i.do, %i.dc ; 4 uses
  %i.dq = mul i64 %.085265.i70, %2
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dq ; 2 uses
  %i.ds = uitofp reassoc nsz arcp contract afn i64 %i.de to float
  %i.dt = insertelement <8 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <8 x float> %i.dt, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dv = fdiv reassoc nsz arcp contract afn <8 x float> %i.dm, %i.du
  store <8 x float> %i.dv, ptr %i.dr, align 4, !tbaa !14, !alias.scope !736, !noalias !737
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dx = fdiv reassoc nsz arcp contract afn <8 x float> %i.dp, %i.du
  store <8 x float> %i.dx, ptr %i.dw, align 4, !tbaa !14, !alias.scope !736, !noalias !737
  %i.dy = add i64 %.085265.i70, 1                 ; 4 uses
  %.not.i = icmp ugt i64 %i.dy, %3
  br i1 %.not.i, label %..critedge.i.loopexit_crit_edge, label %.peel.next459.i, !llvm.loop !572

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph71
  br label %.critedge.i, !llvm.loop !572

.critedge.i:                                      ; preds = %.peel.next459.i, %.peel.next459.i.preheader, %..critedge.i.loopexit_crit_edge, %bb.d, %.preheader208.i
end_hunk_0
begin_hunk_1_@dt_box_max:bb.a
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op481 ; 4 uses
  %i.tr = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.tr, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %i.ts = add i64 %umin.i115.i, %i.tl             ; 3 uses
  %min.iters.check319 = icmp ult i64 %i.ts, 32
  br i1 %min.iters.check319, label %.lr.ph66.i.i.preheader354, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec321 = and i64 %i.ts, -32                  ; 3 uses
  %broadcast.splatinsert324 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat325 = shufflevector <8 x i64> %broadcast.splatinsert324, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction326 = add nuw nsw <8 x i64> %broadcast.splat325, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph320
  %index328 = phi i64 [ 0, %vector.ph320 ], [ %index.next343, %vector.body327 ] ; 2 uses
  %vec.ind329 = phi <8 x i64> [ %induction326, %vector.ph320 ], [ %vec.ind.next344, %vector.body327 ] ; 5 uses
  %vec.phi330 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.ub, %vector.body327 ] ; 2 uses
  %vec.phi331 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.uc, %vector.body327 ] ; 2 uses
  %vec.phi332 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.ud, %vector.body327 ] ; 2 uses
  %vec.phi333 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.ue, %vector.body327 ] ; 2 uses
  %step.add334 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 24)
  %i.tt = and <8 x i64> %vec.ind329, %broadcast.splat323
  %i.tu = and <8 x i64> %step.add334, %broadcast.splat323
  %i.tv = and <8 x i64> %step.add.2, %broadcast.splat323
  %i.tw = and <8 x i64> %step.add.3, %broadcast.splat323
  %wide.gep335 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tt
  %wide.gep336 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tu
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tv
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tw
  %wide.masked.gather339 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep335, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather340 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep336, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather341 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather342 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %i.tx = freeze <8 x float> %wide.masked.gather339 ; 2 uses
  %i.ty = freeze <8 x float> %wide.masked.gather340 ; 2 uses
  %i.tz = freeze <8 x float> %wide.masked.gather341 ; 2 uses
  %i.ua = freeze <8 x float> %wide.masked.gather342 ; 2 uses
  %i.ub = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.tx) ; 2 uses
  %i.uc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.ty) ; 2 uses
  %i.ud = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332, <8 x float> %i.tz) ; 2 uses
  %i.ue = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi333, <8 x float> %i.ua) ; 2 uses
  %index.next343 = add nuw i64 %index328, 32      ; 2 uses
  %i.uf = fcmp uno <8 x float> %i.tx, %i.ty
  %i.ug = fcmp uno <8 x float> %i.tz, %i.ua
  %i.uh = or <8 x i1> %i.uf, %i.ug
  %i.ui = bitcast <8 x i1> %i.uh to i8
  %i.uj = icmp ne i8 %i.ui, 0                     ; 7 uses
  %i.uk = icmp eq i64 %index.next343, %n.vec321
  %i.ul = or i1 %i.uj, %i.uk
  %vec.ind.next344 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 32)
  br i1 %i.ul, label %middle.block345, label %vector.body327, !llvm.loop !1067

middle.block345:                                  ; preds = %vector.body327
  %i.um = select i1 %i.uj, <8 x float> %vec.phi330, <8 x float> %i.ub
  %i.un = select i1 %i.uj, <8 x float> %vec.phi331, <8 x float> %i.uc
  %i.uo = select i1 %i.uj, <8 x float> %vec.phi332, <8 x float> %i.ud
  %i.up = select i1 %i.uj, <8 x float> %vec.phi333, <8 x float> %i.ue
  %i.uq = select i1 %i.uj, i64 %index328, i64 %n.vec321
  %rdx.minmax346 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.um, <8 x float> %i.un)
  %rdx.minmax347 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax346, <8 x float> %i.uo)
  %rdx.minmax348 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax347, <8 x float> %i.up)
  %i.ur = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax348) ; 2 uses
  %i.us = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.uq
  %cmp.n349 = icmp ne i64 %i.ts, %n.vec321
  %.not353 = or i1 %cmp.n349, %i.uj
  br i1 %.not353, label %.lr.ph66.i.i.preheader354, label %.loopexit.i120.i

.lr.ph66.i.i.preheader354:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block345
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.us, %middle.block345 ]
  %.sroa.0.364.i.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.ur, %middle.block345 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader354, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader354 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.uw, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader354 ]
  %i.ut = and i64 %.065.i.i, %i.mx
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ut
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !14, !alias.scope !1125, !noalias !1107
  %i.uw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.364.i.i, float %i.uv) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !1068

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block345, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0xFF7FFFFF, %bb.p ], [ %i.ur, %middle.block345 ], [ %i.uw, %.lr.ph66.i.i ] ; 2 uses
  %i.ux = icmp samesign ult i64 %.pre.i117.i, %i.nb
  br i1 %i.ux, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.uy = and i64 %.pre.i117.i, %i.mx
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.uy
  %i.va = mul i64 %.pre.i117.i, %2
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.va
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !14, !alias.scope !1128, !noalias !1129 ; 2 uses
  store float %i.vc, ptr %i.uz, align 4, !tbaa !14, !alias.scope !1129, !noalias !1128
  %i.vd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.4.i.i, float %i.vc)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.vd, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.ve = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.ve, %i.nb
  br i1 %exitcond75.not.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1072

_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.vf = add nuw i64 %.1187.i, 1                 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %i.vf, %2
  br i1 %exitcond239.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1073

._crit_edge.i:                                    ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_max_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__FUNCTION__.dt_box_max)
  unreachable

_ZL12_box_max_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb0EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull captures(none) %4) unnamed_addr #2 {
bb.a:
  %.not123 = icmp eq i64 %2, 0
  br i1 %.not123, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not228.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 20 uses
  %.not229.i = icmp eq i64 %i.c, 0                ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 9 uses
  %i.e = xor i64 %3, -1                           ; 8 uses
  %i.f = sub i64 %1, %3                           ; 8 uses
  %i.g = and i64 %2, -4                           ; 2 uses
  %i.h = xor i64 %3, -1
  %i.i = add i64 %1, %i.h
  %i.j = xor i64 %3, -1
  %i.k = add i64 %1, %i.j
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  %exitcond281.not.i50.not = icmp ugt i64 %1, %3
  %xtraiter237 = and i64 %i.c, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.c, 4
  %unroll_iter244 = and i64 %i.c, -4
  %lcmp.mod241.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod243 = icmp ne i64 %xtraiter237, 0
  %exitcond166.not.i106.not = icmp ugt i64 %1, %3
  %min.iters.check145 = icmp ugt i64 %i.c, 3
  %ident.check144.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check145, %ident.check144.not
  %min.iters.check147 = icmp ult i64 %i.c, 32
  %i.n = and i64 %i.c, 28
  %n.vec149 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n167 = icmp eq i64 %i.c, %n.vec149
  %min.epilog.iters.check172 = icmp eq i64 %i.n, 0
  %n.vec174 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n188 = icmp eq i64 %i.c, %n.vec174
  %xtraiter250 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %exitcond134.not.i123.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph122, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit
  %.031121 = phi i64 [ 0, %.lr.ph122 ], [ %i.o, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit ] ; 5 uses
  %i.o = add i64 %.031121, 16                     ; 3 uses
  %.not = icmp ugt i64 %i.o, %2
  br i1 %.not, label %.preheader69, label %bb.c

.preheader69:                                     ; preds = %bb.b
  %i.p = icmp ult i64 %.031121, %i.g
  br i1 %i.p, label %.lr.ph, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.031121 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  br i1 %.not228.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.s, %.lr.ph.i ] ; 9 uses
  br i1 %.not229.i, label %.preheader97.i, label %.lr.ph104.i.preheader

.lr.ph104.i.preheader:                            ; preds = %._crit_edge.i
  br i1 %i.l, label %.lr.ph104.i.epil.preheader, label %.lr.ph104.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0100.i = phi i64 [ %i.s, %.lr.ph.i ], [ 1, %bb.c ]
  %.08299.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.r = shl i64 %.0100.i, 1
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = lshr i64 %.08299.i, 1
  %i.u = icmp ugt i64 %.08299.i, 3
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1133

.preheader97.i.loopexit.unr-lcssa:                ; preds = %.lr.ph104.i
  %i.v = shufflevector <16 x float> %i.bo, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.w = shufflevector <16 x float> %i.bo, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.x = shufflevector <16 x float> %i.bo, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br i1 %lcmp.mod.not, label %.preheader97.i, label %.lr.ph104.i.epil.preheader

.lr.ph104.i.epil.preheader:                       ; preds = %.preheader97.i.loopexit.unr-lcssa, %.lr.ph104.i.preheader
  %.084103.i.epil.init = phi i64 [ 0, %.lr.ph104.i.preheader ], [ %i.bi, %.preheader97.i.loopexit.unr-lcssa ]
  %.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph104.i.preheader ], [ %i.bo, %.preheader97.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph104.i.epil

.lr.ph104.i.epil:                                 ; preds = %.lr.ph104.i.epil, %.lr.ph104.i.epil.preheader
  %.084103.i.epil = phi i64 [ %i.z, %.lr.ph104.i.epil ], [ %.084103.i.epil.init, %.lr.ph104.i.epil.preheader ] ; 3 uses
  %i.y = phi <16 x float> [ %i.af, %.lr.ph104.i.epil ], [ %.epil.init, %.lr.ph104.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph104.i.epil ], [ 0, %.lr.ph104.i.epil.preheader ]
  %i.z = add nuw i64 %.084103.i.epil, 1
  %i.aa = and i64 %.084103.i.epil, %.0.lcssa.i
  %.idx95.i.epil = shl i64 %i.aa, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.epil
  %i.ac = mul i64 %.084103.i.epil, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ab, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ad, i64 64, i1 false), !tbaa !14, !alias.scope !1271, !noalias !1272
  %i.ae = load <16 x float>, ptr %i.ad, align 4, !tbaa !14, !alias.scope !1273, !noalias !1274
  %i.af = fadd reassoc nsz arcp contract afn <16 x float> %i.ae, %i.y ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader97.i.loopexit.epilog-lcssa, label %.lr.ph104.i.epil, !llvm.loop !1138

.preheader97.i.loopexit.epilog-lcssa:             ; preds = %.lr.ph104.i.epil
  %i.ag = shufflevector <16 x float> %i.af, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <16 x float> %i.af, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <16 x float> %i.af, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.preheader97.i

.preheader97.i:                                   ; preds = %.preheader97.i.loopexit.epilog-lcssa, %.preheader97.i.loopexit.unr-lcssa, %._crit_edge.i
  %i.aj = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.x, %.preheader97.i.loopexit.unr-lcssa ], [ %i.ai, %.preheader97.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.ak = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.w, %.preheader97.i.loopexit.unr-lcssa ], [ %i.ah, %.preheader97.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.al = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.v, %.preheader97.i.loopexit.unr-lcssa ], [ %i.ag, %.preheader97.i.loopexit.epilog-lcssa ] ; 2 uses
  br i1 %exitcond281.not.i50.not, label %.lr.ph69, label %.critedge.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i.preheader, %.lr.ph104.i
  %.084103.i = phi i64 [ %i.bi, %.lr.ph104.i ], [ 0, %.lr.ph104.i.preheader ] ; 6 uses
  %i.am = phi <16 x float> [ %i.bo, %.lr.ph104.i ], [ zeroinitializer, %.lr.ph104.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph104.i ], [ 0, %.lr.ph104.i.preheader ]
  %i.an = or disjoint i64 %.084103.i, 1           ; 2 uses
  %i.ao = and i64 %.084103.i, %.0.lcssa.i
  %.idx95.i = shl i64 %i.ao, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i
  %i.aq = mul i64 %.084103.i, %2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ap, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ar, i64 64, i1 false), !tbaa !14, !alias.scope !1271, !noalias !1272
  %i.as = load <16 x float>, ptr %i.ar, align 4, !tbaa !14, !alias.scope !1273, !noalias !1274
  %i.at = fadd reassoc nsz arcp contract afn <16 x float> %i.as, %i.am
  %i.au = or disjoint i64 %.084103.i, 2           ; 2 uses
  %i.av = and i64 %i.an, %.0.lcssa.i
  %.idx95.i.1 = shl i64 %i.av, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.1
  %i.ax = mul i64 %i.an, %2
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aw, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ay, i64 64, i1 false), !tbaa !14, !alias.scope !1276, !noalias !1272
  %i.az = load <16 x float>, ptr %i.ay, align 4, !tbaa !14, !alias.scope !1273, !noalias !1277
  %i.ba = fadd reassoc nsz arcp contract afn <16 x float> %i.az, %i.at
  %i.bb = or disjoint i64 %.084103.i, 3           ; 2 uses
  %i.bc = and i64 %i.au, %.0.lcssa.i
  %.idx95.i.2 = shl i64 %i.bc, 6
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.2
  %i.be = mul i64 %i.au, %2
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.be ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bd, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bf, i64 64, i1 false), !tbaa !14, !alias.scope !1279, !noalias !1272
  %i.bg = load <16 x float>, ptr %i.bf, align 4, !tbaa !14, !alias.scope !1273, !noalias !1280
  %i.bh = fadd reassoc nsz arcp contract afn <16 x float> %i.bg, %i.ba
  %i.bi = add nuw i64 %.084103.i, 4               ; 2 uses
  %i.bj = and i64 %i.bb, %.0.lcssa.i
  %.idx95.i.3 = shl i64 %i.bj, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %.idx95.i.3
  %i.bl = mul i64 %i.bb, %2
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bm, i64 64, i1 false), !tbaa !14, !alias.scope !1282, !noalias !1272
  %i.bn = load <16 x float>, ptr %i.bm, align 4, !tbaa !14, !alias.scope !1273, !noalias !1283
  %i.bo = fadd reassoc nsz arcp contract afn <16 x float> %i.bn, %i.bh ; 5 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader97.i.loopexit.unr-lcssa, label %.lr.ph104.i, !llvm.loop !1142

bb.d:                                             ; preds = %.lr.ph69
  %exitcond281.not.i = icmp eq i64 %i.cr, %i.d
  br i1 %exitcond281.not.i, label %.critedge.i, label %.lr.ph69, !llvm.loop !1143

.lr.ph69:                                         ; preds = %.preheader97.i, %bb.d
  %.085137.i68 = phi i64 [ %i.cr, %bb.d ], [ 0, %.preheader97.i ] ; 3 uses
  %.1138.i67 = phi i64 [ %i.bt, %bb.d ], [ %i.c, %.preheader97.i ]
  %i.bp = phi <8 x float> [ %i.ch, %bb.d ], [ %i.aj, %.preheader97.i ]
  %i.bq = phi <4 x float> [ %i.cb, %bb.d ], [ %i.ak, %.preheader97.i ]
  %i.br = phi <4 x float> [ %i.ce, %bb.d ], [ %i.al, %.preheader97.i ]
  %i.bs = add nuw i64 %.085137.i68, %3
  %i.bt = add i64 %.1138.i67, 1                   ; 3 uses
  %i.bu = shl i64 %i.bs, 32
  %i.bv = ashr exact i64 %i.bu, 32                ; 2 uses
  %i.bw = and i64 %i.bv, %.0.lcssa.i
  %.idx94.i = shl i64 %i.bw, 6
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %.idx94.i
  %i.by = mul i64 %i.bv, %2
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bx, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bz, i64 64, i1 false), !tbaa !14, !alias.scope !1285, !noalias !1286
  %i.ca = load <4 x float>, ptr %i.bz, align 4, !tbaa !14, !alias.scope !1287, !noalias !1288
  %i.cb = fadd reassoc nsz arcp contract afn <4 x float> %i.ca, %i.bq ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 4, !tbaa !14, !alias.scope !1287, !noalias !1288
  %i.ce = fadd reassoc nsz arcp contract afn <4 x float> %i.cd, %i.br ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load <8 x float>, ptr %i.cf, align 4, !tbaa !14, !alias.scope !1287, !noalias !1288
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cg, %i.bp ; 4 uses
  %i.ci = mul i64 %.085137.i68, %2
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ci ; 2 uses
  %i.ck = uitofp reassoc nsz arcp contract afn i64 %i.bt to float
  %i.cl = shufflevector <4 x float> %i.cb, <4 x float> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = insertelement <8 x float> poison, float %i.ck, i64 0
  %i.cn = shufflevector <8 x float> %i.cm, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.cl, %i.cn
  store <8 x float> %i.co, ptr %i.cj, align 4, !tbaa !14, !alias.scope !1289, !noalias !1290
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cq = fdiv reassoc nsz arcp contract afn <8 x float> %i.ch, %i.cn
  store <8 x float> %i.cq, ptr %i.cp, align 4, !tbaa !14, !alias.scope !1289, !noalias !1290
  %i.cr = add i64 %.085137.i68, 1                 ; 4 uses
  %.not.i = icmp ugt i64 %i.cr, %3
  br i1 %.not.i, label %..critedge.i_crit_edge, label %bb.d, !llvm.loop !1143

..critedge.i_crit_edge:                           ; preds = %.lr.ph69
  br label %.critedge.i, !llvm.loop !1143

.critedge.i:                                      ; preds = %bb.d, %..critedge.i_crit_edge, %.preheader97.i
  %.085.lcssa.i = phi i64 [ %i.cr, %..critedge.i_crit_edge ], [ %i.d, %.preheader97.i ], [ %i.d, %bb.d ] ; 4 uses
  %.1.lcssa.i = phi i64 [ %i.bt, %..critedge.i_crit_edge ], [ %1, %.preheader97.i ], [ %1, %bb.d ] ; 3 uses
  %i.cs = phi <8 x float> [ %i.ch, %..critedge.i_crit_edge ], [ %i.aj, %.preheader97.i ], [ %i.ch, %bb.d ] ; 2 uses
  %i.ct = phi <4 x float> [ %i.cb, %..critedge.i_crit_edge ], [ %i.ak, %.preheader97.i ], [ %i.cb, %bb.d ] ; 3 uses
  %i.cu = phi <4 x float> [ %i.ce, %..critedge.i_crit_edge ], [ %i.al, %.preheader97.i ], [ %i.ce, %bb.d ] ; 3 uses
  %i.cv = icmp ule i64 %.085.lcssa.i, %3
  %i.cw = icmp ult i64 %.085.lcssa.i, %1
  %i.cx = and i1 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph155.i, label %.preheader96.i

.lr.ph155.i:                                      ; preds = %.critedge.i
  %i.cy = uitofp reassoc nsz arcp contract afn i64 %.1.lcssa.i to float
  %i.cz = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = insertelement <8 x float> poison, float %i.cy, i64 0
  %i.db = shufflevector <8 x float> %i.da, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = fdiv reassoc nsz arcp contract afn <8 x float> %i.cz, %i.db
  %i.dd = fdiv reassoc nsz arcp contract afn <8 x float> %i.cs, %i.db
  br label %bb.e

.preheader96.i:                                   ; preds = %bb.e, %.critedge.i
  %.186.lcssa.i = phi i64 [ %.085.lcssa.i, %.critedge.i ], [ %i.dt, %bb.e ] ; 3 uses
  %i.de = add i64 %.186.lcssa.i, %3               ; 2 uses
  %i.df = icmp ult i64 %i.de, %1
  %i.dg = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = shufflevector <8 x float> %i.cs, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.di = shufflevector <16 x float> %i.dg, <16 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  br i1 %i.df, label %.lr.ph159.i, label %.preheader.i

.lr.ph159.i:                                      ; preds = %.preheader96.i
  %i.dj = uitofp reassoc nsz arcp contract afn i64 %.1.lcssa.i to float
  %i.dk = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <16 x float> %i.dk, <16 x float> %i.dh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dm = insertelement <8 x float> poison, float %i.dj, i64 0
end_hunk_1
