Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ScopeTransformations?download=true
inline.NumInlined: 356
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_:bb.a
  br i1 %.not.i42.1, label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit", label %.lr.ph.i

"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit": ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %._crit_edge65
  %.011.lcssa.i = phi ptr [ null, %._crit_edge65 ], [ %spec.select.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i ] ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #10 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !13 ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %.idx.i43 = shl nuw nsw i64 %i.cc, 3            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx.i43
  %.not1.i44 = icmp eq i32 %i.cb, 0
  br i1 %.not1.i44, label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53.thread", label %.lr.ph.i45.preheader

.lr.ph.i45.preheader:                             ; preds = %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit"
  %i.ce = add nsw i64 %.idx.i43, -8               ; 2 uses
  %i.cf = and i64 %i.ce, 8
  %lcmp.mod79.not.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod79.not.not, label %.lr.ph.i45.prol, label %.lr.ph.i45.prol.loopexit

.lr.ph.i45.prol:                                  ; preds = %.lr.ph.i45.preheader
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !33
  %i.cj = add i8 %i.ci, -5
  %i.ck = icmp ult i8 %i.cj, 11
  %spec.select.i.i48.prol = select i1 %i.ck, ptr %i.cg, ptr null ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  br label %.lr.ph.i45.prol.loopexit

.lr.ph.i45.prol.loopexit:                         ; preds = %.lr.ph.i45.prol, %.lr.ph.i45.preheader
  %spec.select.i50.lcssa.unr = phi ptr [ poison, %.lr.ph.i45.preheader ], [ %spec.select.i.i48.prol, %.lr.ph.i45.prol ]
  %.03.i46.unr = phi ptr [ %i.bz, %.lr.ph.i45.preheader ], [ %i.cl, %.lr.ph.i45.prol ]
  %.0112.i47.unr = phi ptr [ null, %.lr.ph.i45.preheader ], [ %spec.select.i.i48.prol, %.lr.ph.i45.prol ]
  %i.cm = icmp eq i64 %i.ce, 0
  br i1 %i.cm, label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53", label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %.lr.ph.i45.prol.loopexit, %.lr.ph.i45
  %.03.i46 = phi ptr [ %i.cy, %.lr.ph.i45 ], [ %.03.i46.unr, %.lr.ph.i45.prol.loopexit ] ; 3 uses
  %.0112.i47 = phi ptr [ %spec.select.i50.1, %.lr.ph.i45 ], [ %.0112.i47.unr, %.lr.ph.i45.prol.loopexit ]
  %i.cn = load ptr, ptr %.03.i46, align 8, !tbaa !32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !33
  %i.cq = add i8 %i.cp, -5
  %i.cr = icmp ult i8 %i.cq, 11
  %spec.select.i.i48 = select i1 %i.cr, ptr %i.cn, ptr null ; 2 uses
  %.not13.i49 = icmp eq ptr %spec.select.i.i48, null
  %spec.select.i50 = select i1 %.not13.i49, ptr %.0112.i47, ptr %spec.select.i.i48
  %i.cs = getelementptr inbounds nuw i8, ptr %.03.i46, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !33
  %i.cw = add i8 %i.cv, -5
  %i.cx = icmp ult i8 %i.cw, 11
  %spec.select.i.i48.1 = select i1 %i.cx, ptr %i.ct, ptr null ; 2 uses
  %.not13.i49.1 = icmp eq ptr %spec.select.i.i48.1, null
  %spec.select.i50.1 = select i1 %.not13.i49.1, ptr %spec.select.i50, ptr %spec.select.i.i48.1 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.03.i46, i64 16 ; 2 uses
  %.not.i51.1 = icmp eq ptr %i.cy, %i.cd
  br i1 %.not.i51.1, label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53", label %.lr.ph.i45

"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53": ; preds = %.lr.ph.i45, %.lr.ph.i45.prol.loopexit
  %spec.select.i50.lcssa = phi ptr [ %spec.select.i50.lcssa.unr, %.lr.ph.i45.prol.loopexit ], [ %spec.select.i50.1, %.lr.ph.i45 ] ; 3 uses
  %i.cz = icmp ne ptr %.011.lcssa.i, null
  %i.da = icmp ne ptr %spec.select.i50.lcssa, null
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.h, label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53.thread"

