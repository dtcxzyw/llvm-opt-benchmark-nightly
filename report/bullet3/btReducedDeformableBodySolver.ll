inline.NumInlined: 765
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN15btReducedVectoraSERKS_:bb.a
.lr.ph.i.i.i.i16:                                 ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count.i.i.i.i17 = zext nneg i32 %i.co to i64 ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count.i.i.i.i17, 1
  %i.cr = icmp eq i32 %i.co, 1
  br i1 %i.cr, label %.epil.preheader, label %.lr.ph.i.i.i.i16.new

.lr.ph.i.i.i.i16.new:                             ; preds = %.lr.ph.i.i.i.i16
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i17, 2147483646
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i16.new
  %indvars.iv.i.i.i.i18 = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %indvars.iv.next.i.i.i.i19.1, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i16.new ], [ %niter.next.1, %bb.j ]
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19 = or disjoint i64 %indvars.iv.i.i.i.i18, 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.next.i.i.i.i19
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i.i19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cv, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i.i.i.i19.1 = add nuw nsw i64 %indvars.iv.i.i.i.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.j, !llvm.loop !52

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i16
  %indvars.iv.i.i.i.i18.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i16 ], [ %indvars.iv.next.i.i.i.i19.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i14, i64 %indvars.iv.i.i.i.i18.epil.init
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i.i18.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !50
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %.not.i5.i.i.i15 = icmp eq ptr %i.dc, null
  br i1 %.not.i5.i.i.i15, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !30, !range !34, !noundef !46
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.l, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dc)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i: ; preds = %bb.l, %bb.k, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.dg, align 8, !tbaa !30
  store ptr %.0.i.i.i.i14, ptr %i.db, align 8, !tbaa !31
  store i32 %i.ce, ptr %i.ci, align 8, !tbaa !33
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i.i, %bb.g, %_ZN20btAlignedObjectArrayIiE13copyFromArrayERKS0_.exit
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 3 uses
  %i.dj = icmp sgt i32 %i.ce, 0
  br i1 %i.dj, label %.lr.ph.i4.i7, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit

.lr.ph.i4.i7:                                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %wide.trip.count.i5.i8 = zext nneg i32 %i.ce to i64 ; 2 uses
  %xtraiter56 = and i64 %wide.trip.count.i5.i8, 1
  %i.dl = icmp eq i32 %i.ce, 1
  br i1 %i.dl, label %.epil.preheader55, label %.lr.ph.i4.i7.new

.lr.ph.i4.i7.new:                                 ; preds = %.lr.ph.i4.i7
  %unroll_iter59 = and i64 %wide.trip.count.i5.i8, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i4.i7.new
  %indvars.iv.i6.i9 = phi i64 [ 0, %.lr.ph.i4.i7.new ], [ %indvars.iv.next.i7.i10.1, %bb.m ] ; 4 uses
  %niter60 = phi i64 [ 0, %.lr.ph.i4.i7.new ], [ %niter60.next.1, %bb.m ]
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv.i6.i9
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %indvars.iv.i6.i9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 4 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i7.i10 = or disjoint i64 %indvars.iv.i6.i9, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv.next.i7.i10
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %indvars.iv.next.i7.i10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !50
  %indvars.iv.next.i7.i10.1 = add nuw nsw i64 %indvars.iv.i6.i9, 2 ; 2 uses
  %niter60.next.1 = add i64 %niter60, 2           ; 2 uses
  %niter60.ncmp.1 = icmp eq i64 %niter60.next.1, %unroll_iter59
  br i1 %niter60.ncmp.1, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit.loopexit.unr-lcssa, label %bb.m, !llvm.loop !52

_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit.loopexit.unr-lcssa: ; preds = %bb.m
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit, label %.epil.preheader55