bb.f:                                             ; preds = %.lr.ph64, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit
  %i.db = phi i32 [ %.pre69, %.lr.ph64 ], [ %i.dk, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit ] ; 2 uses
  %.063 = phi ptr [ %i.ai, %.lr.ph64 ], [ %i.dm, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit ] ; 2 uses
  %i.dc = load ptr, ptr %.063, align 8, !tbaa !11 ; 2 uses
  %i.dd = load i32, ptr %i.ac, align 4, !tbaa !14
  %.not.i54 = icmp ult i32 %i.db, %i.dd
  br i1 %.not.i54, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 8) #10
  %.pre.i55 = load i32, ptr %i.v, align 8, !tbaa !13
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes9ScopeDescELb1EE9push_backERKS3_.exit: ; preds = %bb.f, %bb.g
  %i.de = phi i32 [ %.pre.i55, %bb.g ], [ %i.db, %bb.f ]
  %i.df = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = ptrtoint ptr %i.dc to i64
  store i64 %i.di, ptr %i.dh, align 1
  %i.dj = load i32, ptr %i.v, align 8, !tbaa !13
  %i.dk = add i32 %i.dj, 1                        ; 2 uses
  store i32 %i.dk, ptr %i.v, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr %2, ptr %i.dl, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %.063, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.dm, %i.aj
  br i1 %.not41, label %._crit_edge65, label %bb.f

bb.h:                                             ; preds = %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53"
  %i.dn = getelementptr inbounds nuw i8, ptr %spec.select.i50.lcssa, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.011.lcssa.i, i64 16
  tail call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull %i.do) #10
  tail call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %spec.select.i50.lcssa) #10
  br label %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53.thread"

"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53.thread": ; preds = %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit", %bb.h, %"_ZZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_ENK3$_0clES4_.exit53"
  tail call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %2) #10
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %2, ptr %i.dr, align 8, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 152
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 160
  %.val41 = load i32, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.c = zext i32 %.val41 to i64
  %.idx.i = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not7.not.i = icmp eq i32 %.val41, 0
  br i1 %.not7.not.i, label %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.loopexit.i
  %.0118.i = phi ptr [ %i.v, %.loopexit.i ], [ %.val, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.0118.i, align 8, !tbaa !17
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #10 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.not23.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not23.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.critedge.i.i
  %.01524.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.l = load ptr, ptr %.01524.i.i, align 8, !tbaa !32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !33
  %i.o = add i8 %i.n, -109
  %i.p = icmp ult i8 %i.o, -107
  br i1 %i.p, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !93
  %.not20.i.i = icmp eq ptr %i.t, %1
  br i1 %.not20.i.i, label %.critedge.i.i, label %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit

.critedge.i.i:                                    ; preds = %bb.b, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.u, %i.k
  br i1 %.not.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0118.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.not.i, label %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit, label %.lr.ph.i

_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit: ; preds = %.loopexit.i, %bb.b, %bb.a
  %.not6.i = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %.loopexit.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit:               ; preds = %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 63                ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741816
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #11 ; 4 uses
  %i.ae = lshr i64 %i.aa, 6                       ; 2 uses
  %.idx.i.i42 = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %.idx.i.i42, i1 false)
  %.pre = load i32, ptr %i.x, align 8, !tbaa !13  ; 2 uses
  %i.af = zext i32 %.pre to i64
  %.not65 = icmp eq i32 %.pre, 0
  br i1 %.not65, label %_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %.pre70 = load i32, ptr %i.x, align 8, !tbaa !13 ; 2 uses
  %i.ag = zext i32 %.pre70 to i64                 ; 2 uses
  %.not66 = icmp eq i32 %.pre70, 0
  br i1 %.not66, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %._crit_edge
  %i.ah = zext i32 %i.y to i64
  br label %bb.j

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit, %bb.e
  %.03658 = phi i64 [ %i.ax, %bb.e ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 4 uses
  %.03757 = phi i8 [ %.3, %bb.e ], [ %.not6.i, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ] ; 3 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03658
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !94
  %.not40 = icmp eq ptr %i.am, %1
  br i1 %.not40, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.an = tail call noundef i32 @_ZN6hermes11ScopeMerger13optimizeScopeEPNS_8FunctionEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull %i.ak)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !95, !range !96, !noundef !97
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = icmp ne i32 %i.an, 0                    ; 2 uses
  %or.cond = and i1 %i.ar, %i.aq
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6hermes11ScopeMerger9mergeIntoEPNS_8FunctionEPNS_9ScopeDescES4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr poison, ptr noundef nonnull %2, ptr noundef nonnull %i.ak)
  %spec.select = select i1 %i.ar, i8 1, i8 %.03757
  %.udiv77 = lshr i64 %.03658, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.udiv77 ; 2 uses
  %i.at = and i64 %.03658, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = load i64, ptr %i.as, align 8, !tbaa !99
  %i.aw = or i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.3 = phi i8 [ %.03757, %.lr.ph ], [ %.03757, %bb.c ], [ %spec.select, %bb.d ] ; 3 uses
  %i.ax = add nuw nsw i64 %.03658, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge63:                                    ; preds = %bb.l, %._crit_edge
  %3 = phi i64 [ 0, %._crit_edge ], [ %i.ag, %bb.l ] ; 3 uses
  %.035.lcssa = phi i64 [ 0, %._crit_edge ], [ %.1, %bb.l ] ; 7 uses
  %i.ay = icmp ult i64 %.035.lcssa, %3
  br i1 %i.ay, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge63
  %i.az = icmp ugt i64 %.035.lcssa, %3
  br i1 %i.az, label %bb.g, label %_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !14
  %i.bc = zext i32 %i.bb to i64
  %i.bd = icmp ugt i64 %.035.lcssa, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.be, i64 noundef %.035.lcssa, i64 noundef 8) #10
  %.pre.i = load i32, ptr %i.x, align 8, !tbaa !13
  %.pre15.i = zext i32 %.pre.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre15.i, %bb.h ], [ %3, %bb.g ] ; 3 uses
  %.not13.i = icmp samesign eq i64 %.035.lcssa, %.pre-phi.i
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.bg = getelementptr [8 x i8], ptr %i.bf, i64 %.pre-phi.i
  %i.bh = sub i64 %.035.lcssa, %.pre-phi.i
  %i.bi = shl i64 %i.bh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !11
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.i, %._crit_edge63
  %i.bj = trunc i64 %.035.lcssa to i32
  store i32 %i.bj, ptr %i.x, align 8, !tbaa !13
  br label %_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit

_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit: ; preds = %.sink.split.i, %bb.f, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit
  %.037.lcssa96101122 = phi i8 [ %.not6.i, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit ], [ %.3, %.sink.split.i ], [ %.3, %bb.f ]
  %.idx = shl nuw nsw i64 %i.ae, 3
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %.idx) #12
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit, %_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit
  %.037.lcssa96101123 = phi i8 [ %.037.lcssa96101122, %_ZN4llvh15SmallVectorImplIPN6hermes9ScopeDescEE6resizeEm.exit ], [ %.not6.i, %_ZN6hermesL24hasAtLeastOneEscapingVarEPNS_8FunctionEPNS_9ScopeDescE.exit ]
  %i.bk = zext nneg i8 %.037.lcssa96101123 to i32
  ret i32 %i.bk