.epil.preheader55:                                ; preds = %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit.loopexit.unr-lcssa, %.lr.ph.i4.i7
  %indvars.iv.i6.i9.epil.init = phi i64 [ 0, %.lr.ph.i4.i7 ], [ %indvars.iv.next.i7.i10.1, %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %indvars.iv.i6.i9.epil.init
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %indvars.iv.i6.i9.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !50
  br label %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit

_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit: ; preds = %.epil.preheader55, %_ZN20btAlignedObjectArrayI9btVector3E13copyFromArrayERKS1_.exit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit.i, %bb.a
  ret ptr %0
}

declare void @_ZN15btReducedVector9normalizeEv(ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN21btModifiedGramSchmidtI15btReducedVectorE4testEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef f0x3E80000000000000) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #21
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !105
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !110
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK15btReducedVector5printEv.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %puts28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.v = load i32, ptr %i.r, align 4, !tbaa !16
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph110, label %._crit_edge115

.lr.ph110:                                        ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph, %_ZNK15btReducedVector5printEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK15btReducedVector5printEv.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i, label %_ZNK15btReducedVector5printEv.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !68
  %i.al = fpext float %i.ak to double
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %1 = load <2 x float>, ptr %i.am, align 4, !tbaa !68
  %2 = fpext <2 x float> %1 to <2 x double>       ; 2 uses
  %3 = extractelement <2 x double> %2, i64 0
  %4 = extractelement <2 x double> %2, i64 1
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ah, double noundef %i.al, double noundef %3, double noundef %4) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next.i, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNK15btReducedVector5printEv.exit, !llvm.loop !111

_ZNK15btReducedVector5printEv.exit:               ; preds = %bb.f, %bb.e
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.r, align 4, !tbaa !16
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.e, label %._crit_edge, !llvm.loop !112

.preheader94:                                     ; preds = %_ZNK15btReducedVector5printEv.exit33
  %i.au = icmp sgt i32 %i.bp, 0
  br i1 %i.au, label %.preheader.preheader, label %._crit_edge115

.preheader.preheader:                             ; preds = %.preheader94
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.preheader

bb.g:                                             ; preds = %.lr.ph110, %_ZNK15btReducedVector5printEv.exit33
  %indvars.iv129 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next130, %_ZNK15btReducedVector5printEv.exit33 ] ; 2 uses
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %indvars.iv129 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i30, label %_ZNK15btReducedVector5printEv.exit33

.lr.ph.i30:                                       ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i30
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i30 ], [ %indvars.iv.next.i32, %bb.h ] ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i31
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !39
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i31 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !68
  %i.bj = fpext float %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %5 = load <2 x float>, ptr %i.bk, align 4, !tbaa !68
  %6 = fpext <2 x float> %5 to <2 x double>       ; 2 uses
  %7 = extractelement <2 x double> %6, i64 0
  %8 = extractelement <2 x double> %6, i64 1
  %i.bl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.bf, double noundef %i.bj, double noundef %7, double noundef %8) ; 0 uses
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.bm = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next.i32, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZNK15btReducedVector5printEv.exit33, !llvm.loop !111

_ZNK15btReducedVector5printEv.exit33:             ; preds = %bb.h, %bb.g
  %putchar.i29 = tail call i32 @putchar(i32 10)   ; 0 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !16  ; 3 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next130, %i.bq
  br i1 %i.br, label %bb.g, label %.preheader94, !llvm.loop !113

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge113
  %i.bs = phi i32 [ %i.bp, %.preheader.preheader ], [ %i.bw, %._crit_edge113 ] ; 3 uses
  %indvars.iv135 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next136, %._crit_edge113 ] ; 5 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph112, label %.preheader.._crit_edge113_crit_edge

.preheader.._crit_edge113_crit_edge:              ; preds = %.preheader
  %.pre = sext i32 %i.bs to i64
  br label %._crit_edge113

.lr.ph112:                                        ; preds = %.preheader
  %i.bu = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.bv = trunc nuw nsw i64 %indvars.iv135 to i32
  br label %bb.i

._crit_edge115:                                   ; preds = %._crit_edge113, %._crit_edge, %.preheader94
  ret void

._crit_edge113:                                   ; preds = %_ZNK15btReducedVector3dotERKS_.exit72.thread, %.preheader.._crit_edge113_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge113_crit_edge ], [ %i.hb, %_ZNK15btReducedVector3dotERKS_.exit72.thread ]
  %i.bw = phi i32 [ %i.bs, %.preheader.._crit_edge113_crit_edge ], [ %i.ha, %_ZNK15btReducedVector3dotERKS_.exit72.thread ]
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bx = icmp slt i64 %indvars.iv.next136, %.pre-phi
  br i1 %i.bx, label %.preheader, label %._crit_edge115, !llvm.loop !114

bb.i:                                             ; preds = %.lr.ph112, %_ZNK15btReducedVector3dotERKS_.exit72.thread
  %indvars.iv132 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next133, %_ZNK15btReducedVector3dotERKS_.exit72.thread ] ; 4 uses
  %i.by = icmp eq i64 %indvars.iv135, %indvars.iv132
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %indvars.iv135 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28 ; 9 uses
  %i.cd = icmp sgt i32 %i.cc, 0                   ; 2 uses
  br i1 %i.by, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  br i1 %i.cd, label %.preheader.lr.ph.i, label %_ZNK15btReducedVector3dotERKS_.exit54

.preheader.lr.ph.i:                               ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8            ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.cc to i64 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.lr.ph.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next32.i, %.critedge.i ] ; 3 uses
  %.01825.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.122.i, %.critedge.i ] ; 3 uses
  %.01924.i = phi float [ 0.000000e+00, %.preheader.lr.ph.i ], [ %.120.i, %.critedge.i ] ; 4 uses
  %i.ci = icmp slt i32 %.01825.i, %i.cc
  br i1 %i.ci, label %.lr.ph.i34, label %.critedge.i

.lr.ph.i34:                                       ; preds = %.preheader.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv31.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !39 ; 2 uses
  %i.cl = sext i32 %.01825.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ %i.cl, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.l ] ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv.i35
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !39 ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.ck
  br i1 %i.co, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i36 to i32
  %exitcond.not.i = icmp eq i32 %i.cc, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.k, !llvm.loop !116

bb.m:                                             ; preds = %bb.k
  %i.cp = trunc nsw i64 %indvars.iv.i35 to i32    ; 2 uses
  %i.cq = icmp eq i32 %i.cn, %i.ck
  br i1 %i.cq, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv31.i ; 3 uses
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %indvars.iv.i35 ; 3 uses
  %i.ct = load float, ptr %i.cr, align 4, !tbaa !68
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !68
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !68
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !68
  %i.cz = fmul float %i.cw, %i.cy
  %i.da = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = load float, ptr %i.dd, align 4, !tbaa !68
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.de, float %i.da)
  %i.dg = fadd float %.01924.i, %i.df
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.n, %bb.m, %.preheader.i
  %.122.i = phi i32 [ %i.cp, %bb.n ], [ %i.cp, %bb.m ], [ %.01825.i, %.preheader.i ], [ %i.cc, %bb.l ]
  %.120.i = phi float [ %i.dg, %bb.n ], [ %.01924.i, %bb.m ], [ %.01924.i, %.preheader.i ], [ %.01924.i, %bb.l ] ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count.i
  br i1 %exitcond34.not.i, label %_ZNK15btReducedVector3dotERKS_.exit, label %.preheader.i, !llvm.loop !117

_ZNK15btReducedVector3dotERKS_.exit:              ; preds = %.critedge.i
  %i.dh = fpext float %.120.i to double
  %i.di = fsub double 1.000000e+00, %i.dh
  %i.dj = tail call noundef double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp ogt double %i.dj, f0x3E80000000000000
  br i1 %i.dk, label %.preheader.i40, label %_ZNK15btReducedVector3dotERKS_.exit72.thread