bb.j:                                             ; preds = %.lr.ph62, %bb.l
  %.060 = phi i64 [ 0, %.lr.ph62 ], [ %i.bv, %bb.l ] ; 5 uses
  %.03559 = phi i64 [ 0, %.lr.ph62 ], [ %.1, %bb.l ] ; 3 uses
  %.not = icmp samesign ult i64 %.060, %i.ah
  br i1 %.not, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.udiv6878 = lshr i64 %.060, 6
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.udiv6878
  %i.bm = and i64 %.060, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !99
  %i.bp = and i64 %i.bo, %i.bn
  %.not55 = icmp eq i64 %i.bp, 0
  br i1 %.not55, label %.critedge, label %bb.l

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !15  ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.060
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11
  %i.bt = add i64 %.03559, 1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.03559
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %.1 = phi i64 [ %i.bt, %.critedge ], [ %.03559, %bb.k ] ; 2 uses
  %i.bv = add nuw nsw i64 %.060, 1                ; 2 uses
  %exitcond69.not = icmp eq i64 %i.bv, %i.ag
  br i1 %exitcond69.not, label %._crit_edge63, label %bb.j, !llvm.loop !84
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN6hermes11ScopeMerger11mergedScopeEPNS_9ScopeDescE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.k, %i.j              ; 2 uses
  %i.l = zext nneg i32 %.02744.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !71

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.c ], [ %.02744.i.i.i, %bb.b ]
  %.046.i.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.046.i.i.i, 1
  %i.s = add i32 %.046.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.s, %i.k                ; 2 uses
  %i.t = zext i32 %.027.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit, label %.lr.ph.i.i.i, !prof !72, !llvm.loop !100

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit: ; preds = %bb.c, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i = phi ptr [ %i.y, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIPKS3_EEbRKT_RPS9_.exit.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %i.ab = icmp eq ptr %.sink.i.i.ph.pn.i, %i.aa
  br i1 %i.ab, label %common.ret11, label %bb.d

common.ret11:                                     ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit, %bb.d
  %common.ret11.op = phi ptr [ %i.ae, %bb.d ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit ]
  ret ptr %common.ret11.op

bb.d:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.ae = tail call noundef ptr @_ZN6hermes11ScopeMerger11mergedScopeEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %i.ad) ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !102
  br label %common.ret11
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11ScopeMerger23updateSourceLevelScopesEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.sroa.021.030 = load ptr, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %.not2431 = icmp eq ptr %.sroa.021.030, %i.b
  br i1 %.not2431, label %._crit_edge35, label %.lr.ph34

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73
  %i.f = icmp eq i32 %i.e, 0
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !69   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge35
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.j ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5beginEv.exit

bb.c:                                             ; preds = %._crit_edge35
  %.idx.i = shl nuw nsw i64 %i.j, 4
  %i.l = getelementptr i8, ptr %i.g, i64 %.idx.i  ; 5 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.c, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.n, %.critedge2.i8.i14.i6.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !11
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.m to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 16 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i9.i15.i7.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !103

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes9ScopeDescES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %bb.b, %bb.c
  %.pn14.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.c ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ], [ %i.l, %.critedge2.i8.i14.i6.i ] ; 2 uses
  %.pn12.i = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %.critedge2.i8.i14.i6.i ], [ %i.l, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.j ; 2 uses
  %.not2536 = icmp eq ptr %.pn14.i, %i.o
  br i1 %.not2536, label %._crit_edge39, label %.lr.ph38

.lr.ph34:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.021.032 = phi ptr [ %.sroa.021.0, %._crit_edge ], [ %.sroa.021.030, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 56 ; 2 uses
  %.sroa.017.027 = load ptr, ptr %i.p, align 8, !tbaa !104 ; 2 uses
  %.not2628 = icmp eq ptr %.sroa.017.027, %i.q
  br i1 %.not2628, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.lr.ph34
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.021.032, i64 8
  %.sroa.021.0 = load ptr, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %.not24 = icmp eq ptr %.sroa.021.0, %i.b
  br i1 %.not24, label %._crit_edge35, label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph34, %bb.e
  %.sroa.017.029 = phi ptr [ %.sroa.017.0, %bb.e ], [ %.sroa.017.027, %.lr.ph34 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.017.029, i64 112 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.u = tail call noundef ptr @_ZN6hermes11ScopeMerger11mergedScopeEPNS_9ScopeDescE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr %i.s, align 8, !tbaa !105
  br label %bb.e
end_hunk_0