.preheader.i40:                                   ; preds = %_ZNK15btReducedVector3dotERKS_.exit, %.critedge.i44
  %indvars.iv31.i41 = phi i64 [ %indvars.iv.next32.i47, %.critedge.i44 ], [ 0, %_ZNK15btReducedVector3dotERKS_.exit ] ; 3 uses
  %.01825.i42 = phi i32 [ %.122.i45, %.critedge.i44 ], [ 0, %_ZNK15btReducedVector3dotERKS_.exit ] ; 3 uses
  %.01924.i43 = phi float [ %.120.i46, %.critedge.i44 ], [ 0.000000e+00, %_ZNK15btReducedVector3dotERKS_.exit ] ; 4 uses
  %i.dl = icmp slt i32 %.01825.i42, %i.cc
  br i1 %i.dl, label %.lr.ph.i49, label %.critedge.i44

.lr.ph.i49:                                       ; preds = %.preheader.i40
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv31.i41
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !39 ; 2 uses
  %i.do = sext i32 %.01825.i42 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ %i.do, %.lr.ph.i49 ], [ %indvars.iv.next.i51, %bb.p ] ; 4 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv.i50
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !39 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, %i.dn
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i51 = add nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %lftr.wideiv.i52 = trunc i64 %indvars.iv.next.i51 to i32
  %exitcond.not.i53 = icmp eq i32 %i.cc, %lftr.wideiv.i52
  br i1 %exitcond.not.i53, label %.critedge.i44, label %bb.o, !llvm.loop !116

bb.q:                                             ; preds = %bb.o
  %i.ds = trunc nsw i64 %indvars.iv.i50 to i32    ; 2 uses
  %i.dt = icmp eq i32 %i.dq, %i.dn
  br i1 %i.dt, label %bb.r, label %.critedge.i44

bb.r:                                             ; preds = %bb.q
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv31.i41 ; 3 uses
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %indvars.iv.i50 ; 3 uses
  %i.dw = load float, ptr %i.du, align 4, !tbaa !68
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !68
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !68
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68
  %i.ec = fmul float %i.dz, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !68
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !68
  %i.ei = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.eh, float %i.ed)
  %i.ej = fadd float %.01924.i43, %i.ei
  br label %.critedge.i44

.critedge.i44:                                    ; preds = %bb.p, %bb.r, %bb.q, %.preheader.i40
  %.122.i45 = phi i32 [ %i.ds, %bb.r ], [ %i.ds, %bb.q ], [ %.01825.i42, %.preheader.i40 ], [ %i.cc, %bb.p ]
  %.120.i46 = phi float [ %i.ej, %bb.r ], [ %.01924.i43, %bb.q ], [ %.01924.i43, %.preheader.i40 ], [ %.01924.i43, %bb.p ] ; 2 uses
  %indvars.iv.next32.i47 = add nuw nsw i64 %indvars.iv31.i41, 1 ; 2 uses
  %exitcond34.not.i48 = icmp eq i64 %indvars.iv.next32.i47, %wide.trip.count.i
  br i1 %exitcond34.not.i48, label %_ZNK15btReducedVector3dotERKS_.exit54.loopexit, label %.preheader.i40, !llvm.loop !117

_ZNK15btReducedVector3dotERKS_.exit54.loopexit:   ; preds = %.critedge.i44
  %i.ek = fpext float %.120.i46 to double
  br label %_ZNK15btReducedVector3dotERKS_.exit54

_ZNK15btReducedVector3dotERKS_.exit54:            ; preds = %_ZNK15btReducedVector3dotERKS_.exit54.loopexit, %bb.j
  %.019.lcssa.i37 = phi double [ 0.000000e+00, %bb.j ], [ %i.ek, %_ZNK15btReducedVector3dotERKS_.exit54.loopexit ]
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bv, double noundef %.019.lcssa.i37) ; 0 uses
  br label %_ZNK15btReducedVector3dotERKS_.exit72.thread

bb.s:                                             ; preds = %bb.i
  br i1 %i.cd, label %.preheader.lr.ph.i56, label %_ZNK15btReducedVector3dotERKS_.exit72.thread

.preheader.lr.ph.i56:                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %indvars.iv132 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !28 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
end_hunk_0
